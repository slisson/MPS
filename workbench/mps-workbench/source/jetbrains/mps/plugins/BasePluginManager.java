/*
 * Copyright 2003-2022 JetBrains s.r.o.
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

import com.intellij.openapi.application.Application;
import com.intellij.openapi.application.ApplicationManager;
import jetbrains.mps.logging.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * A parent class for ProjectPluginManager and ApplicationPluginManager.
 * Contains a {@link jetbrains.mps.plugins.PluginReloadingListener},
 * which is triggered by a {@link PluginLoaderRegistry} component. It causes plugins to load [unload].
 * Note that a subclass chooses by himself when it is time to attach [detach] the listener ({@link #register()}.
 *
 * @param <T> -- is a class type of plugin.
 *           @see jetbrains.mps.plugins.applicationplugins.BaseApplicationPlugin
 *           @see jetbrains.mps.plugins.projectplugins.BaseProjectPlugin
 */
public abstract class BasePluginManager<T> implements PluginLoader {
  private static final Logger LOG = Logger.getLogger(BasePluginManager.class);

  protected final Object myPluginsLock = new Object(); //guarding my fields

  private final List<T> mySortedPlugins = new ArrayList<>(); // does not contain nulls
  private final Map<PluginContributor, T> myContributorToPlugin = new LinkedHashMap<>(); // NOTE ALLOWED NULL VALUES

  protected BasePluginManager() {
  }

  protected abstract T createPlugin(PluginContributor contributor);

  protected abstract void afterPluginsCreated(List<T> plugins);

  protected abstract void beforePluginsDisposed(List<T> plugins);

  protected abstract void disposePlugin(T plugin);

  protected final void register() {
    PluginLoaderRegistry.getInstance().register(this);
  }

  protected final void unregister() {
    PluginLoaderRegistry.getInstance().unregister(this);
  }

  @Override
  public final boolean loadPlugins(@NotNull List<PluginContributor> contributors) {
    if (isDisposed()) {
      return false;
    }
    int size = contributors.size();
    LOG.debug(String.format("[%s] to instantiate plugins from %d contributors", this, size));
    final Map<PluginContributor, T> plugins = createPlugins(contributors);
    synchronized (myPluginsLock) {
      plugins.forEach((contributor, plugin) -> {
        if (myContributorToPlugin.containsKey(contributor)) { // not in one step because nulls are allowed
          LOG.error("", new IllegalArgumentException(this + ": contributor " + contributor + " is already registered"));
        }

        LOG.trace("loading plugin from the contributor " + contributor);
        myContributorToPlugin.put(contributor, plugin);
      });
      List<T> notNullPlugins = plugins.values().stream().filter(Objects::nonNull).collect(Collectors.toList());
      mySortedPlugins.addAll(notNullPlugins);
      afterPluginsCreated(new ArrayList<>(notNullPlugins));
      return !notNullPlugins.isEmpty();
    }
  }

  @Override
  public final boolean hasPluginsFor(@NotNull List<PluginContributor> contributors) {
    for (PluginContributor contributor : contributors) {
      if (myContributorToPlugin.containsKey(contributor)) {
        if (myContributorToPlugin.get(contributor) != null) {
          return true;
        }
      }
    }
    return false;
  }

  @Override
  public final boolean unloadPlugins(@NotNull List<PluginContributor> contributors) {
    if (isDisposed()) {
      return false;
    }
    int size = contributors.size();
    LOG.debug("Unloading MPS plugins from " + size + " contributors [" + toString() + "]");
    final List<T> plugins;
    synchronized (myPluginsLock) {
      plugins = unloadPlugins0(contributors);
      mySortedPlugins.removeAll(plugins);
    }

    beforePluginsDisposed(plugins);
    disposePlugins(plugins);
    return !plugins.isEmpty();
  }

  @NotNull
  private List<T> unloadPlugins0(List<PluginContributor> contributors) {
    final List<T> plugins = new ArrayList<>();

    for (PluginContributor contributor : contributors) {
      if (!myContributorToPlugin.containsKey(contributor)) { // not in one step because nulls are allowed
        LOG.error("", new IllegalArgumentException(this + ": contributor " + contributor + " was not registered"));
      } else {
        @Nullable T plugin = myContributorToPlugin.remove(contributor);
        LOG.trace(this + ": unloading plugin " + plugin + " from the contributor " + contributor);

        if (plugin != null) {
          plugins.add(plugin);
          PluginLoadTimings.getInstance().clear(this, contributor.getStableId());
        }
      }
    }
    return plugins;
  }

  private Map<PluginContributor, T> createPlugins(List<PluginContributor> contributors) {
    Map<PluginContributor, T> plugins = new LinkedHashMap<>();

    for (PluginContributor contributor : contributors) {
      T plugin = createPluginChecked(contributor);
      plugins.put(contributor, plugin);
    }
    return plugins;
  }

  @Nullable
  private T createPluginChecked(PluginContributor contributor) {
    if (!isPluginEnabled(contributor)) {
      // keep the contributor registered (with a null plugin, which is allowed) so that it can be
      // re-activated later without re-deploying the module
      LOG.info(String.format("[%s] skipped deactivated plugin contributor %s", this, contributor));
      return null;
    }
    T plugin = null;
    try {
      // FIXME I'm not certain keeping null for PC is a good idea. Indeed, we ensure consistent
      //       modules/PC come and go, but is it necessary? Moreover, hasPluginsFor() is not in use,
      //       the only place we check this consistency is unloadPlugins
      long startTime = System.nanoTime();
      plugin = createPlugin(contributor);
      if (plugin != null) {
        PluginLoadTimings.getInstance().add(this, contributor.getStableId(), System.nanoTime() - startTime);
        if (LOG.isTraceLevel()) {
          LOG.trace(String.format("[%s] instantiated plugin %s from the contributor %s", this, plugin, contributor));
        }
      }
    } catch (LinkageError le) {
      LOG.error(this + ": contributor " + contributor + " threw a linkage error during plugin creation ", le);
    } catch (VirtualMachineError virtualMachineError) {
      throw virtualMachineError;
    } catch (Throwable t) {
      LOG.error(this + ": contributor " + contributor + " threw an exception during plugin creation " + t.getMessage(), t);
    }
    return plugin;
  }

  /**
   * Attributes additional load time (spent outside {@link #createPlugin}, e.g. in per-plugin
   * initialization steps of {@link #afterPluginsCreated}) to the contributor of the given plugin.
   */
  protected final void recordAdditionalLoadTime(T plugin, long nanos) {
    synchronized (myPluginsLock) {
      for (Map.Entry<PluginContributor, T> entry : myContributorToPlugin.entrySet()) {
        if (entry.getValue() == plugin) {
          PluginLoadTimings.getInstance().add(this, entry.getKey().getStableId(), nanos);
          return;
        }
      }
    }
  }

  private static boolean isPluginEnabled(PluginContributor contributor) {
    Application application = ApplicationManager.getApplication();
    if (application == null || application.isDisposed()) {
      return true;
    }
    PluginEnablementSettings settings = application.getService(PluginEnablementSettings.class);
    return settings == null || settings.isEnabled(contributor.getStableId());
  }

  private void disposePlugins(final List<T> plugins) {
    for (T plugin : plugins) {
      try {
        disposePlugin(plugin);
      } catch (LinkageError le) {
        LOG.error(this + ": plugin " + plugin + " threw a linkage error during disposing", le);
      } catch (VirtualMachineError virtualMachineError) {
        throw virtualMachineError;
      } catch (Throwable t) {
        LOG.error(this + ": plugin " + plugin + " threw an exception during disposing " + t.getMessage(), t);
      }
    }
  }

  public abstract boolean isDisposed();

  public List<T> getPlugins() {
    synchronized (myPluginsLock) {
      return new ArrayList<>(mySortedPlugins);
    }
  }
}
