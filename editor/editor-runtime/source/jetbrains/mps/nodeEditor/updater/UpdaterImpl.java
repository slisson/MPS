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
package jetbrains.mps.nodeEditor.updater;

import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.ModelModification;
import jetbrains.mps.nodeEditor.cells.APICellAdapter;
import jetbrains.mps.nodeEditor.commands.CommandContextImpl;
import jetbrains.mps.nodeEditor.commands.CommandContextListener;
import jetbrains.mps.openapi.editor.EditorComponentState;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.update.Updater;
import jetbrains.mps.openapi.editor.update.UpdaterListener;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.typechecking.TypecheckingFacade;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.WeakSet;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SRepository;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/**
 * User: shatalin
 * Date: 03/09/14
 */
public class UpdaterImpl implements Updater {
  private static final Logger LOG = Logger.getLogger(UpdaterImpl.class);

  @NotNull
  private final EditorComponent myEditorComponent;
  private UpdateSessionImpl myUpdateSession;
  private final UpdaterModelListenersController myModelListenersController;
  private List<UpdaterListener> myListeners = new ArrayList<>();

  private Map<SNode, WeakReference<EditorCell>> myBigCellsMap = new WeakHashMap<>();
  private Map<EditorCell, Set<SNode>> myRelatedNodes = new WeakHashMap<>();
  private Map<EditorCell, Set<SNodeReference>> myRelatedRefTargets = new WeakHashMap<>();
  private Map<EditorCell, Set<Pair<SNode, SContainmentLink>>> myRelatedChildren = new WeakHashMap<>();
  private Map<EditorCell, Set<Pair<SNode, SReferenceLink>>> myRelatedReferences = new WeakHashMap<>();
  // Forward indices, cell -> properties it read. myDirtyDependentCells below is the inverse of the first of these; both
  // directions are needed, as the inverse serves the "single property event in the batch" fast path (requiresUpdate)
  // while isRelated has a cell in hand and needs to ask what that cell read.
  private Map<EditorCell, Set<Pair<SNodeReference, String>>> myRelatedDirtyProperties = new WeakHashMap<>();
  private Map<EditorCell, Set<Pair<SNodeReference, String>>> myRelatedExistenceProperties = new WeakHashMap<>();
  private Map<Pair<SNodeReference, String>, WeakSet<EditorCell>> myCleanDependentCells = new HashMap<>();
  private Map<Pair<SNodeReference, String>, WeakSet<EditorCell>> myDirtyDependentCells = new HashMap<>();
  private Map<Pair<SNodeReference, String>, WeakSet<EditorCell>> myExistenceDependentCells = new HashMap<>();
  private boolean myDisposed;
  private String[] myInitialHints;
  private Map<SNodeReference, Collection<String>> myEditorHintsForNodeMap = new HashMap<>();
  private UpdateInfoIndex myUpdateInfoIndex;
  private boolean myInProgress;
  private boolean myProcessSelection;

  public UpdaterImpl(@NotNull EditorComponent editorComponent, CommandContextImpl commandContext) {
    myEditorComponent = editorComponent;
    commandContext.addListener(new CommandContextListenerImpl());
    myModelListenersController = new UpdaterModelListenersController(this);
  }

  @Override
  public void update() {
    assert !myDisposed;
    boolean wasInProgress = fireEditorUpdateStarted();
    // first cleaning collected events because subsequent update process may call flushModelEvents()
    // for now and it is expected that all events should be already processed
    myModelListenersController.clearCollectedEvents();
    doUpdate(null);
    fireEditorUpdated(wasInProgress);
  }

  void update(List<SModelEvent> events) {
    boolean wasInProgress = fireEditorUpdateStarted();
    doUpdate(events);
    fireEditorUpdated(wasInProgress);
  }

  private void doUpdate(List<SModelEvent> events) {
    if (!ThreadUtils.isInEDT()) {
      LOG.error("This method should be called in EDT", new Throwable());
    }
    if (myDisposed) {
      return;
    }
    getEditorContext().getRepository().getModelAccess().checkReadAccess();

    SNode editedNode = myEditorComponent.getEditedNode();
    if (editedNode == null || editedNode.getModel() == null) {
      myEditorComponent.setRootCell(myEditorComponent.createEmptyCell());
    } else {
      EditorComponentState state = myEditorComponent.captureState();
      myEditorComponent.setRootCell(updateRootCell(editedNode, events));
      myEditorComponent.restoreState(state);
    }
  }

  private EditorCell updateRootCell(SNode node, List<SModelEvent> events) {
    assert !myDisposed;
    Project project = ProjectHelper.getProject(getEditorContext().getRepository());
    assert
        project == null || !project.isDisposed() :
        "Update was executed for the editor associated with disposed project: " + project + ", editor: " + getEditorComponent() + ", node: " +
        getEditorComponent().getEditedNode();

    assert myUpdateSession == null;
    myUpdateSession = createUpdateSession(node, events);
    try {
      Pair<EditorCell, UpdateInfoIndex> result =
          TypecheckingFacade
              .getFromContext()
              .computeWithSession(myEditorComponent.getTypecheckingSession(), (session) -> myUpdateSession.performUpdate());

      EditorCell rootCell = result.o1;
      myUpdateInfoIndex = result.o2;
      myModelListenersController.attachListeners(node, collectModelsToListen(rootCell, node));
      return rootCell;
    } finally {
      myUpdateSession = null;
    }
  }

  /**
   * The models a change has to be heard from for {@code rootCell} to stay correct: those holding anything it depends
   * on, plus the edited node's own.
   * <p/>
   * Every dependency kind has to be walked, not just the whole-node and reference-target ones. A cell that read only a
   * property of a node in another model depends on that model and on nothing else there; miss it and the change is
   * never delivered, so the cell is never rebuilt.
   * <p/>
   * The edited node's model is included whether or not the root cell read anything of it — the editor still has to
   * hear about the node being replaced or removed, which is what {@code assertListenerAdded} checks. That used to fall
   * out of the whole-node self dependency EditorManager gave every cell, and had to become explicit when that went.
   */
  @NotNull
  /*package*/ Set<SModel> collectModelsToListen(@NotNull EditorCell rootCell, @NotNull SNode editedNode) {
    SRepository repository = getEditorContext().getRepository();
    Set<SModel> result = new HashSet<>();
    addModel(result, editedNode.getModel());

    Set<SNode> relatedNodes = getRelatedNodes(rootCell);
    if (relatedNodes != null) {
      for (SNode node : relatedNodes) {
        addModel(result, node.getModel());
      }
    }
    addModelsOfNodes(result, getRelatedChildren(rootCell));
    addModelsOfNodes(result, getRelatedReferences(rootCell));
    addModelsOfReferences(result, getRelatedRefTargets(rootCell), repository);
    addModelsOfPropertyOwners(result, getRelatedDirtyProperties(rootCell), repository);
    addModelsOfPropertyOwners(result, getRelatedExistenceProperties(rootCell), repository);
    return result;
  }

  private static <T> void addModelsOfNodes(Set<SModel> models, Set<Pair<SNode, T>> pairs) {
    if (pairs == null) {
      return;
    }
    for (Pair<SNode, T> pair : pairs) {
      addModel(models, pair.o1.getModel());
    }
  }

  private static void addModelsOfReferences(Set<SModel> models, Set<SNodeReference> references, SRepository repository) {
    if (references == null) {
      return;
    }
    for (SNodeReference reference : references) {
      addModel(models, resolveModel(reference, repository));
    }
  }

  private static void addModelsOfPropertyOwners(Set<SModel> models, Set<Pair<SNodeReference, String>> properties,
      SRepository repository) {
    if (properties == null) {
      return;
    }
    for (Pair<SNodeReference, String> property : properties) {
      addModel(models, resolveModel(property.o1, repository));
    }
  }

  private static SModel resolveModel(SNodeReference reference, SRepository repository) {
    SModelReference modelReference = reference.getModelReference();
    return modelReference == null ? null : modelReference.resolve(repository);
  }

  private static void addModel(Set<SModel> models, @Nullable SModel model) {
    if (model != null) {
      models.add(model);
    }
  }

  @Override
  public UpdateSessionImpl getCurrentUpdateSession() {
    return myUpdateSession;
  }

  @Override
  public void flushModelEvents() {
    assert !myDisposed;
    if (!ThreadUtils.isInEDT()) {
      LOG.error("This method should be called in EDT", new Throwable());
    }
    myModelListenersController.flush();
  }

  @Override
  public void addListener(UpdaterListener listener) {
    myListeners.add(listener);
  }

  @Override
  public void removeListener(UpdaterListener listener) {
    myListeners.remove(listener);
  }

  @Override
  public boolean setInitialEditorHints(@Nullable String[] hints) {
    assert !myDisposed : "editor is already disposed";
    boolean changed = !Arrays.equals(myInitialHints, hints);
    myInitialHints = hints;
    return changed;
  }

  @Nullable
  @Override
  public String[] getInitialEditorHints() {
    assert !myDisposed;
    if (myInitialHints == null) {
      return null;
    }
    String[] result = new String[myInitialHints.length];
    System.arraycopy(myInitialHints, 0, result, 0, myInitialHints.length);
    return result;
  }

  @Override
  public void addExplicitEditorHintsForNode(SNodeReference nodeReference, String... hints) {
    Collection<String> currentHints = myEditorHintsForNodeMap.get(nodeReference);
    if (currentHints == null) {
      currentHints = new ArrayList<>();
      Collections.addAll(currentHints, hints);
      myEditorHintsForNodeMap.put(nodeReference, currentHints);
    } else {
      for (String hint : hints) {
        if (!currentHints.contains(hint)) {
          currentHints.add(hint);
        }
      }
    }
  }

  @Override
  public void removeExplicitEditorHintsForNode(SNodeReference nodeReference, String... hints) {
    Collection<String> currentHints = myEditorHintsForNodeMap.get(nodeReference);
    if (currentHints != null) {
      for (String hint : hints) {
        currentHints.remove(hint);
      }
      if (currentHints.isEmpty()) {
        myEditorHintsForNodeMap.remove(nodeReference);
      }
    }

  }

  @Override
  public String[] getExplicitEditorHintsForNode(SNodeReference nodeReference) {
    Collection<String> hints = myEditorHintsForNodeMap.get(nodeReference);
    return hints == null ? null : hints.toArray(new String[0]);
  }

  @Override
  public void clearExplicitHints() {
    myEditorHintsForNodeMap.clear();
  }

  private void fireCellSynchronized(EditorCell cell) {
    for (UpdaterListener nextListener : new ArrayList<>(myListeners)) {
      nextListener.cellSynchronizedWithModel(cell);
    }
  }

  private boolean fireEditorUpdateStarted() {
    if (myInProgress) {
      return true;
    }
    myInProgress = true;
    for (UpdaterListener nextListener : new ArrayList<>(myListeners)) {
      nextListener.editorUpdateStarted(myEditorComponent);
    }
    return false;
  }

  private void fireEditorUpdated(boolean wasInProgress) {
    if (wasInProgress) {
      return;
    }
    for (UpdaterListener nextListener : new ArrayList<>(myListeners)) {
      nextListener.editorUpdated(myEditorComponent);
    }
    myInProgress = false;
  }

  protected UpdateSessionImpl createUpdateSession(SNode node, List<SModelEvent> events) {
    UpdateSessionImpl result =
        new UpdateSessionImpl(node, events, this, myBigCellsMap, myRelatedNodes, myRelatedRefTargets, myRelatedChildren,
                              myRelatedReferences, myRelatedDirtyProperties, myRelatedExistenceProperties, myCleanDependentCells,
                              myDirtyDependentCells, myExistenceDependentCells, myUpdateInfoIndex);
    result.setInitialEditorHints(myInitialHints);
    result.setEditorHintsForNodeMap(myEditorHintsForNodeMap);
// TODO: clean local state completely & use only info from this UpdateSessionImpl to update the editor after it.
//    myUpdateInfoIndex = null;
    return result;
  }

  @NotNull
  EditorContext getEditorContext() {
    return myEditorComponent.getEditorContext();
  }

  private void clearCaches() {
    myBigCellsMap.clear();
    myRelatedNodes.clear();
    myRelatedRefTargets.clear();
    myRelatedChildren.clear();
    myRelatedReferences.clear();
    myRelatedDirtyProperties.clear();
    myRelatedExistenceProperties.clear();
    myCleanDependentCells.clear();
    myDirtyDependentCells.clear();
    myExistenceDependentCells.clear();
  }

  public void dispose() {
    myModelListenersController.dispose();
    clearCaches();
    myDisposed = true;
  }

  public EditorCell getBigCell(SNode node) {
    assert !myDisposed;
    WeakReference<EditorCell> editorCellWeakReference = myBigCellsMap.get(node);
    return editorCellWeakReference == null ? null : editorCellWeakReference.get();
  }

  public void clearDependencies(EditorCell cell) {
    assert !myDisposed;
    myRelatedNodes.remove(cell);
    myRelatedRefTargets.remove(cell);
    myRelatedChildren.remove(cell);
    myRelatedReferences.remove(cell);
    myRelatedDirtyProperties.remove(cell);
    myRelatedExistenceProperties.remove(cell);
  }

  public Set<SNode> getRelatedNodes(EditorCell cell) {
    assert !myDisposed;
    Set<SNode> nodes = myRelatedNodes.get(cell);
    if (nodes == null) {
      return null;
    }
    return Collections.unmodifiableSet(nodes);
  }

  public Set<SNodeReference> getRelatedRefTargets(EditorCell cell) {
    assert !myDisposed;
    Set<SNodeReference> nodeProxies = myRelatedRefTargets.get(cell);
    if (nodeProxies == null) {
      return null;
    }
    return Collections.unmodifiableSet(nodeProxies);
  }

  /**
   * @return containment links whose contents this cell read, as (node, role) pairs; a null role means children of
   *         every role were read. Null if nothing was recorded for this cell.
   */
  public Set<Pair<SNode, SContainmentLink>> getRelatedChildren(EditorCell cell) {
    assert !myDisposed;
    Set<Pair<SNode, SContainmentLink>> children = myRelatedChildren.get(cell);
    if (children == null) {
      return null;
    }
    return Collections.unmodifiableSet(children);
  }

  /**
   * @return reference links this cell resolved, as (source node, link) pairs; null if nothing was recorded for it
   */
  public Set<Pair<SNode, SReferenceLink>> getRelatedReferences(EditorCell cell) {
    assert !myDisposed;
    Set<Pair<SNode, SReferenceLink>> references = myRelatedReferences.get(cell);
    if (references == null) {
      return null;
    }
    return Collections.unmodifiableSet(references);
  }

  /**
   * @return properties whose values this cell read, null if nothing was recorded for it
   */
  public Set<Pair<SNodeReference, String>> getRelatedDirtyProperties(EditorCell cell) {
    assert !myDisposed;
    Set<Pair<SNodeReference, String>> properties = myRelatedDirtyProperties.get(cell);
    if (properties == null) {
      return null;
    }
    return Collections.unmodifiableSet(properties);
  }

  /**
   * @return properties whose presence this cell checked, null if nothing was recorded for it
   */
  public Set<Pair<SNodeReference, String>> getRelatedExistenceProperties(EditorCell cell) {
    assert !myDisposed;
    Set<Pair<SNodeReference, String>> properties = myRelatedExistenceProperties.get(cell);
    if (properties == null) {
      return null;
    }
    return Collections.unmodifiableSet(properties);
  }

  public boolean isRelated(EditorCell cell, ModelModification modification) {
    assert !myDisposed;
    Set<SNode> sNodes = myRelatedNodes.get(cell);
    if (sNodes != null && sNodes.contains(modification.getNode())) {
      return true;
    }

    Set<SNodeReference> refTargets = myRelatedRefTargets.get(cell);
    if (refTargets != null && refTargets.contains(modification.getNodeReference())) {
      return true;
    }

    return isChildRoleRelated(cell, modification) || isReferenceRelated(cell, modification)
        || isPropertyRelated(cell, modification);
  }

  /**
   * Whether {@code cell} resolved the reference this modification re-pointed. Only reference changes carry a link.
   */
  private boolean isReferenceRelated(EditorCell cell, ModelModification modification) {
    SReferenceLink referenceLink = modification.getReferenceLink();
    if (referenceLink == null) {
      return false;
    }
    Set<Pair<SNode, SReferenceLink>> relatedReferences = myRelatedReferences.get(cell);
    return relatedReferences != null && relatedReferences.contains(new Pair<>(modification.getNode(), referenceLink));
  }

  /**
   * Whether {@code cell} read the property this modification changed. Only property changes carry a property name, so
   * child and reference changes never match here.
   * <p/>
   * A cell that merely checked whether the property is set is matched only when the property was set or unset, not on
   * every value change — the same distinction {@link #requiresUpdate} draws for the single-event fast path.
   */
  private boolean isPropertyRelated(EditorCell cell, ModelModification modification) {
    String propertyName = modification.getPropertyName();
    if (propertyName == null) {
      return false;
    }
    Pair<SNodeReference, String> changed = new Pair<>(modification.getNodeReference(), propertyName);

    Set<Pair<SNodeReference, String>> dirtyProperties = myRelatedDirtyProperties.get(cell);
    if (dirtyProperties != null && dirtyProperties.contains(changed)) {
      return true;
    }

    if (!modification.isPropertyAddedRemoved()) {
      return false;
    }
    Set<Pair<SNodeReference, String>> existenceProperties = myRelatedExistenceProperties.get(cell);
    return existenceProperties != null && existenceProperties.contains(changed);
  }

  /**
   * Whether {@code cell} read the contents of the containment link this modification changed. Only child
   * additions/removals carry a role, so property and reference changes never match here.
   */
  private boolean isChildRoleRelated(EditorCell cell, ModelModification modification) {
    SContainmentLink childRole = modification.getChildRole();
    if (childRole == null) {
      return false;
    }
    Set<Pair<SNode, SContainmentLink>> relatedChildren = myRelatedChildren.get(cell);
    if (relatedChildren == null) {
      return false;
    }
    SNode node = modification.getNode();
    // A null role in a recorded dependency means "children of every role were read" (getFirstChild/getLastChild are
    // role-agnostic), so it is matched by a change to any single role.
    return relatedChildren.contains(new Pair<>(node, childRole)) || relatedChildren.contains(new Pair<>(node, null));
  }

  /**
   * Used by UpdaterModelListener. Indicates if editor update should be executed as a
   * response for the specified property change, or it's sufficient to trigger EditorCells
   * synchronization.
   * <p/>
   * editor update should be triggered if:
   * - specified property was accessed "dirtily" while building this editor
   * - specified property was added/removed and corresponding property existence was checked
   * while building the editor
   *
   * @param propertyChange - pair of SNodeReference and property name modified
   * @param addedRemoved   - indicates if property was newly added or removed from node
   * @return true if incremental editor update should be triggered
   */
  boolean requiresUpdate(Pair<SNodeReference, String> propertyChange, boolean addedRemoved) {
    return myDirtyDependentCells.containsKey(propertyChange) || myExistenceDependentCells.containsKey(propertyChange) && addedRemoved;
  }

  /**
   * Performs EditorCells synchronization as a response to specified property change.
   * This method should be called only if requiresUpdate() returns false.
   *
   * @param propertyChange - pair of SNodeReference and property name modified
   */
  void synchronizeCells(Pair<SNodeReference, String> propertyChange) {
    // TODO: do we need to synchronize myExistenceDependentCells cells at all?
    Iterable<EditorCell> cellsToSynchronize = myExistenceDependentCells.get(propertyChange);
    if (cellsToSynchronize != null) {
      for (EditorCell cell : cellsToSynchronize) {
        APICellAdapter.synchronizeViewWithModel(cell);
        fireCellSynchronized(cell);
      }
    }

    cellsToSynchronize = myCleanDependentCells.get(propertyChange);
    if (cellsToSynchronize != null) {
      for (EditorCell cell : cellsToSynchronize) {
        APICellAdapter.synchronizeViewWithModel(cell);
        fireCellSynchronized(cell);
      }
    }

    /*
     In the prev. version of the editor updater there was a code calling
     APICellAdapter.synchronizeViewWithModel(cell) for all editorCells within the same BigCell.
     This can be useful to revert any modifications performed by user, but not reflected within
     the model (just changing visual cell state e.g. modifying editable constant cell).

     I've removed this code because I did not find any reasons for this logic. If there will be
     use cases where it will be useful, corresponding code can be returned here.
    */
  }

  boolean isSelectionProcessingAllowed() {
    return myProcessSelection;
  }

  @NotNull
  EditorComponent getEditorComponent() {
    return myEditorComponent;
  }

  UpdateInfoIndex getUpdateInfoIndex() {
    return myUpdateInfoIndex;
  }

  private class CommandContextListenerImpl extends CommandContextListener {
    @Override
    public void topLevelCommandStarted() {
      myProcessSelection = true;
    }

    @Override
    public void topLevelCommandFinished() {
      try {
        myModelListenersController.flush();
      } finally {
        myProcessSelection = false;
      }
    }
  }
}
