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
package jetbrains.mps.smodel;

import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.TestModelFactory.TestModelAccess;
import jetbrains.mps.smodel.TestModelFactory.TestRepository;
import jetbrains.mps.smodel.adapter.BootstrapAdapterFactory;
import jetbrains.mps.util.Pair;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import static jetbrains.mps.smodel.TestModelFactory.ourRef;
import static jetbrains.mps.smodel.TestModelFactory.ourRole;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

/**
 * Pins down <em>which</em> model reads the editor records a dependency on, and at what granularity.
 * <p/>
 * {@link jetbrains.mps.nodeEditor.updater.UpdaterImpl} decides whether an {@code EditorCell} must be rebuilt by
 * intersecting the dependencies recorded here (via {@link NodeReadAccessInEditorListener}) with the nodes touched by a
 * model change. Every over- and under-invalidation of the editor therefore originates in this layer: a dependency that
 * is coarser than the read causes needless rebuilds, one that is missing entirely causes a stale editor.
 * <p/>
 * The contract these pin down is that a read is recorded as the <em>question that was asked</em> — this property of
 * this node, the contents of this role, this link of this node — and never as the node itself. A node carries no
 * information of its own and cannot change; only the ways to it can, and those are changes to some other node's role.
 * A whole-node dependency is therefore always coarser than the read that produced it, and every one that used to be
 * recorded here subsumed a precise dependency sitting right beside it.
 * <p/>
 * Each test names both halves where it matters: what the read now depends on, and what it deliberately does
 * <em>not</em> depend on. The second half is the one that regresses silently — an over-broad dependency only costs
 * time, a missing one leaves the editor showing stale text — so removals are paired with a test proving the
 * dependency survives in its precise form.
 * <p/>
 * Lives in [kernel] rather than [editor-runtime] because the read-notification machinery and {@link TestModelFactory}
 * are here, and because this contract is about model reads, not about cells.
 *
 * @see ModelListenerTest for the read-notification behaviour shared with the typesystem and legacy listeners.
 */
public class EditorDependencyRecordingTest {
  /**
   * A second containment link, to read a role that holds no children on a node that does have children in {@link
   * TestModelFactory#ourRole}. TestModelFactory only ever populates {@code ourRole}.
   */
  private static final SContainmentLink ourEmptyRole = BootstrapAdapterFactory.getContainmentLink(1, 2, 3, 6, "L2");

  private final TestModelAccess myModelAccess = new TestModelAccess();
  private final SRepository myRepo = new TestRepository(myModelAccess);
  private TestModelFactory myFactory;

  /**
   * @param nodesAtLevel children per node at each level, as per {@link TestModelFactory#createModel}. {@code model(1)}
   *                     is a single childless root; {@code model(1, 2)} a single root with two children.
   */
  private SNode singleRoot(int... nodesAtLevel) {
    myFactory = new TestModelFactory();
    myFactory.createModel(nodesAtLevel);
    // Read events are suppressed until the model is attached to a repository (SModel.canFireReadEvent()).
    myModelAccess.enableRead();
    myFactory.attachTo(myRepo);
    return myFactory.getRoot(1);
  }

  /**
   * Records the dependencies the editor would attach to a cell whose builder performed {@code reads}. Mirrors the
   * listener push/pop that {@code EditorManager} performs around a single cell's creation.
   */
  private static Dependencies record(Runnable reads) {
    NodeReadAccessInEditorListener listener = new NodeReadAccessInEditorListener();
    NodeReadAccessCasterInEditor.setCellBuildNodeReadAccessListener(listener);
    try {
      reads.run();
    } finally {
      NodeReadAccessCasterInEditor.removeCellBuildNodeAccessListener();
    }
    return new Dependencies(listener);
  }

  /** What a cell would depend on, split by the granularity at which it was recorded. */
  private static final class Dependencies {
    private final NodeReadAccessInEditorListener myListener;

    private Dependencies(NodeReadAccessInEditorListener listener) {
      myListener = listener;
    }

    /** Whole-node dependencies: any change to such a node rebuilds the cell, whatever was actually read. */
    Set<SNode> nodes() {
      return myListener.getNodesToDependOn();
    }

    /** (node, role) dependencies on the contents of a containment link; a null role means "children of any role". */
    Set<Pair<SNode, SContainmentLink>> children() {
      return myListener.getChildrenToDependOn();
    }

    /** (source node, link) dependencies on a reference link that was read, whether or not it held a reference. */
    Set<Pair<SNode, SReferenceLink>> references() {
      return myListener.getReferencesToDependOn();
    }

    Set<SNodeReference> refTargets() {
      return myListener.getRefTargetsToDependOn();
    }

    Set<String> dirtyPropertyNames() {
      return names(myListener.getDirtilyReadAccessedProperties());
    }

    /** The nodes whose property values were read, however many properties of each. */
    Set<SNodeReference> dirtyPropertyOwners() {
      return myListener.getDirtilyReadAccessedProperties().stream().map(p -> p.o1).collect(Collectors.toSet());
    }

    Set<String> existencePropertyNames() {
      return names(myListener.getExistenceReadAccessProperties());
    }

    /** Destructive, as per {@link NodeReadAccessInEditorListener#popCleanlyReadAccessedProperties()}; call once. */
    Set<String> cleanPropertyNames() {
      return names(myListener.popCleanlyReadAccessedProperties());
    }

    boolean isEmpty() {
      return nodes().isEmpty() && refTargets().isEmpty() && children().isEmpty() && references().isEmpty()
          && dirtyPropertyNames().isEmpty() && existencePropertyNames().isEmpty();
    }

    private static Set<String> names(Set<Pair<SNodeReference, String>> properties) {
      return properties.stream().map(p -> p.o2).collect(Collectors.toSet());
    }
  }

  // ---------------------------------------------------------------------------------------------------------------
  // Children reads
  // ---------------------------------------------------------------------------------------------------------------

  /**
   * Iterating a role depends on the role, and on nothing else. Yielding a child no longer reports it to the editor as
   * a whole-node read, so a cell that walks a list without reading anything <em>of</em> the children is not rebuilt
   * when one of them changes — only when the list's contents change.
   * <p/>
   * Anything the reader goes on to read of a child still registers through the usual property/reference/node paths, so
   * a cell that renders child properties continues to depend on those children.
   */
  @Test
  public void iteratingChildrenDependsOnTheRoleAndNotOnTheChildren() {
    SNode root = singleRoot(1, 2);
    List<SNode> children = new ArrayList<>();

    Dependencies deps = record(() -> SLinkOperations.getChildren(root, ourRole).forEach(children::add));

    assertEquals(2, children.size());
    assertEquals(Set.of(new Pair<>(root, ourRole)), deps.children());
    assertTrue("iterating alone depends on no child wholesale", deps.nodes().isEmpty());
  }

  /**
   * An emptiness check on an empty role depends on (root, ourRole), so adding the first child invalidates the reader.
   * <p/>
   * The per-element notification cannot carry this: it is emitted from {@code ImmutableChildrenList.ChildrenIterator
   * .next()}, whereas {@code isEmpty()} is {@code !childrenIterator().hasNext()} and {@code
   * AbstractSequentialIterator.hasNext()} only tests a field preloaded by the constructor, so {@code next()} is never
   * called. Hence the role dependency is fired eagerly from {@code SNode.getChildren(role)} instead.
   */
  @Test
  public void checkingEmptinessOfEmptyChildrenListDependsOnTheRole() {
    SNode root = singleRoot(1);
    boolean[] empty = new boolean[1];

    Dependencies deps = record(() -> empty[0] = SLinkOperations.getChildren(root, ourRole).isEmpty());

    assertTrue(empty[0]);
    assertEquals(Set.of(new Pair<>(root, ourRole)), deps.children());
    assertTrue("an emptiness check reads no child, so depends on no node wholesale", deps.nodes().isEmpty());
  }

  /**
   * The counterpart to {@link #checkingEmptinessOfEmptyChildrenListDependsOnTheRole}: asking the same question of a
   * populated role records the same dependency and still reads no child wholesale, so emptying the role invalidates the
   * reader while a property change on any child does not.
   */
  @Test
  public void checkingEmptinessOfNonEmptyChildrenListDependsOnTheRoleOnly() {
    SNode root = singleRoot(1, 3);
    boolean[] empty = new boolean[1];

    Dependencies deps = record(() -> empty[0] = SLinkOperations.getChildren(root, ourRole).isEmpty());

    assertFalse(empty[0]);
    assertEquals(Set.of(new Pair<>(root, ourRole)), deps.children());
    assertTrue("an emptiness check depends on no child wholesale", deps.nodes().isEmpty());
  }

  /** The node has children, just none in the role read — the role is still what the reader depends on. */
  @Test
  public void iteratingEmptyRoleOnNodeWithChildrenInAnotherRoleDependsOnThatRole() {
    SNode root = singleRoot(1, 2);
    List<SNode> children = new ArrayList<>();

    Dependencies deps = record(() -> SLinkOperations.getChildren(root, ourEmptyRole).forEach(children::add));

    assertTrue(children.isEmpty());
    assertEquals(Set.of(new Pair<>(root, ourEmptyRole)), deps.children());
    assertTrue("the populated role was not read, so its children are not depended upon", deps.nodes().isEmpty());
  }

  /**
   * {@code getFirstChild()} is role-agnostic, so it depends on children of every role — a child added to any role may
   * become the first. A null role in the pair carries that.
   */
  @Test
  public void readingFirstChildOfChildlessNodeDependsOnChildrenOfAnyRole() {
    SNode root = singleRoot(1);
    SNode[] first = new SNode[1];

    Dependencies deps = record(() -> first[0] = root.getFirstChild());

    assertNull(first[0]);
    assertEquals(Set.of(new Pair<>(root, (SContainmentLink) null)), deps.children());
  }

  /**
   * Asking for the <em>count</em> walks the list, and now depends on the role alone rather than on all three children.
   * This is the read that motivated the whole exercise: the count changes only when the role's contents change, yet it
   * used to be rebuilt by a property change on any single child.
   */
  @Test
  public void countingChildrenDependsOnTheRoleAndNotOnTheChildren() {
    SNode root = singleRoot(1, 3);
    int[] size = new int[1];

    Dependencies deps = record(() -> size[0] = SLinkOperations.getChildren(root, ourRole).size());

    assertEquals(3, size[0]);
    assertEquals(Set.of(new Pair<>(root, ourRole)), deps.children());
    assertTrue("a count depends on no child wholesale", deps.nodes().isEmpty());
  }

  /**
   * The safety property behind {@link #iteratingChildrenDependsOnTheRoleAndNotOnTheChildren} and
   * {@link #readingPropertyDependsOnThatPropertyOnly} together: dropping both the per-element read and the whole-node
   * dependency on a property read does not lose the dependency on a child the reader actually looked at. It survives
   * as the precise (child, property) pair. Without this, a cell rendering child names would go stale when a name
   * changed.
   */
  @Test
  public void readingAPropertyOfAnIteratedChildDependsOnThatChildsProperty() {
    SNode root = singleRoot(1, 2);
    List<SNode> children = new ArrayList<>();

    Dependencies deps = record(() -> SLinkOperations.getChildren(root, ourRole).forEach(child -> {
      children.add(child);
      child.getProperty(SNodeUtil.property_INamedConcept_name);
    }));

    assertEquals(2, children.size());
    assertEquals(Set.of(new Pair<>(root, ourRole)), deps.children());
    Set<SNodeReference> expectedOwners = children.stream().map(SNode::getReference).collect(Collectors.toSet());
    assertEquals("each child whose name was read is depended upon, by that property", expectedOwners,
        deps.dirtyPropertyOwners());
    assertTrue("but none of them wholesale", deps.nodes().isEmpty());
  }

  /**
   * The role dependency is recorded on first <em>use</em> of the list, not on obtaining it: {@code
   * SLinkOperations.getChildren} hands back a lazy {@code MutableChildrenList} that does not reach the model until
   * something asks it for elements or a size, at which point it delegates to {@code SNode.getChildren(role)}. Merely
   * holding the list therefore depends on nothing, which is correct — but it does mean a builder that stashes the list
   * and iterates it outside its own cell scope, or under {@code runReadTransparentAction}, still records nothing.
   */
  @Test
  public void obtainingChildrenListWithoutUsingItRecordsNoDependency() {
    SNode root = singleRoot(1, 2);

    Dependencies deps = record(() -> SLinkOperations.getChildren(root, ourRole));

    assertTrue(deps.isEmpty());
  }

  // ---------------------------------------------------------------------------------------------------------------
  // Reference reads — the contrast that makes the children behaviour an inconsistency rather than a design choice
  // ---------------------------------------------------------------------------------------------------------------

  /**
   * {@code getReferences()} notifies eagerly on the node itself, before walking its references, so reading an empty
   * reference list still records a dependency and adding a reference later does invalidate. This is precisely what
   * {@code getChildren()} does not do — same question, opposite answer.
   */
  @Test
  public void readingEmptyReferenceListRecordsSelfDependency() {
    SNode root = singleRoot(1);

    Dependencies deps = record(root::getReferences);

    assertTrue("empty reference read still depends on the node", deps.nodes().contains(root));
  }

  // ---------------------------------------------------------------------------------------------------------------
  // Reference reads
  // ---------------------------------------------------------------------------------------------------------------

  /**
   * Resolving a reference records two dependencies, and the first of them used to be missing entirely.
   * <p/>
   * (source, link) is what a re-pointed reference invalidates: SModelReferenceEvent is reported against the source
   * node, and nothing recorded on a reference read matched it — the reader was kept correct only by the whole-node
   * self dependency EditorManager added to every cell. Removing that self dependency without this would leave a cell
   * showing a reference target stale when the reference was re-pointed.
   * <p/>
   * The target is depended upon separately, so that deleting it rebuilds the reader too. That one is still coarse.
   */
  @Test
  public void resolvingAReferenceDependsOnTheSourcesLinkAndOnTheTarget() {
    myFactory = new TestModelFactory();
    myFactory.createModel(2);
    SNode source = myFactory.getRoot(1);
    SNode target = myFactory.getRoot(2);
    source.setReferenceTarget(ourRef, target);
    myModelAccess.enableRead();
    myFactory.attachTo(myRepo);

    Dependencies deps = record(() -> source.getReferenceTarget(ourRef));

    assertEquals("re-pointing the link is reported against the source, so that is what the reader depends on",
        Set.of(new Pair<>(source, ourRef)), deps.references());
    assertTrue("deleting the target must rebuild the reader too", deps.refTargets().contains(target.getReference()));
  }

  /**
   * The counterpart to {@link #checkingEmptinessOfEmptyChildrenListDependsOnTheRole}, for references: reading a link
   * that holds nothing depends on (source, link), so setting the reference for the first time invalidates the reader.
   * <p/>
   * This is the read the (source, link) dependency could not be recorded for while it was fired from {@code
   * StaticReference.getTargetNode()}: with the link empty there is no SReference to fire it, {@code
   * SNode.getReferenceTarget()} returned null straight away, and nothing was recorded at all. Setting the reference
   * then matched no cell — an unset reference was the one case the removed whole-node self dependency was still
   * covering. Re-pointing and clearing a reference were never affected, as those reads do resolve.
   */
  @Test
  public void readingAnUnsetReferenceDependsOnTheSourcesLink() {
    SNode root = singleRoot(1);
    SNode[] target = new SNode[1];

    Dependencies deps = record(() -> target[0] = root.getReferenceTarget(ourRef));

    assertNull(target[0]);
    assertEquals("setting the link must rebuild the reader", Set.of(new Pair<>(root, ourRef)), deps.references());
    assertTrue("nothing resolved, so no target is depended upon", deps.refTargets().isEmpty());
    assertTrue("an unset reference read records no whole-node dependency", deps.nodes().isEmpty());
  }

  /**
   * The same via {@code getReference()}, which hands back the SReference rather than resolving it. It asks the same
   * question of the same link and so records the same dependency, set or unset — but never a target one, as it does
   * not resolve.
   */
  @Test
  public void readingTheReferenceObjectDependsOnTheSourcesLinkOnly() {
    myFactory = new TestModelFactory();
    myFactory.createModel(2);
    SNode source = myFactory.getRoot(1);
    source.setReferenceTarget(ourRef, myFactory.getRoot(2));
    myModelAccess.enableRead();
    myFactory.attachTo(myRepo);

    Dependencies deps = record(() -> source.getReference(ourRef));

    assertEquals(Set.of(new Pair<>(source, ourRef)), deps.references());
    assertTrue("the reference was not resolved, so its target was not read", deps.refTargets().isEmpty());
    assertTrue(deps.nodes().isEmpty());
  }

  // ---------------------------------------------------------------------------------------------------------------
  // Property reads
  // ---------------------------------------------------------------------------------------------------------------

  /**
   * A property read depends on that property, and on nothing else. It used to record a whole-node dependency alongside
   * the (node, property) pair, which subsumed it — so a cell reading only {@code name} was rebuilt by a change to any
   * other property, any child, or any reference of the node.
   */
  @Test
  public void readingPropertyDependsOnThatPropertyOnly() {
    SNode root = singleRoot(1);

    Dependencies deps = record(() -> root.getProperty(SNodeUtil.property_INamedConcept_name));

    assertEquals(Set.of("name"), deps.dirtyPropertyNames());
    assertTrue("a property read records no whole-node dependency", deps.nodes().isEmpty());
  }

  /** As {@link #readingPropertyDependsOnThatPropertyOnly}, via the existence-check path. */
  @Test
  public void checkingPropertyExistenceDependsOnThatPropertyOnly() {
    SNode root = singleRoot(1);

    Dependencies deps = record(() -> root.hasProperty(SNodeUtil.property_INamedConcept_name));

    assertEquals(Set.of("name"), deps.existencePropertyNames());
    assertTrue("an existence check records no whole-node dependency", deps.nodes().isEmpty());
  }

  /**
   * The read that was already fine-grained, and the shape the two above have now taken: a clean property access records
   * the (node, property) pair only, with no whole-node dependency.
   */
  @Test
  public void cleanPropertyReadRecordsPreciseDependencyOnly() {
    SNode root = singleRoot(1);

    Dependencies deps = record(() -> NodeReadAccessCasterInEditor.runCleanPropertyAccessAction(
        () -> root.getProperty(SNodeUtil.property_INamedConcept_name)));

    assertEquals(Set.of("name"), deps.cleanPropertyNames());
    assertTrue("clean read records no whole-node dependency", deps.nodes().isEmpty());
    assertTrue(deps.dirtyPropertyNames().isEmpty());
  }
}
