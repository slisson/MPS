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
package jetbrains.mps.nodeEditor.updater;

import jetbrains.mps.nodeEditor.BaseEditorTest;
import jetbrains.mps.nodeEditor.ModelModification;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.project.ModuleId;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.smodel.NodeReadAccessInEditorListener;
import jetbrains.mps.smodel.SModelId;
import jetbrains.mps.smodel.SModelReference;
import jetbrains.mps.smodel.TrivialModelDescriptor;
import jetbrains.mps.smodel.adapter.BootstrapAdapterFactory;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import jetbrains.mps.smodel.event.SModelReferenceEvent;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

/**
 * Whether a change to the model rebuilds a given cell — {@link UpdaterImpl#isRelated} — over every combination of
 * dependency kind and event kind.
 * <p/>
 * This is the middle of the three layers the editor's incremental update rests on. The other two are covered
 * elsewhere: which dependency a read records, by {@code jetbrains.mps.smodel.EditorDependencyRecordingTest}, and which
 * modification an event produces, by {@code SModelModificationsCollectorTest}. Neither of those can catch a mistake in
 * the matching that joins them, which is what this does.
 * <p/>
 * Both halves of each pairing matter. That the right change rebuilds the cell is the correctness half; that the wrong
 * one does not is the whole point of the exercise, and the half that silently regresses back into rebuilding
 * everything.
 * <p/>
 * Scope, and what it deliberately is not: cells here are stubs with dependencies registered directly, so this does not
 * exercise EditorManager — not which listener sets it registers, not the listener-stack merge that carries a child
 * cell's dependencies to its parent, not the reuse and attribute paths. Those need cells built from a real editor
 * aspect, which needs a deployed language, which needs the full platform: LanguageRegistry is a singleton populated
 * only by ClassLoaderManager from real Language modules, with no injection point. That remains an integration test.
 */
public class EditorInvalidationMatchingTest extends BaseEditorTest {
  private static final SConcept ourConcept = BootstrapAdapterFactory.getConcept(1, 2, 3, "C");
  private static final SContainmentLink ourRoleA = BootstrapAdapterFactory.getContainmentLink(1, 2, 3, 4, "A");
  private static final SContainmentLink ourRoleB = BootstrapAdapterFactory.getContainmentLink(1, 2, 3, 5, "B");
  private static final SReferenceLink ourRefX = BootstrapAdapterFactory.getReferenceLink(1, 2, 3, 6, "X");
  private static final SReferenceLink ourRefY = BootstrapAdapterFactory.getReferenceLink(1, 2, 3, 7, "Y");
  private static final SProperty ourPropP = BootstrapAdapterFactory.getProperty(1, 2, 3, 8, "p");
  private static final SProperty ourPropQ = BootstrapAdapterFactory.getProperty(1, 2, 3, 9, "q");

  private jetbrains.mps.smodel.SModel myModelData;
  private SModel myModel;
  private SNode myNode;
  private SNode myOther;

  @Before
  public void setUpModel() {
    myModelData = new jetbrains.mps.smodel.SModel(
        new SModelReference(new ModuleReference("M", ModuleId.regular()), SModelId.generate(), "m"));
    myModel = new TrivialModelDescriptor(myModelData);
    myNode = newRoot();
    myOther = newRoot();
  }

  private SNode newRoot() {
    jetbrains.mps.smodel.SNode root = new jetbrains.mps.smodel.SNode(ourConcept);
    myModelData.addRootNode(root);
    return root;
  }

  private SNode addChild(SNode parent, SContainmentLink role) {
    jetbrains.mps.smodel.SNode child = new jetbrains.mps.smodel.SNode(ourConcept);
    parent.addChild(role, child);
    return child;
  }

  private UpdaterImpl updater() {
    return (UpdaterImpl) getEditorComponent().getUpdater();
  }

  /**
   * Builds a cell whose recorded dependencies are whatever {@code reads} reports to the listener, registered exactly as
   * {@code EditorManager.addNodeDependenciesToEditor} registers them.
   */
  private EditorCell cellDependingOn(DependencyRecorder reads) {
    NodeReadAccessInEditorListener listener = new NodeReadAccessInEditorListener();
    reads.record(listener);

    EditorCell cell = new EditorCell_Constant(getEditorContext(), myNode, "stub");
    UpdateSessionImpl session = updater().createUpdateSession(myNode, null);
    session.registerDependencies(cell, listener.getNodesToDependOn(), listener.getRefTargetsToDependOn());
    session.registerChildrenDependencies(cell, listener.getChildrenToDependOn());
    session.registerReferenceDependencies(cell, listener.getReferencesToDependOn());
    session.registerPropertyDependencies(cell, listener.getDirtilyReadAccessedProperties(),
        listener.getExistenceReadAccessProperties());
    return cell;
  }

  private interface DependencyRecorder {
    void record(NodeReadAccessInEditorListener listener);
  }

  /** True if any modification produced by {@code events} would rebuild {@code cell}. */
  private boolean rebuiltBy(EditorCell cell, SModelEvent... events) {
    List<ModelModification> modifications =
        updater().createUpdateSession(myNode, List.of(events)).getModelModifications();
    for (ModelModification modification : modifications) {
      if (updater().isRelated(cell, modification)) {
        return true;
      }
    }
    return false;
  }

  private SModelEvent propertyChanged(SNode node, SProperty property, String from, String to) {
    return new SModelPropertyEvent(myModel, property, node, from, to);
  }

  private SModelEvent childAdded(SNode parent, SContainmentLink role, SNode child) {
    return new SModelChildEvent(myModel, true, parent, role, 0, child);
  }

  private SModelEvent referenceChanged(SNode source, SReferenceLink link, SNode target) {
    source.setReferenceTarget(link, target);
    return new SModelReferenceEvent(myModel, source.getReference(link), true);
  }

  // ---------------------------------------------------------------------------------------------------------------
  // Property dependencies
  // ---------------------------------------------------------------------------------------------------------------

  @Test
  public void aPropertyReadIsRebuiltByAChangeToThatProperty() {
    EditorCell cell = cellDependingOn(l -> l.propertyDirtyReadAccess(myNode, "p"));

    assertTrue(rebuiltBy(cell, propertyChanged(myNode, ourPropP, "old", "new")));
  }

  /** The point of making property dependencies precise: another property of the same node must not rebuild it. */
  @Test
  public void aPropertyReadIsNotRebuiltByAChangeToAnotherProperty() {
    EditorCell cell = cellDependingOn(l -> l.propertyDirtyReadAccess(myNode, "p"));

    assertFalse(rebuiltBy(cell, propertyChanged(myNode, ourPropQ, "old", "new")));
  }

  /** Nor by the same property of a different node. */
  @Test
  public void aPropertyReadIsNotRebuiltByTheSamePropertyOfAnotherNode() {
    EditorCell cell = cellDependingOn(l -> l.propertyDirtyReadAccess(myNode, "p"));

    assertFalse(rebuiltBy(cell, propertyChanged(myOther, ourPropP, "old", "new")));
  }

  /** Nor by a child appearing on the node it read a property of. */
  @Test
  public void aPropertyReadIsNotRebuiltByAChildOfTheSameNode() {
    EditorCell cell = cellDependingOn(l -> l.propertyDirtyReadAccess(myNode, "p"));

    assertFalse(rebuiltBy(cell, childAdded(myNode, ourRoleA, addChild(myNode, ourRoleA))));
  }

  /** An existence check cares only about the property appearing or disappearing, not about its value. */
  @Test
  public void anExistenceCheckIsNotRebuiltByAValueChange() {
    EditorCell cell = cellDependingOn(l -> l.propertyExistenceAccess(myNode, "p"));

    assertFalse(rebuiltBy(cell, propertyChanged(myNode, ourPropP, "old", "new")));
  }

  @Test
  public void anExistenceCheckIsRebuiltWhenThePropertyIsSet() {
    EditorCell cell = cellDependingOn(l -> l.propertyExistenceAccess(myNode, "p"));

    assertTrue(rebuiltBy(cell, propertyChanged(myNode, ourPropP, null, "new")));
  }

  @Test
  public void anExistenceCheckIsRebuiltWhenThePropertyIsCleared() {
    EditorCell cell = cellDependingOn(l -> l.propertyExistenceAccess(myNode, "p"));

    assertTrue(rebuiltBy(cell, propertyChanged(myNode, ourPropP, "old", "")));
  }

  // ---------------------------------------------------------------------------------------------------------------
  // Children dependencies
  // ---------------------------------------------------------------------------------------------------------------

  @Test
  public void aRoleReadIsRebuiltByAChildAppearingInThatRole() {
    EditorCell cell = cellDependingOn(l -> l.childrenReadAccess(myNode, ourRoleA));

    assertTrue(rebuiltBy(cell, childAdded(myNode, ourRoleA, addChild(myNode, ourRoleA))));
  }

  /** The empty-role read this was all built for: filling a role the cell found empty must rebuild it. */
  @Test
  public void anEmptyRoleReadIsRebuiltByTheFirstChildAppearing() {
    EditorCell cell = cellDependingOn(l -> l.childrenReadAccess(myNode, ourRoleA));

    assertTrue("the node had no children in A when the cell was built",
        rebuiltBy(cell, childAdded(myNode, ourRoleA, addChild(myNode, ourRoleA))));
  }

  @Test
  public void aRoleReadIsNotRebuiltByAChildAppearingInAnotherRole() {
    EditorCell cell = cellDependingOn(l -> l.childrenReadAccess(myNode, ourRoleA));

    assertFalse(rebuiltBy(cell, childAdded(myNode, ourRoleB, addChild(myNode, ourRoleB))));
  }

  @Test
  public void aRoleReadIsNotRebuiltByAPropertyOfTheSameNode() {
    EditorCell cell = cellDependingOn(l -> l.childrenReadAccess(myNode, ourRoleA));

    assertFalse(rebuiltBy(cell, propertyChanged(myNode, ourPropP, "old", "new")));
  }

  @Test
  public void aRoleReadIsNotRebuiltByTheSameRoleOfAnotherNode() {
    EditorCell cell = cellDependingOn(l -> l.childrenReadAccess(myNode, ourRoleA));

    assertFalse(rebuiltBy(cell, childAdded(myOther, ourRoleA, addChild(myOther, ourRoleA))));
  }

  /** A null role means "children of any role were read" — getFirstChild/getLastChild — so any role matches it. */
  @Test
  public void aRoleAgnosticReadIsRebuiltByAChildAppearingInAnyRole() {
    EditorCell cell = cellDependingOn(l -> l.childrenReadAccess(myNode, null));

    assertTrue(rebuiltBy(cell, childAdded(myNode, ourRoleB, addChild(myNode, ourRoleB))));
  }

  /** But it is still about children, so a property change must not match it. */
  @Test
  public void aRoleAgnosticReadIsNotRebuiltByAProperty() {
    EditorCell cell = cellDependingOn(l -> l.childrenReadAccess(myNode, null));

    assertFalse(rebuiltBy(cell, propertyChanged(myNode, ourPropP, "old", "new")));
  }

  // ---------------------------------------------------------------------------------------------------------------
  // Reference dependencies
  // ---------------------------------------------------------------------------------------------------------------

  /**
   * The bug that removing EditorManager's whole-node self dependency exposed: a re-pointed reference is reported
   * against the source node, and before references were recorded as (source, link) nothing matched it.
   */
  @Test
  public void aReferenceReadIsRebuiltByThatLinkBeingRePointed() {
    EditorCell cell = cellDependingOn(l -> l.referenceReadAccess(myNode, ourRefX));

    assertTrue(rebuiltBy(cell, referenceChanged(myNode, ourRefX, myOther)));
  }

  @Test
  public void aReferenceReadIsNotRebuiltByAnotherLinkOfTheSameNode() {
    EditorCell cell = cellDependingOn(l -> l.referenceReadAccess(myNode, ourRefX));

    assertFalse(rebuiltBy(cell, referenceChanged(myNode, ourRefY, myOther)));
  }

  @Test
  public void aReferenceReadIsNotRebuiltByAPropertyOfTheSourceNode() {
    EditorCell cell = cellDependingOn(l -> l.referenceReadAccess(myNode, ourRefX));

    assertFalse(rebuiltBy(cell, propertyChanged(myNode, ourPropP, "old", "new")));
  }

  /**
   * The other half of a reference read: the resolved target is depended upon in its own right, so that deleting it
   * rebuilds the reader. Still coarse — any change to the target matches — which is why it is asserted separately
   * from the (source, link) pairing above.
   */
  @Test
  public void aResolvedTargetIsRebuiltByAChangeToTheTarget() {
    EditorCell cell = cellDependingOn(l -> l.addRefTargetToDependOn(myOther.getReference()));

    assertTrue(rebuiltBy(cell, propertyChanged(myOther, ourPropP, "old", "new")));
  }

  // ---------------------------------------------------------------------------------------------------------------
  // Whole-node dependencies — still produced by getParent(), getReferences(), getProperties() and friends
  // ---------------------------------------------------------------------------------------------------------------

  @Test
  public void aWholeNodeDependencyIsRebuiltByAnythingAboutThatNode() {
    EditorCell cell = cellDependingOn(l -> l.nodeUnclassifiedReadAccess(myNode));

    assertTrue("a property", rebuiltBy(cell, propertyChanged(myNode, ourPropP, "old", "new")));
    assertTrue("a child", rebuiltBy(cell, childAdded(myNode, ourRoleA, addChild(myNode, ourRoleA))));
  }

  @Test
  public void aWholeNodeDependencyIsNotRebuiltByAnotherNode() {
    EditorCell cell = cellDependingOn(l -> l.nodeUnclassifiedReadAccess(myNode));

    assertFalse(rebuiltBy(cell, propertyChanged(myOther, ourPropP, "old", "new")));
  }

  // ---------------------------------------------------------------------------------------------------------------
  // A cell that read nothing
  // ---------------------------------------------------------------------------------------------------------------

  /**
   * With EditorManager's self dependency gone, a cell whose builder read nothing depends on nothing and is never
   * rebuilt. That is correct for a constant cell, and is the change that most needs watching: it is only safe because
   * everything a builder can actually read now reports itself.
   */
  @Test
  public void aCellThatReadNothingIsNeverRebuilt() {
    EditorCell cell = cellDependingOn(l -> { });

    assertFalse(rebuiltBy(cell, propertyChanged(myNode, ourPropP, "old", "new")));
    assertFalse(rebuiltBy(cell, childAdded(myNode, ourRoleA, addChild(myNode, ourRoleA))));
  }
}
