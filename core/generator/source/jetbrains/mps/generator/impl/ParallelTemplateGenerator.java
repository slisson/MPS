/*
 * Copyright 2003-2015 JetBrains s.r.o.
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

import jetbrains.mps.generator.GenerationCanceledException;
import jetbrains.mps.generator.GenerationSessionContext;
import jetbrains.mps.generator.impl.IGenerationTaskPool.GenerationTask;
import jetbrains.mps.generator.impl.IGenerationTaskPool.ITaskPoolProvider;
import jetbrains.mps.generator.impl.template.DeltaBuilder;
import jetbrains.mps.generator.runtime.TemplateCreateRootRule;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateRootMappingRule;
import jetbrains.mps.generator.template.DefaultQueryExecutionContext;
import jetbrains.mps.generator.template.QueryExecutionContext;
import jetbrains.mps.util.Pair;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Evgeny Gryaznov, Feb 25, 2010
 */
public class ParallelTemplateGenerator extends TemplateGenerator {

  private static final boolean ROOT_PER_THREAD = true;

  private IGenerationTaskPool myPool;
  private List<RootGenerationTask> myTasks;
  private Map<Pair<SNode, SNodeReference>, RootGenerationTask> myInputToTask;
  private Map<SNode, DefaultQueryExecutionContext> myRootContext;
  private final Map<QueryExecutionContext, CompositeGenerationTask> contextToTask = new HashMap<QueryExecutionContext, CompositeGenerationTask>();

  public ParallelTemplateGenerator(ITaskPoolProvider taskPoolProvider, GenerationSessionContext operationContext, SModel inputModel, SModel outputModel, StepArguments args) {
    super(operationContext, inputModel, outputModel, args);
    myTasks = new ArrayList<RootGenerationTask>();
    myInputToTask = new ConcurrentHashMap<Pair<SNode, SNodeReference>, RootGenerationTask>();
    myPool = taskPoolProvider.getTaskPool();
  }

  @Override
  protected void applyReductions(boolean isPrimary)
    throws GenerationCanceledException, GenerationFailureException {
    super.applyReductions(isPrimary);

    myPool.waitForCompletion();
    contextToTask.clear();
    myRootContext = null;
    for (RootGenerationTask task : myTasks) {
      task.registerGeneratedRoot();
    }
  }

  @Override
  protected void applyCreateRoot(final TemplateCreateRootRule rule, final TemplateExecutionEnvironment environment) throws GenerationCanceledException, GenerationFailureException {
    pushTask(new RootGenerationTask() {
      @Override
      public void run() throws GenerationCanceledException, GenerationFailureException {
        ParallelTemplateGenerator.super.applyCreateRoot(rule, environment);
      }
    }, new Pair<SNode, SNodeReference>(null, rule.getRuleNode()), environment.getQueryExecutor());
  }

  @Override
  protected void createRootNodeByRule(final TemplateRootMappingRule rule, final SNode inputNode, final TemplateExecutionEnvironmentImpl env, final boolean copyRootOnFailure) throws GenerationCanceledException, GenerationFailureException {
    pushTask(new RootGenerationTask() {
      @Override
      public void run() throws GenerationCanceledException, GenerationFailureException {
        ParallelTemplateGenerator.super.createRootNodeByRule(rule, inputNode, env, copyRootOnFailure);
      }
    }, new Pair<SNode, SNodeReference>(inputNode, rule.getRuleNode()), env.getQueryExecutor());
  }

  @Override
  protected void copyRootInputNode(@NotNull final SNode inputRootNode, @NotNull final TemplateExecutionEnvironmentImpl env) throws GenerationFailureException, GenerationCanceledException {
    pushTask(new RootGenerationTask() {
      @Override
      public void run() throws GenerationCanceledException, GenerationFailureException {
        ParallelTemplateGenerator.super.copyRootInputNode(inputRootNode, env);
      }
    }, new Pair<SNode, SNodeReference>(inputRootNode, null), env.getQueryExecutor());
  }

  @Override
  protected QueryExecutionContext getDefaultExecutionContext(SNode inputNode) {
    if (ROOT_PER_THREAD) {
      if (inputNode == null || inputNode.getModel() == null) {
        return super.getDefaultExecutionContext(null);
      }
      inputNode = inputNode.getContainingRoot();
      if (inputNode.getModel() == getInputModel()) {
        DefaultQueryExecutionContext context;
        if (myRootContext == null) {
          myRootContext = new HashMap<SNode, DefaultQueryExecutionContext>();
          context = null;
        } else {
          context = myRootContext.get(inputNode);
        }
        if (context == null) {
          context = new DefaultQueryExecutionContext(this, false);
          myRootContext.put(inputNode, context);
        }
        return context;
      }
    }
    return super.getDefaultExecutionContext(inputNode);
  }

  @Override
  protected DeltaBuilder createDeltaBuilder() {
    return DeltaBuilder.newConcurrentDeltaBuilder();
  }

  private void pushTask(RootGenerationTask task, Pair<SNode, SNodeReference> pair, QueryExecutionContext executionContext) {
    myInputToTask.put(pair, task);
    myTasks.add(task);
    if (executionContext.isMultithreaded()) {
      myPool.addTask(task);
    } else {
      runTaskWithContext(task, executionContext);
    }
  }

  private void runTaskWithContext(GenerationTask task, QueryExecutionContext executionContext) {
    CompositeGenerationTask compositeTask;
    synchronized (contextToTask) {
      compositeTask = contextToTask.get(executionContext);
      if (compositeTask != null && compositeTask.addTask(task)) {
        return;
      }
      compositeTask = new CompositeGenerationTask();
      compositeTask.addTask(task);
      contextToTask.put(executionContext, compositeTask);
    }
    myPool.addTask(compositeTask);
  }

  @Override
  protected void registerRoot(GeneratedRootDescriptor rd) {
    RootGenerationTask task = myInputToTask.get(new Pair<SNode, SNodeReference>(rd.myInputNode, rd.myTemplateNode));
    if (task == null) {
      getLogger().error(rd.myTemplateNode, "internal: cannot find task for generated root", GeneratorUtil.describe(rd.myInputNode, "input node"));
    } else {
      task.addGeneratedRoot(rd);
    }
  }

  public abstract class RootGenerationTask implements GenerationTask {

    List<GeneratedRootDescriptor> generated = null;

    public void addGeneratedRoot(GeneratedRootDescriptor descriptor) {
      if (generated == null) {
        generated = Collections.singletonList(descriptor);
      } else if (generated.size() == 1) {
        generated = new ArrayList<GeneratedRootDescriptor>(generated);
        generated.add(descriptor);
      } else {
        generated.add(descriptor);
      }
    }

    public void registerGeneratedRoot() {
      if (generated == null) {
        return;
      }
      for (GeneratedRootDescriptor descriptor : generated) {
        ParallelTemplateGenerator.super.registerRoot(descriptor);
      }
    }
  }

  public static class CompositeGenerationTask implements GenerationTask {

    private final Queue<GenerationTask> list = new LinkedList<GenerationTask>();
    private boolean isInShutdownMode = false;

    public synchronized boolean addTask(GenerationTask task) {
      if (isInShutdownMode) {
        return false;
      }
      return list.add(task);
    }

    private synchronized GenerationTask next() {
      if (list.isEmpty()) {
        isInShutdownMode = true;
        return null;
      }
      return list.remove();
    }

    @Override
    public void run() throws GenerationCanceledException, GenerationFailureException {
      GenerationTask next;
      while ((next = next()) != null) {
        next.run();
      }
    }
  }
}
