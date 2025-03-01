package jetbrains.mps.core.properties.textGen;

/*Generated by MPS */

import jetbrains.mps.textGen.SNodeTextGen;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.textGen.TraceInfoGenerationUtil;
import jetbrains.mps.textGen.TextGen;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class PropertiesFile_TextGen extends SNodeTextGen {
  public void doGenerateText(SNode node) {
    if (getBuffer().hasPositionsSupport()) {
      TraceInfoGenerationUtil.createUnitInfo(this, node);
    }
    getBuffer().putUserObject(TextGen.OUTPUT_ENCODING, "ISO-8859-1");
    {
      Iterable<SNode> collection = SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0x58f98fef90ad4b72L, 0xa390fad66ec7005aL, 0x36fb0dc9fd3a2754L, 0x36fb0dc9fd3a3ac3L, "lines"));
      for (SNode item : collection) {
        appendNode(item);
      }
    }
    if (getBuffer().hasPositionsSupport()) {
      {
        String unitName = null;
        try {
          unitName = BehaviorReflection.invokeVirtual(String.class, SNodeOperations.cast(node, MetaAdapterFactory.getInterfaceConcept(0x9ded098bad6a4657L, 0xbfd948636cfe8bc3L, 0x465516cf87c705a4L, "jetbrains.mps.lang.traceable.structure.UnitConcept")), "virtual_getUnitName_5067982036267369911", new Object[]{});
        } catch (Throwable t) {
          if (LOG.isEnabledFor(Level.ERROR)) {
            LOG.error("Can't calculate unit name for a node " + node + ".", t);
          }
        }
        TraceInfoGenerationUtil.fillUnitInfo(this, node, unitName);
      }
    }
  }
  public String getExtension(SNode node) {
    return "properties";
  }
  protected static Logger LOG = LogManager.getLogger(PropertiesFile_TextGen.class);
}
