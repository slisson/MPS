/*
 * Copyright 2003-2024 JetBrains s.r.o.
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

import com.intellij.configurationStore.JdomSerializer;
import com.intellij.openapi.Disposable;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.fileEditor.ex.FileEditorManagerEx;
import com.intellij.openapi.progress.EmptyProgressIndicator;
import com.intellij.openapi.progress.ProcessCanceledException;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.progress.Task;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ProjectManager;
import com.intellij.openapi.util.IconLoader;
import com.intellij.openapi.wm.ex.WindowManagerEx;
import com.intellij.openapi.wm.impl.ProjectFrameHelper;
import com.intellij.util.EventDispatcher;
import com.intellij.util.messages.MessageBusConnection;
import com.intellij.util.messages.Topic;
import jetbrains.mps.core.platform.Platform;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.plugins.applicationplugins.BaseApplicationPlugin;
import jetbrains.mps.plugins.projectplugins.BaseProjectPlugin;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.runtime.ModuleDeploymentChange;
import jetbrains.mps.smodel.runtime.ModuleDeploymentListener;
import jetbrains.mps.smodel.runtime.ModuleRuntime;
import jetbrains.mps.util.JavaNameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Queue;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Represents a single class loading listener to trigger the plugin reload in
 * {@link jetbrains.mps.plugins.applicationplugins.ApplicationPluginManager}
 * and {@link jetbrains.mps.plugins.projectplugins.ProjectPluginManager}. It does that via the {@link jetbrains.mps.plugins.PluginReloadingListener} interface.
 * <p>
 * It listens for class loading events, calculate the plugin contributors which need to be updated and notifies these managers.
 * <p>
 * This is an application service. There's a `PluginReloadingListener` topic with reloading events dispatched.
 */
public class PluginLoaderRegistry implements Disposable {
  private static final Logger LOG = Logger.getLogger(PluginLoaderRegistry.class);

  private final SchedulingUpdateListener myClassesListener = new SchedulingUpdateListener();
  private final Set<PluginContributor> myCurrentContributors = new LinkedHashSet<>();
  private final Set<PluginLoader> myCurrentLoaders = new LinkedHashSet<>();
  @Topic.AppLevel
  public static final Topic<PluginReloadingListener> TOPIC = Topic.create("MPS Plugin Management", PluginReloadingListener.class);
  private final EventDispatcher<PluginReloadingListener> myReloadingListeners = EventDispatcher.create(PluginReloadingListener.class);

  private final AtomicBoolean myUpdateIsScheduledInEDT = new AtomicBoolean(false);
  private final AtomicBoolean myAppInitialized = new AtomicBoolean();

  public static PluginLoaderRegistry getInstance() {
    return ApplicationManager.getApplication().getService(PluginLoaderRegistry.class);
  }

  public PluginLoaderRegistry() {
    // XXX Now, PluginLoaderRegistry is app service, although indeed doesn't make too much
    //     sense unless we convert ApplicationPluginManager and ProjectPluginManager as well.
    //       Switching to extension points for these managers might be an option
    //       although I don't clearly see how to approach per-project PPM and app-wide
    //       APM in a single extpoint (two would be too much, imo).
    // Note, MPSApplicationInitializedListener fits service story quite well - it would be the
    // listener to activate PLR service by issuing an update (see uses of #signalAppInitialized).
    MPSCoreComponents coreComponents = MPSCoreComponents.getInstance();
    Platform mpsPlatform = coreComponents.getPlatform();
    mpsPlatform.findComponent(LanguageRegistry.class).addRegistryListener(myClassesListener);
    final MessageBusConnection mbc = ApplicationManager.getApplication().getMessageBus().connect(this);
    mbc.subscribe(TOPIC, myReloadingListeners.getMulticaster());
  }

  void signalAppInitialized() {
    myAppInitialized.set(true);
    // XXX invoked from ApplicationInitializedListener which "doesn't guarantee EDT", but OTOH doesn't
    //     guarantee NOT EDT, while run() here asserts !EDT
    new UpdatingTask(null).run(new EmptyProgressIndicator());
  }

  private Set<PluginContributor> createPluginContributors(Collection<ModuleRuntime> modules) {
    if (modules.isEmpty()) {
      return Collections.emptySet();
    }
//  FIXME!!!  List<ReloadableModule> sortedModules = PluginSorter.sortByDependencies(modules);
    Collection<ModuleRuntime> sortedModules = modules;

    List<PluginContributor> contributors = new ArrayList<>();
    for (ModuleRuntime module : sortedModules) {
      contributors.add(new ModulePluginContributor2(module));
    }

    return new LinkedHashSet<>(contributors);
  }

  private void fireAfterPluginsLoaded(List<PluginContributor> contributorsToLoad) {
    if (contributorsToLoad.isEmpty()) {
      return;
    }
    if (LOG.isDebugLevel()) {
      // there's no way to tell the number of actual topic listeners, therefore we
      // assume there's at least one to perform dispatch, and optionally those registered directly
      final String m = "Dispatch %d contributors loaded to %d or more listeners";
      LOG.debug(String.format(m, contributorsToLoad.size(), 1 + myReloadingListeners.getListeners().size()));
    }
    getPublisher().afterPluginsLoaded(contributorsToLoad);
  }

  private void fireBeforePluginsUnloaded(List<PluginContributor> contributorsToUnload) {
    if (contributorsToUnload.isEmpty()) {
      return;
    }
    if (LOG.isDebugLevel()) {
      final String m = "Dispatch %d contributors unloaded to %d or more listeners";
      LOG.debug(String.format(m, contributorsToUnload.size(), 1 + myReloadingListeners.getListeners().size()));
    }
    getPublisher().beforePluginsUnloaded(contributorsToUnload);
  }

  public void addReloadingListener(@NotNull PluginReloadingListener listener) {
    myReloadingListeners.addListener(listener);
  }

  public void removeReloadingListener(PluginReloadingListener listener) {
    myReloadingListeners.removeListener(listener);
  }

  private static PluginReloadingListener getPublisher() {
    return ApplicationManager.getApplication().getMessageBus().syncPublisher(TOPIC);
  }

  /**
   * Registers new loader asynchronously in EDT.
   * Before the registration we load all contributors which have been loaded up to that moment
   */
  public void register(@NotNull final PluginLoader loader) {
    LOG.debug("Registering the " + loader);
    myAccumulation.loaderChange(loader, null);
    update();
  }

  /**
   * Unregisters the loader asynchronously in EDT.
   * Before the un-registration we unload all contributors which have remained loaded at that moment
   */
  public void unregister(@NotNull final PluginLoader loader) {
    LOG.debug("Unregistering the " + loader);
    myAccumulation.loaderChange(null, loader);
    forceUpdate();
  }

  /**
   * A snapshot of the plugin contributors known at the moment. EDT only.
   */
  @NotNull
  public List<PluginContributor> getCurrentContributors() {
    ThreadUtils.assertEDT();
    return new ArrayList<>(myCurrentContributors);
  }

  /**
   * Unloads and loads again the plugins of the contributors with the given stable ids
   * (see {@link PluginContributor#getStableId()}) on all current loaders. EDT only.
   * <p>
   * Used when a plugin gets activated/deactivated in {@link PluginEnablementSettings}: re-creation
   * of the plugin consults the settings ({@link BasePluginManager}), so the toggle takes effect
   * without a module re-deploy or IDE restart.
   */
  public void reloadContributors(@NotNull Collection<String> stableIds) {
    ThreadUtils.assertEDT();
    Set<PluginContributor> affected = new LinkedHashSet<>();
    for (PluginContributor contributor : myCurrentContributors) {
      if (stableIds.contains(contributor.getStableId())) {
        affected.add(contributor);
      }
    }
    if (affected.isEmpty()) {
      return;
    }
    LOG.info(String.format("Reloading %d contributors after enablement change", affected.size()));
    ProgressMonitor monitor = new EmptyProgressMonitor();
    unloadContributors(affected, myCurrentLoaders, monitor);
    loadContributors(affected, myCurrentLoaders, monitor);
    clearIDEMenusFromOurActionRefs();
  }

  /**
   * Loads the given plugin contributors one by one. Asynchronously via the platform edt queue.
   */
  private void loadContributors(Set<PluginContributor> contributors, Set<PluginLoader> pluginLoaders, ProgressMonitor monitor) {
    if (pluginLoaders.isEmpty() || contributors.isEmpty()) {
      return;
    }
    final long beginTime = System.nanoTime();
    try {
      monitor.start("Loading", pluginLoaders.size());
      for (final PluginLoader loader : pluginLoaders) {
        List<PluginContributor> contribList = List.copyOf(contributors);
        loader.loadPlugins(contribList);
        monitor.advance(1);
      }
    } finally {
      monitor.done();
      LOG.info(String.format("Loading of %d plugins took %.3f s", contributors.size(), (System.nanoTime() - beginTime) / 1e9));
    }
  }

  /**
   * Unloads the given plugin contributors one by one. Asynchronously via the platform edt queue.
   */
  private void unloadContributors(final Set<PluginContributor> contributors, Set<PluginLoader> pluginLoaders, ProgressMonitor monitor) {
    if (pluginLoaders.isEmpty() || contributors.isEmpty()) {
      return;
    }
    monitor.start("Unloading", pluginLoaders.size());
    long beginTime = System.nanoTime();
    try {
      for (final PluginLoader loader : pluginLoaders) {
        List<PluginContributor> contribList = List.copyOf(contributors);
        loader.unloadPlugins(contribList);
        monitor.advance(1);
      }
    } finally {
      monitor.done();
      LOG.info(String.format("Unloading of %d plugins took %.3f s", contributors.size(), (System.nanoTime() - beginTime) / 1e9));
    }
  }

  private Set<PluginContributor> calcContributorsToUnload(Set<PluginContributor> currentContributors, Collection<ModuleRuntime> toUnload) {
    if (toUnload.isEmpty()) {
      return Collections.emptySet();
    }
    List<PluginContributor> toUnloadContributors = new ArrayList<>();
    for (PluginContributor contributor : currentContributors) {
      if (contributor instanceof ModulePluginContributor2) {
        ModuleRuntime module = ((ModulePluginContributor2) contributor).getModule();
        if (toUnload.contains(module)) {
          toUnloadContributors.add(contributor);
        }
      }
    }
    Collections.reverse(toUnloadContributors);
    return new LinkedHashSet<>(toUnloadContributors);
  }

  private Set<PluginContributor> getContributorsFromExtPoint() {
    class ExtPointContributor extends PluginContributor {
      private final ComponentContributorExtension myExtension;

      private ExtPointContributor(ComponentContributorExtension extension) {
        myExtension = extension;
      }

      @Override
      public BaseProjectPlugin createProjectPlugin() {
        if (myExtension.myProjectPartContributor != null) {
          return instantiateSafe(myExtension.myProjectPartContributor);
        }
        return null;
      }

      @Override
      public BaseApplicationPlugin createApplicationPlugin() {
        if (myExtension.myApplicationPartContributor != null) {
          return instantiateSafe(myExtension.myApplicationPartContributor);
        }
        return null;
      }

      private <T> T instantiateSafe(String contributorClassName) {
        try {
          Class<T> cls = myExtension.findClass(contributorClassName);
          return cls.getDeclaredConstructor().newInstance();
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | InvocationTargetException | NoSuchMethodException ex) {
          String msg = String.format("Failed to load class %s from plugin %s", contributorClassName, getContributingPluginId());
          PluginLoaderRegistry.LOG.error(msg, ex);
          return null;
        }
      }

      @Override
      public int hashCode() {
        String contributingPlugin = getContributingPluginId();
        return Objects.hash(contributingPlugin, myExtension.myApplicationPartContributor, myExtension.myProjectPartContributor);
      }

      @Override
      public boolean equals(Object obj) {
        if (obj == this) {
          return true;
        }
        if (false == obj instanceof ExtPointContributor) {
          return false;
        }
        ExtPointContributor other = (ExtPointContributor) obj;
        return other.getContributingPluginId().equals(getContributingPluginId())
               && Objects.equals(myExtension.myApplicationPartContributor, other.myExtension.myApplicationPartContributor)
               && Objects.equals(myExtension.myProjectPartContributor, other.myExtension.myProjectPartContributor);
      }

      @Override
      public String toString() {
        String app = JavaNameUtil.shortName(myExtension.myApplicationPartContributor);
        String proj = JavaNameUtil.shortName(myExtension.myProjectPartContributor);
        return String.format("ext-point contributor (%s, %s) from %s", app, proj, getContributingPluginId());
      }

      @Override
      @NotNull
      public String getStableId() {
        String app = JavaNameUtil.shortName(myExtension.myApplicationPartContributor);
        String proj = JavaNameUtil.shortName(myExtension.myProjectPartContributor);
        return String.format("%s (%s, %s)", getContributingPluginId(), app, proj);
      }

      private String getContributingPluginId() {
        return myExtension.getPluginDescriptor().getPluginId().getIdString();
      }
    }
    HashSet<PluginContributor> rv = new HashSet<>();
    for (ComponentContributorExtension ext : ComponentContributorExtension.POINT.getExtensions()) {
      rv.add(new ExtPointContributor(ext));
    }
    return rv;
  }

  /**
   * here we come from the CLM notifications #onLoaded, #onUnloaded
   */
  private void update() {
    if (myUpdateIsScheduledInEDT.compareAndSet(false, true)) {
      // doesn't make sense to ask PI from pooled thread, the only chance to get not null, imo, is here.
      final ProgressIndicator globalProgressIndicator = ProgressManager.getGlobalProgressIndicator();
      // no idea which executor/thread pool to use, e.g. seen uses of AppExecutorUtil.getAppExecutorService()
      ApplicationManager.getApplication().executeOnPooledThread(() -> {
        // we need to get out of application read since it is impossible to #invokeAndWait from read, lets postpone
        LOG.debug("running the task later");
        // trying to pass the current indicator, for example this helps us to reload plugins within the global project open indicator
        runTask(globalProgressIndicator);
      });
    }
  }

  /**
   * here we come from loaders registering/unregistering
   *
   * we would like on app/project dispose to unload all extensions in time, so we ignore if another update is already scheduled
   */
  private void forceUpdate() {
    LOG.debug("force update");
    if (!ThreadUtils.isInEDT()) {
      update();
    } else {
      ThreadUtils.assertEDT();
      UpdatingTask task = new UpdatingTask(null);
      if (isAppLoaded()) {
        // here we are also when #disposeComponent is called in AppPlManager
        // async will not do, the app will be disposed then, so sync update with a good old UI freeze
        myUpdateIsScheduledInEDT.set(true);
        task.update(new EmptyProgressMonitor());
      } else {
        // here we are on any not first project open
        update();
      }
    }
  }

  // now we are not in read
  private void runTask(@Nullable ProgressIndicator oldIndicator) {
    if (ApplicationManager.getApplication() == null || ApplicationManager.getApplication().isDisposed()) {
      return;
    }
    assert (!ApplicationManager.getApplication().isReadAccessAllowed());
    assert !ThreadUtils.isInEDT(); // we are in EDT iff we have 'write'

    LOG.trace("running task with old/new indicator");
    UpdatingTask task = new UpdatingTask(null);
    if (!isAppLoaded()) {
      LOG.trace("rescheduling task");
      return;
    }
    assert isAppLoaded();
    if (oldIndicator == null) {
      // trying to find any indicator
      oldIndicator = ProgressManager.getGlobalProgressIndicator();
    }
    if (oldIndicator != null && oldIndicator.isShowing()) {
      // let's run under the old indicator
      LOG.trace("running with the old PI");
      task.run(oldIndicator);
    } else {
      // usually this section is called after rebuild/make
      // we have no indicator -- lets create one
      LOG.trace("queued with the new PI");
      task.queue();
    }
  }

  // we don't want to do anything until components are all #initialized
  // this is just to guarantee that we will have only one plugin reload before we open a project
  // consider the period when app is not loaded a dead zone for this class, the plugin update are disabled during that moment
  private boolean isAppLoaded() {
    return myAppInitialized.get();
  }

  /**
   * This task flushes all added/removed loaders and added/removed contributors
   * It's executed from a pooled thread (regular Task behavior), with progress window (isModal() == true).
   * For MPS needs, it fires update() in EDT thread and pooled thread waits for EDT activity to complete.
   * @see #update
   */
  private class UpdatingTask extends Task.Modal {
    UpdatingTask(@Nullable Project project) {
      super(project, "Reloading MPS Plugins", false);
    }

    @Override
    public void run(@NotNull ProgressIndicator indicator) {
      // here we just try to update the caption and freeze edt to do our reload of extensions there
      assert !ThreadUtils.isInEDT();
      // MPS-generated ApplicationPlugins register actions (createGroups->BAP.addAction), and it happens in EDT
      // (invokeAndWait, below), but ActionManager service doesn't want to be initialized in EDT, therefore we make
      // sure it's initialized while we're not in EDT. See MPS-33757
      // FIXME this is a workaround, need a proper fix. I don't understand the limitation of ActionManager/EDT,
      //       and what's the regular initialization sequence for the ActionManager class (i.e. how does the rest of
      //       IDEA code make sure it doesn't invoke it accidentally)
      //       Perhaps, the issue is due to improper timing caused by MyApplicationInitializedListener (need to figure
      //       out alternative mechanism to trigger plugin reload). Another approach would be not to use EDT for update
      //       although I expect assumptions about EDT in App/ProjectPlugin initialization code.
      ActionManager.getInstance();
      // explicit ANY modality state, despite the fact invokeAndWait documentation promises modality state of the current task:
      // "When invoked in the thread of some modal progress, returns modality state corresponding to that progress' dialog".
      // Indeed, occasionally I see modality tailored for this model task, however, I've also seen NON_MODAL value, which
      // prevents/delays update. As long as we need EDT just to ensure MPS plugins can init/dispose their UI elements, and not for user
      // interaction, I hope "ANY" modality is good (== we just need to run this code in EDT ASAP).
      final ModalityState modalityState = ApplicationManager.getApplication().getAnyModalityState();
      boolean showing = indicator.isShowing();
      if (!showing) {
        // we cannot do anything, lets just freeze without any progress
        ApplicationManager.getApplication().invokeAndWait(() -> update(new EmptyProgressMonitor()), modalityState);
        // I've never seen this part of code working, can't be certain defaultModalityState() won't work here, but
        // with the argument, above, seems fair to run with ANY, and, second, helps code consistency.
      } else {
        try {
          indicator.pushState();
          indicator.setText("Reloading MPS Plugins"); // we hope that the user will see the text but that is unlikely
//          this also does not work
//          try {
//            TimeUnit.MILLISECONDS.sleep(200);
//          } catch (InterruptedException e) {
//            e.printStackTrace();
//          }
          ApplicationManager.getApplication().invokeAndWait(() -> update(new EmptyProgressMonitor()), modalityState);
        } finally {
          indicator.popState();
        }
      }
    }

    public void update(@NotNull final ProgressMonitor monitor) {
      try {
        ThreadUtils.assertEDT();
        if (ApplicationManager.getApplication().isDisposed()) return;
        myUpdateIsScheduledInEDT.compareAndSet(true, false);
        monitor.start("Reloading MPS Plugins", 6);
        ProgressManager.checkCanceled();
        // FWIW, here used to be quite an interesting log explaining why we needed model read and CLM transactions, and
        //       why it's not true anymore.
        //
            // NOTE: when we call #reset we are bound to process those changes, otherwise we lose them
            // for instance, that is the reason we cannot call #checkCancelled here
            // FIXME although with our own code we can have sort of 'staged' reset here, and 'revert' reset() in case
            //       operation was cancelled.
            Snapshot snapshot = myAccumulation.reset();
            try {
              // this is in clm transaction, so we do not get any updates on the delta with modules
              Delta<ModuleRuntime> moduleDelta = snapshot.getModuleDelta();
              Delta<PluginLoader> loadersDelta = snapshot.getLoaderDelta();

              if (loadersDelta.isEmpty() && moduleDelta.isEmpty()) {
                LOG.debug("Nothing to do in update");
                return;
              }
              monitor.advance(1);

              Set<PluginContributor> toUnloadContributors = calcContributorsToUnload(myCurrentContributors, moduleDelta.toUnload);
              Set<PluginContributor> toLoadContributors = createPluginContributors(moduleDelta.toLoad);
              List<PluginContributor> notifyToUnload;
              List<PluginContributor> notifyToLoad;
              if (loadersDelta.isEmpty()) {
                notifyToLoad = new ArrayList<>(toLoadContributors);
                notifyToUnload = new ArrayList<>(toUnloadContributors);
              } else {
                // if there's new or gone loader (e.g. opened/closed project and ProjectPluginManager)
                // we are going to consult all current contributors (see addLoaders()/removeLoaders()), hence
                // need to include myCurrentContributors into notification set to avoid scenarios like MPSSPRT-413
                // where a project open event comes after all contributors are there, toLoadContributors.isEmpty and
                // fireAfterPluginsLoaded() sends notification which is ignored as the list of contributors is empty.
                // Indeed, it's unlikely there ever would be a listener to process actual PluginContributor instances, but
                // it doesn't hurt to be responsible here.
                notifyToLoad = new ArrayList<>(myCurrentContributors);
                notifyToLoad.addAll(toLoadContributors);
                notifyToUnload = new ArrayList<>(myCurrentContributors);
              }

              if (LOG.isInfoLevel()) {
                final String m = "Running Update Task : loaders %s; contributors : [+%d / -%d]; %s";
                LOG.info(String.format(m, loadersDelta, toLoadContributors.size(), toUnloadContributors.size(), Thread.currentThread()));
              }
              fireBeforePluginsUnloaded(notifyToUnload);
              monitor.step("Unloading...");
              clearIDEMenusFromOurActionRefs();
              clearIDEASerializationCaches();
              clearIDEAIconsGlobalCache(snapshot.getCLsToBeDisposed());

              // for ALL myCurrentContributors AND loadersDelta.toUnload do PC.unloadPlugins; myCurrentLoaders\= toUnload
              removeLoaders(loadersDelta.toUnload, monitor);
              // for contributorsDelta.toUnload AND myCurrentLoaders do PC.unloadPlugins; myCurrentContributors \= toUnload
              // XXX if toUnload == myCurrentContributors, a pair of removeLoaders/removeContributors effectively unloads all plugins
              removeContributors(toUnloadContributors, monitor);
              monitor.step("Loading...");
              addLoaders(loadersDelta.toLoad, monitor);
              addIdeaExtPointPluginContributors(monitor);
              addContributors(toLoadContributors, monitor);
              fireAfterPluginsLoaded(notifyToLoad);
            } catch (Throwable t) {
              LOG.error("caught some error during #update", t);
            } finally {
              snapshot.invokePostRunnables();
            }
      } catch (VirtualMachineError e) {
        throw e;
      } catch (ProcessCanceledException ignored) {
      } catch (Throwable t) {
        LOG.error("Problem while reloading mps-plugins in EDT", t);
      } finally {
        monitor.done();
      }
    }

    private void addContributors(Set<PluginContributor> contributorsToAdd, ProgressMonitor monitor) {
      contributorsToAdd.removeAll(myCurrentContributors);
      LOG.debug("Loading " + contributorsToAdd.size() + " new contributors to " + myCurrentLoaders.size() + " current loaders");
      loadContributors(contributorsToAdd, myCurrentLoaders, monitor.subTask(1));
      myCurrentContributors.addAll(contributorsToAdd);
    }

    private void addIdeaExtPointPluginContributors(@NotNull ProgressMonitor monitor) {
      Set<PluginContributor> factories = new LinkedHashSet<>(getContributorsFromExtPoint());
      factories.removeAll(myCurrentContributors);
      LOG.debug("Loading " + factories.size() + " Factories");
      loadContributors(factories, myCurrentLoaders, monitor.subTask(1));
      myCurrentContributors.addAll(factories);
    }

    private void addLoaders(Set<PluginLoader> loadersToAdd, ProgressMonitor monitor) {
      loadersToAdd.removeAll(myCurrentLoaders);
      LOG.debug("Loading " + myCurrentContributors.size() + " current contributors to new " + loadersToAdd.size() + " loaders");
      loadContributors(myCurrentContributors, loadersToAdd, monitor.subTask(1));
      myCurrentLoaders.addAll(loadersToAdd);
    }

    private void removeContributors(Set<PluginContributor> contributorsToRemove, ProgressMonitor monitor) {
      contributorsToRemove.retainAll(myCurrentContributors); // just a precaution
      LOG.debug("Unloading " + contributorsToRemove.size() + " contributors from " + myCurrentLoaders.size() + " current loaders");
      unloadContributors(contributorsToRemove, myCurrentLoaders, monitor.subTask(1));
      myCurrentContributors.removeAll(contributorsToRemove);
    }

    private void removeLoaders(Set<PluginLoader> loadersToRemove, ProgressMonitor monitor) {
      loadersToRemove.retainAll(myCurrentLoaders); // just a precaution
      LOG.debug("Unloading " + myCurrentContributors.size() + " current contributors from " + loadersToRemove.size() + " loaders");
      unloadContributors(myCurrentContributors, loadersToRemove, monitor.subTask(1));
      myCurrentLoaders.removeAll(loadersToRemove);
    }

    private void clearIDEAIconsGlobalCache(@NotNull Collection<ClassLoader> classLoadersToBeDisposed) {
      for (ClassLoader cl : classLoadersToBeDisposed) {
        // until IDEA-345462 is fixed, patch the platform when preparing for use in MPS and expose the method
        IconLoader.detachClassLoader(cl);
      }
      final ProjectManager pm = ProjectManager.getInstanceIfCreated();
      if (pm == null) {
        return;
      }
      for (Project project : pm.getOpenProjects()) {
        FileEditorManagerEx.getInstanceEx(project).refreshIcons();
      }
    }

    @SuppressWarnings("UnstableApiUsage")
    private void clearIDEASerializationCaches() {
      try {
        Optional<JdomSerializer> jdomSerializer = ServiceLoader.load(JdomSerializer.class, JdomSerializer.class.getClassLoader()).findFirst();
        jdomSerializer.ifPresent(JdomSerializer::clearSerializationCaches);
      } catch (Throwable t) {
        LOG.error("Caught exception while clearing IDEA serialization caches", t);
      }
  }

  }

  @SuppressWarnings("UnstableApiUsage")
  private static void clearIDEMenusFromOurActionRefs() {
    try {
      WindowManagerEx windowManager = WindowManagerEx.getInstanceEx();
      for (Project project : ProjectManager.getInstance().getOpenProjects()) {
        ProjectFrameHelper frame = windowManager.getFrameHelper(project);
        if (frame != null) {
          frame.updateView();
        }
      }

      ProjectFrameHelper frame = windowManager.getFrameHelper(null);
      if (frame != null) {
        frame.updateView();
      }
    } catch (Throwable t) {
      LOG.error("Caught exception while clearing IDE menus", t);
    }
  }

  @Override
  public void dispose() {
    MPSCoreComponents coreComponents = MPSCoreComponents.getInstance();
    Platform mpsPlatform = coreComponents.getPlatform();
    mpsPlatform.findComponent(LanguageRegistry.class).removeRegistryListener(myClassesListener);
  }

  private class SchedulingUpdateListener implements ModuleDeploymentListener {
    @Override
    public void deploymentStateChanged(@NotNull ModuleDeploymentChange change) {
      final Runnable releaseCLs = change.acquireRemovedTrackingLock();
      AtomicInteger added = new AtomicInteger(0);
      AtomicInteger addedWE = new AtomicInteger(0);
      AtomicInteger removed = new AtomicInteger(0);
      AtomicInteger removedWE = new AtomicInteger(0);
      AtomicInteger reloaded = new AtomicInteger(0);
      AtomicInteger reloadedWE = new AtomicInteger(0);
      // XXX no real use for hash set here, for pc2load, as we just fill with new instances,
      //     however, it's just too much pain now to change Delta api to accommodate Collection
      final LinkedHashSet<ModuleRuntime> mr2load = new LinkedHashSet<>();
      final LinkedHashSet<ModuleRuntime> mr2Unload = new LinkedHashSet<>();
      // I don't filter classLoaders2Dispose to match plugin modules as there's no way to 'release' subset only.
      // Besides, these CLs are likely dependant between each other anyway, why bother.
      // Moreover, update() uses these to refresh various caches, so it's highly likely we need to clear all these.
      Set<ClassLoader> classLoaders2Dispose = new HashSet<>();
      change.forEachAdded(t -> {
        added.incrementAndGet();
        if (t.withExtensions()) {
          addedWE.incrementAndGet();
          mr2load.add(t);
        }
      });
      change.forEachRemoved(t -> {
        removed.incrementAndGet();
        classLoaders2Dispose.add(t.getModuleClassLoader());
        if (t.withExtensions()) {
          removedWE.incrementAndGet();
          mr2Unload.add(t);
        }
      });
      change.forEachReloaded(t -> {
        reloaded.incrementAndGet();
        if (t.withExtensions()) {
          reloadedWE.incrementAndGet();
        }
      });
      String traceMsg = "deployment state change (total/with extensions): added: %d/%d; removed: %d/%d; reloaded: %d/%d. Thread: %s";
      LOG.debug(String.format(traceMsg, added.get(), addedWE.get(), removed.get(), removedWE.get(), reloaded.get(), reloadedWE.get(), Thread.currentThread().getName()));
      if (!mr2load.isEmpty()) {
        myAccumulation.onLoad(mr2load);
      }
      if (!mr2Unload.isEmpty()) {
        myAccumulation.onUnload(mr2Unload, classLoaders2Dispose, releaseCLs);
      } else {
        releaseCLs.run();
      }
      if (!mr2load.isEmpty() || !mr2Unload.isEmpty()) {
        update();
      }
    }
  }

  private final EventAccumulation myAccumulation = new EventAccumulation();

  // access to all data members is synchronized through access methods
  static class EventAccumulation {
    private final Delta<ModuleRuntime> myDelta = new Delta<>();
    private final List<ClassLoader> myCLsToBeDisposed = new ArrayList<>(); // to be disposed in the next invocation of UpdatingTask#update
    private final Queue<Runnable> myPostRunnableQueue = new LinkedList<>();

    private final Delta<PluginLoader> myLoaderDelta = new Delta<>();

    synchronized void onUnload(Set<ModuleRuntime> unloadedModules, @NotNull Set<ClassLoader> disposingCLs, @Nullable Runnable postRunnable) {
      myDelta.unload(unloadedModules);
      myCLsToBeDisposed.addAll(disposingCLs);
      if (postRunnable != null) {
        myPostRunnableQueue.add(postRunnable);
      }
    }

    synchronized void onLoad(Set<ModuleRuntime> loadedModules) {
      myDelta.load(loadedModules);
    }

    synchronized void loaderChange(@Nullable PluginLoader added, @Nullable PluginLoader removed) {
      if (added != null) {
        myLoaderDelta.load(Collections.singleton(added));
      }
      if (removed != null) {
        myLoaderDelta.unload(Collections.singleton(removed));
      }
    }

    @NotNull
    public synchronized Snapshot reset() {
      return new Snapshot(myDelta.reset(), myLoaderDelta.reset(), snapshotCLs(), snapshotPostRunnables());
    }

    @NotNull
    private List<ClassLoader> snapshotCLs() {
      List<ClassLoader> cls2dispose = new ArrayList<>(myCLsToBeDisposed);
      myCLsToBeDisposed.clear();
      return cls2dispose;
    }

    @NotNull
    private List<Runnable> snapshotPostRunnables() {
      List<Runnable> postRunnablesToRun = new ArrayList<>(myPostRunnableQueue);
      myPostRunnableQueue.clear();
      return postRunnablesToRun;
    }
  }

  final static class Snapshot {
    private final Delta<ModuleRuntime> myModuleDelta;
    private final Delta<PluginLoader> myLoaderDelta;
    private final List<ClassLoader> myClassLoaders;
    private final List<Runnable> myPostRun;

    Snapshot(Delta<ModuleRuntime> md, Delta<PluginLoader> pld, List<ClassLoader> cbd, List<Runnable> postRun) {
      myModuleDelta = md;
      myLoaderDelta = pld;
      myClassLoaders = cbd;
      myPostRun = postRun;
    }

    @NotNull
    Delta<ModuleRuntime> getModuleDelta() {
      return myModuleDelta;
    }

    @NotNull
    Delta<PluginLoader> getLoaderDelta() {
      return myLoaderDelta;
    }

    @NotNull
    List<ClassLoader> getCLsToBeDisposed() {
      return myClassLoaders;
    }

    void invokePostRunnables() {
      myPostRun.forEach(Runnable::run);
    }
  }

  private static final class Delta<T> {
    private final Set<T> toUnload;
    private final Set<T> toLoad;

    public Delta() {
      toUnload = new LinkedHashSet<>();
      toLoad = new LinkedHashSet<>();
    }

    public Delta(@NotNull Delta<T> delta) {
      this(delta.toLoad, delta.toUnload);
    }

    public Delta(@NotNull Collection<T> load, @NotNull Collection<T> unload) {
      this.toLoad = new LinkedHashSet<>(load);
      this.toUnload = new LinkedHashSet<>(unload);
    }

    public void clear() {
      toUnload.clear();
      toLoad.clear();
    }

    public void load(Set<T> ts) {
      toLoad.addAll(ts);
    }

    public void unload(Set<T> ts) {
      toUnload.addAll(ts);
      toLoad.removeAll(ts);
    }

    public boolean isEmpty() {
      return toLoad.isEmpty() && toUnload.isEmpty();
    }

    @Override
    public String toString() {
      return String.format("∆[load:%d; unload:%d]", toLoad.size(), toUnload.size());
    }

    @NotNull
    public Delta<T> reset() {
      Delta<T> tDelta = new Delta<>(this);
      clear();
      return tDelta;
    }
  }
}
