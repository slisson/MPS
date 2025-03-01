package jetbrains.mps.transformation.test.inputLang.constraints;

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
        return new RefTestParamRef_Constraints();
      case 0:
        return new RefTestMethodCall_Constraints();
      default:
        return new BaseConstraintsDescriptor(fqName);
    }
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0x2e0420fbd0995e07L) {
      return new RefTestParamRef_Constraints();
    }
    if (id == 0x2e0420fbd0995e09L) {
      return new RefTestMethodCall_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
  private static String[] stringSwitchCases_2qnle6_a0a0b = new String[]{"jetbrains.mps.transformation.test.inputLang.structure.RefTestMethodCall", "jetbrains.mps.transformation.test.inputLang.structure.RefTestParamRef"};
}
