package jetbrains.mps.baseLanguage.javadoc.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.SConceptId;

public class ConstraintsAspectDescriptor implements jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor {
  public ConstraintsAspectDescriptor() {
  }
  public ConstraintsDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_2qnle6_a0a0b, fqName)) {
      case 1:
        return new DocMethodParameterReference_Constraints();
      case 2:
        return new DocTypeParameterReference_Constraints();
      case 5:
        return new ReturnBlockDocTag_Constraints();
      case 3:
        return new FieldDocReference_Constraints();
      case 0:
        return new ClassifierDocReference_Constraints();
      case 4:
        return new MethodDocReference_Constraints();
      case 6:
        return new StaticFieldDocReference_Constraints();
      case 7:
        return new ValueInlineDocTag_Constraints();
      default:
        return new BaseConstraintsDescriptor(fqName);
    }
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0x5ed0d79d7dbe86d8L) {
      return new DocMethodParameterReference_Constraints();
    }
    if (id == 0x5ed0d79d7dbe86dbL) {
      return new DocTypeParameterReference_Constraints();
    }
    if (id == 0x514c0f687050918eL) {
      return new ReturnBlockDocTag_Constraints();
    }
    if (id == 0x1ec532ec252c9a28L) {
      return new FieldDocReference_Constraints();
    }
    if (id == 0x1ec532ec2531d2e4L) {
      return new ClassifierDocReference_Constraints();
    }
    if (id == 0x1ec532ec2531d2d3L) {
      return new MethodDocReference_Constraints();
    }
    if (id == 0x5a38b07c2d6d7c7bL) {
      return new StaticFieldDocReference_Constraints();
    }
    if (id == 0x60a0f9237ac5e83bL) {
      return new ValueInlineDocTag_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
  private static String[] stringSwitchCases_2qnle6_a0a0b = new String[]{"jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocReference", "jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference", "jetbrains.mps.baseLanguage.javadoc.structure.DocTypeParameterReference", "jetbrains.mps.baseLanguage.javadoc.structure.FieldDocReference", "jetbrains.mps.baseLanguage.javadoc.structure.MethodDocReference", "jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag", "jetbrains.mps.baseLanguage.javadoc.structure.StaticFieldDocReference", "jetbrains.mps.baseLanguage.javadoc.structure.ValueInlineDocTag"};
}
