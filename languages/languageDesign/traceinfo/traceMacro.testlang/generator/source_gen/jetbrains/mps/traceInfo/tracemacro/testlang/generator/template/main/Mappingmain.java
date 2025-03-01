package jetbrains.mps.traceInfo.tracemacro.testlang.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.runtime.TemplateMappingConfiguration;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateReductionRule;
import jetbrains.mps.generator.runtime.TemplateModel;
import jetbrains.mps.generator.runtime.TemplateUtil;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.generator.template.ITemplateGenerator;
import jetbrains.mps.generator.runtime.TemplateCreateRootRule;
import java.util.Collections;
import jetbrains.mps.generator.runtime.TemplateRootMappingRule;
import jetbrains.mps.generator.runtime.TemplateWeavingRule;
import jetbrains.mps.generator.runtime.TemplateDropRootRule;
import jetbrains.mps.generator.runtime.TemplateMappingScript;
import jetbrains.mps.generator.runtime.ReductionRuleBase;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.internal.collections.runtime.CollectionSequence;
import jetbrains.mps.textgen.trace.TracingUtil;
import jetbrains.mps.generator.runtime.TemplateRuleWithCondition;
import jetbrains.mps.generator.template.ReductionRuleQueryContext;
import jetbrains.mps.generator.runtime.ReferenceResolver;
import jetbrains.mps.generator.template.ReferenceMacroContext;

@Generated
public class Mappingmain implements TemplateMappingConfiguration {
  private final Collection<TemplateReductionRule> rules;
  private final TemplateModel myModel;
  public Mappingmain(TemplateModel model) {
    this.myModel = model;
    rules = TemplateUtil.<TemplateReductionRule>asCollection(new Mappingmain.ReductionRule0(), new Mappingmain.ReductionRule1());
  }
  public String getName() {
    return "main";
  }
  public TemplateModel getModel() {
    return this.myModel;
  }
  public SNodeReference getMappingNode() {
    return new SNodePointer("r:75f95d80-1d60-4222-8b1e-a09f089fee3e(jetbrains.mps.traceInfo.tracemacro.testlang.generator.template.main@generator)", "7980748436587788164");
  }
  public boolean isApplicable(ITemplateGenerator generator) {
    return true;
  }
  public Collection<TemplateReductionRule> getReductionRules() {
    return rules;
  }
  public Collection<TemplateCreateRootRule> getCreateRules() {
    return Collections.emptySet();
  }
  public Collection<TemplateRootMappingRule> getRootRules() {
    return Collections.emptySet();
  }
  public Collection<TemplateWeavingRule> getWeavingRules() {
    return Collections.emptySet();
  }
  public Collection<TemplateDropRootRule> getDropRules() {
    return Collections.emptySet();
  }
  public Collection<TemplateMappingScript> getPostScripts() {
    return Collections.emptySet();
  }
  public Collection<TemplateMappingScript> getPreScripts() {
    return Collections.emptySet();
  }
  public boolean isTopPriority() {
    return false;
  }
  public final class ReductionRule0 extends ReductionRuleBase {
    public ReductionRule0() {
      super(new SNodePointer("r:75f95d80-1d60-4222-8b1e-a09f089fee3e(jetbrains.mps.traceInfo.tracemacro.testlang.generator.template.main@generator)", "7980748436587788165"), "jetbrains.mps.traceInfo.tracemacro.testlang.structure.GeneratedForeach", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      final SNode tnode1 = environment.createOutputNode("jetbrains.mps.baseLanguage.collections.structure.ForEachStatement");
      try {
        environment.nodeCopied(context, tnode1, "tpl/r:75f95d80-1d60-4222-8b1e-a09f089fee3e/7980748436587788171");
        {
          Collection<SNode> tlist2 = null;
          final SNode copySrcInput2 = QueriesGenerated.sourceNodeQuery_7980748436587788180(new SourceSubstituteMacroNodeContext(context, copySrcMacro_417xrn_b0a0c0b0c0b51));
          tlist2 = environment.copyNodes(TemplateUtil.singletonList(copySrcInput2), copySrcMacro_417xrn_b0a0c0b0c0b51, "tpl/r:75f95d80-1d60-4222-8b1e-a09f089fee3e/7980748436587788173", context);
          for (SNode child3 : TemplateUtil.asNotNull(tlist2)) {
            tnode1.addChild("inputSequence", child3);
          }
          // TODO validate child 
        }
        {
          Collection<SNode> tlist4 = null;
          final SNode copySrcInput4 = QueriesGenerated.sourceNodeQuery_7980748436587788201(new SourceSubstituteMacroNodeContext(context, copySrcMacro_417xrn_b0a0c0c0c0b51));
          tlist4 = environment.copyNodes(TemplateUtil.singletonList(copySrcInput4), copySrcMacro_417xrn_b0a0c0c0c0b51, "tpl/r:75f95d80-1d60-4222-8b1e-a09f089fee3e/7980748436587788174", context);
          for (SNode child5 : TemplateUtil.asNotNull(tlist4)) {
            tnode1.addChild("body", child5);
          }
          // TODO validate child 
        }
        {
          Collection<SNode> tlist6 = null;
          try {
            // calculate input 
            final SNode copySrcInput6 = QueriesGenerated.sourceNodeQuery_7980748436587793693(new SourceSubstituteMacroNodeContext(context, traceMacro_417xrn_b0a0a1a1a3a2a1p));
            // calculate output 
            final SNode tnode7 = environment.createOutputNode("jetbrains.mps.baseLanguage.collections.structure.ForEachVariable");
            try {
              environment.nodeCopied(context, tnode7, "tpl/r:75f95d80-1d60-4222-8b1e-a09f089fee3e/7980748436587793601");
              SNodeAccessUtil.setProperty(tnode7, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), TemplateUtil.asString(QueriesGenerated.propertyMacro_GetPropertyValue_7980748436587793603(new PropertyMacroContext(context, "var", propertyMacro_417xrn_c0a0c0b0e0b0d0c0b51))));
            } finally {
            }
            tlist6 = TemplateUtil.singletonList(tnode7);
            // put input node 
            for (SNode resultNode : CollectionSequence.fromCollection(tlist6)) {
              TracingUtil.fillOriginalNode(copySrcInput6, resultNode, copySrcInput6.getModel() == environment.getGenerator().getGeneratorSessionContext().getOriginalInputModel());
            }
          } finally {
          }
          for (SNode child8 : TemplateUtil.asNotNull(tlist6)) {
            tnode1.addChild("variable", child8);
          }
          // TODO validate child 
        }
      } finally {
      }
      environment.registerLabel(context.getInput(), tnode1, "GeneratedForeach");
      return TemplateUtil.singletonList(tnode1);
    }
  }
  public final class ReductionRule1 extends ReductionRuleBase implements TemplateRuleWithCondition {
    public ReductionRule1() {
      super(new SNodePointer("r:75f95d80-1d60-4222-8b1e-a09f089fee3e(jetbrains.mps.traceInfo.tracemacro.testlang.generator.template.main@generator)", "7980748436587793686"), "jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference", false);
    }
    @Override
    public boolean isApplicable(final TemplateExecutionEnvironment env, final TemplateContext context) throws GenerationException {
      return QueriesGenerated.baseMappingRule_Condition_7980748436587793846(new ReductionRuleQueryContext(context, getRuleNode()));
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      final SNode tnode1 = environment.createOutputNode("jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference");
      try {
        environment.nodeCopied(context, tnode1, "tpl/r:75f95d80-1d60-4222-8b1e-a09f089fee3e/7980748436587793724");
        environment.resolve(new ReferenceResolver() {
          public Object resolve(SNode outputNode, TemplateContext context) {
            return QueriesGenerated.referenceMacro_GetReferent_7980748436587793726(new ReferenceMacroContext(context, tnode1, referenceMacro_417xrn_c0a0a0a0a0a0b0c0c61, "variable"));
          }
          public String getDefaultResolveInfo() {
            return "";
          }
          public SNodeReference getTemplateNode() {
            return referenceMacro_417xrn_c0a0a0a0a0a0b0c0c61;
          }
        }, tnode1, "variable", context);
      } finally {
      }
      return TemplateUtil.singletonList(tnode1);
    }
  }
  private static SNodePointer copySrcMacro_417xrn_b0a0c0b0c0b51 = new SNodePointer("r:75f95d80-1d60-4222-8b1e-a09f089fee3e(jetbrains.mps.traceInfo.tracemacro.testlang.generator.template.main@generator)", "7980748436587788177");
  private static SNodePointer copySrcMacro_417xrn_b0a0c0c0c0b51 = new SNodePointer("r:75f95d80-1d60-4222-8b1e-a09f089fee3e(jetbrains.mps.traceInfo.tracemacro.testlang.generator.template.main@generator)", "7980748436587788198");
  private static SNodePointer traceMacro_417xrn_b0a0a1a1a3a2a1p = new SNodePointer("r:75f95d80-1d60-4222-8b1e-a09f089fee3e(jetbrains.mps.traceInfo.tracemacro.testlang.generator.template.main@generator)", "7980748436587793692");
  private static SNodePointer propertyMacro_417xrn_c0a0c0b0e0b0d0c0b51 = new SNodePointer("r:75f95d80-1d60-4222-8b1e-a09f089fee3e(jetbrains.mps.traceInfo.tracemacro.testlang.generator.template.main@generator)", "7980748436587793602");
  private static SNodePointer referenceMacro_417xrn_c0a0a0a0a0a0b0c0c61 = new SNodePointer("r:75f95d80-1d60-4222-8b1e-a09f089fee3e(jetbrains.mps.traceInfo.tracemacro.testlang.generator.template.main@generator)", "7980748436587793725");
}
