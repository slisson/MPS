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
package jetbrains.mps.nodeEditor;

import jetbrains.mps.editor.runtime.SideTransformInfoUtil;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.cellActions.SideTransformSubstituteInfo.Side;
import jetbrains.mps.nodeEditor.cells.CellFinderUtil;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Error;
import jetbrains.mps.nodeEditor.cells.SynchronizeableEditorCell;
import jetbrains.mps.nodeEditor.sidetransform.EditorCell_STHint;
import jetbrains.mps.nodeEditor.updater.UpdateSessionImpl;
import jetbrains.mps.nodeEditor.updater.UpdaterImpl;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellInfo;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCellContext;
import jetbrains.mps.openapi.editor.cells.EditorCellFactory;
import jetbrains.mps.openapi.editor.update.AttributeKind;
import jetbrains.mps.openapi.editor.update.UpdateSession;
import jetbrains.mps.openapi.editor.update.Updater;
import jetbrains.mps.smodel.NodeReadAccessCasterInEditor;
import jetbrains.mps.smodel.NodeReadAccessInEditorListener;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.SNodeOperations;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public class EditorManager {
  private static final Logger LOG = Logger.getLogger(EditorManager.class);

  private static final String BIG_CELL_CONTEXT = "big-cell-context";

  public static final String OLD_NODE_FOR_SUBSTITUTION = "oldNode";

  private final EditorContext myEditorContext;

  private final Deque<Map<ReferencedNodeContext, EditorCell>> myContextToOldCellMap = new ArrayDeque<>();

  private boolean myCreatingInspectedCell;

  @Nullable
  public static EditorManager getInstanceFromContext(EditorContext editorContext) {
    // TODO: Create API interface for EditorManager & use this method always here
    return ((jetbrains.mps.nodeEditor.EditorContext) editorContext).getEditorManager();
  }

  public EditorManager(EditorContext editorContext) {
    myEditorContext = editorContext;
  }

  private EditorContext getEditorContext() {
    return myEditorContext;
  }

  private Updater getUpdater() {
    return getEditorContext().getEditorComponent().getUpdater();
  }

  // TODO: remove this method, use getUpdater()
  private UpdaterImpl getUpdaterImpl() {
    return (UpdaterImpl) getEditorContext().getEditorComponent().getUpdater();
  }

  private UpdateSession getUpdateSession() {
    return getUpdater().getCurrentUpdateSession();
  }

  /**
   * Children dependencies are registered through the impl rather than the published {@link UpdateSession} interface —
   * see {@link UpdateSessionImpl#registerChildrenDependencies}.
   */
  private UpdateSessionImpl getUpdateSessionImpl() {
    return getUpdaterImpl().getCurrentUpdateSession();
  }

  private EditorCellFactory getCellFactory() {
    return getUpdateSession().getCellFactory();
  }

  // TODO: make package-local, move to jetbrains.mps.nodeEditor.updater package ?
  public EditorCell createRootCell(SNode node, List<ModelModification> modifications, ReferencedNodeContext refContext, boolean isInspectorCell) {
    try {
      pushTask("Creating " + (isInspectorCell ? "inspector" : "root") + " cell");
      EditorCell rootCell = getEditorContext().getEditorComponent().getRootCell();
      assert myContextToOldCellMap.isEmpty();
      myContextToOldCellMap.push(new HashMap<>());
      if (rootCell != null && modifications != null) {
        fillContextToCellMap(rootCell, myContextToOldCellMap.peek());
      }
      myCreatingInspectedCell = isInspectorCell;
      return createEditorCell(modifications, refContext);
    } finally {
      myContextToOldCellMap.pop();
      popTask();
    }
  }

  private static void fillContextToCellMap(EditorCell cell, Map<ReferencedNodeContext, EditorCell> map) {
    Object bigCellContext = cell.getUserObject(BIG_CELL_CONTEXT);
    if (bigCellContext instanceof ReferencedNodeContext) {
      ReferencedNodeContext refContext = (ReferencedNodeContext) bigCellContext;
      if (!map.containsKey(refContext)) {
        map.put(refContext, cell);
      }
      // Don't go deeper if this cell represents normal node.
      //
      // Go deeper if this cell represents attribute node
      // since we need to load mappings for all child attributes
      // till the "main" node's cell and main node's cell itself.
      if (!refContext.isNodeAttribute()) {
        return;
      }
    }
    fillContextToCellMapForChildren(cell, map);
  }

  private static void fillContextToCellMapForChildren(EditorCell cell, Map<ReferencedNodeContext, EditorCell> map) {
    if (cell instanceof EditorCell_Collection) {
      for (jetbrains.mps.openapi.editor.cells.EditorCell childCell : ((EditorCell_Collection) cell)) {
        fillContextToCellMap(childCell, map);
      }
    }
  }

  public EditorCell createNodeRoleAttributeCell(SNode roleAttribute, AttributeKind attributeKind, EditorCell cellWithRole) {
    // TODO: Make processing of style attributes more generic.
    EditorCell attributeCell = getUpdateSession().updateAttributeCell(attributeKind, cellWithRole, roleAttribute);
    // see a comment for isAttributedCell() method
    if (attributeCell == cellWithRole) {
      return cellWithRole;
    }
    if (cellWithRole.getStyle().get(StyleAttributes.INDENT_LAYOUT_NEW_LINE)) {
      attributeCell.getStyle().set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, true);
    }

    if (attributeKind == AttributeKind.NODE) {
      propagateDependencies(cellWithRole, attributeCell);
    } else {
      UpdaterImpl updater = getUpdaterImpl();
      Set<SNode> newAttributeCell_DependOn = new HashSet<>();
      Set<SNodeReference> newAttributeCell_RefTargetsDependsOn = new HashSet<>();
      Set<Pair<SNode, SContainmentLink>> newAttributeCell_ChildrenDependsOn = new HashSet<>();
      Set<Pair<SNode, SReferenceLink>> newAttributeCell_ReferencesDependsOn = new HashSet<>();
      Set<Pair<SNodeReference, String>> newAttributeCell_DirtyPropertiesDependsOn = new HashSet<>();
      Set<Pair<SNodeReference, String>> newAttributeCell_ExistencePropertiesDependsOn = new HashSet<>();

      NodeReadAccessInEditorListener readAccessListener = NodeReadAccessCasterInEditor.getReadAccessListener();
      if (readAccessListener != null) {
        newAttributeCell_DependOn.addAll(readAccessListener.getNodesToDependOn());
        newAttributeCell_RefTargetsDependsOn.addAll(readAccessListener.getRefTargetsToDependOn());
        newAttributeCell_ChildrenDependsOn.addAll(readAccessListener.getChildrenToDependOn());
        newAttributeCell_ReferencesDependsOn.addAll(readAccessListener.getReferencesToDependOn());
        newAttributeCell_DirtyPropertiesDependsOn.addAll(readAccessListener.getDirtilyReadAccessedProperties());
        newAttributeCell_ExistencePropertiesDependsOn.addAll(readAccessListener.getExistenceReadAccessProperties());
      }

      newAttributeCell_DependOn.addAll(emptyIfNull(updater.getRelatedNodes(attributeCell)));
      newAttributeCell_DependOn.addAll(emptyIfNull(updater.getRelatedNodes(cellWithRole)));

      newAttributeCell_RefTargetsDependsOn.addAll(emptyIfNull(updater.getRelatedRefTargets(attributeCell)));
      newAttributeCell_RefTargetsDependsOn.addAll(emptyIfNull(updater.getRelatedRefTargets(cellWithRole)));

      newAttributeCell_ChildrenDependsOn.addAll(emptyIfNull(updater.getRelatedChildren(attributeCell)));
      newAttributeCell_ChildrenDependsOn.addAll(emptyIfNull(updater.getRelatedChildren(cellWithRole)));

      newAttributeCell_ReferencesDependsOn.addAll(emptyIfNull(updater.getRelatedReferences(attributeCell)));
      newAttributeCell_ReferencesDependsOn.addAll(emptyIfNull(updater.getRelatedReferences(cellWithRole)));

      newAttributeCell_DirtyPropertiesDependsOn.addAll(emptyIfNull(updater.getRelatedDirtyProperties(attributeCell)));
      newAttributeCell_DirtyPropertiesDependsOn.addAll(emptyIfNull(updater.getRelatedDirtyProperties(cellWithRole)));

      newAttributeCell_ExistencePropertiesDependsOn.addAll(emptyIfNull(updater.getRelatedExistenceProperties(attributeCell)));
      newAttributeCell_ExistencePropertiesDependsOn.addAll(emptyIfNull(updater.getRelatedExistenceProperties(cellWithRole)));

      getUpdateSession().registerDependencies(attributeCell, newAttributeCell_DependOn, newAttributeCell_RefTargetsDependsOn);
      getUpdateSessionImpl().registerChildrenDependencies(attributeCell, newAttributeCell_ChildrenDependsOn);
      getUpdateSessionImpl().registerReferenceDependencies(attributeCell, newAttributeCell_ReferencesDependsOn);
      getUpdateSessionImpl().registerPropertyDependencies(attributeCell, newAttributeCell_DirtyPropertiesDependsOn,
          newAttributeCell_ExistencePropertiesDependsOn);
    }

    return attributeCell;
  }

  /**
   * The cell of an attribute must inherit dependencies from the node cell it annotates.
   * Moreover, if the attribute itself is attributed then the whole cell tree must inherit all dependencies from down to top.
   */
  private void propagateDependencies(EditorCell from, EditorCell to) {
    UpdaterImpl updater = getUpdaterImpl();
    UpdateSessionImpl updateSession = updater.getCurrentUpdateSession();
    for (;;) {
      EditorCell parent = from.getParent();
      // Find the next Big parent
      for (; parent != null && !parent.isBig() && parent != to; parent = parent.getParent());
      if (parent == null) {
        break;
      }
      updateSession.registerAdditionalDependencies(parent, emptyIfNull(updater.getRelatedNodes(from)), emptyIfNull(updater.getRelatedRefTargets(from)));
      updateSession.registerAdditionalChildrenDependencies(parent, emptyIfNull(updater.getRelatedChildren(from)));
      updateSession.registerAdditionalReferenceDependencies(parent, emptyIfNull(updater.getRelatedReferences(from)));
      updateSession.registerAdditionalPropertyDependencies(parent, emptyIfNull(updater.getRelatedDirtyProperties(from)),
          emptyIfNull(updater.getRelatedExistenceProperties(from)));
      from = parent;
      if (from == to) {
        break;
      }
    }
  }

  private <T> Set<T> emptyIfNull(Set<T> set) {
    return set != null ? set : Collections.emptySet();
  }

  protected boolean areAttributesShown() {
    return !myCreatingInspectedCell;
  }

  private EditorCell createEditorCellWithoutAttributes(List<ModelModification> modifications, ReferencedNodeContext refContext) {
    pushTask(getMessage(refContext, "?"));
    try {
      UpdaterImpl updater = getUpdaterImpl();
      Map<ReferencedNodeContext, EditorCell> childContextToCellMap = null;
      EditorCell oldCell = null;
      if (modifications != null) {
        oldCell = myContextToOldCellMap.peek().remove(refContext);
        boolean nodeChanged = isNodeChanged(modifications, updater, oldCell, getCellFactory().getCellContext());

        if (!nodeChanged) {
          final Set<SNode> nodesOldCellDependsOn = updater.getRelatedNodes(oldCell);
          final Set<SNodeReference> refTargetsOldCellDependsOn = updater.getRelatedRefTargets(oldCell);
          final Set<Pair<SNode, SContainmentLink>> childrenOldCellDependsOn = updater.getRelatedChildren(oldCell);
          final Set<Pair<SNode, SReferenceLink>> referencesOldCellDependsOn = updater.getRelatedReferences(oldCell);
          final Set<Pair<SNodeReference, String>> dirtyPropertiesOldCellDependsOn = updater.getRelatedDirtyProperties(oldCell);
          final Set<Pair<SNodeReference, String>> existencePropertiesOldCellDependsOn = updater.getRelatedExistenceProperties(oldCell);
          if (nodesOldCellDependsOn != null || refTargetsOldCellDependsOn != null || childrenOldCellDependsOn != null
              || referencesOldCellDependsOn != null || dirtyPropertiesOldCellDependsOn != null
              || existencePropertiesOldCellDependsOn != null) {
            // Node was not changed, we have oldCell so it will not be re-created.
            //
            // Now all the dependencies of this (old) Cell should be added to currently active
            // NodeReadAccessInEditorListener, so will be reported as parent Cell dependencies.
            //
            // Same logic is implemented in NodeReadAccessCasterInEditor.removeCellBuildNodeAccessListener(), so
            // we should duplicate it here to emulate proper update process for parent cell.
            NodeReadAccessInEditorListener parentReadAccessListener = NodeReadAccessCasterInEditor.getReadAccessListener();
            if (parentReadAccessListener != null) {
              if (nodesOldCellDependsOn != null) {
                parentReadAccessListener.addNodesToDependOn(nodesOldCellDependsOn);
              }
              if (refTargetsOldCellDependsOn != null) {
                parentReadAccessListener.addRefTargetsToDependOn(refTargetsOldCellDependsOn);
              }
              if (childrenOldCellDependsOn != null) {
                parentReadAccessListener.addChildrenToDependOn(childrenOldCellDependsOn);
              }
              if (referencesOldCellDependsOn != null) {
                parentReadAccessListener.addReferencesToDependOn(referencesOldCellDependsOn);
              }
              if (dirtyPropertiesOldCellDependsOn != null) {
                parentReadAccessListener.addDirtilyReadAccessedProperties(dirtyPropertiesOldCellDependsOn);
              }
              if (existencePropertiesOldCellDependsOn != null) {
                parentReadAccessListener.addExistenceReadAccessProperties(existencePropertiesOldCellDependsOn);
              }
            }
          }
          updater.getCurrentUpdateSession().reuseChildInfo(refContext);
          return oldCell;
        }
        fillContextToCellMapForChildren(oldCell, childContextToCellMap = new HashMap<>());
        updater.clearDependencies(oldCell);
      }

      try {
        if (childContextToCellMap != null) {
          myContextToOldCellMap.push(childContextToCellMap);
        }
        if (oldCell instanceof SynchronizeableEditorCell && ((SynchronizeableEditorCell) oldCell).canBeSynchronized() && isSynchronizable(refContext.getNode())) {
          return syncEditorCell((SynchronizeableEditorCell) oldCell, refContext);
        }
        return createEditorCell_internal(myCreatingInspectedCell, refContext);
      } finally {
        if (childContextToCellMap != null) {
          myContextToOldCellMap.pop();
        }
      }
    } finally {
      popTask();
    }
  }

  public EditorCell createEditorCell(List<ModelModification> modifications, ReferencedNodeContext refContext) {
    boolean showAttributes = areAttributesShown();
    EditorCell nodeCell = createEditorCellWithoutAttributes(modifications, refContext);
    if (showAttributes) {
      SNode node = refContext.getNode();
      Iterable<SNode> nodeAttributes = AttributeOperations.getNodeAttributes(node);

      LinkedList<SNode> stack = new LinkedList<>();
      nodeAttributes.forEach(stack::addFirst);

      for (SNode attribute : stack) {
        nodeCell = createNodeRoleAttributeCell(attribute, AttributeKind.NODE, nodeCell);
      }
    }
    return nodeCell;
  }

  /**
   * In the current state we cannot synchronize nodes having property/link attributes.
   * Example of not working synchronization is: property macro upon IntegerConstant in generator template.
   * On adding/removing such macro synchronization logic cannot update editor properly and add/remove
   * corresponding "wrapping" attribute cell..
   * <p/>
   * In future if proper way of handling such attributes is developed we can get rid of this method.
   */
  private boolean isSynchronizable(SNode node) {
    return !AttributeOperations.hasPropertyAttributes(node) && !AttributeOperations.hasLinkAttributes(node);
  }

  private boolean isNodeChanged(List<ModelModification> modifications, UpdaterImpl updater, EditorCell oldCell,
      EditorCellContext cellContext) {
    if (oldCell == null || oldCell.getCellContext() == null || cellContext.getHints().size() != oldCell.getCellContext().getHints().size() ||
        !cellContext.getHints().containsAll(oldCell.getCellContext().getHints())) {
      return true;
    }
    for (ModelModification modification : modifications) {
      if (updater.isRelated(oldCell, modification)) {
        return true;
      }
    }
    return false;
  }

  public boolean isCreatingInspectedCell() {
    return myCreatingInspectedCell;
  }

  private EditorCell syncEditorCell(SynchronizeableEditorCell editorCell, ReferencedNodeContext refContext) {
    pushTask(getMessage(refContext, "+"));
    try {
      final SNode node = refContext.getNode();
      NodeReadAccessInEditorListener nodeAccessListener = new NodeReadAccessInEditorListener();
      EditorCell result = null;
      try {
        if (!isAttributedCell(editorCell, refContext)) {
          editorCell = removeSideTransformHintCell(editorCell);
        }
        NodeReadAccessCasterInEditor.setCellBuildNodeReadAccessListener(nodeAccessListener);
        editorCell.synchronize();
        result = editorCell;

        if (!isAttributedCell(result, refContext)) {
          result = addSideTransformHintCell(result, node);
        }
      } catch (Throwable e) {
        LOG.error("Failed to synchronize cell for node " + SNodeOperations.getDebugText(node), e);
        result = new EditorCell_Error(getEditorContext(), node, "!exception!:" + SNodeOperations.getDebugText(node));
        result.setBig(true);
        result.setCellContext(getCellFactory().getCellContext());
      } finally {
        /**
         * Always adding cell's node to the set of dependencies of the corresponding cell.
         * No "self" dependency on the cell's node — see createEditorCell_internal() for why.
         */
        NodeReadAccessCasterInEditor.removeCellBuildNodeAccessListener();
        addNodeDependenciesToEditor(result, nodeAccessListener);
        if (!isAttributedCell(result, refContext)) {
          result.putUserObject(BIG_CELL_CONTEXT, refContext);
          EditorCell unwrappedNodeBigCell = getUnwrappedNodeBigCell(result, node);
          if (unwrappedNodeBigCell != null) {
            getUpdateSession().registerAsBigCell(unwrappedNodeBigCell);
          }
        }
      }
      return result;
    } finally {
      popTask();
    }
  }

  private EditorCell createEditorCell_internal(boolean isInspectorCell, ReferencedNodeContext refContext) {
    pushTask(getMessage(refContext, "+"));
    final SNode node = refContext.getNode();

    try {
      //reset creating inspected cell : we don't create not-root inspected cells
      myCreatingInspectedCell = false;

      EditorCell nodeCell = null;
      NodeReadAccessInEditorListener nodeAccessListener = new NodeReadAccessInEditorListener();
      try {
        NodeReadAccessCasterInEditor.setCellBuildNodeReadAccessListener(nodeAccessListener);
        nodeCell = getCellFactory().createEditorCell(node, isInspectorCell);

        if (!isAttributedCell(nodeCell, refContext)) {
          nodeCell = addSideTransformHintCell(nodeCell, node);
        }
      } catch (Throwable e) {
        LOG.error("Failed to create cell for node " + SNodeOperations.getDebugText(node), e);
        nodeCell = new EditorCell_Error(getEditorContext(), node, "!exception!:" + SNodeOperations.getDebugText(node));
        nodeCell.setBig(true);
        nodeCell.setCellContext(getCellFactory().getCellContext());
      } finally {
        /**
         * No "self" dependency on the cell's node is registered here, and there used to be one.
         *
         * A node carries no information of its own — everything a builder can read is a property, a reference or a
         * child, and each of those reports itself. Nor can a node change: only the ways to it can, and those are
         * changes to some other node's role. So a dependency on the node itself could never be the right answer to
         * "what did this cell read", and in practice it subsumed the precise dependencies recorded beside it: a cell
         * reading one property was rebuilt by a change to any other.
         *
         * The two cases the self dependency existed for are both covered without it, and both are child events:
         *
         * - "constant-only cell must be re-created if a node attribute was added". Attributes are children, in the
         *   smodelAttribute role. createEditorCell() reads them via AttributeOperations.getNodeAttributes() after this
         *   listener has been popped, so the (node, smodelAttribute) dependency lands on the parent cell, which is
         *   what re-descends to here. For a root cell there is no listener at all, but createRootCell() re-runs on
         *   every update, so its attributes are always re-read.
         *
         * - "pure-child cell must be re-created if the first child was added". Reading an empty role now reports
         *   (node, role) — see SNode.getChildren(role) — which is precisely this, and is what the cell depends on.
         */
        NodeReadAccessCasterInEditor.removeCellBuildNodeAccessListener();
        assert nodeCell != null;
        if (!isAttributedCell(nodeCell, refContext)) {
          nodeCell.putUserObject(BIG_CELL_CONTEXT, refContext);
          EditorCell unwrappedNodeBigCell = getUnwrappedNodeBigCell(nodeCell, node);
          if (unwrappedNodeBigCell != null) {
            getUpdateSession().registerAsBigCell(unwrappedNodeBigCell);
          }
          addNodeDependenciesToEditor(nodeCell, nodeAccessListener);
        }
      }

      if (nodeCell instanceof EditorCell_Collection && ((EditorCell_Collection) nodeCell).canBeSynchronized() && !isSynchronizable(node)) {
        ((EditorCell_Collection) nodeCell).setCanBeSynchronized(false);
      }

      return nodeCell;
    } finally {
      popTask();
    }
  }

  /**
   * Property or reference attributes can wrap some particular cells of the main node editor into attribute node editor cells.
   * Such "wrapping" cells when should be inserted into the main node editor instead of original property/reference cells.
   * <p/>
   * It can happen that  main node editor contains only one property/reference cell. In such case if corresponding property/reference
   * attribute is attached to the main node then the "main" cell will be wrapped into a property/reference attribute node editor cell(s)
   * and returned from EditorCellFactory.createEditorCell() method execution.
   * <p/>
   * To properly handle such situations we should "unwrap" returned cell to get direct access to the big cell representing original main node.
   * This method was created to handle such situations.
   *
   * @param cell EditorCell created by EditorCellFactory.createEditorCell() method
   * @param node main node used as a parameter while creating this cell
   * @return "big" cell representing main node. It will be either cell or it's child cell.
   */
  private EditorCell getUnwrappedNodeBigCell(EditorCell cell, SNode node) {
    SNode cellNode = cell.getSNode();
    if (cellNode == node) {
      return cell;
    }
    SConcept nodeConcept = cellNode.getConcept();
    if (!nodeConcept.isSubConceptOf(SNodeUtil.concept_PropertyAttribute) &&
        !nodeConcept.isSubConceptOf(SNodeUtil.concept_LinkAttribute)) {
      // the only known possibility to get "wrapped" cell is when the cell is wrapped into a PropertyAttribute or LinkAttribute.
      return cell;
    }

    Queue<EditorCell> cells = new LinkedList<>();
    cells.add(cell);
    while (!cells.isEmpty()) {
      EditorCell nextCell = cells.remove();
      if (nextCell.getSNode() == node && !(nextCell instanceof EditorCell_STHint)) {
        assert nextCell.isBig() :
            "\"Not big\" cell found. Original cell: " + cell.getCellId() + ", node: " + cell.getSNode() + ", concept: " +
                cell.getSNode().getConcept().getQualifiedName() + ". Found cell: " + nextCell.getCellId() + ", node: " +
                node + ", concept: " + node.getConcept().getQualifiedName();
        return nextCell;
      }
      if (nextCell instanceof EditorCell_Collection) {
        for (EditorCell childCell : (EditorCell_Collection) nextCell) {
          cells.add(childCell);
        }
      }
    }
    return null;
  }

  /**
   * Some node attribute editors may return attributed node cell directly. (e.g. if specified editor is like: [> attributed node <]).
   * For such editors we should skip all additional cell processing because additional cell processing was already performed for this
   * cell while constructing it for the original node.
   * <p/>
   * This method is used to determine if the result of the generated attribute editor execution is equals to original cell of the
   * attributed node.
   */
  private boolean isAttributedCell(@NotNull EditorCell nodeCell, @NotNull ReferencedNodeContext refContext) {
    return refContext.isNodeAttribute() && nodeCell.getSNode() != refContext.getNode();
  }

  private void addNodeDependenciesToEditor(EditorCell cell, NodeReadAccessInEditorListener listener) {
    getUpdateSession().registerDependencies(cell, listener.getNodesToDependOn(), listener.getRefTargetsToDependOn());
    getUpdateSessionImpl().registerChildrenDependencies(cell, listener.getChildrenToDependOn());
    getUpdateSessionImpl().registerReferenceDependencies(cell, listener.getReferencesToDependOn());
    getUpdateSessionImpl().registerPropertyDependencies(cell, listener.getDirtilyReadAccessedProperties(),
        listener.getExistenceReadAccessProperties());
    for (Pair<SNodeReference, String> pair : listener.getDirtilyReadAccessedProperties()) {
      getUpdateSession().registerDirtyDependency(cell, pair);
    }
    for (Pair<SNodeReference, String> pair : listener.getExistenceReadAccessProperties()) {
      getUpdateSession().registerExistenceDependency(cell, pair);
    }
  }

  private SynchronizeableEditorCell removeSideTransformHintCell(SynchronizeableEditorCell nodeCell) {
    EditorCell_STHint hintCell = null;

    // traversing all child cells of nodeCell representing same node and looking for EditorCell_STHint
    Queue<EditorCell> queue = new LinkedList<>();
    queue.add(nodeCell);
    while (hintCell == null && !queue.isEmpty()) {
      EditorCell nextCell = queue.remove();
      if (nextCell instanceof EditorCell_STHint) {
        hintCell = (EditorCell_STHint) nextCell;
      } else if (nextCell instanceof jetbrains.mps.openapi.editor.cells.EditorCell_Collection) {
        for (EditorCell childCell : ((jetbrains.mps.openapi.editor.cells.EditorCell_Collection) nextCell)) {
          if (childCell.getSNode() == nodeCell.getSNode()) {
            queue.add(childCell);
          }
        }
      }
    }

    return hintCell != null ? (SynchronizeableEditorCell) hintCell.uninstall() : nodeCell;
  }

  private EditorCell addSideTransformHintCell(EditorCell nodeCell, SNode node) {
    Side side;
    if (SideTransformInfoUtil.hasRightTransformInfo(node)) {
      side = Side.RIGHT;
    } else if (SideTransformInfoUtil.hasLeftTransformInfo(node)) {
      side = Side.LEFT;
    } else {
      return nodeCell;
    }

    EditorCell unwrappedNodeBigCell = getUnwrappedNodeBigCell(nodeCell, node);
    if (unwrappedNodeBigCell == null) {
      return nodeCell;
    }

    String anchorId = SideTransformInfoUtil.getCellIdFromTransformInfo(node);
    assert anchorId != null;
    EditorCell anchorCell = CellFinderUtil.findChildById(unwrappedNodeBigCell, node, anchorId, true);
    if (anchorCell == null) {
      // anchor cell was not found. Possible reason: different node presentations in editor and inside inspector, so
      // side-transforms in the main editor should not affect inspector.
      return nodeCell;
    }
    assert
        anchorCell.getSNode() == node :
        "Anchor cell should be associated with the same node as main cell. Anchor cell node: " + anchorCell.getSNode().getNodeId() + "; main node: " +
            node.getNodeId();

    EditorCell_STHint sideTransformHintCell =
        new EditorCell_STHint(unwrappedNodeBigCell, anchorCell, side, getCurrentlySelectedCellInfo(unwrappedNodeBigCell.getContext()));
    return sideTransformHintCell.install();
  }

  private CellInfo getCurrentlySelectedCellInfo(EditorContext context) {
    EditorCell selectedCell = context.getSelectedCell();
    return selectedCell != null ? selectedCell.getCellInfo() : null;
  }

  private void pushTask(String message) {
    jetbrains.mps.nodeEditor.EditorContext editorContextImpl = (jetbrains.mps.nodeEditor.EditorContext) getEditorContext();
    if (editorContextImpl.isTracing()) {
      editorContextImpl.pushTracerTask(message);
    }
  }

  private void popTask() {
    jetbrains.mps.nodeEditor.EditorContext editorContextImpl = (jetbrains.mps.nodeEditor.EditorContext) getEditorContext();
    if (editorContextImpl.isTracing()) {
      editorContextImpl.popTracerTask();
    }
  }

  private String getMessage(ReferencedNodeContext refContext, String prefix) {
    jetbrains.mps.nodeEditor.EditorContext editorContextImpl = (jetbrains.mps.nodeEditor.EditorContext) getEditorContext();
    if (editorContextImpl.isTracing()) {
      return prefix + refContext.toString();
    }
    return prefix;
  }
}
