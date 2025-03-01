package jetbrains.mps.lang.extension.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractInferenceRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.InferenceRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.typesystem.inference.EquationInfo;
import jetbrains.mps.smodel.SModelUtil_new;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;

public class typeof_ExtensionPointExpression_InferenceRule extends AbstractInferenceRule_Runtime implements InferenceRule_Runtime {
  public typeof_ExtensionPointExpression_InferenceRule() {
  }
  public void applyRule(final SNode epe, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    SNode objectType = SLinkOperations.getTarget(SLinkOperations.getTarget(epe, MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x5bf74eafefe0e940L, 0x5bf74eafefe0eb55L, "extensionPoint")), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d6L, 0x6f6f7f3b7a17bd0bL, "objectType"));
    {
      SNode _nodeToCheck_1029348928467 = epe;
      EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:4b1ddbe6-5067-4a27-8697-eb786b50451b(jetbrains.mps.lang.extension.typesystem)", "6626851894249791047", 0, null);
      typeCheckingContext.createEquation((SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:4b1ddbe6-5067-4a27-8697-eb786b50451b(jetbrains.mps.lang.extension.typesystem)", "6626851894249791042", true), (SNode) _quotation_createNode_x0hnp2_a0b0b(SLinkOperations.getTarget(epe, MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x5bf74eafefe0e940L, 0x5bf74eafefe0eb55L, "extensionPoint"))), _info_12389875345);
    }
  }
  public String getApplicableConceptFQName() {
    return "jetbrains.mps.lang.extension.structure.ExtensionPointExpression";
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
  private static SNode _quotation_createNode_x0hnp2_a0b0b(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x2c10fa62142eb538L, "jetbrains.mps.lang.extension.structure.ExtensionPointType"), null, null, false);
    SNodeAccessUtil.setReferenceTarget(quotedNode_2, MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x2c10fa62142eb538L, 0x2c10fa62142eb539L, "extensionPoint"), (SNode) parameter_1);
    return quotedNode_2;
  }
}
