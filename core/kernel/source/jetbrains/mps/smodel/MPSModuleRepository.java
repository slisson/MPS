/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.smodel;

import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.extapi.module.EditableSModule;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.extapi.module.SRepositoryBase;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.Project;
import jetbrains.mps.project.ProjectManager;
import jetbrains.mps.util.annotation.ToRemove;
import jetbrains.mps.util.containers.ManyToManyMap;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.*;
import org.jetbrains.mps.openapi.module.RepositoryAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SearchScope;
import org.jetbrains.mps.openapi.repository.CommandListener;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class MPSModuleRepository extends SRepositoryBase implements CoreComponent {
  private static final Logger LOG = LogManager.getLogger(MPSModuleRepository.class);
  private static MPSModuleRepository ourInstance;

  private final GlobalModelAccess myGlobalModelAccess;

  @ToRemove(version=3.2)
  private final CommandListener myCommandListener = new CommandListener() {
    @Override
    public void commandStarted() {
      fireCommandStarted();
    }

    @Override
    public void commandFinished() {
      fireCommandFinished();
    }
  };

  private Set<SModule> myModules = new LinkedHashSet<SModule>();
  private Map<String, SModule> myFqNameToModulesMap = new ConcurrentHashMap<String, SModule>();
  private Map<SModuleId, SModule> myIdToModuleMap = new ConcurrentHashMap<SModuleId, SModule>();
  private ManyToManyMap<SModule, MPSModuleOwner> myModuleToOwners = new ManyToManyMap<SModule, MPSModuleOwner>();

  /**
   * Use {@link org.jetbrains.mps.openapi.module.SRepository} from the project whenever it is possible
   *
   * Currently the context object is an MPS project class
   * @see jetbrains.mps.project.Project
   *
   * It can provide a repository and a model access
   * {@link jetbrains.mps.project.Project#getModelAccess()}
   * {@link jetbrains.mps.project.Project#getRepository()}}
   *
   * So in each case you must have an MPS project within your scope and request SRepository explicitily from the project.
   * @deprecated
   * @since 3.2
   */
  @Deprecated
  @ToRemove(version = 3.4)
  public static MPSModuleRepository getInstance() {
    return ourInstance;
  }

  public MPSModuleRepository() {
    myGlobalModelAccess = new GlobalModelAccess();
  }

  @Override
  public void init() {
    super.init();
    if (ourInstance != null) {
      throw new IllegalStateException("already initialized");
    }
    ourInstance = this;
    getModelAccess().addCommandListener(myCommandListener);
  }

  @Override
  public void dispose() {
    getModelAccess().removeCommandListener(myCommandListener);
    ourInstance = null;
    super.dispose();
  }

  //-----------------register/unregister-merge-----------

  public <T extends SModule> T registerModule(T module, MPSModuleOwner owner) {
    getModelAccess().checkWriteAccess();

    SModuleId moduleId = module.getModuleReference().getModuleId();
    String moduleFqName = module.getModuleName();

    AbstractModule aModule = (AbstractModule) module;
    assert moduleId != null : "Module with null id is added to repository: fqName=" + moduleFqName + "; file=" + aModule.getDescriptorFile();

    SModule existing = getModule(moduleId);
    if (existing != null) {
      myModuleToOwners.addLink(existing, owner);
      return (T) existing;
    }

    if (moduleFqName != null) {
      if (myFqNameToModulesMap.containsKey(moduleFqName)) {
        AbstractModule m = (AbstractModule) myFqNameToModulesMap.get(moduleFqName);
        LOG.warn(String.format("Duplicate module name %s : module with the same UID exists at %s and %s", moduleFqName, m.getDescriptorFile(), aModule.getDescriptorFile()));
      }
      myFqNameToModulesMap.put(moduleFqName, module);
    }

    myIdToModuleMap.put(module.getModuleReference().getModuleId(), module);
    myModules.add(module);

    for (org.jetbrains.mps.openapi.model.SModel model:aModule.getModels()){
      if (model instanceof EditableSModel && ((EditableSModel) model).isChanged()){
        LOG.error("Added a module with unsaved model to a repository. This can cause data loss, see MPS-18743. Modify models that are not added to a module or modify them when they are in repo already");
        break;
      }
    }
    aModule.attach(this);
    myModuleToOwners.addLink(module, owner);
    invalidateCaches();
    fireModuleAdded(module);
    return module;
  }

  public void unregisterModules(Collection<SModule> modules, MPSModuleOwner owner) {
    Collection<SModule> modulesToDispose = new ArrayList<SModule>();
    for (SModule module : modules) {
      if (doUnregisterModule(module, owner)) {
        modulesToDispose.add(module);
      }
    }
    if (modulesToDispose.isEmpty()) return;

    invalidateCaches();
    for (SModule module : modulesToDispose) {
      fireModuleRemoved(module.getModuleReference());
      ((SModuleBase) module).dispose();
    }
  }

  public void unregisterModule(SModule module, MPSModuleOwner owner) {
    getModelAccess().checkWriteAccess();

    boolean moduleRemoved = doUnregisterModule(module, owner);
    invalidateCaches();
    if (moduleRemoved) {
      fireModuleRemoved(module.getModuleReference());
      ((SModuleBase) module).dispose();
    }
  }

  /**
   * Unregister specified module from specified owner and conditionally remove module from ModuleRepository if there
   * are no more owners.
   * <p/>
   * Clients are responsible for:
   * - calling invalidateCaches()
   * - firing moduleRemoved/repositoryChanged notifications if module was removed/was not removed from ModuleRepository
   * - disposing module if it was removed
   *
   * @return true if module was removed from ModuleRepository
   */
  private boolean doUnregisterModule(SModule module, MPSModuleOwner owner) {
    getModelAccess().checkWriteAccess();
    assert myModules.contains(
        module) : "trying to unregister non-registered module: fqName=" + module.getModuleName() + "; file=" + ((AbstractModule) module).getDescriptorFile();

    myModuleToOwners.removeLink(module, owner);
    boolean remove = myModuleToOwners.getByFirst(module).isEmpty();
    if (remove) {
      fireBeforeModuleRemoved(module);
      myModules.remove(module);
      myIdToModuleMap.remove(module.getModuleReference().getModuleId());
      myFqNameToModulesMap.remove(module.getModuleName());
      return true;
    }
    return false;
  }

  //---------------get by-----------------------------

  @Override
  public org.jetbrains.mps.openapi.module.ModelAccess getModelAccess() {
    return myGlobalModelAccess;
  }

  @Override
  public RepositoryAccess getRepositoryAccess() {
    return null;
  }

  public Set<SModule> getModules(MPSModuleOwner moduleOwner) {
    //todo assertCanRead();

    return Collections.unmodifiableSet(myModuleToOwners.getBySecond(moduleOwner));
  }

  public Set<MPSModuleOwner> getOwners(SModule module) {
    getModelAccess().checkReadAccess();

    return Collections.unmodifiableSet(myModuleToOwners.getByFirst(module));
  }

  public SModule getModuleByFqName(String fqName) {
    //todo assertCanRead();

    return myFqNameToModulesMap.get(fqName);
  }

  @Override
  public SModule getModule(SModuleId id) {
    getModelAccess().checkReadAccess();

    if (id == null) return null;
    return myIdToModuleMap.get(id);
  }

  @Override
  public Iterable<SModule> getModules() {
    getModelAccess().checkReadAccess();
    return Collections.unmodifiableSet(myModules);
  }

  @Deprecated
  @ToRemove(version = 3.0)
  // use getModule()
  // not always legal -- sometimes assertCanRead fails!!
  public SModule getModuleById(SModuleId moduleId) {
    //todo assertCanRead();

    if (moduleId == null) return null;
    return myIdToModuleMap.get(moduleId);
  }

  //--------------------------------------------------

  public void invalidateCaches() {
    getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        for (Project p : ProjectManager.getInstance().getOpenProjects()) {
          p.getScope().invalidateCaches();
        }
        // FIXME: we should invalidate caches only in specific modules
        for (SModule m : getModules()) {
          SearchScope moduleScope = ((AbstractModule) m).getScope();
          ((AbstractModule.ModuleScope) moduleScope).invalidateCaches();
        }
      }
    });
  }

  //------------------listeners--------------------

  @Override
  public void saveAll() {
    getModelAccess().checkWriteAccess();

    for (SModule module : getModules()) {
      if (module instanceof EditableSModule) {
        EditableSModule editableModule = (EditableSModule) module;
        if (editableModule.isChanged()) {
          editableModule.save();
        }
      }
    }

    SModelRepository.getInstance().saveAll();
  }

  public void moduleFqNameChanged(SModule module, String oldName) {
    getModelAccess().checkWriteAccess();

    if (myFqNameToModulesMap.get(oldName) != module || myFqNameToModulesMap.containsKey(module.getModuleName())) {
      throw new IllegalStateException();
    }
    myFqNameToModulesMap.remove(oldName);
    myFqNameToModulesMap.put(module.getModuleName(), module);
  }

  //-------------------DEPRECATED

  @Deprecated //use ModuleRepositoryFacade instead
  public SModule getModule(@NotNull SModuleReference ref) {
    return ModuleRepositoryFacade.getInstance().getModule(ref);
  }

}
