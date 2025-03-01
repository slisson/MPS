package jetbrains.mps.vcs.platform.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import java.util.List;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.vcs.platform.integration.ConflictingModelsUtil;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import com.intellij.openapi.vcs.merge.MergeProvider;
import git4idea.GitVcs;
import org.jetbrains.annotations.NotNull;
import org.apache.log4j.Level;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import com.intellij.openapi.vcs.merge.MergeSession;
import com.intellij.openapi.vcs.merge.MergeProvider2;
import com.intellij.openapi.progress.ProgressManager;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import com.intellij.openapi.ui.Messages;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class ResolveNonconflictingChanges_Action extends BaseAction {
  private static final Icon ICON = null;
  public ResolveNonconflictingChanges_Action() {
    super("Resolve non-conflicting changes in MPS models", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    List<VirtualFile> conflictedModelFiles = ConflictingModelsUtil.getConflictingModelFiles(((MPSProject) MapSequence.fromMap(_params).get("project")).getProject());
    MergeProvider provider = GitVcs.getInstance(((MPSProject) MapSequence.fromMap(_params).get("project")).getProject()).getMergeProvider();

    return ConflictingModelsUtil.hasResolvableConflicts(((MPSProject) MapSequence.fromMap(_params).get("project")).getProject(), provider, conflictedModelFiles);
  }
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    try {
      {
        boolean enabled = this.isApplicable(event, _params);
        this.setEnabledState(event.getPresentation(), enabled);
      }
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action doUpdate method failed. Action:" + "ResolveNonconflictingChanges", t);
      }
      this.disable(event.getPresentation());
    }
  }
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    MapSequence.fromMap(_params).put("project", event.getData(MPSCommonDataKeys.MPS_PROJECT));
    if (MapSequence.fromMap(_params).get("project") == null) {
      return false;
    }
    return true;
  }
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    try {
      List<VirtualFile> conflictedModelFiles = ConflictingModelsUtil.getConflictingModelFiles(((MPSProject) MapSequence.fromMap(_params).get("project")).getProject());
      // merge with git provider 
      MergeProvider provider = GitVcs.getInstance(((MPSProject) MapSequence.fromMap(_params).get("project")).getProject()).getMergeProvider();
      MergeSession session = (provider instanceof MergeProvider2 ? ((MergeProvider2) provider).createMergeSession(conflictedModelFiles) : null);

      ConflictingModelsUtil.ModelConflictResolver resolver = ConflictingModelsUtil.getModelConflictResolverTask(((MPSProject) MapSequence.fromMap(_params).get("project")).getProject(), provider, session, conflictedModelFiles);
      ProgressManager.getInstance().run(resolver);

      if (ListSequence.fromList(resolver.getUnresolvedFiles()).isNotEmpty()) {
        String message = "Conflicts in the following model files were not autoresolved:\n";
        for (VirtualFile file : ListSequence.fromList(resolver.getUnresolvedFiles())) {
          message += " " + file.getPath() + "\n";
        }
        message += "This happens when you merge in models in an old persistence format and have not merged and re-generated all of their used languages." + " It is recommended to first merge and re-generate the used languages, and then try to auto resolve the conflicts again.";
        Messages.showWarningDialog(((MPSProject) MapSequence.fromMap(_params).get("project")).getProject(), message, "Conflict Resolver");
      }
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action execute method failed. Action:" + "ResolveNonconflictingChanges", t);
      }
    }
  }
  protected static Logger LOG = LogManager.getLogger(ResolveNonconflictingChanges_Action.class);
}
