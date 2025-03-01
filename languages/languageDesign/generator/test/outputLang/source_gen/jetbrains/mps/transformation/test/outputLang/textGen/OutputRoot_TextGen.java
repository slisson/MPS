package jetbrains.mps.transformation.test.outputLang.textGen;

/*Generated by MPS */

import jetbrains.mps.textGen.SNodeTextGen;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class OutputRoot_TextGen extends SNodeTextGen {
  public void doGenerateText(SNode node) {
    this.append((SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) == null ? "<no name>" : SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"))));
    this.append(" : ");
    this.append((SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x116455d922fL, 0x116455e8bf1L, "text")) == null ? "<no text>" : SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x116455d922fL, 0x116455e8bf1L, "text"))));
    if ((SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x116455d922fL, 0x11bc24e708cL, "specialChild")) != null)) {
      this.appendNewLine();
      appendNode(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x116455d922fL, 0x11bc24e708cL, "specialChild")));
      this.appendNewLine();
    }
    for (SNode output : SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x116455d922fL, 0x11645a94e4aL, "outputChild"))) {
      this.appendNewLine();
      this.appendNewLine();
      this.increaseDepth();
      appendNode(output);
      this.decreaseDepth();
    }
  }
}
