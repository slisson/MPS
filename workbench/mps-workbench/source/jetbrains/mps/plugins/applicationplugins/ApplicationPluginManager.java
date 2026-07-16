/*
 * Copyright 2003-2025 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.plugins.applicationplugins;

import com.intellij.openapi.Disposable;
import com.intellij.openapi.application.Application;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.BaseComponent;
import com.intellij.openapi.extensions.PluginId;
import jetbrains.mps.core.platform.Platform;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.plugins.BasePluginManager;
import jetbrains.mps.plugins.PluginContributor;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

import java.util.List;
import java.util.function.Consumer;

/**
 * Is a {@link BasePluginManager} which is responsible for loading application plugins {@link BaseApplicationPlugin};
 * Triggered from the superclass (#afterPluginsCreated)
 * <p>
 *   Used to be IDEA App Component, now it's an App Service (although as long as its initialization is explicit, doesn't need to be integrated into
 *   IDEA story altogether, both this class and PluginLoaderRegistry could be POJO components.
 *   FIXME Besides, register/unregister() shall become external operations, rather than shared behavior of superclass
 * </p>
 */
public class ApplicationPluginManager extends BasePluginManager<BaseApplicationPlugin> implements Disposable {
  private static final Logger LOG = Logger.getLogger(ApplicationPluginManager.class);

  private final Platform myPlatform;

  public ApplicationPluginManager() {
    myPlatform = MPSCoreComponents.getInstance().getPlatform();
    register();
  }

  @Override
  protected BaseApplicationPlugin createPlugin(PluginContributor contributor) {
    BaseApplicationPlugin rv = contributor.createApplicationPlugin();
    if (rv != null) {
      rv.setPlatform(myPlatform);
    }
    return rv;
  }

  @Override
  protected void afterPluginsCreated(List<BaseApplicationPlugin> plugins) {
    // XXX it's odd ProjectPluginManager does the same with single BaseProjectPlugin.init() call
    //     Why do we care about distinct steps of AppPlugin here?
    //     The only reason I can imagine is that some plugins got dependencies between
    //     their groups, so that they need to create all groups prior to adjustGroups()
    //     This is a pure guess, however; git blame doesn't support this idea (nor
    //     contradicts it. As usual, just keeps silence).
    timedForEach(plugins, BaseApplicationPlugin::createKeymaps);
    timedForEach(plugins, BaseApplicationPlugin::createGroups1);
    timedForEach(plugins, BaseApplicationPlugin::adjustGroups);
    timedForEach(plugins, BaseApplicationPlugin::createCustomParts);
    GroupAdjuster.adjustTopLevelGroups();
    GroupAdjuster.refreshCustomizations();
  }

  /**
   * Like {@code plugins.forEach(step)}, but attributes the time spent in the step to each plugin's
   * load time (shown in the MPS Plugins settings page).
   */
  private void timedForEach(List<BaseApplicationPlugin> plugins, Consumer<BaseApplicationPlugin> step) {
    for (BaseApplicationPlugin plugin : plugins) {
      long startTime = System.nanoTime();
      step.accept(plugin);
      recordAdditionalLoadTime(plugin, System.nanoTime() - startTime);
    }
  }

  @Override
  protected void beforePluginsDisposed(List<BaseApplicationPlugin> plugins) {
  }

  @Override
  protected void disposePlugin(BaseApplicationPlugin plugin) {
    plugin.dispose();
  }

  @Override
  public boolean isDisposed() {
    Application application = ApplicationManager.getApplication();
    return application == null || application.isDisposed();
  }

  @Override
  public void dispose() {
    unregister();
  }
}
