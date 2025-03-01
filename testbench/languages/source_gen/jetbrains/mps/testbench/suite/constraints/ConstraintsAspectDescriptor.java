package jetbrains.mps.testbench.suite.constraints;

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
        return new JUnit4TestCaseRef_Constraints();
      case 0:
        return new JUnit3TestCaseRef_Constraints();
      case 3:
        return new TestCaseRef_Constraints();
      case 2:
        return new ModuleSuite_Constraints();
      default:
        return new BaseConstraintsDescriptor(fqName);
    }
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0x3e81ed1e2be77cb8L) {
      return new JUnit4TestCaseRef_Constraints();
    }
    if (id == 0x3e81ed1e2be77cb9L) {
      return new JUnit3TestCaseRef_Constraints();
    }
    if (id == 0x3e81ed1e2be77cb7L) {
      return new TestCaseRef_Constraints();
    }
    if (id == 0x3e81ed1e2be77cb5L) {
      return new ModuleSuite_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
  private static String[] stringSwitchCases_2qnle6_a0a0b = new String[]{"jetbrains.mps.testbench.suite.structure.JUnit3TestCaseRef", "jetbrains.mps.testbench.suite.structure.JUnit4TestCaseRef", "jetbrains.mps.testbench.suite.structure.ModuleSuite", "jetbrains.mps.testbench.suite.structure.TestCaseRef"};
}
