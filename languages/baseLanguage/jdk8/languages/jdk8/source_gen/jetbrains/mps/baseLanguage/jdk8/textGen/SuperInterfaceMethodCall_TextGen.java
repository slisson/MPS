package jetbrains.mps.baseLanguage.jdk8.textGen;

/*Generated by MPS */

import jetbrains.mps.textGen.SNodeTextGen;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.baseLanguage.textGen.BaseLanguageTextGen;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class SuperInterfaceMethodCall_TextGen extends SNodeTextGen {
  public void doGenerateText(SNode node) {
    BaseLanguageTextGen.blClassifierRef(SNodeOperations.getReference(node, MetaAdapterFactory.getReferenceLink(0xfdcdc48fbfd84831L, 0xaa765abac2ffa010L, 0x17dbb10eeb72e5d9L, 0x17dbb10eeb7528deL, "classifier")), this);
    this.append(".super.");
    BaseLanguageTextGen.methodCall(node, this);
  }
}
