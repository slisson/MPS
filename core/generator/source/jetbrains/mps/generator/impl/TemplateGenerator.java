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
import jetbrains.mps.generator.GenerationOptions;
import jetbrains.mps.generator.GenerationSessionContext;
import jetbrains.mps.generator.GenerationTrace;
import jetbrains.mps.generator.GenerationTracerUtil;
import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.impl.CloneUtil.Factory;
import jetbrains.mps.generator.impl.CloneUtil.RegularSModelFactory;
import jetbrains.mps.generator.impl.FastRuleFinder.BlockedReductionsData;
import jetbrains.mps.generator.impl.RoleValidation.RoleValidator;
import jetbrains.mps.generator.impl.RoleValidation.Status;
import jetbrains.mps.generator.impl.dependencies.DependenciesBuilder;
import jetbrains.mps.generator.impl.dependencies.DependenciesReadListener;
import jetbrains.mps.generator.impl.dependencies.IncrementalDependenciesBuilder;
import jetbrains.mps.generator.impl.dependencies.RootDependenciesBuilder;
import jetbrains.mps.generator.impl.query.GeneratorQueryProvider;
import jetbrains.mps.generator.impl.reference.DynamicReferenceUpdate;
import jetbrains.mps.generator.impl.reference.PostponedReference;
import jetbrains.mps.generator.impl.reference.PostponedReferenceUpdate;
import jetbrains.mps.generator.impl.reference.ReferenceInfo_CopiedInputNode;
import jetbrains.mps.generator.impl.template.DeltaBuilder;
import jetbrains.mps.generator.impl.template.QueryExecutionContextWithDependencyRecording;
import jetbrains.mps.generator.impl.template.QueryExecutionContextWithTracing;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.TemplateCreateRootRule;
import jetbrains.mps.generator.runtime.TemplateDropRootRule;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateMappingScript;
import jetbrains.mps.generator.runtime.TemplateRootMappingRule;
import jetbrains.mps.generator.runtime.TemplateSwitchMapping;
import jetbrains.mps.generator.template.DefaultQueryExecutionContext;
import jetbrains.mps.generator.template.QueryExecutionContext;
import jetbrains.mps.smodel.DynamicReference;
import jetbrains.mps.smodel.FastNodeFinderManager;
import jetbrains.mps.smodel.SModelOperations;
import jetbrains.mps.smodel.StaticReference;
import jetbrains.mps.textgen.trace.TracingUtil;
import jetbrains.mps.util.SNodeOperations;
import jetbrains.mps.util.performance.IPerformanceTracer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConceptRepository;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by: Sergey Dmitriev
 * Date: Jan 23, 2007
 * <p/>
 * Created once per micro-step.
 */
public class TemplateGenerator extends AbstractTemplateGenerator {

  private boolean myChanged = false;
  private final RuleManager myRuleManager;
  private final DelayedChanges myDelayedChanges;
  private final Map<SNode, SNode> myNewToOldRoot = new HashMap<SNode, SNode>();
  /**
   * Input nodes coming from a model other than input model (or no model at all), e.g. if
   * input node query follows a reference from an input model to some outer model.
   * We track these nodes, including children, to facilitate reference resolution (i.e. if there's
   * a reference in an input model pointing somewhere to subtree of a foreign node, we redirect
   * that reference to the copied counterpart). Generally, this approach might not be everyone's
   * desire, but it's the way it was so far.
   */
  private final Set<SNode> myAdditionalInputNodes = new HashSet<SNode>();
  protected final List<SNode> myOutputRoots;

  private final QueryExecutionContext myExecutionContext;
  private Map<DependenciesReadListener, QueryExecutionContext> myExecutionContextMap;

  private final boolean myIsStrict;
  private boolean myAreMappingsReady = false;

  /* cached session data */
  private BlockedReductionsData myReductionData;

  private final DependenciesBuilder myDependenciesBuilder;

  private DeltaBuilder myDeltaBuilder;
  private boolean myInplaceModelChange = false; // indicates transformation was in-place (even after deltaBuilder was disposed). cries for better approach
  private WeavingProcessor myWeavingProcessor;
  private TemplateProcessor myTemplateProcessor;
  private final PostponedReferenceUpdate myPostponedRefs;
  private final DynamicReferenceUpdate myDynamicRefs;
  private final GenerationTrace myNewTrace;

  static final class StepArguments {
    public final DependenciesBuilder dependenciesBuilder;
    public final RuleManager ruleManager;
    public final GenerationTrace genTrace;
    public final GeneratorMappings mappingLabels;
    public StepArguments(RuleManager ruleManager, DependenciesBuilder dependenciesBuilder, GenerationTrace genTrace, GeneratorMappings mapLabels) {
      this.dependenciesBuilder = dependenciesBuilder;
      this.ruleManager = ruleManager;
      this.genTrace = genTrace;
      this.mappingLabels = mapLabels;
    }
  }

  public TemplateGenerator(GenerationSessionContext operationContext, SModel inputModel, SModel outputModel, StepArguments stepArgs) {
    super(operationContext, inputModel, outputModel, stepArgs.mappingLabels);
    myRuleManager = stepArgs.ruleManager;
    GenerationOptions options = operationContext.getGenerationOptions();
    myIsStrict = options.isStrictMode();
    myDelayedChanges = new DelayedChanges();
    myDependenciesBuilder = stepArgs.dependenciesBuilder;
    myOutputRoots = new ArrayList<SNode>();
    DefaultQueryExecutionContext ctx = new DefaultQueryExecutionContext(this);
    myExecutionContext = options.getTracingMode() >= GenerationOptions.TRACE_LANGS
      ? new QueryExecutionContextWithTracing(ctx, operationContext.getPerformanceTracer())
      : ctx;
    myPostponedRefs = new PostponedReferenceUpdate(this);
    myDynamicRefs = new DynamicReferenceUpdate(this);
    myNewTrace = stepArgs.genTrace;
  }

  public boolean apply(@NotNull ProgressMonitor progressMonitor, boolean isPrimary) throws GenerationFailureException, GenerationCanceledException {
    myProgressMonitor = progressMonitor;
    checkMonitorCanceled();
    final IPerformanceTracer ttrace = getGeneratorSessionContext().getPerformanceTracer();
    myAreMappingsReady = false;
    // prepare weaving
    ttrace.push("weavings", false);
    myWeavingProcessor = new WeavingProcessor(this);
    myWeavingProcessor.prepareWeavingRules(getInputModel(), myRuleManager.getWeaving_MappingRules());
    ttrace.pop();

    myTemplateProcessor = new TemplateProcessor(this);

    ttrace.push("reductions", false);
    applyReductions(isPrimary);
    ttrace.pop();
    myInplaceModelChange = myDeltaBuilder != null;

    myAreMappingsReady = true;
    myChanged |= myDependenciesBuilder.isStepRequired(); // TODO optimize: if step is required, it should be the last step

    if (myDeltaBuilder == null) {
      // publish roots
      for (SNode outputRoot : myOutputRoots) {
        myOutputModel.addRootNode(outputRoot);
      }

      // reload "required" roots from cache
      ttrace.push("reloading roots from cache", false);
      myDependenciesBuilder.reloadRequired(getMappings());
      ttrace.pop();
    } // XXX if in-place change, every required root has been reloaded on previous step, imo

    if (myWeavingProcessor.hasWeavingRulesToApply()) {
      checkMonitorCanceled();
      ttrace.push("weavings", false);
      myWeavingProcessor.apply();
      myWeavingProcessor = null;
      ttrace.pop();
    }

    if (!myDelayedChanges.isEmpty()) {
      checkMonitorCanceled();
      // execute mapper in all $MAP_SRC$/$MAP_SRCL$
      ttrace.push("delayed mappings", false);
      myDelayedChanges.doAllChanges(this);
      ttrace.pop();
    }

    //////////////////////////////////////////////////////////////
    // replace references with PostponedReference to respect model changes up to this point
    if (myDeltaBuilder != null && myDeltaBuilder.hasChanges()) {
      ttrace.push("apply delta changes", false);
//      myDeltaBuilder.dump();
      myDeltaBuilder.prepareReferences(getInputModel(), this);
      ttrace.pop();
    }

    // resolve PostponedReferences, but do not replace them in the model yet
    if (!myPostponedRefs.isEmpty()) {
      // new unresolved references could appear after applying reduction rules (all delayed changes should be done before this, like replacing children)
      ttrace.push("restoring references", false);
      myPostponedRefs.prepare();
      ttrace.pop();
    }

    // apply structural change delta onto input model
    if (myDeltaBuilder != null && myDeltaBuilder.hasChanges()) {
      ttrace.push("apply delta changes", false);
      myDeltaBuilder.applyInplace(getInputModel());
      ttrace.pop();
    }

    if (myChanged) {
      // Unless we manage to update set of used languages along with changes being generated,
      // we shall maintain set of used languages prior to any attempt to resolve references, as they might
      // be using model scopes and TypeSystem, and latter is quite picky about imports.
      SModelOperations.validateLanguagesAndImports(getOutputModel(), false, false);
    }

    // replace reference placeholders (PostponedReference) with resolved
    // replace DynamicReference with StaticReference, if needed
    if (!myPostponedRefs.isEmpty() || !myDynamicRefs.isEmpty()) {
      ttrace.push("restoring references", false);
      myPostponedRefs.replace();
      myDynamicRefs.replace();
      ttrace.pop();
    }

    myOutputRoots.clear();
    myDeltaBuilder = null;

    /////////////////////////////////////////////////////////////^^^
    if (myChanged || isPrimary) {
      // advance blocked reduction data
      getBlockedReductionsData().advanceStep();
      checkMonitorCanceled();
    }
    return myChanged;
  }

  public void executeScript(TemplateMappingScript script) throws GenerationFailureException {
    try {
    getDefaultExecutionContext(null).executeScript(script, myInputModel);
    } catch (Exception t) {
      getLogger().error(script.getScriptNode(), String.format("error executing script %s (see exception)", script.getLongName()));
      throw new GenerationFailureException(t);
    }
  }

  protected void applyReductions(boolean isPrimary) throws GenerationCanceledException, GenerationFailureException {
    if (isInplaceChangeEnabled()) {
      if (myWeavingProcessor.hasWeavingRulesToApply()) {
        getLogger().info("Could have had delta builder here, but can't due to active weavings");
      } else {
        getLogger().info("Active in-place model transformation");
        myDeltaBuilder = createDeltaBuilder();
      }
    }
    final IPerformanceTracer ttrace = getGeneratorSessionContext().getPerformanceTracer();
    // create all roots
    if (isPrimary) {
      ttrace.push("create roots", false);

      final QueryExecutionContext executionContext = getExecutionContext(null);
      if (executionContext != null) {
        for (TemplateCreateRootRule rule : myRuleManager.getCreateRootRules()) {
          TemplateExecutionEnvironment environment = new TemplateExecutionEnvironmentImpl(myTemplateProcessor, executionContext, new ReductionTrack(getBlockedReductionsData()));
          applyCreateRoot(rule, environment);
        }
        checkMonitorCanceled();
      }
      ttrace.pop();
    }

    // root mapping rules
    ttrace.push("root mappings", false);
    ArrayList<SNode> rootsConsumed = new ArrayList<SNode>();
    for (TemplateRootMappingRule rule : myRuleManager.getRoot_MappingRules()) {
      checkMonitorCanceled();
      applyRootRule(rule, rootsConsumed);
    }
    ttrace.pop();

    // copy roots
    getGeneratorSessionContext().clearCopiedRootsSet();
    for (SNode rootToCopy : myInputModel.getRootNodes()) {
      if (rootsConsumed.contains(rootToCopy)) {
        continue;
      }
      QueryExecutionContext context = getExecutionContext(rootToCopy);
      if (context != null) {
        TemplateExecutionEnvironmentImpl rootenv = new TemplateExecutionEnvironmentImpl(myTemplateProcessor, context, new ReductionTrack(getBlockedReductionsData()));
        copyRootInputNode(rootToCopy, rootenv);
        checkMonitorCanceled();
      }
    }
  }

  protected void applyCreateRoot(TemplateCreateRootRule rule, TemplateExecutionEnvironment environment) throws GenerationFailureException, GenerationCanceledException {
    if (!environment.getQueryExecutor().isApplicable(rule, new DefaultTemplateContext(environment, null, null))) {
      return;
    }
    try {
      Collection<SNode> outputNodes = environment.getQueryExecutor().applyRule(rule, environment);
      if (outputNodes == null) {
        return;
      }

      environment.getTrace().trace(null, GenerationTracerUtil.translateOutput(outputNodes), rule.getRuleNode());
      for (SNode outputNode : outputNodes) {
        registerRoot(new GeneratedRootDescriptor(outputNode, rule.getRuleNode()));
        setChanged();
      }
    } catch (DismissTopMappingRuleException ex) {
      // it's ok, just continue
    } catch (TemplateProcessingFailureException ex) {
      getLogger().error(rule.getRuleNode(), String.format("couldn't create root node: %s", ex.getMessage()), ex.asProblemDescription());
    } catch (GenerationCanceledException ex) {
      throw ex;
    } catch (GenerationFailureException ex) {
      throw ex;
    } catch (GenerationException e) {
      getLogger().error(rule.getRuleNode(), "internal error: " + e.toString());
    }
  }

  private void applyRootRule(TemplateRootMappingRule rule, List<SNode> rootsConsumed) throws GenerationFailureException, GenerationCanceledException {
    String applicableConcept = rule.getApplicableConcept();
    if (applicableConcept == null) {
      getLogger().error(rule.getRuleNode(), "rule has no applicable concept defined");
      return;
    }
    boolean includeInheritors = rule.applyToInheritors();
    Iterable<SNode> inputNodes = FastNodeFinderManager.get(myInputModel).getNodes(applicableConcept, includeInheritors);
    for (SNode inputNode : inputNodes) {
      // do not apply root mapping if root node has been copied from input model on previous micro-step
      // because some roots can be already mapped and copied as well (if some rule has 'keep root' = true)
      if (getGeneratorSessionContext().isCopiedRoot(inputNode)) continue;

      final QueryExecutionContext executionContext = getExecutionContext(inputNode);
      if (executionContext != null) {
        TemplateExecutionEnvironmentImpl environment = new TemplateExecutionEnvironmentImpl(myTemplateProcessor, executionContext, new ReductionTrack(getBlockedReductionsData()));
        final DefaultTemplateContext templateContext = new DefaultTemplateContext(environment, inputNode, null);
        if (!executionContext.isApplicable(rule, templateContext)) {
          continue;
        }
        boolean copyRootOnFailure = false;
        if (inputNode.getModel() != null && inputNode.getParent() == null && !rule.keepSourceRoot()) {
          rootsConsumed.add(inputNode);
          copyRootOnFailure = true;
        }
        createRootNodeByRule(rule, inputNode, environment, copyRootOnFailure);
      }
    }
  }

  protected void createRootNodeByRule(TemplateRootMappingRule rule, SNode inputNode, TemplateExecutionEnvironmentImpl env, boolean copyRootOnFailure)
    throws GenerationCanceledException, GenerationFailureException {
    try {
      Collection<SNode> outputNodes = env.getQueryExecutor().applyRule(rule, env, new DefaultTemplateContext(env, inputNode, null));
      if (outputNodes == null) {
        return;
      }

      env.getTrace().trace(inputNode.getNodeId(), GenerationTracerUtil.translateOutput(outputNodes), rule.getRuleNode());

      final boolean inputIsRoot = inputNode.getParent() == null;
      final boolean preserveInputRoot = inputIsRoot && rule.keepSourceRoot();
      for (SNode outputNode : outputNodes) {
        registerRoot(new GeneratedRootDescriptor(outputNode, inputNode, preserveInputRoot, rule.getRuleNode()));
        setChanged();
        // we copy user objects in reduction rules, root mapping rules are no different
        // in addition, this copies TracingUtil.ORIGINAL_INPUT_NODE, so that outputNodes
        // are marked as originating at inputNode's origin
        jetbrains.mps.util.SNodeOperations.copyUserObjects(inputNode, outputNode);
      }

    } catch (DismissTopMappingRuleException e) {
      // it's ok, just continue
      if (copyRootOnFailure && inputNode.getModel() != null && inputNode.getParent() == null) {
        final FullCopyFacility copyFacility = new FullCopyFacility(env);
        copyFacility.copyRootInputNode(inputNode);
        if (copyFacility.hasChanges()) {
          setChanged();
        }
      }
    } catch (TemplateProcessingFailureException ex) {
      getLogger().error(rule.getRuleNode(), String.format("couldn't create root node: %s", ex.getMessage()), ex.asProblemDescription());
    } catch (GenerationException e) {
      if (e instanceof GenerationCanceledException) throw (GenerationCanceledException) e;
      if (e instanceof GenerationFailureException) throw (GenerationFailureException) e;
      getLogger().error(rule.getRuleNode(), "internal error: " + e.toString(), GeneratorUtil.describe(inputNode, "input node"));
    }
  }

  protected void copyRootInputNode(@NotNull SNode inputRootNode, @NotNull TemplateExecutionEnvironmentImpl env) throws GenerationFailureException, GenerationCanceledException {
    NodeCopyFacility copyProcessor;
    if (myDeltaBuilder == null) {
      copyProcessor = new FullCopyFacility(env);
    } else {
      copyProcessor = new PartialCopyFacility(env, myDeltaBuilder);
    }
    // check if can drop
    if (copyProcessor.checkDropRules(inputRootNode, myRuleManager.getDropRootRules())) {
      setChanged();
      return;
    }
    copyProcessor.copyRootInputNode(inputRootNode);
    if(copyProcessor.hasChanges()) {
      setChanged();
    }
  }

  @Override
  public boolean isDirty(SNode node) {
    RootDependenciesBuilder builder = myDependenciesBuilder.getRootBuilder(node);
    if (builder != null && builder.isUnchanged()) {
      return false;
    }
    return true;
  }

  @Override
  public SModel getOutputModel() {
    if (myDeltaBuilder != null || myInplaceModelChange) {
      return getInputModel();
    }
    return super.getOutputModel();
  }

  /*
     * Unsynchronized
     */
  @Nullable
  protected QueryExecutionContext getExecutionContext(SNode inputNode) {
    RootDependenciesBuilder builder = myDependenciesBuilder.getRootBuilder(inputNode);
    if (builder != null) {
      if (builder.isUnchanged()) {
        if (myDeltaBuilder != null && inputNode != null) {
          // Unchanged roots shall not participate in further generation steps, hence
          // we need to tell DeltaBuilder to forget it.
          SNode inputRoot = inputNode.getContainingRoot();
          myDeltaBuilder.deleteInputRoot(inputRoot);
        }
        return null;
      }

      QueryExecutionContext value;
      if (myExecutionContextMap == null) {
        myExecutionContextMap = new HashMap<DependenciesReadListener, QueryExecutionContext>();
        value = null;
      } else {
        value = myExecutionContextMap.get(builder);
      }
      if (value == null) {
        value = new QueryExecutionContextWithDependencyRecording(myExecutionContext, builder);
        myExecutionContextMap.put(builder, value);
      }
      return value;
    }
    return getDefaultExecutionContext(inputNode);
  }

  protected QueryExecutionContext getDefaultExecutionContext(SNode inputNode) {
    return myExecutionContext;
  }

  protected DeltaBuilder createDeltaBuilder() {
    return DeltaBuilder.newSingleThreadDeltaBuilder();
  }

  @Override
  public SNode findOutputNodeById(SNodeId nodeId) {
    if (myDeltaBuilder != null) {
      return myDeltaBuilder.findOutputNodeById(nodeId);
    }
    return super.findOutputNodeById(nodeId);
  }


  // in fact, it's reasonable to keep this method in TEEI (in ReductionTrack, actually), to reflect narrowing scope of
  // generator -> TEEI -> TemplateProcessor. This would take another round of refactoring, though
  // (first of all, shall update TEEI API)
  @NotNull
  List<SNode> copyNodes(@NotNull Iterable<SNode> inputNodes, final TemplateContext outerContext, @NotNull String templateId, TemplateExecutionEnvironmentImpl env)
      throws GenerationCanceledException, GenerationFailureException {

    final Iterator<SNode> it = inputNodes.iterator();
    if (!it.hasNext()) {
      return Collections.emptyList();
    }
    ArrayList<SNode> outputNodes = new ArrayList<SNode>();
    while(it.hasNext()) {
      SNode newInputNode = it.next();
      trackIfForeign(newInputNode);

      if (myDeltaBuilder != null) {
        myDeltaBuilder.enterNestedCopySrc(newInputNode);
      }
      try {
        final String mappingName = outerContext.getInputName();
        Collection<SNode> _outputNodes = env.tryToReduce(newInputNode);
        if (_outputNodes != null) {
          if (mappingName != null && _outputNodes.size() == 1) {
            registerMappingLabel(newInputNode, mappingName, _outputNodes.iterator().next());
          }
          outputNodes.addAll(_outputNodes);
        } else {
          FullCopyFacility copyFacility = new FullCopyFacility(env, new HashSet<SNode>(getForeignNodes()));
          SNode copiedNode = copyFacility.copyInputNode(newInputNode);
          addOutputNodeByInputAndTemplateNode(newInputNode, templateId, copiedNode);
          if (mappingName != null) {
            registerMappingLabel(newInputNode, mappingName, copiedNode);
          }
          outputNodes.add(copiedNode);
        }
      } finally {
        if (myDeltaBuilder != null) {
          myDeltaBuilder.leaveNestedCopySrc(newInputNode);
        }
      }
    }
    return outputNodes;

  }

  private Set<SNode> getForeignNodes() {
    synchronized (myAdditionalInputNodes) {
      return new HashSet<SNode>(myAdditionalInputNodes);
    }
  }

  private void trackIfForeign(@NotNull SNode inputNode) {
    SModel model = inputNode.getModel();
    if (model != getInputModel() || model == null) {
      synchronized (myAdditionalInputNodes) {
        if (!myAdditionalInputNodes.contains(inputNode)) {
          for (SNode n : SNodeUtil.getDescendants(inputNode, null, true)) {
            myAdditionalInputNodes.add(n);
          }
        }
      }
    }
  }

  BlockedReductionsData getBlockedReductionsData() {
    if (myReductionData == null) {
      myReductionData = BlockedReductionsData.getStepData(getGeneratorSessionContext());
    }
    return myReductionData;
  }

  @NotNull
  /*package*/ GenerationTrace getTrace() {
    return myNewTrace;
  }

  DelayedChanges getDelayedChanges() {
    return myDelayedChanges;
  }

  RuleManager getRuleManager() {
    return myRuleManager;
  }

  GeneratorQueryProvider.Source getQuerySource() {
    return getGeneratorSessionContext(); // TODO don't expose GeneratorQueryProvider.Source from GenerationSessionContext, pass GQPS as TG cons arg
  }

  public TemplateSwitchMapping getSwitch(SNodeReference switch_) {
    return myRuleManager.getSwitch(switch_);
  }

  @Override
  public boolean areMappingsAvailable() {
    return myIsStrict ? myAreMappingsReady : true;
  }

  @Override
  public boolean isStrict() {
    return myIsStrict;
  }

  public PostponedReference register(@NotNull PostponedReference ref) {
    myPostponedRefs.add(ref);
    return ref;
  }

  /**
   * Let generator know about dynamic references produced during generation.
   * We might handle {@link jetbrains.mps.smodel.DynamicReference} in a special way as long as there's evading reason to
   * keep references dynamic during generation (as it only slows down model access due to ongoing scope use.
   * @param dr DynamicReference instance
   */
  public void registerDynamicReference(@NotNull SReference dr) {
    myDynamicRefs.add(dr);
  }

  void setChanged() {
    myChanged = true;
  }

  protected void registerRoot(GeneratedRootDescriptor rd) {
    myOutputRoots.add(rd.myOutputRoot);
    myNewToOldRoot.put(rd.myOutputRoot, rd.myInputNode);
    myDependenciesBuilder.registerRoot(rd.myOutputRoot, rd.myInputNode);
    if (rd.myIsCopied) {
      getGeneratorSessionContext().registerCopiedRoot(rd.myOutputRoot);
    }
    if (myDeltaBuilder != null) {
      if (rd.myIsInputPreserved) {
        // if a new root comes from root mapping rule with keepRoot == true, pretend it's completely new root
        // FIXME the whole thing with registerRoot shall be refactored - there's little sense to forget about context
        // root being added at, and to restore this knowledge inside DeltaBuilder.registerRoot based on two node values only.
        myDeltaBuilder.registerRoot(null, rd.myOutputRoot);
      } else {
        myDeltaBuilder.registerRoot(rd.myInputNode, rd.myOutputRoot);
      }
    }
  }

  void replacePlaceholderNode(@NotNull SNode placeholder, @NotNull SNode actual, @NotNull TemplateContext ctx, SNodeReference templateNode) {
    SNode parent = placeholder.getParent();
    if (parent != null) {
      // check new child
      SContainmentLink childRole = placeholder.getContainmentLink();
      final Status status = getChildRoleValidator(parent, childRole).validate(actual);
      if (status != null) {
        getLogger().warning(templateNode, status.getMessage("delayed changes"), status.describe(
            GeneratorUtil.describe(ctx.getInput(), "input"), GeneratorUtil.describe(parent, "parent")
        ));
      }
    }
    if (myDeltaBuilder != null) {
      // placeholders with active inplace may lack both model and parent (top of MAP-SRC-injected subtree)
      myDeltaBuilder.replacePlaceholderNode(placeholder, actual);
    } else {
      assert placeholder.getModel() != null || parent != null : "Can't replace node that is not part of another structure (hangs in the air)";
      SNodeUtil.replaceWithAnother(placeholder, actual);
    }
    if (parent == null && placeholder.getModel() != null) {
      myDependenciesBuilder.rootReplaced(placeholder, actual);
    }
  }

  public SNode getOriginalRootByGenerated(SNode root) {
    SNode node = myNewToOldRoot.get(root);
    if (node == null) return null;
    if (node.getModel() == null) return null;
    if (node.getParent() == null) return node;
    return node.getContainingRoot();
  }

  public boolean isIncremental() {
    return myDependenciesBuilder instanceof IncrementalDependenciesBuilder;
  }

  private boolean isInplaceChangeEnabled() {
    return getGeneratorSessionContext().getGenerationOptions().applyTransformationsInplace();
  }

  private abstract static class NodeCopyFacility {
    protected final TemplateExecutionEnvironmentImpl myEnv;
    protected boolean myIsChanged = false;

    protected NodeCopyFacility(@NotNull TemplateExecutionEnvironmentImpl env) {
      myEnv = env;
    }
    public final IGeneratorLogger getLogger() {
      return myEnv.getLogger();
    }
    public final boolean hasChanges() {
      return myIsChanged;
    }

    /**
     * @return true if one of drop rules matched
     */
    public final boolean checkDropRules(SNode inputRootNode, Iterable<TemplateDropRootRule> rules) throws GenerationFailureException {
      for (TemplateDropRootRule dropRootRule : rules) {
        if (isApplicableDropRootRule(inputRootNode, dropRootRule)) {
          drop(inputRootNode, dropRootRule);
          return true;
        }
      }
      return false;
    }

    protected abstract void drop(SNode inputRootNode, TemplateDropRootRule rule);

    public abstract void copyRootInputNode(@NotNull SNode inputRoot) throws GenerationFailureException, GenerationCanceledException;

    private boolean isApplicableDropRootRule(SNode inputRootNode, TemplateDropRootRule rule) throws GenerationFailureException {
      String applicableConcept = rule.getApplicableConcept();
      if (applicableConcept == null) {
        getLogger().error(rule.getRuleNode(), "rule has no applicable concept defined");
        return false;
      }

      if (inputRootNode.getConcept().isSubConceptOf(SConceptRepository.getInstance().getConcept(applicableConcept))) {
        return myEnv.getQueryExecutor().isApplicable(rule, new DefaultTemplateContext(myEnv, inputRootNode, null));
      }
      return false;
    }
  }

  static class GeneratedRootDescriptor {
    // newly created root output node
    final SNode myOutputRoot;
    // input node, if any; not necessarily root
    final SNode myInputNode;
    // rule that produced the root, or null if copy root
    final SNodeReference myTemplateNode;
    // true if root is a copy of a root in input model
    final boolean myIsCopied;
    // true iff outputRoot is created from inputNode which is root and is kept in the output model as well.
    final boolean myIsInputPreserved;

    private GeneratedRootDescriptor(@NotNull SNode outputRoot, @Nullable SNode input, boolean isInputPreserved, SNodeReference templateNode, boolean isCopied) {
      myOutputRoot = outputRoot;
      myInputNode = input;
      myTemplateNode = templateNode;
      myIsInputPreserved = isInputPreserved;
      myIsCopied = isCopied;
    }

    // new root produced
    public GeneratedRootDescriptor(@NotNull SNode outputRoot, @NotNull SNodeReference templateNode) {
      this(outputRoot, null, false, templateNode, false);
    }

    // new root produced based on existing node, possibly replacing it
    public GeneratedRootDescriptor(@NotNull SNode outputRoot, @NotNull SNode input, boolean preserveInputRoot, @NotNull SNodeReference templateNode) {
      this(outputRoot, input, preserveInputRoot, templateNode, false);
    }

    // copy of input root in the output model
    public GeneratedRootDescriptor(@NotNull SNode outputRoot, @NotNull SNode input) {
      this(outputRoot, input, false, null, true);
    }
  }

  private class PartialCopyFacility extends  NodeCopyFacility {
    private final DeltaBuilder myDeltaBuilder;

    public PartialCopyFacility(@NotNull TemplateExecutionEnvironmentImpl env, @NotNull DeltaBuilder deltaBuilder) {
      super(env);
      myDeltaBuilder = deltaBuilder;
    }

    @Override
    protected void drop(SNode inputRootNode, TemplateDropRootRule rule) {
      myDeltaBuilder.deleteInputRoot(inputRootNode);
    }

    @Override
    public void copyRootInputNode(@NotNull SNode inputRootNode) throws GenerationFailureException, GenerationCanceledException {
      myDeltaBuilder.enterInputRoot(inputRootNode);
      try {
        visitInputNode(inputRootNode);
      } finally {
        myDeltaBuilder.leaveInputRoot(inputRootNode);
      }
      // for now, registerRoot shall go *after* leaveInputRoot, as deltaBuilder expects CopyRoot to be full of replacing nodes
      // at the moment root is registered (to fill id map of new nodes)
      // TODO make map building an explicit step in DeltaBuilder so that ordering won't matter that much.
      // (the question is what if anyone calls findOutputNode while rules are applied (seems !strict model allows that)
      myEnv.getGenerator().registerRoot(new GeneratedRootDescriptor(inputRootNode, inputRootNode)); // weaving rules need myNewToOldRoot mapping
    }

    private void visitInputNode(SNode inputNode) throws GenerationFailureException, GenerationCanceledException {
      myEnv.blockReductionsForCopiedNode(inputNode, inputNode); // prevent infinite applying of the same reduction to the 'same' node.
      for (SNode inputChildNode : inputNode.getChildren()) {
        SContainmentLink childRole = inputChildNode.getContainmentLink();
        assert childRole != null;

        Collection<SNode> outputChildNodes = myEnv.tryToReduce(inputChildNode);
        if (outputChildNodes != null) {
          myDeltaBuilder.registerSubTree(inputChildNode, childRole, outputChildNodes);
          myIsChanged = true;
        } else {
          visitInputNode(inputChildNode);
        }
    }
    }
  }

  private static class FullCopyFacility extends NodeCopyFacility {
    private final Set<SNode> myAdditionalInputNodes;
    private final SModel myInputModel;
    private final SModelReference myOutputModelRef;
    private final Factory myNodeFactory;

    public FullCopyFacility(TemplateExecutionEnvironmentImpl env) {
      this(env, Collections.<SNode>emptySet());
    }
    public FullCopyFacility(TemplateExecutionEnvironmentImpl env, Set<SNode> additionalInputs) {
      super(env);
      myAdditionalInputNodes = additionalInputs;
      myInputModel = env.getGenerator().getInputModel();
      myOutputModelRef = env.getOutputModel().getReference();
      myNodeFactory = new RegularSModelFactory();
    }

    @Override
    protected void drop(SNode inputRootNode, TemplateDropRootRule rule) {
    }

    @Override
    public void copyRootInputNode(@NotNull SNode inputRootNode) throws GenerationFailureException, GenerationCanceledException {
      // copy
      SNode root = copyInputNode(inputRootNode);
      myEnv.getGenerator().registerRoot(new GeneratedRootDescriptor(root, inputRootNode));
    }

    private void reportBrokenRef(@NotNull SNode inputNode, @NotNull SReference ref) {
      getLogger().error(inputNode.getReference(),
          String.format("broken reference '%s' in %s (target model is null)", ref.getRole(), SNodeOperations.getDebugText(inputNode)),
          GeneratorUtil.describeIfExists(inputNode, "input node"));
    }

    public SNode copyInputNode(@NotNull SNode inputNode) throws GenerationFailureException, GenerationCanceledException {
      // no reduction found - do node copying
      SNode outputNode;
      final SModel inputNodeModel = inputNode.getModel();
      if (inputNode.getNodeId() != null && inputNodeModel != null) {
        // copy preserving id
        outputNode = myNodeFactory.create(inputNode);
      } else {
        outputNode = myEnv.getOutputModel().createNode(inputNode.getConcept());
      }
      myEnv.blockReductionsForCopiedNode(inputNode, outputNode); // prevent infinite applying of the same reduction to the 'same' node.

      // output node should be accessible via 'findCopiedNode'
      myEnv.getGenerator().addCopiedOutputNodeForInputNode(inputNode, outputNode);

      jetbrains.mps.util.SNodeOperations.copyProperties(inputNode, outputNode);
      jetbrains.mps.util.SNodeOperations.copyUserObjects(inputNode, outputNode);

      for (SReference inputReference : inputNode.getReferences()) {
        if (inputNodeModel != null) {
          boolean external = true;
          if (inputReference instanceof PostponedReference){
            external = false;
          } else if (inputNodeModel.getReference().equals(inputReference.getTargetSModelReference())){
            external = false;
          }
          if (inputReference instanceof DynamicReference || external) {
            // dynamic & external references don't need validation => replace input model with output
            SModelReference targetModelReference = external ? inputReference.getTargetSModelReference() : myOutputModelRef;
            if (inputReference instanceof StaticReference) {
              if (targetModelReference == null) {
                reportBrokenRef(inputNode, inputReference);
                continue;
              }

              SReference reference = new StaticReference(
                  inputReference.getLink(),
                  outputNode,
                  targetModelReference,
                  inputReference.getTargetNodeId(),
                  ((StaticReference) inputReference).getResolveInfo());
              outputNode.setReference(reference.getLink(), reference);
            } else if (inputReference instanceof DynamicReference) {
              DynamicReference outputReference = new DynamicReference(
                  inputReference.getRole(),
                  outputNode,
                  targetModelReference,
                  ((DynamicReference) inputReference).getResolveInfo());
              outputReference.setOrigin(((DynamicReference) inputReference).getOrigin());
              outputNode.setReference(outputReference.getLink(), outputReference);
            } else {
              String msg = "internal error: can't clone reference '%s' in %s. Reference class: %s";
              getLogger().error(inputNode.getReference(),
                  String.format(msg, inputReference.getRole(), SNodeOperations.getDebugText(inputNode), inputReference.getClass().getName()));
            }
            continue;
          }
        }

        SNode refTarget = jetbrains.mps.util.SNodeOperations.getTargetNodeSilently(inputReference);
        if (refTarget == null) {
          reportBrokenRef(inputNode, inputReference);
          continue;
        }

        if (refTarget.getModel() != null && refTarget.getModel().equals(myInputModel) || myAdditionalInputNodes.contains(refTarget)) {
          ReferenceInfo_CopiedInputNode refInfo = new ReferenceInfo_CopiedInputNode(inputNode, refTarget);
          new PostponedReference(inputReference.getLink(), outputNode, refInfo).setAndRegister(myEnv.getGenerator());
        } else if (refTarget.getModel() != null) {
          SNodeAccessUtil.setReferenceTarget(outputNode, inputReference.getRole(), refTarget);
        } else {
          reportBrokenRef(inputNode, inputReference);
        }
      }

      for (SNode inputChildNode : inputNode.getChildren()) {
        SContainmentLink childRole = inputChildNode.getContainmentLink();
        assert childRole != null;

        Collection<SNode> outputChildNodes = myEnv.tryToReduce(inputChildNode);
        if (outputChildNodes != null) {
          myIsChanged = true;
          RoleValidator rv = myEnv.getGenerator().getChildRoleValidator(outputNode, childRole);
          for (SNode outputChildNode : outputChildNodes) {
            // check child
            Status status = rv.validate(outputChildNode);
            if (status != null) {
              getLogger().warning(inputChildNode.getReference(), status.getMessage("copy input node"),
                  status.describe(GeneratorUtil.describeIfExists(TracingUtil.getInput(inputNode), "origin")));
            }
            outputNode.addChild(childRole, outputChildNode);
          }
        } else {
          outputNode.addChild(childRole, copyInputNode(inputChildNode));
        }
      }

      return outputNode;
    }
  }

}
