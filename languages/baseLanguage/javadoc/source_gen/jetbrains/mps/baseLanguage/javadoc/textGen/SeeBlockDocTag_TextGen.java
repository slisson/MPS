package jetbrains.mps.baseLanguage.javadoc.textGen;

/*Generated by MPS */

import jetbrains.mps.textGen.SNodeTextGen;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class SeeBlockDocTag_TextGen extends SNodeTextGen {
  public void doGenerateText(SNode node) {
    this.appendNewLine();
    DocCommentTextGen.javadocIndent(this);
    this.append("@see ");
    appendNode(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x1ec532ec252ca3abL, 0x1ec532ec252ca3baL, "reference")));
    this.append(" ");
    this.append(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x1ec532ec252ca3abL, 0x1ec532ec252ca3acL, "text")));
  }
}
