package jetbrains.mps.ide.make.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.apache.log4j.Level;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import java.util.List;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.project.MPSProject;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.generator.ModelGenerationStatusManager;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class RebuildRequiredModels_Action extends BaseAction {
  private static final Icon ICON = null;
  public RebuildRequiredModels_Action() {
    super("Rebuild Required Models", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    try {
      this.enable(event.getPresentation());
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action doUpdate method failed. Action:" + "RebuildRequiredModels", t);
      }
      this.disable(event.getPresentation());
    }
  }
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    MapSequence.fromMap(_params).put("mpsProject", event.getData(MPSCommonDataKeys.MPS_PROJECT));
    if (MapSequence.fromMap(_params).get("mpsProject") == null) {
      return false;
    }
    return true;
  }
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    try {
      final Wrappers._T<List<SModel>> models = new Wrappers._T<List<SModel>>();
      ((MPSProject) MapSequence.fromMap(_params).get("mpsProject")).getModelAccess().runReadAction(new Runnable() {
        public void run() {
          Iterable<? extends SModule> projectModules = ((MPSProject) MapSequence.fromMap(_params).get("mpsProject")).getModulesWithGenerators();
          final ModelGenerationStatusManager mgsm = ModelGenerationStatusManager.getInstance();
          models.value = ListSequence.fromListWithValues(new ArrayList<SModel>(), Sequence.fromIterable(projectModules).translate(new ITranslator2<SModule, SModel>() {
            public Iterable<SModel> translate(SModule it) {
              return (Iterable<SModel>) it.getModels();
            }
          }).where(new IWhereFilter<SModel>() {
            public boolean accept(SModel it) {
              return mgsm.generationRequired(it);
            }
          }));
        }
      });
      new MakeActionImpl(new MakeActionParameters(((MPSProject) MapSequence.fromMap(_params).get("mpsProject"))).models(models.value).cleanMake(true)).executeAction();
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action execute method failed. Action:" + "RebuildRequiredModels", t);
      }
    }
  }
  protected static Logger LOG = LogManager.getLogger(RebuildRequiredModels_Action.class);
}
