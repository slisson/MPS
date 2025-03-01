package jetbrains.mps.baseLanguageInternal.textGen;

/*Generated by MPS */

import jetbrains.mps.textGen.SNodeTextGen;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.textGen.TraceInfoGenerationUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.textGen.BaseClassConceptTextGen;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class InternalAnonymousClass_TextGen extends SNodeTextGen {
  public void doGenerateText(SNode node) {
    if (getBuffer().hasPositionsSupport()) {
      TraceInfoGenerationUtil.createUnitInfo(this, node);
    }
    BaseLangInternal.className(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x2f7b79225e746809L, 0x2f7b79225e7468e5L, "fqClassName")), node, this);
    if (ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x2f7b79225e746809L, 0x2f7b79225e74680dL, "typeParameter"))).isNotEmpty()) {
      this.append("<");
      {
        Iterable<SNode> collection = SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x2f7b79225e746809L, 0x2f7b79225e74680dL, "typeParameter"));
        final SNode lastItem = Sequence.fromIterable(collection).last();
        for (SNode item : collection) {
          appendNode(item);
          if (item != lastItem) {
            append(", ");
          }
        }
      }
      this.append(">");
    }
    this.append("(");
    {
      Iterable<SNode> collection = SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x2f7b79225e746809L, 0x2f7b79225e74680cL, "constructorArgument"));
      final SNode lastItem = Sequence.fromIterable(collection).last();
      for (SNode item : collection) {
        appendNode(item);
        if (item != lastItem) {
          append(", ");
        }
      }
    }
    this.append(")");
    this.append(" ");
    BaseClassConceptTextGen.membersWithBrackets(node, false, this);
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
  protected static Logger LOG = LogManager.getLogger(InternalAnonymousClass_TextGen.class);
}
