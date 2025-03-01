package jetbrains.mps.lang.classLike.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.pattern.util.MatchingUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.messageTargets.PropertyMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.errors.BaseQuickFixProvider;
import jetbrains.mps.smodel.SModelUtil_new;

public class check_ClassLikeProperty_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_ClassLikeProperty_NonTypesystemRule() {
  }
  public void applyRule(final SNode classLikeProperty, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    if (!((MatchingUtil.matchNodes(SLinkOperations.getTarget(classLikeProperty, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type")), BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), SLinkOperations.getTarget(SLinkOperations.getTarget(classLikeProperty, MetaAdapterFactory.getReferenceLink(0xc7d5b9dda05f4be2L, 0xbc73f2e16994cc67L, 0x59e9926e840d9151L, 0x772497abf2e77969L, "decl")), MetaAdapterFactory.getReferenceLink(0xc7d5b9dda05f4be2L, 0xbc73f2e16994cc67L, 0x72b255a0447fbb31L, 0x478b68dcf4b1763fL, "type")), "virtual_toBaseLanguageType_1213877229718", new Object[]{}))))) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        errorTarget = new PropertyMessageTarget("name");
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(classLikeProperty, "Property type is not the same as in descriptor", "c7d5b9dd-a05f-4be2-bc73-f2e16994cc67/r:e04b7053-8c89-4f87-b296-94779c625d9d(jetbrains.mps.lang.classLike/jetbrains.mps.lang.classLike.typesystem)", "3855110916780273812", null, errorTarget);
        {
          BaseQuickFixProvider intentionProvider = new BaseQuickFixProvider("jetbrains.mps.lang.classLike.typesystem.fix_SignatureMismatch_QuickFix", false);
          _reporter_2309309498.addIntentionProvider(intentionProvider);
        }
      }
    }
  }
  public String getApplicableConceptFQName() {
    return "jetbrains.mps.lang.classLike.structure.ClassLikeProperty";
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    {
      boolean b = SModelUtil_new.isAssignableConcept(argument.getConcept().getQualifiedName(), this.getApplicableConceptFQName());
      return new IsApplicableStatus(b, null);
    }
  }
  public boolean overrides() {
    return false;
  }
}
