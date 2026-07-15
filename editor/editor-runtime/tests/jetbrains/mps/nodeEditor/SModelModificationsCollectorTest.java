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
package jetbrains.mps.nodeEditor;

import jetbrains.mps.project.ModuleId;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.smodel.SModelId;
import jetbrains.mps.smodel.SModelReference;
import jetbrains.mps.smodel.TrivialModelDescriptor;
import jetbrains.mps.smodel.adapter.BootstrapAdapterFactory;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

/**
 * The event-to-modification half of editor dependency matching: what {@code UpdaterImpl.isRelated} gets to compare a
 * cell's recorded dependencies against.
 * <p/>
 * The containment link carried by {@link ModelModification#getChildRole()} is the point of these tests. It used to be
 * discarded here — every event collapsed to a bare (node, reference) pair — which left {@code isRelated} unable to
 * tell "children of role A changed" from "something about this node changed", and so unable to avoid rebuilding cells
 * that had only read role B.
 * <p/>
 * The read-to-dependency half lives in {@code jetbrains.mps.smodel.EditorDependencyRecordingTest}.
 */
public class SModelModificationsCollectorTest {
  private static final SConcept ourConcept = BootstrapAdapterFactory.getConcept(1, 2, 3, "C");
  private static final SContainmentLink ourRoleA = BootstrapAdapterFactory.getContainmentLink(1, 2, 3, 4, "A");
  private static final SContainmentLink ourRoleB = BootstrapAdapterFactory.getContainmentLink(1, 2, 3, 5, "B");
  private static final SProperty ourProperty = BootstrapAdapterFactory.getProperty(1, 2, 3, 6, "p");

  private jetbrains.mps.smodel.SModel myModelData;
  private SModel myModel;

  @Before
  public void setUp() {
    myModelData = new jetbrains.mps.smodel.SModel(
        new SModelReference(new ModuleReference("M", ModuleId.regular()), SModelId.generate(), "m"));
    myModel = new TrivialModelDescriptor(myModelData);
  }

  private SNode newRoot() {
    jetbrains.mps.smodel.SNode root = new jetbrains.mps.smodel.SNode(ourConcept);
    myModelData.addRootNode(root);
    return root;
  }

  private static SNode addChild(SNode parent, SContainmentLink role) {
    jetbrains.mps.smodel.SNode child = new jetbrains.mps.smodel.SNode(ourConcept);
    parent.addChild(role, child);
    return child;
  }

  private List<ModelModification> collect(SModelEvent... events) {
    return new SModelModificationsCollector(List.of(events)).getModifications();
  }

  private static ModelModification forNode(List<ModelModification> modifications, SNode node) {
    for (ModelModification next : modifications) {
      if (next.getNode() == node) {
        return next;
      }
    }
    fail("no modification reported for " + node + " in " + modifications);
    return null;
  }

  /**
   * A child addition reports the role against the parent, so a cell that read that role is invalidated while one that
   * read only a sibling role is not.
   */
  @Test
  public void childAdditionCarriesTheRoleOnTheParent() {
    SNode root = newRoot();
    SNode child = addChild(root, ourRoleA);

    List<ModelModification> modifications = collect(new SModelChildEvent(myModel, true, root, ourRoleA, 0, child));

    assertEquals(2, modifications.size());
    assertSame(ourRoleA, forNode(modifications, root).getChildRole());
  }

  /**
   * The added subtree is reported role-less: those nodes did not have their own children changed, they simply came or
   * went, and a cell that read one of them is matched on the node itself.
   */
  @Test
  public void addedSubtreeIsReportedWithoutARole() {
    SNode root = newRoot();
    SNode child = addChild(root, ourRoleA);
    SNode grandChild = addChild(child, ourRoleB);

    List<ModelModification> modifications = collect(new SModelChildEvent(myModel, true, root, ourRoleA, 0, child));

    assertEquals(3, modifications.size());
    assertSame("the parent's changed role is named", ourRoleA, forNode(modifications, root).getChildRole());
    assertNull("the added child itself has no role change", forNode(modifications, child).getChildRole());
    assertNull("nor does its subtree", forNode(modifications, grandChild).getChildRole());
  }

  /** A removal is reported the same way as an addition — the role's contents changed either way. */
  @Test
  public void childRemovalCarriesTheRoleOnTheParent() {
    SNode root = newRoot();
    SNode child = addChild(root, ourRoleA);

    List<ModelModification> modifications = collect(new SModelChildEvent(myModel, false, root, ourRoleA, 0, child));

    assertSame(ourRoleA, forNode(modifications, root).getChildRole());
  }

  /**
   * Changes to two roles of the same node stay distinct rather than collapsing during de-duplication — otherwise a
   * change to role B could be matched by a dependency on role A.
   */
  @Test
  public void changesToDifferentRolesOfOneNodeAreDistinct() {
    SNode root = newRoot();
    SNode childA = addChild(root, ourRoleA);
    SNode childB = addChild(root, ourRoleB);

    List<ModelModification> modifications = collect(
        new SModelChildEvent(myModel, true, root, ourRoleA, 0, childA),
        new SModelChildEvent(myModel, true, root, ourRoleB, 1, childB));

    long rootModifications = modifications.stream().filter(m -> m.getNode() == root).count();
    assertEquals("one modification per changed role", 2, rootModifications);
    assertTrue(modifications.stream().anyMatch(m -> m.getNode() == root && m.getChildRole() == ourRoleA));
    assertTrue(modifications.stream().anyMatch(m -> m.getNode() == root && m.getChildRole() == ourRoleB));
  }

  /**
   * A property change carries no role: it cannot alter any role's contents, so it must never match a cell's dependency
   * on a containment link. This is what keeps the new matching from over-invalidating.
   */
  @Test
  public void propertyChangeCarriesNoRole() {
    SNode root = newRoot();

    List<ModelModification> modifications =
        collect(new SModelPropertyEvent(myModel, ourProperty, root, "old", "new"));

    assertEquals(1, modifications.size());
    assertNull(forNode(modifications, root).getChildRole());
    assertEquals("p", forNode(modifications, root).getPropertyName());
  }

  /**
   * Changing a value is not adding or removing the property. A cell that merely checked whether the property is set is
   * not affected by this, and {@code UpdaterImpl.isRelated} uses the flag to leave it alone.
   */
  @Test
  public void changingAPropertyValueIsNotAnAddOrRemove() {
    SNode root = newRoot();

    List<ModelModification> modifications =
        collect(new SModelPropertyEvent(myModel, ourProperty, root, "old", "new"));

    assertFalse(forNode(modifications, root).isPropertyAddedRemoved());
  }

  /** Setting a property that was unset is an add, and does affect a cell that checked the property's existence. */
  @Test
  public void settingAnUnsetPropertyIsAnAdd() {
    SNode root = newRoot();

    List<ModelModification> modifications =
        collect(new SModelPropertyEvent(myModel, ourProperty, root, null, "new"));

    assertTrue(forNode(modifications, root).isPropertyAddedRemoved());
  }

  /** And clearing one is a remove. An empty string counts as unset, as per SModelPropertyEvent.isEmptyPropertyValue. */
  @Test
  public void clearingAPropertyIsARemove() {
    SNode root = newRoot();

    List<ModelModification> modifications =
        collect(new SModelPropertyEvent(myModel, ourProperty, root, "old", ""));

    assertTrue(forNode(modifications, root).isPropertyAddedRemoved());
  }

  /**
   * Changes to two properties of one node stay distinct, so a dependency on one is not matched by a change to the
   * other — the property counterpart of {@link #changesToDifferentRolesOfOneNodeAreDistinct}.
   */
  @Test
  public void changesToDifferentPropertiesOfOneNodeAreDistinct() {
    SNode root = newRoot();
    SProperty otherProperty = BootstrapAdapterFactory.getProperty(1, 2, 3, 7, "q");

    List<ModelModification> modifications = collect(
        new SModelPropertyEvent(myModel, ourProperty, root, "old", "new"),
        new SModelPropertyEvent(myModel, otherProperty, root, "old", "new"));

    assertEquals(2, modifications.size());
    assertTrue(modifications.stream().anyMatch(m -> "p".equals(m.getPropertyName())));
    assertTrue(modifications.stream().anyMatch(m -> "q".equals(m.getPropertyName())));
  }

  /** Repeated identical events collapse, as they did when this was a Pair-keyed LinkedHashSet. */
  @Test
  public void identicalEventsAreDeDuplicated() {
    SNode root = newRoot();
    SNode child = addChild(root, ourRoleA);

    List<ModelModification> modifications = collect(
        new SModelChildEvent(myModel, true, root, ourRoleA, 0, child),
        new SModelChildEvent(myModel, true, root, ourRoleA, 0, child));

    assertEquals(2, modifications.size());
  }
}
