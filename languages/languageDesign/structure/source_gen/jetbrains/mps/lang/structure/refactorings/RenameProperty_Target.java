package jetbrains.mps.lang.structure.refactorings;

/*Generated by MPS */

import jetbrains.mps.refactoring.framework.IRefactoringTarget;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class RenameProperty_Target implements IRefactoringTarget {
  public RenameProperty_Target() {
  }
  public IRefactoringTarget.TargetType getTarget() {
    return IRefactoringTarget.TargetType.NODE;
  }
  public boolean allowMultipleTargets() {
    return false;
  }
  public boolean isApplicableToEntityType(final Object entity) {
    return SNodeOperations.isInstanceOf(((SNode) entity), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086bL, "jetbrains.mps.lang.structure.structure.PropertyDeclaration"));
  }
  public boolean isApplicable(final Object entity) {
    if (!(this.isApplicableToEntityType(entity))) {
      return false;
    }
    return true;
  }
}
