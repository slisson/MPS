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
import jetbrains.mps.baseLanguage.util.plugin.refactorings.IntroduceLocalVariableRefactoring;
import org.jetbrains.annotations.NotNull;
import org.apache.log4j.Level;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import com.intellij.featureStatistics.FeatureUsageTracker;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.ide.java.platform.refactorings.LocalVariableIntroducer;
import java.awt.Frame;
import javax.swing.JOptionPane;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class IntroduceVariable_Action extends BaseAction {
  private static final Icon ICON = null;
  public IntroduceVariable_Action() {
    super("Introduce Variable...", "", ICON);
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
    return IntroduceLocalVariableRefactoring.isApplicable(nodeToRefactor);
  }
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    try {
      {
        boolean enabled = this.isApplicable(event, _params);
        this.setEnabledState(event.getPresentation(), enabled);
      }
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action doUpdate method failed. Action:" + "IntroduceVariable", t);
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
    MapSequence.fromMap(_params).put("frame", event.getData(MPSCommonDataKeys.FRAME));
    if (MapSequence.fromMap(_params).get("frame") == null) {
      return false;
    }
    return true;
  }
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    try {
      FeatureUsageTracker.getInstance().triggerFeatureUsed("refactoring.introduceVariable");

      final IntroduceLocalVariableRefactoring refactoring = new IntroduceLocalVariableRefactoring();
      final SNode nodeToRefactor = new ModelComputeRunnable<SNode>(new Computable<SNode>() {
        public SNode compute() {
          return SNodeOperations.getNodeAncestor(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression"), true, false);
        }
      }).runRead(((EditorContext) MapSequence.fromMap(_params).get("editorContext")).getRepository().getModelAccess());
      final Wrappers._T<String> error = new Wrappers._T<String>();
      ((EditorContext) MapSequence.fromMap(_params).get("editorContext")).getRepository().getModelAccess().runReadAction(new Runnable() {
        public void run() {
          error.value = refactoring.init(nodeToRefactor, ((EditorComponent) MapSequence.fromMap(_params).get("component")));
        }
      });
      if (error.value == null) {
        final LocalVariableIntroducer introducer = new LocalVariableIntroducer(((Frame) MapSequence.fromMap(_params).get("frame")), refactoring, ((EditorComponent) MapSequence.fromMap(_params).get("component")), ((EditorContext) MapSequence.fromMap(_params).get("editorContext")));
        introducer.invoke(event.getDataContext());
      } else {
        JOptionPane.showMessageDialog(((EditorComponent) MapSequence.fromMap(_params).get("component")), error.value, "Error", JOptionPane.ERROR_MESSAGE);
      }
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action execute method failed. Action:" + "IntroduceVariable", t);
      }
    }
  }
  protected static Logger LOG = LogManager.getLogger(IntroduceVariable_Action.class);
}
