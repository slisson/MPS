package jetbrains.mps.baseLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.textGen.SNodeTextGen;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.textGen.TraceInfoGenerationUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class SwitchStatement_TextGen extends SNodeTextGen {
  public void doGenerateText(SNode node) {
    if (getBuffer().hasPositionsSupport()) {
      TraceInfoGenerationUtil.createPositionInfo(this, node);
    }
    if ((SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef02a8c6aL, 0x4091554b655a230eL, "switchLabel")) != null)) {
      this.appendNewLine();
      this.append(SPropertyOperations.getString(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef02a8c6aL, 0x4091554b655a230eL, "switchLabel")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
      this.append(":");
    } else if (SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef02a8c6aL, 0x117b7e94b9bL, "label")) != null) {
      this.appendNewLine();
      this.append(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef02a8c6aL, 0x117b7e94b9bL, "label")));
      this.append(":");
    }
    this.appendNewLine();
    this.appendWithIndent("switch (");
    appendNode(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef02a8c6aL, 0x10ef02ec241L, "expression")));
    this.append(") {");
    this.increaseDepth();
    for (SNode sc : SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef02a8c6aL, 0x10ef02edcafL, "case"))) {
      this.appendNewLine();
      this.appendWithIndent("case ");
      if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(sc, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef02cdd1bL, 0x10ef02d67cfL, "expression")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc37588bc8L, "jetbrains.mps.baseLanguage.structure.EnumConstantReference"))) {
        SNode enumConstant = (SNode) SLinkOperations.getTarget(sc, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef02cdd1bL, 0x10ef02d67cfL, "expression"));
        this.append(SPropertyOperations.getString(SLinkOperations.getTarget(enumConstant, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc37588bc8L, 0xfc37588bcaL, "enumConstantDeclaration")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
      } else {
        appendNode(SLinkOperations.getTarget(sc, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef02cdd1bL, 0x10ef02d67cfL, "expression")));
      }
      this.append(":");
      this.increaseDepth();
      appendNode(SLinkOperations.getTarget(sc, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef02cdd1bL, 0x10ef02d8048L, "body")));
      this.decreaseDepth();
    }
    this.appendNewLine();
    this.appendWithIndent("default:");
    this.increaseDepth();
    appendNode(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef02a8c6aL, 0x10ef02c1b6eL, "defaultBlock")));
    this.decreaseDepth();
    this.decreaseDepth();
    this.appendNewLine();
    this.appendWithIndent("}");
    if (getBuffer().hasPositionsSupport()) {
      {
        String traceableProperty = "";
        try {
          traceableProperty = BehaviorReflection.invokeVirtual(String.class, SNodeOperations.cast(node, MetaAdapterFactory.getInterfaceConcept(0x9ded098bad6a4657L, 0xbfd948636cfe8bc3L, 0x465516cf87c705a3L, "jetbrains.mps.lang.traceable.structure.TraceableConcept")), "virtual_getTraceableProperty_5067982036267369901", new Object[]{});
        } catch (Throwable t) {
          if (LOG.isEnabledFor(Level.ERROR)) {
            LOG.error("Can't calculate traceable prorerty for a node " + node + ".", t);
          }
        }
        TraceInfoGenerationUtil.fillPositionInfo(this, node, traceableProperty);
      }
    }
  }
  protected static Logger LOG = LogManager.getLogger(SwitchStatement_TextGen.class);
}
