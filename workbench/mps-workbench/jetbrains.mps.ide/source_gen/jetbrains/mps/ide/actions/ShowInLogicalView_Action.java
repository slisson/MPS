package jetbrains.mps.ide.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import jetbrains.mps.icons.MPSIcons;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.internal.collections.runtime.Sequence;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import org.apache.log4j.Level;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import jetbrains.mps.ide.projectPane.ProjectPane;
import com.intellij.openapi.project.Project;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import org.jetbrains.mps.openapi.model.SModel;

public class ShowInLogicalView_Action extends BaseAction {
  private static final Icon ICON = MPSIcons.ProjectPane.LogicalView;
  public ShowInLogicalView_Action() {
    super("Show Node in Logical View", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(false);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    Iterable<SModule> modules = (Iterable<SModule>) ((MPSProject) MapSequence.fromMap(_params).get("mpsProject")).getModulesWithGenerators();
    return Sequence.fromIterable(modules).contains(check_kgxlnq_a0a1a0(check_kgxlnq_a0a0b0a(((SNode) MapSequence.fromMap(_params).get("node")))));
  }
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    try {
      {
        boolean enabled = this.isApplicable(event, _params);
        this.setEnabledState(event.getPresentation(), enabled);
      }
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action doUpdate method failed. Action:" + "ShowInLogicalView", t);
      }
      this.disable(event.getPresentation());
    }
  }
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    MapSequence.fromMap(_params).put("project", event.getData(CommonDataKeys.PROJECT));
    if (MapSequence.fromMap(_params).get("project") == null) {
      return false;
    }
    MapSequence.fromMap(_params).put("mpsProject", event.getData(MPSCommonDataKeys.MPS_PROJECT));
    if (MapSequence.fromMap(_params).get("mpsProject") == null) {
      return false;
    }
    MapSequence.fromMap(_params).put("context", event.getData(MPSCommonDataKeys.OPERATION_CONTEXT));
    if (MapSequence.fromMap(_params).get("context") == null) {
      return false;
    }
    MapSequence.fromMap(_params).put("node", event.getData(MPSCommonDataKeys.NODE));
    if (MapSequence.fromMap(_params).get("node") == null) {
      return false;
    }
    return true;
  }
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    try {
      ProjectPane pane = ProjectPane.getInstance(((Project) MapSequence.fromMap(_params).get("project")));
      SNode nodeToSelect = (pane.showNodeStructure() ? ((SNode) MapSequence.fromMap(_params).get("node")) : ((SNode) MapSequence.fromMap(_params).get("node")).getContainingRoot());
      pane.selectNode(nodeToSelect, true);
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action execute method failed. Action:" + "ShowInLogicalView", t);
      }
    }
  }
  protected static Logger LOG = LogManager.getLogger(ShowInLogicalView_Action.class);
  private static SModule check_kgxlnq_a0a1a0(SModel checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getModule();
    }
    return null;
  }
  private static SModel check_kgxlnq_a0a0b0a(SNode checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getModel();
    }
    return null;
  }
}
