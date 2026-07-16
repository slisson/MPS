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

import org.jetbrains.annotations.NotNull;

import java.util.HashMap;
import java.util.Map;

/**
 * Runtime-only record of how long each plugin (identified by {@link PluginContributor#getStableId()})
 * took to load. A plugin may be instantiated by several loaders (the application plugin manager and
 * one project plugin manager per open project); the time is accumulated per loader and summed for
 * display in {@link PluginEnablementConfigurable}. Entries are cleared per loader when the plugin
 * is unloaded there, so a reload reports fresh numbers.
 */
public final class PluginLoadTimings {
  private static final PluginLoadTimings INSTANCE = new PluginLoadTimings();

  public static PluginLoadTimings getInstance() {
    return INSTANCE;
  }

  private final Map<String, Map<Object, Long>> myNanosByPluginId = new HashMap<>();

  private PluginLoadTimings() {
  }

  public synchronized void add(@NotNull Object loader, @NotNull String pluginId, long nanos) {
    myNanosByPluginId.computeIfAbsent(pluginId, k -> new HashMap<>()).merge(loader, nanos, Long::sum);
  }

  public synchronized void clear(@NotNull Object loader, @NotNull String pluginId) {
    Map<Object, Long> byLoader = myNanosByPluginId.get(pluginId);
    if (byLoader == null) {
      return;
    }
    byLoader.remove(loader);
    if (byLoader.isEmpty()) {
      myNanosByPluginId.remove(pluginId);
    }
  }

  /**
   * Total load time of the plugin over all loaders, in nanoseconds, or -1 if nothing was recorded
   * (e.g. the plugin is deactivated).
   */
  public synchronized long getTotalNanos(@NotNull String pluginId) {
    Map<Object, Long> byLoader = myNanosByPluginId.get(pluginId);
    if (byLoader == null) {
      return -1;
    }
    long total = 0;
    for (long nanos : byLoader.values()) {
      total += nanos;
    }
    return total;
  }
}
