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

import jetbrains.mps.InternalFlag;
import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.generator.GenerationCanceledException;
import jetbrains.mps.generator.GenerationOptions;
import jetbrains.mps.generator.GenerationParametersProvider;
import jetbrains.mps.generator.GenerationParametersProviderEx;
import jetbrains.mps.generator.GenerationSessionContext;
import jetbrains.mps.generator.GenerationStatus;
import jetbrains.mps.generator.GenerationTrace;
import jetbrains.mps.generator.ModelGenerationPlan;
import jetbrains.mps.generator.TransientModelsModule;
import jetbrains.mps.generator.impl.GeneratorLoggerAdapter.BasicFactory;
import jetbrains.mps.generator.impl.GeneratorLoggerAdapter.RecordingFactory;
import jetbrains.mps.generator.impl.IGenerationTaskPool.ITaskPoolProvider;
import jetbrains.mps.generator.impl.TemplateGenerator.StepArguments;
import jetbrains.mps.generator.impl.cache.IntermediateCacheHelper;
import jetbrains.mps.generator.impl.dependencies.DependenciesBuilder;
import jetbrains.mps.generator.impl.dependencies.IncrementalDependenciesBuilder;
import jetbrains.mps.generator.impl.plan.Conflict;
import jetbrains.mps.generator.impl.plan.GenerationPartitioningUtil;
import jetbrains.mps.generator.impl.plan.GenerationPlan;
import jetbrains.mps.generator.impl.plan.MapCfgComparator;
import jetbrains.mps.generator.impl.plan.ModelContentUtil;
import jetbrains.mps.generator.runtime.TemplateMappingConfiguration;
import jetbrains.mps.generator.runtime.TemplateMappingScript;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.logging.MPSAppenderBase;
import jetbrains.mps.messages.MessageKind;
import jetbrains.mps.messages.NodeWithContext;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.FastNodeFinderManager;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.SNodeOperations;
import jetbrains.mps.util.performance.IPerformanceTracer;
import org.apache.log4j.Priority;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;

/**
 * Igor Alshannikov
 * Oct 26, 2005
 * <p/>
 * Created once per model generation.
 */
class GenerationSession {
  private final ITaskPoolProvider myTaskPoolProvider;
  private final SModel myOriginalInputModel;
  private final Project myProject;
  private GenerationPlan myGenerationPlan;

  private final GenerationTrace myNewTrace;
  private MPSAppenderBase myLoggingHandler;
  private final RecordingFactory myLogRecorder;
  private final GenerationSessionLogger myLogger;
  private DependenciesBuilder myDependenciesBuilder;

  private IntermediateCacheHelper myIntermediateCache;
  // != null unless session is abandoned/disposed
  private GenerationSessionContext mySessionContext;
  private final IPerformanceTracer ttrace;
  private StepArguments myStepArguments;

  private int myMajorStep = 0;
  private int myMinorStep = -1;
  private final GenerationOptions myGenerationOptions;
  private final List<SModel> myTransientModelsToRecycle = new ArrayList<SModel>();

  GenerationSession(@NotNull SModel inputModel, @NotNull GenControllerContext environment, ITaskPoolProvider taskPoolProvider,
      GeneratorLoggerAdapter logger, TransientModelsModule transientModule, IPerformanceTracer performanceTracer, GenerationTrace genTrace) {
    myTaskPoolProvider = taskPoolProvider;
    myOriginalInputModel = inputModel;
    myNewTrace = genTrace;
    myLogRecorder = new RecordingFactory(new BasicFactory());
    myLogger = new GenerationSessionLogger(logger, myLogRecorder);
    ttrace = performanceTracer;
    myGenerationOptions = environment.getOptions();
    myProject = environment.getProject();
    mySessionContext = new GenerationSessionContext(environment, transientModule, myLogger, myOriginalInputModel, performanceTracer);
  }

  GenerationStatus generateModel(ProgressMonitor monitor) throws GenerationCanceledException {
    if (myMajorStep != 0) {
      throw new GenerationCanceledException();
    }

    // create a plan
    GenerationParametersProvider parametersProvider = myGenerationOptions.getParametersProvider();
    ttrace.push("analyzing dependencies", false);
    Collection<String> additionalLanguages =
        parametersProvider instanceof GenerationParametersProviderEx
            ? ((GenerationParametersProviderEx) parametersProvider).getAdditionalLanguages(myOriginalInputModel)
            : null;
    ModelGenerationPlan customPlan = myGenerationOptions.getCustomPlan(myOriginalInputModel);
    myGenerationPlan = customPlan != null
        ? new GenerationPlan(myOriginalInputModel, customPlan)
        : new GenerationPlan(myOriginalInputModel, additionalLanguages);
    if (!checkGenerationPlan(myGenerationPlan)) {
      if (myGenerationOptions.isStrictMode()) {
        throw new GenerationCanceledException();
      }
    }

    monitor.start("", 1 + myGenerationPlan.getStepCount());
    try {
      // distinct helper instance to hold data from existing cache (myIntermediateCache keeps data of actual generation)
      IntermediateCacheHelper cacheHelper = new IntermediateCacheHelper(myGenerationOptions.getIncrementalStrategy(), myGenerationPlan, ttrace);
      IncrementalGenerationHandler incrementalHandler = new IncrementalGenerationHandler(myOriginalInputModel, myProject,
          myGenerationOptions, cacheHelper, null);
      myDependenciesBuilder = incrementalHandler.createDependenciesBuilder();

      if (incrementalHandler.canOptimize()) {
        int ignored = incrementalHandler.getIgnoredRoots().size();
        int total = incrementalHandler.getRootsCount();
        myLogger.info((!incrementalHandler.canIgnoreConditionals() ? "" : "descriptors and ") + ignored + " of " + total + " roots are unchanged");

        if (total > 0 && ignored == total && incrementalHandler.canIgnoreConditionals()) {
          myLogger.info("generated files are up-to-date");
          ttrace.pop();
          return new GenerationStatus(myOriginalInputModel, null,
              myDependenciesBuilder.getResult(myGenerationOptions.getIncrementalStrategy()), false, false, false);
        }

        if (!incrementalHandler.getRequiredRoots().isEmpty() || incrementalHandler.requireConditionals()) {
          myLogger.info((!incrementalHandler.requireConditionals() ? "" :
              "descriptors and ") + incrementalHandler.getRequiredRoots().size() + " roots can be used from cache");
        }

        if (myGenerationOptions.getTracingMode() != GenerationOptions.TRACE_OFF) {
          myLogger.info("Processing:");
          for (SNode node : myOriginalInputModel.getRootNodes()) {
            if (incrementalHandler.getRequiredRoots().contains(node)) {
              myLogger.info(String.format("%s (%s) (cache)", node.getName(), node.getConcept().getQualifiedName()));
            } else if (!incrementalHandler.getIgnoredRoots().contains(node)) {
              myLogger.info(String.format("%s (%s)", node.getName(), node.getConcept().getQualifiedName()));
            }
          }
        }
      }
      monitor.advance(1);

      if (InternalFlag.isInternalMode() && myGenerationOptions.isRebuildAll() && myGenerationOptions.isDebugIncrementalDependencies() && myDependenciesBuilder instanceof IncrementalDependenciesBuilder) {
        myLogger.info("creating generated.trace");
        ((IncrementalDependenciesBuilder) myDependenciesBuilder).traceDependencyOrigins();
      }

      boolean success = false;

      myIntermediateCache = new IntermediateCacheHelper(myGenerationOptions.getIncrementalStrategy(), myGenerationPlan, ttrace);
      myIntermediateCache.createNew(myOriginalInputModel);
      ttrace.pop();
      try {
        // prepare input model: make a clone so that rest of generator always works with transient model.
        // This ensures each node got correct TracingUtil.ORIGINAL_INPUT_NODE (for traceInfo) in SNode.userObjects - there
        // are templates out there that perform .copy on input nodes, and we have no chances to trace such nodes back. This used to work
        // (with fallback to parent nodes) until in-place transformations brought cases when either regular model or a transient one
        // serve as an input, which lead to different traceInfo (being more specific with transient model as input, as each node in transient does keep
        // reference to origin)
        // Another benefit is that FastNodeFinder (used throughout generator e.g. with model.nodes(Concept)) gives nodes in different order for
        // regular and transient SModel (sorted by nodeid from DefaultFastNodeFinder, natural iteration order for TransientModelNodeFinder).
        // Although this can be fixed in DFNF (not to sort, share impl for both FNF), it's still better to avoid possible differences.
        // Last, but not least, there's planned switch to GeneratorSNode/GeneratorSModel to facilitate model reconstruction from delta
        // and we'll need to switch to 'transient' (generator) model here anyway
        mySessionContext = new GenerationSessionContext(mySessionContext, myGenerationPlan);
        SModel currInputModel = createTransientModel("0");
        new CloneUtil(myOriginalInputModel, currInputModel).traceOriginalInput().cloneModelWithImports();
        // inform DependencyBuilder about new input model (now it keeps map based on instances, once it's nodeid (or it's gone), there'd be no need for):
        for (Iterator<SNode> it1 = myOriginalInputModel.getRootNodes().iterator(), it2 = currInputModel.getRootNodes().iterator(); it1.hasNext() && it2.hasNext();) {
          myDependenciesBuilder.registerRoot(it2.next(), it1.next());
        }
        myDependenciesBuilder.updateModel(currInputModel);
        SModel currOutput = null;

        ttrace.push("steps", false);
        myGenerationPlan.createSwitchGraph();

        for (myMajorStep = 0; myMajorStep < myGenerationPlan.getStepCount(); myMajorStep++) {
          final List<TemplateMappingConfiguration> mappingConfigurations = myGenerationPlan.getMappingConfigurations(myMajorStep);
          if (mappingConfigurations.size() >= 1) {
            final TemplateMappingConfiguration first = mappingConfigurations.get(0);
            String n = GeneratorUtil.compactNamespace(first.getModel().getLongName());
            monitor.step(String.format("step %d (%s#%s%s)", myMajorStep+1, n, first.getName(), mappingConfigurations.size() == 1 ? "" : "..."));
          }

          if (myLogger.needsInfo()) {
            myLogger.info("executing step " + (myMajorStep + 1));
          }
          currOutput = executeMajorStep(monitor.subTask(1), currInputModel);
          monitor.advance(0);
          if (currOutput == null || myLogger.getErrorCount() > 0) {
            break;
          }
          if (mappingConfigurations.isEmpty()) {
            break;
          }
          currInputModel = currOutput;
        }
        ttrace.pop();

        // we need this in order to prevent memory leaks from nodes which are reported to message view
        // since session objects might include objects with disposed class loaders
        mySessionContext.clearTransientObjects();

        if (myGenerationOptions.isKeepOutputModel() && currOutput != null) {
          mySessionContext.getModule().addModelToKeep(currOutput.getReference(), true);
        }

        GenerationStatus generationStatus = new GenerationStatus(myOriginalInputModel, currOutput,
            myDependenciesBuilder.getResult(myGenerationOptions.getIncrementalStrategy()), myLogger.getErrorCount() > 0,
            myLogger.getWarningCount() > 0, false);
        generationStatus.setModelExports(mySessionContext.getExports().getExports());
        success = generationStatus.isOk();
        return generationStatus;
      } catch (GenerationCanceledException gce) {
        throw gce;
      } catch (GenerationFailureException gfe) {
        final String nestedException;
        if (gfe.getCause() != null) {
          nestedException = gfe.getCause().toString();
        } else {
          nestedException = "";
        }
        String error = gfe.getMessage() == null ? gfe.toString() : gfe.getMessage();
        String msg = String.format("Generation failed for model '%s': %s. %s", myOriginalInputModel.getReference().getModelName(), error, nestedException);
        myLogger.handleException(gfe);
        myLogger.error(msg);
        return new GenerationStatus.ERROR(myOriginalInputModel);
      } catch (Exception e) {
        myLogger.handleException(e);
        myLogger.error("model \"" + myOriginalInputModel.getReference().getModelName() + "\" generation failed (see exception)");
        return new GenerationStatus.ERROR(myOriginalInputModel);
      } finally {
        if (success) {
          myIntermediateCache.commit();
        } else {
          myIntermediateCache.discard();
        }
      }
    } finally {
      monitor.done();
    }
  }

  private SModel executeMajorStep(ProgressMonitor progress, SModel inputModel) throws GenerationCanceledException, GenerationFailureException {
    myMinorStep = -1;

    List<TemplateMappingConfiguration> mappingConfigurations = new ArrayList<TemplateMappingConfiguration>(
        myGenerationPlan.getMappingConfigurations(myMajorStep));
    if (mappingConfigurations.isEmpty()) {
      if (inputModel.getRootNodes().iterator().hasNext()) {
        myLogger.warning("skip model \"" + inputModel.getReference().getModelName() + "\" : no generator available");
      }
      return inputModel;
    }
    if (myLogger.needsInfo()) {
      printGenerationStepData(inputModel);
    }

    // -- replace context
    mySessionContext = new GenerationSessionContext(mySessionContext);

    // -- filter mapping configurations
    TemplateGenerator templateGenerator = new TemplateGenerator(mySessionContext, inputModel, null, new StepArguments(null, myDependenciesBuilder, myNewTrace, null));
    LinkedList<TemplateMappingConfiguration> drop = new LinkedList<TemplateMappingConfiguration>();
    for (TemplateMappingConfiguration c : mappingConfigurations) {
      if (!c.isApplicable(templateGenerator)) {
        drop.add(c);
      }
    }
    if (!drop.isEmpty()) {
      printMappingConfigurations("drop mapping configurations (not applicable):", drop);
    }
    mappingConfigurations.removeAll(drop);
    if (mappingConfigurations.isEmpty()) {
      // no applicable configurations found
      return inputModel;
    }

    // -- prepare generator
    Collections.sort(mappingConfigurations, new MapCfgComparator());
    RuleManager ruleManager = new RuleManager(myGenerationPlan, mappingConfigurations, myLogger);

    try {
      myStepArguments = new StepArguments(ruleManager, myDependenciesBuilder, myNewTrace, new GeneratorMappings(myLogger));
      SModel outputModel = executeMajorStepInternal(inputModel, progress);
      if (myLogger.getErrorCount() > 0) {
        myLogger.warning("model \"" + inputModel.getReference().getModelName() + "\" has been generated with errors");
      }
      myStepArguments = null;
      return outputModel;
    } finally {
      recordAccessedTransientModels();
    }
  }

  // precondition: myStepArguments initialized (!= null);
  private SModel executeMajorStepInternal(SModel inputModel, ProgressMonitor progress) throws GenerationFailureException, GenerationCanceledException {
    SModel currentInputModel = inputModel;
    final boolean cloneInputModel = myGenerationOptions.isSaveTransientModels() && myGenerationOptions.applyTransformationsInplace();

    // -----------------------
    // run pre-processing scripts
    // -----------------------
    ttrace.push("pre-processing", false);
    currentInputModel = preProcessModel(currentInputModel);
    ttrace.pop();

    SModel currentOutputModel = createTransientModel();

    if (myLogger.needsInfo()) {
      myLogger.info(
          "generating model '" + currentInputModel.getModelName() + "' --> '" + currentOutputModel.getModelName() + "'");
    }
    boolean isPrimary = true;
    // exit condition for secondary mapping
    int secondaryMappingRepeatCount = 0;
    while (true) {
      if (myLogger.needsInfo() && !isPrimary /*only for 1+ minor steps*/) {
        myLogger.info(String.format("next minor step '%s' --> '%s'",
            SModelStereotype.getStereotype(currentInputModel), SModelStereotype.getStereotype(currentOutputModel)));
      }
      myNewTrace.nextStep(currentInputModel.getReference(), currentOutputModel.getReference());

      final SModel intactInputModelClone = cloneInputModel ? cloneTransientModel(currentInputModel) : null;
      final TemplateGenerator tg = prepareToApplyRules(currentInputModel, currentOutputModel);
      boolean somethingHasBeenGenerated = false, applySucceed = false;
      try {
        somethingHasBeenGenerated = applyRules(tg, progress, isPrimary);
        applySucceed = true;
        if (!somethingHasBeenGenerated) {
          myNewTrace.dropStep(currentInputModel.getReference(), currentOutputModel.getReference());
        } else {
          // next iteration ...
          mySessionContext.clearTransientObjects();
          isPrimary = false;
        }
      } finally {
        // if apply fails with exception, I'd like to keep both current input and output.
        final boolean generationFailed = !applySucceed;
        final boolean inplaceChange = tg.getOutputModel() != currentOutputModel;
        if (generationFailed) {
          publishTransientModel(currentInputModel.getReference());
          if (!inplaceChange) {
            publishTransientModel(currentOutputModel.getReference());
          }
        }
        if (cloneInputModel) {
          // vault in transient module has two model instances with same reference, shall leave only one.
          // either forcefully drop intactInputModelClone, or change reference of currentInputModel to be another one
          if (inplaceChange && (somethingHasBeenGenerated || generationFailed)) {
            // somethingHasBeenGenerated guards against last step without changes
            publishTransientModel(intactInputModelClone.getReference());
            // pretend inplace model outcome is from currentOutputModel
            changeModelReference(currentInputModel, currentOutputModel.getReference());
            // currentInputModel (with a model reference of current output) stays as input
          } else {
            dropTransientModel(intactInputModelClone);
          }
        }
      }
      if (!somethingHasBeenGenerated) {
        dropTransientModel(currentOutputModel);
        currentOutputModel = currentInputModel;
        break;
      } else {
        SModel realOutputModel = tg.getOutputModel();
        if (realOutputModel == currentOutputModel) { // 'honest' transformation, not in-place
          recycleWasteModel(currentInputModel);
          currentInputModel = currentOutputModel;
          FastNodeFinderManager.dispose(currentInputModel); // why?!
        } else {
          assert currentInputModel == realOutputModel;
          myDependenciesBuilder.dropModel();
          // currentInputModel stays as input.
          // in fact, can reuse output model here, but it's task to solve together with tracer (and how it would live with startTracing(same models)
          dropTransientModel(currentOutputModel);
        }
      }

      if (++secondaryMappingRepeatCount > 10) {
        // TODO I'm not quite sure present log+GenericException is better than SpecificExceptionWithData and handling outside
        logTenMinorStepsCountReached(tg.getOutputModel());
        throw new GenerationFailureException("failed to generate output after 10 repeated mappings");
      }

      currentOutputModel = createTransientModel();
    }

    // -----------------------
    // run post-processing scripts
    // -----------------------
    ttrace.push("post-processing", false);
    currentOutputModel = postProcessModel(currentOutputModel);
    ttrace.pop();

    return currentOutputModel;
  }

  private void logTenMinorStepsCountReached(SModel realOutputModel) {
    myLogger.error("failed to generate output after 10 repeated mappings");
    myLogger.error("to get more diagnostic generate model with the 'save transient models' option");
  }

  @NotNull
  private TemplateGenerator prepareToApplyRules(SModel currentInputModel, SModel currentOutputModel) {
    myDependenciesBuilder.setOutputModel(currentOutputModel, myMajorStep, myMinorStep);
    return myGenerationOptions.isGenerateInParallel()
            ? new ParallelTemplateGenerator(myTaskPoolProvider, mySessionContext, currentInputModel, currentOutputModel, myStepArguments)
            : new TemplateGenerator(mySessionContext, currentInputModel, currentOutputModel, myStepArguments);
  }

  private boolean applyRules(TemplateGenerator tg, ProgressMonitor progress, final boolean isPrimary)
      throws GenerationFailureException, GenerationCanceledException {

    final SModel originalOutputModel = tg.getOutputModel();
    ttrace.push(String.format("Step %d.%d", myMajorStep+1, myMinorStep), true);
    final boolean hasChanges = tg.apply(progress, isPrimary);
    ttrace.pop();

    if (isPrimary || hasChanges) {
      myIntermediateCache.store(myMajorStep, myMinorStep, tg, myDependenciesBuilder);
    }
    if (hasChanges) {
      SModel realOutputModel = tg.getOutputModel();
      myDependenciesBuilder.updateModel(realOutputModel);
    } else {
      // nothing has been generated
      myDependenciesBuilder.dropModel();
      if (!isPrimary) {
        // we may need myMinorStep in postProcess, when we store TransientModelWithMetainfo
        // applyRules did that for primary step regardless of hasChanges state, hence we decrement minorStep
        // only on secondary no-change runs to forget about no-op applyRules.
        // I consider this changes safer than to remove isPrimary check in applyRules (it's appealing
        // to save TMWM only when there are changes) as it seems there's assumption about TMWM presence (if used) for each step.
        myMinorStep--;
      }
      if (myLogger.needsInfo()) {
        myLogger.info(String.format("unchanged, empty model '%s' removed", SModelStereotype.getStereotype(originalOutputModel)));
      }
    }
    return hasChanges;
  }

  private SModel preProcessModel(SModel currentInputModel) throws GenerationFailureException {
    final RuleManager ruleManager = myStepArguments.ruleManager;
    if (ruleManager.getPreProcessScripts().isEmpty()) {
      return currentInputModel;
    }

    final boolean modifiesModel = ruleManager.getPreProcessScripts().modifiesModel();
    // need to clone input model?
    // generally, there's no need to have a copy to run a script, even if it modifies the model
    // however, if we keep transients AND model is modified, it's handy to get a copy of the model to see the difference
    final boolean needToCloneInputModel = modifiesModel && myGenerationOptions.isSaveTransientModels();
    SModel toRecycle = null;
    if (needToCloneInputModel) {
      ttrace.push("model clone", false);
      SModel currentInputModel_clone = createTransientModel();
      if (myLogger.needsInfo()) {
        myLogger.info(
            "clone model '" + currentInputModel.getReference().getModelName() + "' --> '" + currentInputModel_clone.getReference().getModelName() + "'");
      }
      new CloneUtil(currentInputModel, currentInputModel_clone).cloneModelWithImports();
      ttrace.pop();

      myNewTrace.nextStep(currentInputModel.getReference(), currentInputModel_clone.getReference());

      // probably we can forget about former input model here
      toRecycle = currentInputModel;
      currentInputModel = currentInputModel_clone;
      myDependenciesBuilder.scriptApplied(currentInputModel); // scriptApplied for a blank copy to record old root to new root mapping
    } else {
      myNewTrace.nextStep(currentInputModel.getReference(), currentInputModel.getReference());
    }

    TemplateGenerator templateGenerator = new TemplateGenerator(mySessionContext, currentInputModel, currentInputModel, myStepArguments);
    for (TemplateMappingScript preMappingScript : ruleManager.getPreProcessScripts().getScripts()) {
      if (myLogger.needsInfo()) {
        myLogger.info(preMappingScript.getScriptNode(), "pre-process " + preMappingScript.getLongName());
      }
      templateGenerator.executeScript(preMappingScript);
    }
    if (modifiesModel) {
      myDependenciesBuilder.scriptApplied(currentInputModel);
    }
    if (needToCloneInputModel) {
      myIntermediateCache.store(myMajorStep, myMinorStep, templateGenerator, myDependenciesBuilder);
      recycleWasteModel(toRecycle);
    }
    myLogger.info("pre-processing finished");
    return currentInputModel;
  }

  private SModel postProcessModel(SModel currentModel) throws GenerationFailureException {
    final RuleManager ruleManager = myStepArguments.ruleManager;
    if (ruleManager.getPostProcessScripts().isEmpty()) {
      return currentModel;
    }
    // post-processing script is deemed to modify model always
    final boolean needToCloneModel = myGenerationOptions.isSaveTransientModels();
    SModel toRecycle = null;
    if (needToCloneModel) {
      ttrace.push("model clone", false);
      SModel currentOutputModel_clone = createTransientModel();
      if (myLogger.needsInfo()) {
        myLogger.info("clone model '" + currentModel.getReference().getModelName() + "' --> '" + currentOutputModel_clone.getReference().getModelName() + "'");
      }
      new CloneUtil(currentModel, currentOutputModel_clone).cloneModelWithImports();
      ttrace.pop();

      myNewTrace.nextStep(currentModel.getReference(), currentOutputModel_clone.getReference());
      toRecycle = currentModel;
      currentModel = currentOutputModel_clone;
      myDependenciesBuilder.scriptApplied(currentModel);
    } else {
      myNewTrace.nextStep(currentModel.getReference(), currentModel.getReference());
      // just in case post-script modifies model a lot, and we've got FNF there, prevent it being updated - it's cheaper to create new one at the next step
      FastNodeFinderManager.dispose(currentModel);
    }

    // FIXME I don't need ruleManager, nor even DependencyManager to execute a script. Refactor QueryExecutionContext
    TemplateGenerator templateGenerator = new TemplateGenerator(mySessionContext, currentModel, currentModel, myStepArguments);

    for (TemplateMappingScript postMappingScript : ruleManager.getPostProcessScripts().getScripts()) {
      if (myLogger.needsInfo()) {
        myLogger.info(postMappingScript.getScriptNode(), "post-process " + postMappingScript.getLongName());
      }
      templateGenerator.executeScript(postMappingScript);
    }
    myDependenciesBuilder.scriptApplied(currentModel);
    if (needToCloneModel) {
      myIntermediateCache.store(myMajorStep, myMinorStep, templateGenerator, myDependenciesBuilder);
      recycleWasteModel(toRecycle);
    }
    myLogger.info("post-processing finished");
    return currentModel;
  }

  // XXX createOutputModel? - since the method has a side effect, increments myMinorStep count
  private SModel createTransientModel() {
    return createTransientModel(Integer.toString(myMajorStep + 1) + "_" + ++myMinorStep);
  }

  private SModel createTransientModel(String stereotype) {
    TransientModelsModule module = mySessionContext.getModule();
    String longName = SNodeOperations.getModelLongName(myOriginalInputModel);
    final String transientModelName = longName + '@' + stereotype;
    final SModelReference mr = PersistenceFacade.getInstance().createModelReference(module.getModuleReference(), jetbrains.mps.smodel.SModelId.generate(), transientModelName);
    return module.createTransientModel(mr);
  }

  /**
   * makes an identical copy of transient model, preserving model reference
   */
  private SModel cloneTransientModel(SModel transientModel) {
    TransientModelsModule module = mySessionContext.getModule();
    final SModelReference mr = transientModel.getReference();
    assert module.isMyTransientModel(mr);
    SModel newModel = module.createTransientModel(mr);
    new CloneUtil(transientModel, newModel).cloneModelWithImports();
    return newModel;
  }

  private void changeModelReference(@NotNull SModel transientModel, @NotNull SModelReference newRef) {
    TransientModelsModule module = mySessionContext.getModule();
    module.changeModelReference(transientModel, newRef);
  }

  /**
   * Dispose model and associated resources.
   * The model is recycled unless we keep transients or there's a warning/error pointing to the model.
   */
  private void recycleWasteModel(@NotNull SModel model) {
    assert (model.getModule() instanceof TransientModelsModule);
    myTransientModelsToRecycle.add(model);
  }
  // records the reference to model we'd like to see in transients, useful to forcefully
  // expose models on failures
  private void publishTransientModel(@NotNull SModelReference modelReference) {
    mySessionContext.getModule().addModelToKeep(modelReference, true);
  }
  // forget particular transient model instance (doesn't affect list of published models)
  // useful for models without changes
  private void dropTransientModel(@NotNull SModel model) {
    mySessionContext.getModule().removeModel(model);
  }

  private boolean checkGenerationPlan(GenerationPlan generationPlan) {
    if (myOriginalInputModel.getModule() instanceof Generator && SModelStereotype.isGeneratorModel(myOriginalInputModel)) {
      SModuleReference me = myOriginalInputModel.getModule().getModuleReference();
      for (TemplateModule t : generationPlan.getGenerators()) {
        if (t.getReference().equals(me)) {
          myLogger.warning("the generator is used to generate itself: try to avoid using language constructs in its queries");
          break;
        }
      }
    }
    if (generationPlan.hasConflictingPriorityRules()) {
      myLogger.error("Conflicting mapping priority rules encountered:");
      for (Conflict c : generationPlan.getConflicts()) {
        SModuleReference origin = c.getOrigin();
        if (origin == null) {
          // there might be conflicts due to implicit rules GenerationPlan adds. These rules don't belong to any
          // generator, thus we use current input model as the origin of the conflict.
          // XXX it might be reasonable to keep this logic deep in GP and restrict Conflict.getOrigin != null.
          origin = myOriginalInputModel.getModule().getModuleReference();
        }
        myLogger.error(origin, c.getText());
      }
      myLogger.error("");
      return false;
    }
    return true;
  }

  private void printGenerationStepData(SModel inputModel) {
    List<String> references = new ArrayList<String>(ModelContentUtil.getUsedLanguageNamespaces(inputModel));
    Collections.sort(references);
    myLogger.info("languages used:");
    for (String reference : references) {
      myLogger.info("    " + reference);
    }
    printMappingConfigurations("apply mapping configurations:", myGenerationPlan.getMappingConfigurations(myMajorStep));
  }

  private void printMappingConfigurations(String title, List<TemplateMappingConfiguration> mc) {
    myLogger.info(title);
    List<Pair<String, TemplateMappingConfiguration>> messages = GenerationPartitioningUtil.toStrings(mc);
    for (Pair<String, TemplateMappingConfiguration> message : messages) {
      myLogger.info(message.o2.getMappingNode(), String.format("    %s", message.o1));
    }
  }

  private void recordAccessedTransientModels() {
    Collection<SModelReference> modelToKeepCandidates = new LinkedHashSet<SModelReference>();
    final TransientModelsModule transientsModule = mySessionContext.getModule();
    if (keepTransientForMessageNavigation()) {
      modelToKeepCandidates.addAll(myLogRecorder.ofKind(MessageKind.ERROR));
      if (myGenerationOptions.isShowWarnings() && myGenerationOptions.isKeepModelsWithWarnings()) {
        modelToKeepCandidates.addAll(myLogRecorder.ofKind(MessageKind.WARNING));
      }
      for (SModelReference mr : modelToKeepCandidates) {
        if (transientsModule.isMyTransientModel(mr)) {
          transientsModule.addModelToKeep(mr, false);
        }
      }
    }
    myLogRecorder.reset();
    final boolean discardTransients = !myGenerationOptions.isSaveTransientModels();
    for (SModel m : myTransientModelsToRecycle) {
      if (discardTransients && !modelToKeepCandidates.contains(m.getReference())) {
        // drop a model only if we don't save transients and don't keep this model due to errors/warnings
        transientsModule.removeModel(m);
      } else {
        transientsModule.addModelToKeep(m.getReference(), true);
      }
    }
    myTransientModelsToRecycle.clear();
  }

  private boolean keepTransientForMessageNavigation() {
    return !RuntimeFlags.isTestMode();
  }

  public MPSAppenderBase getLoggingHandler() {
    if (myLoggingHandler == null) {
      myLoggingHandler = new MPSAppenderBase() {
        @Override
        protected void append(@NotNull Priority level, @NotNull String categoryName, @NotNull String message, @Nullable Throwable t,
            @Nullable Object hintObject) {
          if (hintObject instanceof SNode) {
            final SModel m = ((SNode) hintObject).getModel();
            myLogRecorder.record(MessageKind.fromPriority(level), m.getReference());
          } else if (hintObject instanceof NodeWithContext) {
            SModelReference mr = ((NodeWithContext) hintObject).getNode().getModelReference();
            myLogRecorder.record(MessageKind.fromPriority(level), mr);
          } else if (hintObject instanceof SNodeReference) {
            myLogRecorder.record(MessageKind.fromPriority(level), ((SNodeReference) hintObject).getModelReference());
          }
        }
      };
    }
    return myLoggingHandler;
  }

  public void discardTransients() {
    if (mySessionContext == null) return;
    if (!myGenerationOptions.isSaveTransientModels()) {
      mySessionContext.getModule().clearUnused();
    }
    mySessionContext.disposeQueryProvider();
    mySessionContext = null;
  }
}
