/*
 * Copyright 2003-2026 JetBrains s.r.o.
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

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.util.xmlb.annotations.XCollection;
import jetbrains.mps.plugins.PluginEnablementSettings.MyState;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/**
 * Application-level settings that keep track of MPS plugins (module-contributed application/project
 * plugins, see {@link PluginContributor}) the user has deactivated. Plugins are identified by
 * {@link PluginContributor#getStableId()}, so the choice survives IDE restarts and module reloads.
 * <p>
 * Consulted by {@link BasePluginManager} when plugins are instantiated; edited through
 * {@link PluginEnablementConfigurable}.
 */
@State(
    name = "PluginEnablementSettings",
    storages = @Storage("mpsPluginEnablement.xml")
)
public class PluginEnablementSettings implements PersistentStateComponent<MyState> {
  private final Set<String> myDisabledPluginIds = new TreeSet<>();

  public static PluginEnablementSettings getInstance() {
    return ApplicationManager.getApplication().getService(PluginEnablementSettings.class);
  }

  public synchronized boolean isEnabled(@NotNull String pluginId) {
    return !myDisabledPluginIds.contains(pluginId);
  }

  @NotNull
  public synchronized Set<String> getDisabledPluginIds() {
    return new TreeSet<>(myDisabledPluginIds);
  }

  public synchronized void setDisabledPluginIds(@NotNull Collection<String> pluginIds) {
    myDisabledPluginIds.clear();
    myDisabledPluginIds.addAll(pluginIds);
  }

  @Override
  public synchronized MyState getState() {
    MyState state = new MyState();
    state.disabledPlugins = new ArrayList<>(myDisabledPluginIds);
    return state;
  }

  @Override
  public synchronized void loadState(@NotNull MyState state) {
    myDisabledPluginIds.clear();
    if (state.disabledPlugins != null) {
      myDisabledPluginIds.addAll(state.disabledPlugins);
    }
  }

  public static class MyState {
    @XCollection(elementName = "plugin", valueAttributeName = "id")
    public List<String> disabledPlugins = new ArrayList<>();
  }
}
