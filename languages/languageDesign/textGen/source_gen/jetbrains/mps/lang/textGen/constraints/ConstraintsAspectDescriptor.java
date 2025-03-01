package jetbrains.mps.lang.textGen.constraints;

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
      case 0:
        return new ConceptTextGenDeclaration_Constraints();
      case 3:
        return new OperationDeclaration_Constraints();
      case 2:
        return new LanguageTextGenDeclaration_Constraints();
      case 4:
        return new UtilityMethodDeclaration_Constraints();
      case 1:
        return new EncodingLiteral_Constraints();
      default:
        return new BaseConstraintsDescriptor(fqName);
    }
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0x11f3c776369L) {
      return new ConceptTextGenDeclaration_Constraints();
    }
    if (id == 0x11f4b80e9d3L) {
      return new OperationDeclaration_Constraints();
    }
    if (id == 0x11f4b71f51fL) {
      return new LanguageTextGenDeclaration_Constraints();
    }
    if (id == 0x11f6f6a18e4L) {
      return new UtilityMethodDeclaration_Constraints();
    }
    if (id == 0x63754d97e1c86b8cL) {
      return new EncodingLiteral_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
  private static String[] stringSwitchCases_2qnle6_a0a0b = new String[]{"jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration", "jetbrains.mps.lang.textGen.structure.EncodingLiteral", "jetbrains.mps.lang.textGen.structure.LanguageTextGenDeclaration", "jetbrains.mps.lang.textGen.structure.OperationDeclaration", "jetbrains.mps.lang.textGen.structure.UtilityMethodDeclaration"};
}
