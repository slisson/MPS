package jetbrains.mps.lang.classLike.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.FieldDeclaration_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.IDontSubstituteByDefault_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;

public abstract class ClassLikeProperty_BehaviorDescriptor extends FieldDeclaration_BehaviorDescriptor implements ClassLikeMemberInstance_BehaviorDescriptor, IDontSubstituteByDefault_BehaviorDescriptor {
  public ClassLikeProperty_BehaviorDescriptor() {
  }
  public SNode virtual_getDeclaration_9097849371503884215(SNode thisNode) {
    return ClassLikeProperty_Behavior.virtual_getDeclaration_9097849371503884215(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.classLike.structure.ClassLikeProperty";
  }
  public abstract SNode virtual_getValueExpression_3855110916777030624(SNode thisNode);
}
