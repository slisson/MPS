package jetbrains.mps.ide.java.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.util.ModelComputeRunnable;
import jetbrains.mps.util.Computable;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.editor.runtime.cells.ReadOnlyUtil;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.IntroduceConstantRefactoring;
import org.jetbrains.annotations.NotNull;
import org.apache.log4j.Level;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import com.intellij.featureStatistics.FeatureUsageTracker;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.ide.java.platform.refactorings.IntroduceConstantDialog;
import com.intellij.openapi.project.Project;
import javax.swing.JOptionPane;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class IntroduceConstant_Action extends BaseAction {
  private static final Icon ICON = null;
  public IntroduceConstant_Action() {
    super("Introduce Constant...", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    SNode nodeToRefactor = new ModelComputeRunnable<SNode>(new Computable<SNode>() {
      public SNode compute() {
        return SNodeOperations.getNodeAncestor(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression"), true, false);
      }
    }).runRead(((EditorContext) MapSequence.fromMap(_params).get("editorContext")).getRepository().getModelAccess());
    if (ReadOnlyUtil.isCellsReadOnlyInEditor(((EditorComponent) MapSequence.fromMap(_params).get("component")), Sequence.<EditorCell>singleton(((EditorComponent) MapSequence.fromMap(_params).get("component")).findNodeCell(nodeToRefactor)))) {
      return false;
    }
    return IntroduceConstantRefactoring.isApplicable(nodeToRefactor);
  }
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    try {
      {
        boolean enabled = this.isApplicable(event, _params);
        this.setEnabledState(event.getPresentation(), enabled);
      }
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action doUpdate method failed. Action:" + "IntroduceConstant", t);
      }
      this.disable(event.getPresentation());
    }
  }
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    {
      SNode node = event.getData(MPSCommonDataKeys.NODE);
      if (node != null) {
      }
      MapSequence.fromMap(_params).put("node", node);
    }
    if (MapSequence.fromMap(_params).get("node") == null) {
      return false;
    }
    MapSequence.fromMap(_params).put("editorContext", event.getData(MPSEditorDataKeys.EDITOR_CONTEXT));
    if (MapSequence.fromMap(_params).get("editorContext") == null) {
      return false;
    }
    {
      EditorComponent editorComponent = event.getData(MPSEditorDataKeys.EDITOR_COMPONENT);
      if (editorComponent != null && editorComponent.isInvalid()) {
        editorComponent = null;
      }
      MapSequence.fromMap(_params).put("component", editorComponent);
    }
    if (MapSequence.fromMap(_params).get("component") == null) {
      return false;
    }
    MapSequence.fromMap(_params).put("projct", event.getData(CommonDataKeys.PROJECT));
    if (MapSequence.fromMap(_params).get("projct") == null) {
      return false;
    }
    return true;
  }
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    try {
      FeatureUsageTracker.getInstance().triggerFeatureUsed("refactoring.introduceConstant");

      final SNode nodeToRefactor = new ModelComputeRunnable<SNode>(new Computable<SNode>() {
        public SNode compute() {
          return SNodeOperations.getNodeAncestor(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression"), true, false);
        }
      }).runRead(((EditorContext) MapSequence.fromMap(_params).get("editorContext")).getRepository().getModelAccess());
      final Wrappers._T<IntroduceConstantRefactoring> refactoring = new Wrappers._T<IntroduceConstantRefactoring>();
      final Wrappers._T<String> error = new Wrappers._T<String>();
      ((EditorContext) MapSequence.fromMap(_params).get("editorContext")).getRepository().getModelAccess().runReadAction(new Runnable() {
        public void run() {
          refactoring.value = new IntroduceConstantRefactoring();
          error.value = refactoring.value.init(nodeToRefactor, ((EditorComponent) MapSequence.fromMap(_params).get("component")));
        }
      });
      if (error.value == null) {
        IntroduceConstantDialog dialog = new IntroduceConstantDialog(((Project) MapSequence.fromMap(_params).get("projct")), refactoring.value, ((EditorContext) MapSequence.fromMap(_params).get("editorContext")));
        dialog.show();
      } else {
        JOptionPane.showMessageDialog(((EditorComponent) MapSequence.fromMap(_params).get("component")), error.value, "Error", JOptionPane.ERROR_MESSAGE);
      }
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action execute method failed. Action:" + "IntroduceConstant", t);
      }
    }
  }
  protected static Logger LOG = LogManager.getLogger(IntroduceConstant_Action.class);
}
