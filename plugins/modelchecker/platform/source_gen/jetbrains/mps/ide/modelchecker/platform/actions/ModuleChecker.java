package jetbrains.mps.ide.modelchecker.platform.actions;

/*Generated by MPS */

import jetbrains.mps.ide.findusages.model.SearchResults;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import jetbrains.mps.project.validation.ModuleValidator;
import jetbrains.mps.project.validation.ModuleValidatorFactory;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class ModuleChecker {
  private SearchResults<ModelCheckerIssue> myResults = new SearchResults<ModelCheckerIssue>();
  public ModuleChecker() {
  }
  public void checkModule(SModule module, ProgressMonitor monitor) {
    String moduleName = module.getModuleName();
    monitor.start("Checking " + moduleName + " module properties...", 1);
    try {
      ModuleValidator validator = ModuleValidatorFactory.createValidator(module);
      for (String msg : validator.getErrors()) {
        myResults.getSearchResults().add(ModelCheckerIssue.getSearchResultForModule(module, moduleName + ": " + msg, null, ModelChecker.SEVERITY_ERROR, "module properties"));

      }
      for (String msg : validator.getWarnings()) {
        myResults.getSearchResults().add(ModelCheckerIssue.getSearchResultForModule(module, moduleName + ": " + msg, null, ModelChecker.SEVERITY_WARNING, "module properties"));

      }
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("Error while " + moduleName + " module checking", t);
      }
    } finally {
      monitor.done();
    }
  }
  public SearchResults<ModelCheckerIssue> getSearchResults() {
    return myResults;
  }
  protected static Logger LOG = LogManager.getLogger(ModuleChecker.class);
}
