package jetbrains.mps.testHybridEditor.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.smodel.SModelUtil_new;

public class connector_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public connector_NonTypesystemRule() {
  }
  public void applyRule(final SNode connectorInstance, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    {
      MessageTarget errorTarget = new NodeMessageTarget();
      IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(connectorInstance, "connector error", "r:ad8f2b18-3038-4a9d-ad27-aa5680bf8421(jetbrains.mps.testHybridEditor.typesystem)", "884514646186394469", null, errorTarget);
    }
  }
  public String getApplicableConceptFQName() {
    return "jetbrains.mps.testHybridEditor.structure.ConnectorInstance";
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
