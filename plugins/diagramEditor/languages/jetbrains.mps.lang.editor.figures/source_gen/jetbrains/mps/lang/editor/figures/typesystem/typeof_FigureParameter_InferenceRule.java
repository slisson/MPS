package jetbrains.mps.lang.editor.figures.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractInferenceRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.InferenceRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.typesystem.inference.EquationInfo;
import jetbrains.mps.smodel.SModelUtil_new;

public class typeof_FigureParameter_InferenceRule extends AbstractInferenceRule_Runtime implements InferenceRule_Runtime {
  public typeof_FigureParameter_InferenceRule() {
  }
  public void applyRule(final SNode figureParameter, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    SNode type = Utils.getFirstGenericParameterType(BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), figureParameter, "virtual_getParameterType_342110547581236128", new Object[]{}));
    if (type != null) {
      {
        SNode _nodeToCheck_1029348928467 = figureParameter;
        EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:e599f0dc-4c53-470d-be67-94ae885c5aab(jetbrains.mps.lang.editor.figures.typesystem)", "342110547581237064", 0, null);
        typeCheckingContext.createEquation((SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:e599f0dc-4c53-470d-be67-94ae885c5aab(jetbrains.mps.lang.editor.figures.typesystem)", "342110547581237066", true), (SNode) type, _info_12389875345);
      }
    }
  }
  public String getApplicableConceptFQName() {
    return "jetbrains.mps.lang.editor.figures.structure.FigureParameter";
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
