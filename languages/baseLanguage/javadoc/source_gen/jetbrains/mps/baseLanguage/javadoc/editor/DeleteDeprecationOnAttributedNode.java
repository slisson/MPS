package jetbrains.mps.baseLanguage.javadoc.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import jetbrains.mps.openapi.editor.selection.SelectionManager;

public class DeleteDeprecationOnAttributedNode {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.DELETE, new DeleteDeprecationOnAttributedNode.DeleteDeprecationOnAttributedNode_DELETE(node));
    editorCell.setAction(CellActionType.BACKSPACE, new DeleteDeprecationOnAttributedNode.DeleteDeprecationOnAttributedNode_BACKSPACE(node));
  }
  public static class DeleteDeprecationOnAttributedNode_DELETE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public DeleteDeprecationOnAttributedNode_DELETE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SPropertyOperations.set(SNodeOperations.cast(SNodeOperations.getParent(node), MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d2ea8a339L, "jetbrains.mps.baseLanguage.structure.IBLDeprecatable")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d2ea8a339L, 0x11d2ea948a4L, "isDeprecated"), "" + (false));
      SLinkOperations.setTarget(node, MetaAdapterFactory.getContainmentLink(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x4a3c146b7fae70d3L, 0x757ba20a4c87f96bL, "deprecated"), null);
      SelectionUtil.selectCell(editorContext, node, SelectionManager.FIRST_EDITABLE_CELL);
    }
  }
  public static class DeleteDeprecationOnAttributedNode_BACKSPACE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public DeleteDeprecationOnAttributedNode_BACKSPACE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SPropertyOperations.set(SNodeOperations.cast(SNodeOperations.getParent(node), MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d2ea8a339L, "jetbrains.mps.baseLanguage.structure.IBLDeprecatable")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d2ea8a339L, 0x11d2ea948a4L, "isDeprecated"), "" + (false));
      SLinkOperations.setTarget(node, MetaAdapterFactory.getContainmentLink(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x4a3c146b7fae70d3L, 0x757ba20a4c87f96bL, "deprecated"), null);
      SelectionUtil.selectCell(editorContext, node, SelectionManager.FIRST_EDITABLE_CELL);
    }
  }
}
