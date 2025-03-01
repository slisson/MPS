package jetbrains.mps.console.blCommand.constraints;

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
        return new QueryExpression_Constraints();
      case 0:
        return new InstancesExpression_Constraints();
      case 3:
        return new UsagesExpression_Constraints();
      case 2:
        return new QueryParameter_Constraints();
      default:
        return new BaseConstraintsDescriptor(fqName);
    }
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0x3bc64421760bacfdL) {
      return new QueryExpression_Constraints();
    }
    if (id == 0x6b643f33718aa10dL) {
      return new InstancesExpression_Constraints();
    }
    if (id == 0x75bb0160f191d6ebL) {
      return new UsagesExpression_Constraints();
    }
    if (id == 0x3bc64421760badf5L) {
      return new QueryParameter_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
  private static String[] stringSwitchCases_2qnle6_a0a0b = new String[]{"jetbrains.mps.console.blCommand.structure.InstancesExpression", "jetbrains.mps.console.blCommand.structure.QueryExpression", "jetbrains.mps.console.blCommand.structure.QueryParameter", "jetbrains.mps.console.blCommand.structure.UsagesExpression"};
}
