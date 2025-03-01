package jetbrains.mps.tool.environment;

/*Generated by MPS */

import jetbrains.mps.project.Project;
import java.io.File;

/**
 * Environment impl MUST call ActiveEnvironment.activateEnvironment at the beginning of the constructor and ActiveEnvrionment.deactivateEnvironment at the end of dispose()
 */
public interface Environment {
  public boolean hasIdeaInstance();

  /**
   * Opened project should be compiled and classloaded
   */
  public Project openProject(File projectFile);
  public boolean isProjectOpened(File projectFile);
  public void disposeProject(File projectFile);
  public Project createDummyProject();
  public void dispose();
}
