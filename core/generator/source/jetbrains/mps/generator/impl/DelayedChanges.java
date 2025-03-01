/*
 * Copyright 2003-2014 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.generator.impl;

import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.runtime.NodeMapper;
import jetbrains.mps.generator.runtime.PostProcessor;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.template.QueryExecutionContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Created by: Sergey Dmitriev
 * Date: Jan 25, 2007
 */
public class DelayedChanges {

  private static final String MAP_SRC_TEMP_NODE = "mapSrcTempNode";

  private final List<Change> myExecuteMapSrcNodeMacroChanges = new ArrayList<Change>();
  private final List<Change> myExecuteMapSrcNodeMacroPostProcChanges = new ArrayList<Change>();

  public DelayedChanges() {
  }

  public boolean isEmpty() {
    return myExecuteMapSrcNodeMacroChanges.isEmpty() && myExecuteMapSrcNodeMacroPostProcChanges.isEmpty();
  }

  public void addExecuteMapSrcNodeMacroChange(SNode mapSrcMacro, SNode childToReplace, @NotNull TemplateContext context, @NotNull QueryExecutionContext execContext) {
    // XXX in fact, may replace this one with NodeMapper and PostProcessor implementations based on QEC.executeMapSrcNodeMacro code -
    // the same I did for ReferenceInfo_Macro. There seems to be little value to keep two almost identical approaches (the only difference is in the way
    // methods from QueriesGenerated are invoked - either directly (compiled, NodeMapper) or indirectly (via reflection in QueryMethodGenerated). The only
    // benefit I can see is that it's easy to distinguish calls (executeInContext is less informative than executeMapSrcNodeMacro) - but do I care that much?
    markNodeAsTemp(childToReplace);
    synchronized (this) {
      myExecuteMapSrcNodeMacroChanges.add(new ExecuteMapSrcNodeMacroChange(mapSrcMacro, childToReplace, context, execContext));
    }
  }

  public void addExecuteNodeMapper(@NotNull NodeMapper mapper, PostProcessor processor, SNode childToReplace, @NotNull TemplateContext context, @NotNull QueryExecutionContext execContext) {
    markNodeAsTemp(childToReplace);
    synchronized (this) {
      myExecuteMapSrcNodeMacroChanges.add(new MapNodeChange(mapper, processor, childToReplace, context, execContext));
    }
  }

  public void addExecuteMapSrcNodeMacroPostProcChange(SNode mapSrcMacro, SNode outputNode, @NotNull TemplateContext context, @NotNull QueryExecutionContext execContext) {
    SNode postMapperFunction = RuleUtil.getMapSrc_PostMapperFunction(mapSrcMacro);
    if (postMapperFunction == null) return;
    synchronized (this) {
      myExecuteMapSrcNodeMacroPostProcChanges.add(new ExecuteMapSrcNodeMacroPostProcChange(mapSrcMacro, outputNode, context, execContext));
    }
  }

  public void addExecutePostProcessor(@NotNull PostProcessor processor, SNode outputNode, @NotNull TemplateContext context, @NotNull QueryExecutionContext execContext) {
    synchronized (this) {
      myExecuteMapSrcNodeMacroPostProcChanges.add(new PostProcessorChange(processor, outputNode, context, execContext));
    }
  }

  public void doAllChanges(@NotNull TemplateGenerator generator) {
    for (Change executeMapSrcNodeMacroChange : myExecuteMapSrcNodeMacroChanges) {
      executeMapSrcNodeMacroChange.doChange(generator);
    }
    myExecuteMapSrcNodeMacroChanges.clear();
    for (Change executeMapSrcNodeMacroPostProcChange : myExecuteMapSrcNodeMacroPostProcChanges) {
      executeMapSrcNodeMacroPostProcChange.doChange(generator);
    }
    myExecuteMapSrcNodeMacroPostProcChanges.clear();
  }

  public static boolean isTempNode(@NotNull SNode node) {
    return node.getUserObject(MAP_SRC_TEMP_NODE) != null;
  }

  private void markNodeAsTemp(SNode childToReplace) {
    childToReplace.putUserObject(MAP_SRC_TEMP_NODE, MAP_SRC_TEMP_NODE);
  }

  private interface Change {
    void doChange(@NotNull TemplateGenerator generator);
  }

  private static abstract class BaseMapNodeChange implements Change {

    protected final SNode myChildToReplace;
    protected final TemplateContext myContext;
    protected final QueryExecutionContext myExecContext;

    private BaseMapNodeChange(SNode childToReplace, TemplateContext context, QueryExecutionContext execContext) {
      myChildToReplace = childToReplace;
      myContext = context;
      myExecContext = execContext;
    }

    @Override
    public void doChange(@NotNull TemplateGenerator generator) {
      try {
        SNode child = mapNode();
        if (child == null) {
          return;
        }
        ChildAdopter ca = new ChildAdopter(generator);
        ca.checkIsExpectedLanguage(Collections.singletonList(child), getMapSrcMacro(), myContext);
        child = ca.adopt(child, myContext);

        generator.replacePlaceholderNode(myChildToReplace, child, myContext, getMapSrcMacro());

        // post-processing
        postProcess(child);
      } catch (Throwable t) {
        IGeneratorLogger log = generator.getLogger();
        log.error(getMapSrcMacro(), String.format("mapping failed: '%s'", t.getMessage()), GeneratorUtil.describe(myContext.getInput(), "input"));
        log.handleException(t);
      }
    }

    protected abstract SNodeReference getMapSrcMacro();

    protected abstract SNode mapNode() throws GenerationFailureException;

    protected abstract void postProcess(SNode child) throws GenerationFailureException;
  }

  private class ExecuteMapSrcNodeMacroChange extends BaseMapNodeChange {
    private final SNode myMapSrcMacro;

    public ExecuteMapSrcNodeMacroChange(SNode mapSrcMacro, SNode childToReplace, @NotNull TemplateContext context, @NotNull QueryExecutionContext execContext) {
      super(childToReplace, context, execContext);
      myMapSrcMacro = mapSrcMacro;
    }

    @Override
    protected SNodeReference getMapSrcMacro() {
      return myMapSrcMacro.getReference();
    }

    @Override
    protected SNode mapNode() throws GenerationFailureException {
      return myExecContext.executeMapSrcNodeMacro(myContext.getInput(), myMapSrcMacro, myChildToReplace.getParent(), myContext);
    }

    @Override
    protected void postProcess(SNode child) throws GenerationFailureException {
      addExecuteMapSrcNodeMacroPostProcChange(myMapSrcMacro, child, myContext, myExecContext);
    }
  }

  private class MapNodeChange extends BaseMapNodeChange {
    private final NodeMapper myMapper;
    private final PostProcessor myProcessor;

    public MapNodeChange(@NotNull NodeMapper mapper, PostProcessor processor, SNode childToReplace, @NotNull TemplateContext context, @NotNull QueryExecutionContext execContext) {
      super(childToReplace, context, execContext);
      myMapper = mapper;
      myProcessor = processor;
    }

    @Override
    protected SNodeReference getMapSrcMacro() {
      return myMapper.getTemplateNode();
    }

    @Override
    protected SNode mapNode() throws GenerationFailureException {
      return myExecContext.executeInContext(myChildToReplace, myContext, myMapper);
    }

    @Override
    protected void postProcess(SNode child) throws GenerationFailureException {
      if (myProcessor != null) {
        addExecutePostProcessor(myProcessor, child, myContext, myExecContext);
      }
    }
  }

  private static class ExecuteMapSrcNodeMacroPostProcChange implements Change {
    private final SNode myMapSrcMacro;
    private final SNode myOutputChild;
    private final TemplateContext myContext;
    private final QueryExecutionContext myExecContext;

    public ExecuteMapSrcNodeMacroPostProcChange(SNode mapSrcMacro, SNode outputChild, @NotNull TemplateContext context, @NotNull QueryExecutionContext executionContext) {
      myMapSrcMacro = mapSrcMacro;
      myOutputChild = outputChild;
      myContext = context;
      myExecContext = executionContext;
    }

    @Override
    public void doChange(@NotNull TemplateGenerator generator) {
      try {
        myExecContext.executeMapSrcNodeMacro_PostProc(myContext.getInput(), myMapSrcMacro, myOutputChild, myContext);
      } catch (Throwable t) {
        generator.getLogger().error(myMapSrcMacro.getReference(), String.format("mapping failed: '%s'", t.getMessage()), GeneratorUtil.describeInput(myContext));
        generator.getLogger().handleException(t);
      }
    }
  }

  private static class PostProcessorChange implements Change {
    private final PostProcessor myProcessor;
    private final SNode myOutputChild;
    private final TemplateContext myContext;
    private final QueryExecutionContext myExecContext;

    public PostProcessorChange(PostProcessor processor, SNode outputChild, @NotNull TemplateContext context, @NotNull QueryExecutionContext executionContext) {
      myProcessor = processor;
      myOutputChild = outputChild;
      myContext = context;
      myExecContext = executionContext;
    }

    @Override
    public void doChange(@NotNull TemplateGenerator generator) {
      try {
        myExecContext.executeInContext(myOutputChild, myContext, myProcessor);
      } catch (Throwable t) {
        generator.getLogger().error((SNodeReference) null, String.format("mapping failed: '%s'", t.getMessage()), GeneratorUtil.describeInput(myContext));
        generator.getLogger().handleException(t);
      }
    }
  }
}
