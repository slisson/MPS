package jetbrains.mps.ide.platform.environment;

/*Generated by MPS */

import jetbrains.mps.tool.environment.Environment;
import jetbrains.mps.tool.environment.ProjectContainer;
import java.util.List;
import jetbrains.mps.library.contributor.LibraryContributor;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import com.intellij.idea.IdeaTestApplication;
import jetbrains.mps.tool.environment.EnvironmentConfig;
import jetbrains.mps.tool.environment.ActiveEnvironment;
import jetbrains.mps.tool.environment.EnvironmentUtils;
import jetbrains.mps.ide.platform.watching.FSChangesWatcher;
import com.intellij.openapi.vfs.newvfs.persistent.FSRecords;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.io.File;
import jetbrains.mps.tool.common.util.CanonicalPath;
import com.intellij.openapi.application.PathMacros;
import jetbrains.mps.library.LibraryInitializer;
import javax.swing.SwingUtilities;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.project.Project;
import com.intellij.ui.GuiUtils;
import com.intellij.ide.IdeEventQueue;
import java.lang.reflect.InvocationTargetException;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import com.intellij.openapi.application.ApplicationManager;
import jetbrains.mps.util.FileUtil;
import java.io.InputStream;
import java.io.FileOutputStream;
import jetbrains.mps.util.ReadUtil;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.project.ex.ProjectManagerEx;
import com.intellij.openapi.vfs.VirtualFileManager;
import jetbrains.mps.project.MPSProject;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

/**
 * TODO: fix dispose methods
 */
public class IdeaEnvironment implements Environment {
  private static final String MISC_XML_URI = "/jetbrains/mps/testbench/junit/runners/misc.xml";

  private final ProjectContainer myContainer = new ProjectContainer();
  private final List<LibraryContributor> myLibContributors = ListSequence.fromList(new ArrayList<LibraryContributor>());
  private final IdeaTestApplication myIdeaApplication;

  public IdeaEnvironment(EnvironmentConfig config) {
    if (LOG.isInfoEnabled()) {
      LOG.info("Creating Idea environment");
    }
    ActiveEnvironment.activateEnvironment(this);
    EnvironmentUtils.setSystemProperties(true);
    EnvironmentUtils.setIdeaPluginsToLoad(config);

    myIdeaApplication = createIdeaTestApp();
    // Necessary to listen for FS changes notifications & notify MPS FS listeners to update reposotiry/.. 
    // this code will work if on executing tests with "reuse caches" option 
    // TODO: should we modify FSChangesWatcher to always listen for FS notifications (even in tests)? 
    FSChangesWatcher.instance().initComponent(true);
    initLibraries(config);
    initMacros(config);
  }

  private void invalidateIdeaCaches() {
    if (LOG.isInfoEnabled()) {
      LOG.info("Invalidating caches");
    }
    FSRecords.invalidateCaches();
  }

  private void initMacros(EnvironmentConfig config) {
    for (String macro : MapSequence.fromMap(config.getMacros()).keySet()) {
      setMacro(macro, MapSequence.fromMap(config.getMacros()).get(macro));
    }
  }

  private void setMacro(String macroName, File file) {
    CanonicalPath path = new CanonicalPath(file.getAbsolutePath());
    if (path.isValidDirectory()) {
      PathMacros.getInstance().setMacro(macroName, path.getValue());
    }
  }

  private void initLibraries(EnvironmentConfig config) {
    if (LOG.isInfoEnabled()) {
      LOG.info("Initializing libraries");
    }

    final LibraryContributor libContributor = EnvironmentUtils.createLibContributor(config);
    final LibraryContributor pluginsContributor = EnvironmentUtils.createPluginLibContributor(config);
    LibraryInitializer.getInstance().addContributor(libContributor);
    LibraryInitializer.getInstance().addContributor(pluginsContributor);
    try {
      SwingUtilities.invokeAndWait(new Runnable() {
        @Override
        public void run() {
          ModelAccess.instance().runWriteAction(new Runnable() {
            public void run() {
              LibraryInitializer.getInstance().update();
            }
          });
        }
      });
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
    ListSequence.fromList(myLibContributors).addElement(libContributor);
    ListSequence.fromList(myLibContributors).addElement(pluginsContributor);
  }

  private IdeaTestApplication createIdeaTestApp() {
    if (LOG.isInfoEnabled()) {
      LOG.info("Creating IdeaTestApplication");
    }
    return IdeaTestApplication.getInstance(null);
  }

  @Override
  public boolean hasIdeaInstance() {
    return true;
  }

  @Override
  public Project openProject(File projectFile) {
    if (isProjectOpened(projectFile)) {
      if (LOG.isInfoEnabled()) {
        LOG.info("Using the last created project");
      }
      Project lastUsedProject = myContainer.getProject(projectFile);
      return lastUsedProject;
    } else {
      if (LOG.isInfoEnabled()) {
        LOG.info("Opening a new project");
      }
      Project project = openProjectInIdeaEnvironment(projectFile);
      myContainer.addProject(project);
      return project;
    }
  }

  @Override
  public Project createDummyProject() {
    File dummyProjectFile = createDummyProjectFile();
    Project dummyProject = IdeaEnvironment.openProjectInIdeaEnvironment(dummyProjectFile);
    myContainer.addProject(dummyProject);
    return dummyProject;
  }

  @Override
  public void disposeProject(File projectFile) {
    final Project project = myContainer.getProject(projectFile);
    if (LOG.isDebugEnabled()) {
      LOG.debug("Disposing the project " + project);
    }

    try {
      GuiUtils.runOrInvokeAndWait(new Runnable() {
        public void run() {
          myContainer.disposeProject(project);
          IdeEventQueue.getInstance().flushQueue();
        }
      });
    } catch (InterruptedException e) {
      throw new RuntimeException(e);
    } catch (InvocationTargetException e) {
      throw new RuntimeException(e);
    }
  }

  @Override
  public boolean isProjectOpened(File projectFile) {
    return myContainer.containsProject(projectFile);
  }

  @Override
  public void dispose() {
    if (LOG.isDebugEnabled()) {
      LOG.debug("Disposing environment");
    }

    for (LibraryContributor contrib : ListSequence.fromList(myLibContributors)) {
      LibraryInitializer.getInstance().removeContributor(contrib);
    }

    for (Project project : SetSequence.fromSet(myContainer.getProjects())) {
      disposeProject(project.getProjectFile());
    }

    try {
      GuiUtils.runOrInvokeAndWait(new Runnable() {
        @Override
        public void run() {
          ApplicationManager.getApplication().runWriteAction(new Runnable() {
            public void run() {
              myIdeaApplication.dispose();
            }
          });
        }
      });
    } catch (InterruptedException e) {
      throw new RuntimeException(e);
    } catch (InvocationTargetException e) {
      throw new RuntimeException(e);
    }

    ModelAccess.instance().flushEventQueue();

    ActiveEnvironment.deactivateEnvironment(this);
  }

  private File createDummyProjectFile() {
    File dummyProjDir = FileUtil.createTmpDir();
    File dotMps = new File(dummyProjDir, ".mps");
    dotMps.mkdir();
    File projectFile = new File(dotMps, IdeaEnvironment.MISC_XML_URI.substring(IdeaEnvironment.MISC_XML_URI.lastIndexOf("/") + 1));
    try {
      projectFile.createNewFile();
      InputStream input = IdeaEnvironment.class.getResourceAsStream(IdeaEnvironment.MISC_XML_URI);
      FileOutputStream stream = new FileOutputStream(projectFile);
      stream.write(ReadUtil.read(input));
      stream.close();
      input.close();
    } catch (IOException e) {
      e.printStackTrace();
      return null;
    }
    dummyProjDir.deleteOnExit();
    return dummyProjDir;
  }

  @NotNull
  private static Project openProjectInIdeaEnvironment(File projectFile) {
    if (!(projectFile.exists())) {
      throw new RuntimeException("Can't find project file " + projectFile.getAbsolutePath());
    }
    final ProjectManagerEx projectManager = ProjectManagerEx.getInstanceEx();
    final String filePath = projectFile.getAbsolutePath();
    // this is a workaround for MPS-8840 
    final com.intellij.openapi.project.Project[] project = new com.intellij.openapi.project.Project[1];
    final Exception[] exc = new Exception[]{null};
    try {
      GuiUtils.runOrInvokeAndWait(new Runnable() {
        public void run() {
          try {
            if (LOG.isInfoEnabled()) {
              LOG.info("Load and open the project with path '" + filePath + "'");
            }
            project[0] = projectManager.loadAndOpenProject(filePath);
            // calling sync refresh for FS in order to update all modules/models loaded from the project 
            // if unit-test is executed with the "reuse caches" option. 
            VirtualFileManager.getInstance().syncRefresh();
          } catch (Exception e) {
            exc[0] = e;
          }
        }
      });
    } catch (InterruptedException e) {
      throw new RuntimeException(e);
    } catch (InvocationTargetException e) {
      throw new RuntimeException(e);
    }
    if (exc[0] != null) {
      // this actually happens 
      throw new RuntimeException("ProjectManager could not load project from " + projectFile.getAbsolutePath(), exc[0]);
    }
    return (Project) project[0].getComponent(MPSProject.class);
  }
  protected static Logger LOG = LogManager.getLogger(IdeaEnvironment.class);
}
