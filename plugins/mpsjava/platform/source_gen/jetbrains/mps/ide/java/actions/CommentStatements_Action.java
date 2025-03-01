package jetbrains.mps.ide.java.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import jetbrains.mps.editor.runtime.cells.ReadOnlyUtil;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.annotations.NotNull;
import org.apache.log4j.Level;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import java.util.ArrayList;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class CommentStatements_Action extends BaseAction {
  private static final Icon ICON = null;
  public CommentStatements_Action() {
    super("Comment Statements", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(false);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    return !(ReadOnlyUtil.isCellsReadOnlyInEditor(((EditorComponent) MapSequence.fromMap(_params).get("editorComponent")), ListSequence.fromList(((List<SNode>) MapSequence.fromMap(_params).get("nodes"))).select(new ISelector<SNode, EditorCell>() {
      public EditorCell select(SNode it) {
        return (EditorCell) ((EditorComponent) MapSequence.fromMap(_params).get("editorComponent")).findNodeCell(it);
      }
    }))) && (SNodeOperations.getNodeAncestor(ListSequence.fromList(((List<SNode>) MapSequence.fromMap(_params).get("nodes"))).first(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1121e2102fdL, "jetbrains.mps.baseLanguage.structure.CommentedStatementsBlock"), false, false) == null);
  }
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    try {
      {
        boolean enabled = this.isApplicable(event, _params);
        this.setEnabledState(event.getPresentation(), enabled);
      }
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action doUpdate method failed. Action:" + "CommentStatements", t);
      }
      this.disable(event.getPresentation());
    }
  }
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    {
      List<SNode> nodes = event.getData(MPSCommonDataKeys.NODES);
      boolean error = false;
      if (nodes != null) {
        for (SNode node : ListSequence.fromList(nodes)) {
          if (!(SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b215L, "jetbrains.mps.baseLanguage.structure.Statement")))) {
            error = true;
            break;
          }
        }
      }
      if (error || nodes == null) {
        MapSequence.fromMap(_params).put("nodes", null);
      } else {
        MapSequence.fromMap(_params).put("nodes", ListSequence.fromListWithValues(new ArrayList<SNode>(), nodes));
      }
    }
    if (MapSequence.fromMap(_params).get("nodes") == null) {
      return false;
    }
    {
      EditorComponent editorComponent = event.getData(MPSEditorDataKeys.EDITOR_COMPONENT);
      if (editorComponent != null && editorComponent.isInvalid()) {
        editorComponent = null;
      }
      MapSequence.fromMap(_params).put("editorComponent", editorComponent);
    }
    if (MapSequence.fromMap(_params).get("editorComponent") == null) {
      return false;
    }
    return true;
  }
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    try {
      SNode commentedStatementsBlock = SNodeOperations.insertNewPrevSiblingChild(ListSequence.fromList(((List<SNode>) MapSequence.fromMap(_params).get("nodes"))).first(), SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1121e2102fdL, "jetbrains.mps.baseLanguage.structure.CommentedStatementsBlock")));
      ListSequence.fromList(SLinkOperations.getChildren(commentedStatementsBlock, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1121e2102fdL, 0x1121e2157e4L, "statement"))).addSequence(ListSequence.fromList(((List<SNode>) MapSequence.fromMap(_params).get("nodes"))));
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action execute method failed. Action:" + "CommentStatements", t);
      }
    }
  }
  protected static Logger LOG = LogManager.getLogger(CommentStatements_Action.class);
}
