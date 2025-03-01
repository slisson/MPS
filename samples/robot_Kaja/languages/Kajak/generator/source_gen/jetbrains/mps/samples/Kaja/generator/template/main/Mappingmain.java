package jetbrains.mps.samples.Kaja.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.runtime.TemplateMappingConfiguration;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateReductionRule;
import jetbrains.mps.generator.runtime.TemplateRootMappingRule;
import jetbrains.mps.generator.runtime.TemplateDropRootRule;
import jetbrains.mps.generator.runtime.TemplateMappingScript;
import jetbrains.mps.generator.runtime.TemplateModel;
import jetbrains.mps.generator.runtime.TemplateUtil;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.generator.template.ITemplateGenerator;
import jetbrains.mps.generator.runtime.TemplateCreateRootRule;
import java.util.Collections;
import jetbrains.mps.generator.runtime.TemplateWeavingRule;
import jetbrains.mps.generator.runtime.ReductionRuleBase;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.MapRootRuleBase;
import jetbrains.mps.generator.runtime.DropRootRuleBase;

@Generated
public class Mappingmain implements TemplateMappingConfiguration {
  private final Collection<TemplateReductionRule> rules;
  private final Collection<TemplateRootMappingRule> rootRules;
  private final Collection<TemplateDropRootRule> dropRules;
  private final Collection<TemplateMappingScript> preScripts;
  private final TemplateModel myModel;
  public Mappingmain(TemplateModel model) {
    this.myModel = model;
    rules = TemplateUtil.<TemplateReductionRule>asCollection(new Mappingmain.ReductionRule0(), new Mappingmain.ReductionRule1(), new Mappingmain.ReductionRule2(), new Mappingmain.ReductionRule3(), new Mappingmain.ReductionRule4(), new Mappingmain.ReductionRule5(), new Mappingmain.ReductionRule6(), new Mappingmain.ReductionRule7(), new Mappingmain.ReductionRule8(), new Mappingmain.ReductionRule9(), new Mappingmain.ReductionRule10(), new Mappingmain.ReductionRule11(), new Mappingmain.ReductionRule12(), new Mappingmain.ReductionRule13(), new Mappingmain.ReductionRule14(), new Mappingmain.ReductionRule15(), new Mappingmain.ReductionRule16(), new Mappingmain.ReductionRule17(), new Mappingmain.ReductionRule18(), new Mappingmain.ReductionRule19(), new Mappingmain.ReductionRule20(), new Mappingmain.ReductionRule21());
    rootRules = TemplateUtil.<TemplateRootMappingRule>asCollection(new Mappingmain.RootMappingRule0());
    dropRules = TemplateUtil.<TemplateDropRootRule>asCollection(new Mappingmain.DropRootRule0());
    preScripts = TemplateUtil.<TemplateMappingScript>asCollection(new ScriptMoveRoutineDefinitions(), new ScriptMoveLibraryRoutineDefinitions(), new ScriptRemoveEmptyLines());
  }
  public String getName() {
    return "main";
  }
  public TemplateModel getModel() {
    return this.myModel;
  }
  public SNodeReference getMappingNode() {
    return new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039570163");
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
    return rootRules;
  }
  public Collection<TemplateWeavingRule> getWeavingRules() {
    return Collections.emptySet();
  }
  public Collection<TemplateDropRootRule> getDropRules() {
    return dropRules;
  }
  public Collection<TemplateMappingScript> getPostScripts() {
    return Collections.emptySet();
  }
  public Collection<TemplateMappingScript> getPreScripts() {
    return preScripts;
  }
  public boolean isTopPriority() {
    return false;
  }
  public final class ReductionRule0 extends ReductionRuleBase {
    public ReductionRule0() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039580714"), "jetbrains.mps.samples.Kaja.structure.Step", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__Step().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule1 extends ReductionRuleBase {
    public ReductionRule1() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039647643"), "jetbrains.mps.samples.Kaja.structure.LeftTurn", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__LeftTurn().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule2 extends ReductionRuleBase {
    public ReductionRule2() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039647796"), "jetbrains.mps.samples.Kaja.structure.IsWall", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__IsWall().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule3 extends ReductionRuleBase {
    public ReductionRule3() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039654077"), "jetbrains.mps.samples.Kaja.structure.Not", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__Not().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule4 extends ReductionRuleBase {
    public ReductionRule4() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "6405700485436186603"), "jetbrains.mps.samples.Kaja.structure.IsMark", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__IsMark().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule5 extends ReductionRuleBase {
    public ReductionRule5() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "859008965969439774"), "jetbrains.mps.samples.Kaja.structure.IsFull", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__IsFull().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule6 extends ReductionRuleBase {
    public ReductionRule6() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039647830"), "jetbrains.mps.samples.Kaja.structure.IfStatement", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__IfStatement().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule7 extends ReductionRuleBase {
    public ReductionRule7() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039660390"), "jetbrains.mps.samples.Kaja.structure.Repeat", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__Repeat().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule8 extends ReductionRuleBase {
    public ReductionRule8() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039667448"), "jetbrains.mps.samples.Kaja.structure.While", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__While().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule9 extends ReductionRuleBase {
    public ReductionRule9() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039683662"), "jetbrains.mps.samples.Kaja.structure.Heading", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__Heading().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule10 extends ReductionRuleBase {
    public ReductionRule10() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "7060824959893176543"), "jetbrains.mps.samples.Kaja.structure.Looking", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__Looking().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule11 extends ReductionRuleBase {
    public ReductionRule11() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039683776"), "jetbrains.mps.samples.Kaja.structure.North", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__North().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule12 extends ReductionRuleBase {
    public ReductionRule12() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039683792"), "jetbrains.mps.samples.Kaja.structure.East", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__East().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule13 extends ReductionRuleBase {
    public ReductionRule13() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039683806"), "jetbrains.mps.samples.Kaja.structure.South", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__South().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule14 extends ReductionRuleBase {
    public ReductionRule14() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039683821"), "jetbrains.mps.samples.Kaja.structure.West", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__West().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule15 extends ReductionRuleBase {
    public ReductionRule15() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039701201"), "jetbrains.mps.samples.Kaja.structure.RoutineDefinition", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__RoutineDefinition().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule16 extends ReductionRuleBase {
    public ReductionRule16() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039701251"), "jetbrains.mps.samples.Kaja.structure.RoutineCall", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__RoutineCall().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule17 extends ReductionRuleBase {
    public ReductionRule17() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039928807"), "jetbrains.mps.samples.Kaja.structure.CommandList", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__CommandList().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule18 extends ReductionRuleBase {
    public ReductionRule18() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "6405700485436123137"), "jetbrains.mps.samples.Kaja.structure.Drop", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__Drop().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule19 extends ReductionRuleBase {
    public ReductionRule19() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "6405700485436170018"), "jetbrains.mps.samples.Kaja.structure.Pick", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__Pick().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule20 extends ReductionRuleBase {
    public ReductionRule20() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "6405700485436287827"), "jetbrains.mps.samples.Kaja.structure.CommentLine", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__CommentLine().apply(environment, context);
      return tlist1;
    }
  }
  public final class ReductionRule21 extends ReductionRuleBase {
    public ReductionRule21() {
      super(new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3210697320273763069"), "jetbrains.mps.samples.Kaja.structure.TraceMessage", false);
    }
    @Override
    protected Collection<SNode> doApply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> tlist1 = new Templatereduce__TraceMessage().apply(environment, context);
      return tlist1;
    }
  }
  public class RootMappingRule0 extends MapRootRuleBase implements TemplateRootMappingRule {
    public RootMappingRule0() {
    }
    public SNodeReference getRuleNode() {
      return rootMappingRule_417xrn_a0a1ob;
    }
    public boolean applyToInheritors() {
      return false;
    }
    public String getApplicableConcept() {
      return "jetbrains.mps.samples.Kaja.structure.Script";
    }
    public boolean keepSourceRoot() {
      return false;
    }
    public boolean isApplicable(TemplateExecutionEnvironment environment, TemplateContext context) throws GenerationException {
      return true;
    }
    public Collection<SNode> apply(final TemplateExecutionEnvironment environment, final TemplateContext context) throws GenerationException {
      Collection<SNode> result = new Templatemap__Script().apply(environment, context);
      return result;
    }
  }
  public class DropRootRule0 extends DropRootRuleBase implements TemplateDropRootRule {
    public DropRootRule0() {
    }
    public SNodeReference getRuleNode() {
      return dropRule_417xrn_a0a1pb;
    }
    public String getApplicableConcept() {
      return "jetbrains.mps.samples.Kaja.structure.Library";
    }
    public boolean isApplicable(TemplateExecutionEnvironment environment, TemplateContext context) throws GenerationException {
      return true;
    }
  }
  private static SNodePointer rootMappingRule_417xrn_a0a1ob = new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039570164");
  private static SNodePointer dropRule_417xrn_a0a1pb = new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "4394627182934963716");
}
