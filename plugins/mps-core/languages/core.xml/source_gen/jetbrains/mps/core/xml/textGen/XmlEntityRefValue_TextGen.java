package jetbrains.mps.core.xml.textGen;

/*Generated by MPS */

import jetbrains.mps.textGen.SNodeTextGen;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class XmlEntityRefValue_TextGen extends SNodeTextGen {
  public void doGenerateText(SNode node) {
    this.append("&");
    this.append(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54cfd21L, 0x5c842a42c54d0258L, "entityName")));
    this.append(";");
  }
}
