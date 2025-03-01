package jetbrains.mps.console.actions.plugin;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import jetbrains.mps.util.SNodeOperations;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import org.jetbrains.annotations.NotNull;
import org.apache.log4j.Level;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.SModelStereotype;
import com.intellij.openapi.project.Project;
import jetbrains.mps.console.tool.ConsoleTool;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class ShowGenerationPlan_Action extends BaseAction {
  private static final Icon ICON = null;
  public ShowGenerationPlan_Action() {
    super("Show Generation Plan", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    return SNodeOperations.isGeneratable(((SModel) MapSequence.fromMap(_params).get("model")));
  }
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    try {
      {
        boolean enabled = this.isApplicable(event, _params);
        this.setEnabledState(event.getPresentation(), enabled);
      }
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action doUpdate method failed. Action:" + "ShowGenerationPlan", t);
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
    MapSequence.fromMap(_params).put("model", event.getData(MPSCommonDataKeys.MODEL));
    if (MapSequence.fromMap(_params).get("model") == null) {
      return false;
    }
    return true;
  }
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    try {
      final Wrappers._T<SNode> command = new Wrappers._T<SNode>();
      ModelAccess.instance().runWriteActionInCommand(new Runnable() {
        public void run() {
          command.value = SConceptOperations.createNewNode(jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x61f2dd6de47f85e4L, "jetbrains.mps.console.ideCommands.structure.ShowGenPlan")));
          SLinkOperations.setTarget(command.value, MetaAdapterFactory.getContainmentLink(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x61f2dd6de47f85e4L, 0x61f2dd6de47f867aL, "targetModel"), SConceptOperations.createNewNode(jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x6c8954f469900928L, "jetbrains.mps.console.ideCommands.structure.ModelReference"))));
          SPropertyOperations.set(SLinkOperations.getTarget(command.value, MetaAdapterFactory.getContainmentLink(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x61f2dd6de47f85e4L, 0x61f2dd6de47f867aL, "targetModel")), MetaAdapterFactory.getProperty(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x7c3f2da20e92b62L, 0x7c3f2da20e92b66L, "name"), SNodeOperations.getModelLongName(((SModel) MapSequence.fromMap(_params).get("model"))));
          SPropertyOperations.set(SLinkOperations.getTarget(command.value, MetaAdapterFactory.getContainmentLink(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x61f2dd6de47f85e4L, 0x61f2dd6de47f867aL, "targetModel")), MetaAdapterFactory.getProperty(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x7c3f2da20e92b62L, 0x7c3f2da20e93b6fL, "stereotype"), SModelStereotype.getStereotype(((SModel) MapSequence.fromMap(_params).get("model"))));
        }
      });
      ((Project) MapSequence.fromMap(_params).get("project")).getComponent(ConsoleTool.class).executeCommand(command.value);
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action execute method failed. Action:" + "ShowGenerationPlan", t);
      }
    }
  }
  protected static Logger LOG = LogManager.getLogger(ShowGenerationPlan_Action.class);
}
