package jetbrains.mps.baseLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.textGen.SNodeTextGen;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class PrimitiveClassExpression_TextGen extends SNodeTextGen {
  public void doGenerateText(SNode node) {
    appendNode(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x3f57ea36bd70a4e1L, 0x3f57ea36bd70a4e2L, "primitiveType")));
    this.append(".class");
  }
}
