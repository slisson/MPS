package jetbrains.mps.lang.script.constraints;

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
        return new MigrationScriptPart_Constraints();
      case 2:
        return new PullUpMethod_Constraints();
      case 0:
        return new DirectMethodSpecification_Constraints();
      default:
        return new BaseConstraintsDescriptor(fqName);
    }
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0x60bdd7da75343e05L) {
      return new MigrationScriptPart_Constraints();
    }
    if (id == 0xbc887f0950c99c4L) {
      return new PullUpMethod_Constraints();
    }
    if (id == 0x1fcdfeb518c43583L) {
      return new DirectMethodSpecification_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
  private static String[] stringSwitchCases_2qnle6_a0a0b = new String[]{"jetbrains.mps.lang.script.structure.DirectMethodSpecification", "jetbrains.mps.lang.script.structure.MigrationScriptPart", "jetbrains.mps.lang.script.structure.PullUpMethod"};
}
