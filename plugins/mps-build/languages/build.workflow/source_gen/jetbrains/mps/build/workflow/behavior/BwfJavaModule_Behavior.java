package jetbrains.mps.build.workflow.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class BwfJavaModule_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String call_getAntTargetName_7385586609667776611(SNode thisNode) {
    return "java.compile." + SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
}
