/*
 * Copyright 2003-2023 JetBrains s.r.o.
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
package jetbrains.mps.plugins;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.plugins.applicationplugins.BaseApplicationPlugin;
import jetbrains.mps.plugins.projectplugins.BaseProjectPlugin;
import jetbrains.mps.smodel.runtime.ModuleRuntime;
import jetbrains.mps.util.ModuleNameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/*package*/ final class ModulePluginContributor2 extends PluginContributor {
  private static final Logger LOG = Logger.getLogger(ModulePluginContributor2.class);

  private static final String PLUGIN_STRING = ".plugin.";
  private static final String PROJECT_PLUGIN_SUFFIX = "_ProjectPlugin";
  private static final String APP_PLUGIN_SUFFIX = "_ApplicationPlugin";

  private final ModuleRuntime myModule;

  private static String getProjectPluginClassName(SModuleReference module) {
    return String.format("%s%s%s%s", module.getModuleName(), PLUGIN_STRING, ModuleNameUtil.getModuleShortName(module), PROJECT_PLUGIN_SUFFIX);
  }

  private static String getApplicationPluginClassName(SModuleReference module) {
    return String.format("%s%s%s%s", module.getModuleName(), PLUGIN_STRING, ModuleNameUtil.getModuleShortName(module), APP_PLUGIN_SUFFIX);
  }

  public ModulePluginContributor2(@NotNull ModuleRuntime module) {
    myModule = module;
  }

  @NotNull
  public ModuleRuntime getModule() {
    return myModule;
  }

  @Override
  @NotNull
  public String getStableId() {
    return getModuleName();
  }

  @Override
  public BaseApplicationPlugin createApplicationPlugin() {
    String pluginClassName;
    boolean nameByConvention = false;
    Properties cfg = getComponentStartupConfiguration();
    if (cfg == null || (pluginClassName = cfg.getProperty("init.application")) == null) {
      // fallback to legacy, name convention approach
      pluginClassName = getApplicationPluginClassName(myModule.getSourceModule());
      nameByConvention = true;
    }
    return pluginClassName == null ? null : createPlugin(BaseApplicationPlugin.class, pluginClassName, nameByConvention);
  }

  @Override
  public BaseProjectPlugin createProjectPlugin() {
    String pluginClassName;
    boolean nameByConvention = false;
    Properties cfg = getComponentStartupConfiguration();
    if (cfg == null || (pluginClassName = cfg.getProperty("init.project")) == null) {
      // fallback to legacy, name convention approach
      pluginClassName = getProjectPluginClassName(myModule.getSourceModule());
      nameByConvention = true;
    }
    return pluginClassName == null ? null : createPlugin(BaseProjectPlugin.class, pluginClassName, nameByConvention);
  }

  @Nullable
  private <T> T createPlugin(Class<T> expectedClass, String className, boolean justGuess) {
    try {
      Class<?> pluginClass = myModule.getOwnClass(className);
      return  pluginClass.asSubclass(expectedClass).getConstructor().newInstance();
    } catch (ClassNotFoundException e) {
      if (!justGuess) {
        // we try almost any Solution, and all Language modules (see PluginLoaderRegistry.isPluginModule),
        // and we might end up with a lot of CNFE for modules that don't even consider being pluginSolution.
        // However, when class name is explicitly specified, someone may be wondering why nothing is loaded, report.
        LOG.warning(String.format("Missing %s contributed by %s: %s", className, getModuleName(), e.getMessage()));
      }
      return null;
    } catch (Throwable t) {
      LOG.error("Failed to instantiate plugin component activator", t);
      return null;
    }
  }

  @Nullable
  private Properties getComponentStartupConfiguration() {
    try (InputStream is = myModule.getOwnResource("startup.properties")) {
      Properties rv = new Properties();
      rv.load(is);
      return rv;
    }catch (FileNotFoundException ex) {
      // ignore, expected case when no relevant file is distributed
      return null;
    } catch (IOException ex) {
      String m = "Failed to read startup.properties for module %s";
      LOG.warning(String.format(m, getModuleName()), ex);
    }
    return null;
  }

  private String getModuleName() {
    final String rv = myModule.getSourceModule().getModuleName();
    return rv != null ? rv : myModule.getSourceModule().toString();
  }

  @Override
  public int hashCode() {
    return myModule.hashCode();
  }

  @Override
  public boolean equals(Object o) {
    return o instanceof ModulePluginContributor2 && (((ModulePluginContributor2) o).myModule == myModule);
  }

  @Override
  public String toString() {
    return myModule + " plugin contributor";
  }
}
