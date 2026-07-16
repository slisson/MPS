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
import com.intellij.openapi.options.SearchableConfigurable;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ProjectManager;
import com.intellij.ui.CheckBoxList;
import com.intellij.ui.components.JBLabel;
import com.intellij.ui.components.JBScrollPane;
import jetbrains.mps.plugins.applicationplugins.ApplicationPluginManager;
import jetbrains.mps.plugins.projectplugins.ProjectPluginManager;
import org.jetbrains.annotations.Nls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.JComponent;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/**
 * Settings page listing MPS plugins (application/project plugins contributed by modules, see
 * {@link PluginContributor}) with a checkbox to activate/deactivate each of them individually.
 * The choice is persisted in {@link PluginEnablementSettings} and enforced by
 * {@link BasePluginManager}, i.e. deactivated plugins stay off across IDE restarts.
 * Toggled plugins are reloaded right away ({@link PluginLoaderRegistry#reloadContributors}).
 */
public class PluginEnablementConfigurable implements SearchableConfigurable {
  private JPanel myPanel;
  private CheckBoxList<String> myPluginList;

  @NotNull
  @Override
  public String getId() {
    // have to match one in MPSComponents.xml
    return "preferences.mpsPluginEnablement";
  }

  @Nls
  @Override
  public String getDisplayName() {
    // have to match one in MPSComponents.xml
    return "MPS Plugins";
  }

  @Nullable
  @Override
  public String getHelpTopic() {
    return getId();
  }

  @Nullable
  @Override
  public JComponent createComponent() {
    if (myPanel == null) {
      myPluginList = new CheckBoxList<>();
      myPanel = new JPanel(new BorderLayout(0, 8));
      myPanel.add(new JBLabel("<html>Plugins contributed by MPS modules. Unchecked plugins are not loaded, " +
                              "and stay deactivated after a restart.</html>"), BorderLayout.NORTH);
      myPanel.add(new JBScrollPane(myPluginList), BorderLayout.CENTER);
    }
    return myPanel;
  }

  @Override
  public void reset() {
    if (myPluginList == null) {
      return;
    }
    PluginEnablementSettings settings = PluginEnablementSettings.getInstance();
    myPluginList.clear();
    for (String pluginId : collectPluginIds(settings)) {
      myPluginList.addItem(pluginId, pluginId, settings.isEnabled(pluginId));
    }
  }

  /**
   * Contributors that actually contributed a plugin to the application or to any open project,
   * plus everything that is recorded as deactivated (a deactivated contributor produces no plugin
   * and would be invisible otherwise).
   */
  private static List<String> collectPluginIds(PluginEnablementSettings settings) {
    Set<String> ids = new TreeSet<>(String.CASE_INSENSITIVE_ORDER);
    ids.addAll(settings.getDisabledPluginIds());

    ApplicationPluginManager appManager = ApplicationManager.getApplication().getService(ApplicationPluginManager.class);
    Project[] openProjects = ProjectManager.getInstance().getOpenProjects();
    for (PluginContributor contributor : PluginLoaderRegistry.getInstance().getCurrentContributors()) {
      List<PluginContributor> single = Collections.singletonList(contributor);
      boolean hasPlugin = appManager != null && appManager.hasPluginsFor(single);
      if (!hasPlugin) {
        for (Project project : openProjects) {
          ProjectPluginManager projectManager = ProjectPluginManager.getInstance(project);
          if (projectManager != null && projectManager.hasPluginsFor(single)) {
            hasPlugin = true;
            break;
          }
        }
      }
      if (hasPlugin) {
        ids.add(contributor.getStableId());
      }
    }
    return new ArrayList<>(ids);
  }

  private Set<String> getDisabledInUI() {
    Set<String> rv = new TreeSet<>();
    for (int i = 0; i < myPluginList.getItemsCount(); i++) {
      if (!myPluginList.isItemSelected(i)) {
        rv.add(myPluginList.getItemAt(i));
      }
    }
    return rv;
  }

  @Override
  public boolean isModified() {
    if (myPluginList == null) {
      // the page has never been shown
      return false;
    }
    return !getDisabledInUI().equals(PluginEnablementSettings.getInstance().getDisabledPluginIds());
  }

  @Override
  public void apply() {
    if (myPluginList == null) {
      // apply() may come for a page that has never been shown (e.g. OK in the settings dialog)
      return;
    }
    PluginEnablementSettings settings = PluginEnablementSettings.getInstance();
    Set<String> oldDisabled = settings.getDisabledPluginIds();
    Set<String> newDisabled = getDisabledInUI();
    if (oldDisabled.equals(newDisabled)) {
      return;
    }
    settings.setDisabledPluginIds(newDisabled);

    // reload only the plugins whose state actually changed
    Set<String> toggled = new TreeSet<>();
    for (String id : oldDisabled) {
      if (!newDisabled.contains(id)) {
        toggled.add(id);
      }
    }
    for (String id : newDisabled) {
      if (!oldDisabled.contains(id)) {
        toggled.add(id);
      }
    }
    PluginLoaderRegistry.getInstance().reloadContributors(toggled);
  }

  @Override
  public void disposeUIResources() {
    myPluginList = null;
    myPanel = null;
  }
}
