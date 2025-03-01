package jetbrains.mps.lang.intentions.constraints;

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
        return new IntentionDeclaration_Constraints();
      case 1:
        return new SurroundWithIntentionDeclaration_Constraints();
      default:
        return new BaseConstraintsDescriptor(fqName);
    }
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0x115b81b652bL) {
      return new IntentionDeclaration_Constraints();
    }
    if (id == 0x2303633a9c3e6815L) {
      return new SurroundWithIntentionDeclaration_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
  private static String[] stringSwitchCases_2qnle6_a0a0b = new String[]{"jetbrains.mps.lang.intentions.structure.IntentionDeclaration", "jetbrains.mps.lang.intentions.structure.SurroundWithIntentionDeclaration"};
}
