/*
 * Copyright 2003-2025 JetBrains s.r.o.
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

import jetbrains.mps.smodel.TestModelFactory.TestModelAccess;
import jetbrains.mps.smodel.TestModelFactory.TestRepository;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import jetbrains.mps.smodel.event.SModelReferenceEvent;
import jetbrains.mps.smodel.event.SModelRootEvent;
import jetbrains.mps.util.IterableUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.event.SNodeAddEvent;
import org.jetbrains.mps.openapi.event.SNodeReadEvent;
import org.jetbrains.mps.openapi.event.SNodeRemoveEvent;
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent;
import org.jetbrains.mps.openapi.event.SPropertyReadEvent;
import org.jetbrains.mps.openapi.event.SReferenceChangeEvent;
import org.jetbrains.mps.openapi.event.SReferenceReadEvent;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessListener;
import org.jetbrains.mps.openapi.model.SNodeChangeListener;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.junit.Assert;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ErrorCollector;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import static jetbrains.mps.smodel.TestModelFactory.ourConcept;
import static jetbrains.mps.smodel.TestModelFactory.ourRef;
import static jetbrains.mps.smodel.TestModelFactory.ourRole;
import static org.hamcrest.CoreMatchers.equalTo;
import static org.hamcrest.CoreMatchers.notNullValue;

/**
 * Check contemporary and legacy model listener approaches, ensure they (not) get notified as expected.
 * Contemporary listeners are checked indirectly, by means of legacy listeners being registered. Internally, we
 * use only new listeners, and thus ensure we check both functionality of new listeners and compatibility with legacy code.
 *
 * Lives in [kernel] module for now as its dependencies are here, and not in [smodel]
 *
 * @author Artem Tikhomirov
 */
public class ModelListenerTest {
  @Rule
  public ErrorCollector myErrors = new ErrorCollector();

  private final TestModelAccess myTestModelAccess = new TestModelAccess();
  private final SRepository myTestRepo = new TestRepository(myTestModelAccess);


  /**
   * Check all three model notification approaches work.
   */
  @Test
  public void testNodeReadNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 5, 2, 3);
    final int actualNodes = m1f.countModelNodes();
    // Counted here rather than at the point of use: getRootNodes() dispatches a read per root, which would land on the
    // listeners under test.
    final int rootNodes = m1f.countRootNodes();

    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    m1f.attachAccessListeners(cl1, cl2, cl3);

    readTreeNodes(m1.getRootNodes());

    Assert.assertEquals(actualNodes * 3, cl1.myVisitedNodes);
    Assert.assertEquals(actualNodes, cl1.myPropertiesRead);
    Assert.assertEquals(0, cl1.myReferencesRead);

    // NodeReadEventsCaster doesn't send events unless model.canFireEvent is true (which is false
    // as long SModel is not in a repository (!SNodeOperations.isRegistered(myModelDescriptor))
    Assert.assertEquals(0, cl2.myVisitedNodes);
    Assert.assertEquals(0, cl2.myPropertiesRead);
    Assert.assertEquals(0, cl2.myReferencesRead);
    Assert.assertEquals(0, cl2.myChildrenRead);

    // No notifications for NodeReadAccessCasterInEditor as well
    Assert.assertEquals(0, cl3.myVisitedNodes);
    Assert.assertEquals(0, cl3.myPropertiesRead);
    Assert.assertEquals(0, cl3.myReferencesRead);


    // do the same, with the model attached to a repository
    cl1.reset();
    cl2.reset();
    cl3.reset();
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    // readTreeNodes notifies 1 read per iteration over child, +1 for getProperties, +1 for getReferences()
    readTreeNodes(m1.getRootNodes());
    final int expectedNodeReadCount = actualNodes * 3;
    //
    // SModelAccessListener
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(expectedNodeReadCount));
    myErrors.checkThat(cl1.myPropertiesRead, equalTo(actualNodes));
    myErrors.checkThat(cl1.myReferencesRead, equalTo(0));
    //
    // NodeReadEventsCaster
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(expectedNodeReadCount));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(cl1.myVisitedNodes));
    myErrors.checkThat(cl2.myPropertiesRead, equalTo(actualNodes));
    myErrors.checkThat(cl2.myReferencesRead, equalTo(0));
    myErrors.checkThat("NodeReadEventsCaster.fireNodeChildReadAccess is never used", cl2.myChildrenRead, equalTo(0));
    //
    // NodeReadAccessCasterInEditor
    //
    // The editor is not told about a child yielded by iterating a children list; it is told which containment role was
    // read instead (AttachedNodeOwner.fireIteratedChildRead). So it sees one read fewer per node reached that way,
    // which is every node but the roots — those come from getRootNodes(), not from a children list.
    // The other two listeners still get the per-element read and so keep the counts asserted above.
    final int iteratedChildren = actualNodes - rootNodes;
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(expectedNodeReadCount - iteratedChildren));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(cl1.myVisitedNodes - iteratedChildren));
    // readTreeNodes() calls getChildren() once per node.
    myErrors.checkThat(cl3.myChildrenRead, equalTo(actualNodes));
    myErrors.checkThat(cl3.myPropertiesRead, equalTo(actualNodes));
    myErrors.checkThat(cl3.myReferencesRead, equalTo(0));

    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * Single child iterated over with getChildren() shall dispatch node read event, see https://youtrack.jetbrains.com/issue/MPS-18766
   * The problem was due to iterator not dispatching nodeRead for the element iterator was initialized with.
   */
  @Test
  public void testSingleChildIteratorNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    final SModel m1 = m1f.createModel(1, 1, 1);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    final SNode r1 = m1f.getRoot(1);
    m1f.attachAccessListeners(cl1, cl2, cl3);
    final SNode n1 = r1.getChildren().iterator().next();
    Assert.assertNotNull(n1);
    // FIXME make sure we've got notification exactly for the node we're interested in (i.e. child of a root)
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(1));
    // The editor is told which role was read rather than which child came back — see AccessCountListener3 and
    // AttachedNodeOwner.fireIteratedChildRead. The MPS-18766 guarantee this test exists for (the element the iterator
    // was constructed with must not be skipped) is still asserted for the two listeners that consume per-element reads.
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myChildrenRead, equalTo(1));
    cl1.reset(); cl2.reset(); cl3.reset();
    final SNode n2 = r1.getChildren(ourRole).iterator().next();
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myChildrenRead, equalTo(1));
    m1f.detachAccessListeners(cl1, cl2, cl3);
    Assert.assertNotNull(n2);
    Assert.assertEquals(n1, n2);
  }

  /**
   * Capture state of node read notifications as we iterate children of a given role.
   */
  @Test
  public void testChildrenNextNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    final SModel m1 = m1f.createModel(1, 3, 1);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    final SNode r1 = m1f.getRoot(1);
    // getChildren(role) is the one to check, as ChildrenIterator#doNext(node) calls for node.getContainmentLink(), which triggers another nodeRead
    final Iterator<? extends SNode> childIterator = r1.getChildren(ourRole).iterator();
    m1f.attachAccessListeners(cl1, cl2, cl3);
    final SNode n1 = childIterator.next();
    final SNode n2 = childIterator.next();
    final SNode n3 = childIterator.next();
    m1f.detachAccessListeners(cl1, cl2, cl3);
    Assert.assertNotNull(n1);
    Assert.assertNotNull(n2);
    Assert.assertNotNull(n3);
    // 3 for each node + 2 for doNext(node) calls
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(3));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(3));
    // The editor gets no per-element read (AttachedNodeOwner.fireIteratedChildRead), and no role read either: the
    // getChildren(role) call that would report it happened before the listeners were attached.
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myChildrenRead, equalTo(0));
  }

  /**
   * Explicitly state convention whether node.children.isEmpty/isNotEmpty which ends up with children.iterator.hasNext() shall
   * trigger model read event for the first child.
   */
  @Test
  public void testChildrenHasNextNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    final TestModelFactory m2f = new TestModelFactory();
    final SModel m1 = m1f.createModel(1, 1);
    final SModel m2 = m2f.createModel(1, 3);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    m2f.attachTo(myTestRepo);

    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    //
    // collection{single element}.hasNext
    final SNode r1 = m1f.getRoot(1);
    m1f.attachAccessListeners(cl1, cl2, cl3);
    Assert.assertTrue(r1.getChildren().iterator().hasNext());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    cl1.reset(); cl2.reset(); cl3.reset();
    // just in case accessor with role is different
    Assert.assertTrue(r1.getChildren(ourRole).iterator().hasNext());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    m1f.detachAccessListeners(cl1, cl2, cl3);
    //
    // collection{multiple elements}.hasNext
    cl1.reset(); cl2.reset(); cl3.reset();
    final SNode r2 = m2f.getRoot(1);
    m2f.attachAccessListeners(cl1, cl2, cl3);
    Assert.assertTrue(r2.getChildren().iterator().hasNext());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    cl1.reset(); cl2.reset(); cl3.reset();
    Assert.assertTrue(r2.getChildren(ourRole).iterator().hasNext());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    m2f.detachAccessListeners(cl1, cl2, cl3);

    //
    // collection{empty}.hasNext
    cl1.reset(); cl2.reset(); cl3.reset();
    final SNode n1 = r1.getChildren(ourRole).iterator().next();
    // n1 is leaf node
    m1f.attachAccessListeners(cl1, cl2, cl3);
    Assert.assertFalse(n1.getChildren().iterator().hasNext());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    cl1.reset(); cl2.reset(); cl3.reset();
    Assert.assertFalse(n1.getChildren(ourRole).iterator().hasNext());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * Read notifications of SNode.getProperty() and SNode.hasProperty()
   */
  @Test
  public void testPropertyReadNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 5);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    final SNode r1 = m1f.getRoot(1);
    m1f.attachAccessListeners(cl1, cl2, cl3);
    //
    // hasProperty
    boolean shouldHave = r1.hasProperty(SNodeUtil.property_INamedConcept_name);
    myErrors.checkThat(shouldHave, equalTo(true));
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    // propertyExistenceAccess() used to dispatch unclassifiedNodeRead on top of recording the (node, property) pair,
    // which subsumed it: checking one property made the reader depend on the whole node. The pair below is the whole
    // of the dependency now.
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl1.myPropertiesRead, equalTo(1));
    myErrors.checkThat(cl2.myPropertiesRead, equalTo(1));
    myErrors.checkThat(cl3.myPropertiesRead, equalTo(0));
    myErrors.checkThat(cl3.getExistenceReadAccessProperties().size(), equalTo(1));
    //
    // getProperty
    cl1.reset(); cl2.reset(); cl3.reset(); cl3.getExistenceReadAccessProperties().clear();
    r1.getProperty(SNodeUtil.property_INamedConcept_name);
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl1.myPropertiesRead, equalTo(1));
    myErrors.checkThat(cl2.myPropertiesRead, equalTo(1));
    myErrors.checkThat(cl3.myPropertiesRead, equalTo(1));
    myErrors.checkThat(cl3.getExistenceReadAccessProperties().size(), equalTo(0));
    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * Read notifications of SNode.getReference() and SNode.getReferenceTarget()
   */
  @Test
  public void testReferenceReadNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 5);
    final SNode r1 = m1f.getRoot(1);
    final SNode r2c1 = m1f.getRoot(2).getFirstChild();
    r1.setReferenceTarget(ourRef, r2c1);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    //
    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    m1f.attachAccessListeners(cl1, cl2, cl3);
    //
    // getReference()
    final SReference ref1 = r1.getReference(ourRef);
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl1.myReferencesRead, equalTo(1));
    myErrors.checkThat(cl2.myReferencesRead, equalTo(1));
    // no NodeEditorCasterInEditor update, it is notified from StaticReference#getTargetNode_internal
    myErrors.checkThat(cl3.myReferencesRead, equalTo(0));
    myErrors.checkThat(ref1.getTargetNode(), equalTo(r2c1));
    //
    // getReferenceTarget()
    cl1.reset(); cl2.reset(); cl3.reset();
    final SNode t = r1.getReferenceTarget(ourRef);
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(1)); // 1 for target node
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(1)); // StaticReference.getTargetNode_internal
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(1)); // StaticReference.getTargetNode_internal
    myErrors.checkThat(cl1.myReferencesRead, equalTo(1));
    myErrors.checkThat(cl2.myReferencesRead, equalTo(1));
    myErrors.checkThat(cl3.myReferencesRead, equalTo(0)); // see getReference() part, above
    myErrors.checkThat(t, equalTo(r2c1));
    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * Test notifications around add/remove of a child node
   *
   * FWIW, might be interesting to look at node read notifications - SModel.fireChildRemovedEvent() does an
   * extra children walk (to find out index of anchor), thus triggering superfluous node read notifications
   */
  @Test
  public void testNodeAddRemoveNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 2);
    myTestModelAccess.enterCommand();
    m1f.attachTo(myTestRepo);
    final SNode r1 = m1f.getRoot(1);
    final SNode c = m1f.createNode();

    ChangeListener1 cl1 = new ChangeListener1();
    ChangeListener2 cl2 = new ChangeListener2();
    m1f.attachChangeListeners(cl1, cl2);
    r1.addChild(ourRole, c);
    myErrors.checkThat(cl1.myAdded.size(), equalTo(1));
    myErrors.checkThat(cl2.myAdded.size(), equalTo(1));
    myErrors.checkThat(cl1.myAdded.contains(c), equalTo(true));
    myErrors.checkThat(cl2.myAdded.contains(c), equalTo(true));
    myErrors.checkThat(m1f.isEditableChanged(), equalTo(true));
    //
    cl1.reset(); cl2.reset();
    m1f.clearEditableChanged();
    r1.removeChild(c);
    myErrors.checkThat(cl1.myRemoved.size(), equalTo(1));
    myErrors.checkThat(cl1.myBeforeRemoved.size(), equalTo(1));
    myErrors.checkThat(cl2.myRemoved.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemoved.contains(c), equalTo(true));
    myErrors.checkThat(cl1.myBeforeRemoved.contains(c), equalTo(true));
    myErrors.checkThat(cl2.myRemoved.contains(c), equalTo(true));
    myErrors.checkThat(m1f.isEditableChanged(), equalTo(true));
    //
    cl1.reset(); cl2.reset();
    final SNode anchor = r1.getFirstChild();
    m1f.clearEditableChanged();
    r1.insertChildBefore(ourRole, c, anchor);
    myErrors.checkThat(c.getNextSibling(), equalTo(anchor));
    myErrors.checkThat(cl1.myAdded.size(), equalTo(1));
    myErrors.checkThat(cl2.myAdded.size(), equalTo(1));
    myErrors.checkThat(cl1.myAdded.contains(c), equalTo(true));
    myErrors.checkThat(cl2.myAdded.contains(c), equalTo(true));
    myErrors.checkThat(m1f.isEditableChanged(), equalTo(true));
    m1f.detachChangeListeners(cl1, cl2);
  }

  /**
   * addRootNode/removeRootNode used to dispatch events and update setChanged
   * in a way different from add/remove of an ordinary node
   */
  @Test
  public void testRootAddRemoveNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(2, 2);
    myTestModelAccess.enterCommand();
    m1f.attachTo(myTestRepo);
    final SNode c = m1f.createNode();
    ChangeListener1 cl1 = new ChangeListener1();
    ChangeListener2 cl2 = new ChangeListener2();
    m1f.attachChangeListeners(cl1, cl2);
    //
    m1.addRootNode(c);
    myErrors.checkThat(cl1.myAddedRoots.size(), equalTo(1));
    myErrors.checkThat(cl2.myAdded.size(), equalTo(1));
    myErrors.checkThat(cl1.myAddedRoots.contains(c), equalTo(true));
    myErrors.checkThat(cl2.myAdded.contains(c), equalTo(true));
    myErrors.checkThat(IterableUtil.asCollection(m1.getRootNodes()).size(), equalTo(3));
    myErrors.checkThat(m1f.isEditableChanged(), equalTo(true));
    //
    cl1.reset(); cl2.reset();
    m1f.clearEditableChanged();
    m1.removeRootNode(c);
    myErrors.checkThat(cl1.myRemovedRoots.size(), equalTo(1));
    myErrors.checkThat(cl1.myBeforeRemovedRoots.size(), equalTo(1));
    myErrors.checkThat(cl2.myRemoved.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemovedRoots.contains(c), equalTo(true));
    myErrors.checkThat(cl1.myBeforeRemovedRoots.contains(c), equalTo(true));
    myErrors.checkThat(cl2.myRemoved.contains(c), equalTo(true));
    myErrors.checkThat(IterableUtil.asCollection(m1.getRootNodes()).size(), equalTo(2));
    myErrors.checkThat(m1f.isEditableChanged(), equalTo(true));
    //
    // use SNode.delete
    m1.addRootNode(c);
    Assert.assertEquals(3, IterableUtil.asCollection(m1.getRootNodes()).size());
    cl1.reset(); cl2.reset();
    m1f.clearEditableChanged();
    c.delete();
    myErrors.checkThat(cl1.myRemovedRoots.size(), equalTo(1));
    myErrors.checkThat(cl1.myBeforeRemovedRoots.size(), equalTo(1));
    myErrors.checkThat(cl2.myRemoved.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemovedRoots.contains(c), equalTo(true));
    myErrors.checkThat(cl1.myBeforeRemovedRoots.contains(c), equalTo(true));
    myErrors.checkThat(cl2.myRemoved.contains(c), equalTo(true));
    myErrors.checkThat(IterableUtil.asCollection(m1.getRootNodes()).size(), equalTo(2));
    myErrors.checkThat(m1f.isEditableChanged(), equalTo(true));
    m1f.detachChangeListeners(cl1, cl2);
  }

  @Test
  public void testPropertyChangeNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 2);
    myTestModelAccess.enterCommand();
    m1f.attachTo(myTestRepo);
    final SNode r1 = m1f.getRoot(1);

    ChangeListener1 cl1 = new ChangeListener1();
    ChangeListener2 cl2 = new ChangeListener2();
    m1f.attachChangeListeners(cl1, cl2);
    final String newValue = "XXX";
    r1.setProperty(SNodeUtil.property_INamedConcept_name, newValue);
    m1f.detachChangeListeners(cl1, cl2);
    Assert.assertEquals(newValue, r1.getProperty(SNodeUtil.property_INamedConcept_name));
    myErrors.checkThat(cl1.myChangedProperties.size(), equalTo(1));
    myErrors.checkThat(cl1.myChangedProperties.contains(SNodeUtil.property_INamedConcept_name.getName()), equalTo(true));
    myErrors.checkThat(cl2.myChangedProperties.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedProperties.contains(SNodeUtil.property_INamedConcept_name.getName()), equalTo(true));
  }

  @Test
  public void testReferenceChangeNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 2);
    final SNode r1 = m1f.getRoot(1);
    final SNode r2c1 = m1f.getRoot(2).getFirstChild();
    final SNode r3c2 = m1f.getRoot(3).getFirstChild().getNextSibling();
    myTestModelAccess.enterCommand();
    m1f.attachTo(myTestRepo);

    ChangeListener1 cl1 = new ChangeListener1();
    ChangeListener2 cl2 = new ChangeListener2();
    m1f.attachChangeListeners(cl1, cl2);
    // create, with setReferenceTarget()
    r1.setReferenceTarget(ourRef, r2c1);
    myErrors.checkThat(cl1.myAddedRef.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemovedRef.size(), equalTo(0));
    myErrors.checkThat(cl2.myChangedReferences.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.contains(ourRef.getName()), equalTo(true));
    // create, with setReference()
    cl1.reset(); cl2.reset();
    r2c1.setReference(ourRef, r3c2.getReference());
    myErrors.checkThat(cl1.myAddedRef.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemovedRef.size(), equalTo(0));
    myErrors.checkThat(cl2.myChangedReferences.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.contains(ourRef.getName()), equalTo(true));
    // change, with setReference
    cl1.reset(); cl2.reset();
    r1.setReference(ourRef, r3c2.getReference());
    myErrors.checkThat(cl1.myAddedRef.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemovedRef.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.contains(ourRef.getName()), equalTo(true));
    // change, with setReferenceTarget
    cl1.reset(); cl2.reset();
    r2c1.setReferenceTarget(ourRef, r1);
    myErrors.checkThat(cl1.myAddedRef.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemovedRef.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.contains(ourRef.getName()), equalTo(true));
    // delete, with setReference()
    cl1.reset(); cl2.reset();
    r2c1.dropReference(ourRef);
    myErrors.checkThat(cl1.myAddedRef.size(), equalTo(0));
    myErrors.checkThat(cl1.myRemovedRef.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.contains(ourRef.getName()), equalTo(true));
    // delete, with setReferenceTarget()
    cl1.reset(); cl2.reset();
    r1.setReferenceTarget(ourRef, null);
    myErrors.checkThat(cl1.myAddedRef.size(), equalTo(0));
    myErrors.checkThat(cl1.myRemovedRef.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.contains(ourRef.getName()), equalTo(true));
    m1f.detachChangeListeners(cl1, cl2);
  }

  /**
   * Explicitly state convention that access to node's meta-model or auxiliary features doesn't trigger read events
   * {@link org.jetbrains.mps.openapi.model.SNode#getConcept()},
   * {@link org.jetbrains.mps.openapi.model.SNode#getContainmentLink()}
   * {@link org.jetbrains.mps.openapi.model.SNode#getReference()}}
   * {@link org.jetbrains.mps.openapi.model.SNode#getNodeId()}
   * {@link org.jetbrains.mps.openapi.model.SNode#toString()}}
   *
   * FIXME what about read notifications from getName() and getPresentation()?
   */
  @Test
  public void testNoReadNotifyForMeta() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 2);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    final SNode r1 = m1f.getRoot(1);
    final SNode r1c1 = r1.getFirstChild();
    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    m1f.attachAccessListeners(cl1, cl2, cl3);
    //
    // getConcept()
    SConcept c = r1.getConcept();
    myErrors.checkThat(c, equalTo(ourConcept));
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    //
    // SNodePointer:getReference()
    cl1.reset(); cl2.reset(); cl3.reset();
    final SNodeReference ptr = r1.getReference();
    myErrors.checkThat(ptr, notNullValue());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    //
    // getContainmentLink()
    cl1.reset(); cl2.reset(); cl3.reset();
    final SContainmentLink roleInParent = r1c1.getContainmentLink();
    myErrors.checkThat(roleInParent, equalTo(ourRole));
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    //
    // getNodeId()
    cl1.reset(); cl2.reset(); cl3.reset();
    SNodeId nid = r1c1.getNodeId();
    myErrors.checkThat(nid, notNullValue());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    //
    // toString()
    cl1.reset(); cl2.reset(); cl3.reset();
    String presentation = r1c1.toString();
    myErrors.checkThat(presentation, notNullValue());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * Node could get attached to a repository in two cases - when a repository is available
   * the moment node is added to model, and another case is when model got attached to a repository
   * later and nodes get to know their repository the moment they are accessed from the model.
   *
   * There's a flaw in the second scenario:
   * Node is attached to a repository, and its children are attached the moment we iterate over them.
   * However, if we get a non-root node from a model by id, and then obtain its parent, the parent node
   * won't be attached to a repository.
   *
   * I use ModelAccess.disableRead() here just to discover the fact SNode.myRepository field is null. Indeed,
   * real code won't mess with non-read model activities.
   */
  @Test
  public void testNodeHierarchyAttach() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 2);
    final SNodeId r2c1 = m1f.getRoot(2).getFirstChild().getNodeId();
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    final SNode notRoot = m1.getNode(r2c1);
    // [sanity] - check that disabled read indeed triggers IMAE
    myTestModelAccess.disableRead();
    boolean gotAccessError = false;
    try {
      notRoot.getProperty(SNodeUtil.property_INamedConcept_name);
    } catch (IllegalModelAccessError e) {
      // expected, ignored
      gotAccessError = true;
    }
    Assert.assertTrue("Model belongs to a repository, SNode.getProperty without read access shall fail", gotAccessError);
    myTestModelAccess.enableRead();
    SNode parent = notRoot.getParent();
    myTestModelAccess.disableRead();
    try {
      parent.getProperty(SNodeUtil.property_INamedConcept_name);
      Assert.fail("getParent() for a node, which is obtained through model.getNodeId(), shall get SRepository and fully-functional checkModelRead");
    } catch (IllegalModelAccessError e) {
      // expected, ignored
    }
  }

  /**
   * SNode.getNextSibling() and getPrevSibling() shall dispatch read notification for node's parent
   * and for the sibling node.
   * Reason to dispatch parent read is that sibling change (change in result of node.getSibling())
   * occurs through change in parent (i.e. addition/removal of a node)
   *
   * Reason to dispatch sibling read is that we notify node read on first access to node, and do not notify node read
   * or property/reference access.
   */
  @Test
  public void testSiblingReadNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(2, 3);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    final SNode r1 = m1f.getRoot(1);
    final SNode r1c1 = r1.getFirstChild();
    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    m1f.attachAccessListeners(cl1, cl2, cl3);
    final SNode r1c2 = r1c1.getNextSibling();
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(2));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(2));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(2));

    cl1.reset(); cl2.reset(); cl3.reset();
    final SNode ps = r1c2.getPrevSibling();
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(2));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(2));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(2));
    Assert.assertSame(r1c1, ps);

    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * Capture read notifications of
   * {@link SModel#getNode(org.jetbrains.mps.openapi.model.SNodeId)},
   * {@link org.jetbrains.mps.openapi.model.SNode#getParent()}
   */
  @Test
  public void testReadNotifyOther() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(2, 3, 2);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    final SNode r1 = m1f.getRoot(1);
    final SNode r1c2 = r1.getFirstChild().getNextSibling();
    final SNodeId r1c2c1 = r1c2.getFirstChild().getNodeId();

    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    m1f.attachAccessListeners(cl1, cl2, cl3);

    SNode n = m1.getNode(r1c2c1);
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(1));
    Assert.assertNotNull(n);
    Assert.assertSame(r1c2c1, n.getNodeId());

    cl1.reset(); cl2.reset(); cl3.reset();
    SNode p = n.getParent();
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(1));
    Assert.assertSame(r1c2, p);

    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * {@link org.jetbrains.mps.openapi.model.SNodeChangeListener} shall dispatch events for unregistered models as well.
   * {@link jetbrains.mps.smodel.event.SModelListener} DOES NOT dispatch events for unregistered models.
   */
  @Test
  public void testChangeNotifyNoRepo() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(2, 3);
    myTestModelAccess.enableRead();
    final SNode r1 = m1f.getRoot(1);

    Assert.assertNull(m1.getRepository());
    ChangeListener1 cl1 = new ChangeListener1();
    ChangeListener2 cl2 = new ChangeListener2();
    m1f.attachChangeListeners(cl1, cl2);

    SNode c = m1f.createNode();
    r1.addChild(ourRole, c);
    myErrors.checkThat(cl1.myAdded.size(), equalTo(0));
    myErrors.checkThat(cl2.myAdded.size(), equalTo(1));
    //
    cl1.reset(); cl2.reset();
    c.setProperty(SNodeUtil.property_INamedConcept_name, "XXX");
    myErrors.checkThat(cl1.myChangedProperties.size(), equalTo(0));
    myErrors.checkThat(cl2.myChangedProperties.size(), equalTo(1));
    //
    cl1.reset(); cl2.reset();
    c.delete();
    myErrors.checkThat(cl1.myRemoved.size(), equalTo(0));
    myErrors.checkThat(cl2.myRemoved.size(), equalTo(1));
    m1f.detachChangeListeners(cl1, cl2);
  }


  // read every property and every reference of an each node in sub-tree
  /*package*/ static void readTreeNodes(Iterable<? extends org.jetbrains.mps.openapi.model.SNode> nodes) {
    for (SNode n : nodes) { // 1 nodeRead per next()
      for (SProperty p : n.getProperties()) { // 1 nodeRead
        n.getProperty(p);
      }
      for (org.jetbrains.mps.openapi.model.SReference r : n.getReferences()) { // 1 nodeRead
        n.getReferenceTarget(r.getLink());
      }
      readTreeNodes(n.getChildren()); // twice per each child - both hasNext and next trigger read event
    }
  }

  /*package*/ static class AccessCountListener1 implements SNodeAccessListener {
    public int myVisitedNodes;
    public int myPropertiesRead;
    public int myReferencesRead;

    public void reset() {
      myVisitedNodes = myPropertiesRead = myReferencesRead = 0;
    }

    @Override
    public synchronized void nodeRead(@NotNull SNodeReadEvent event) {
      myVisitedNodes++;
    }

    @Override
    public void propertyRead(@NotNull SPropertyReadEvent event) {
      myPropertiesRead++;
    }

    @Override
    public void referenceRead(@NotNull SReferenceReadEvent event) {
      myReferencesRead++;
    }
  }

  /*package*/ static class AccessCountListener2 extends AbstractNodesReadListener {
    public int myVisitedNodes;
    public int myPropertiesRead;
    public int myReferencesRead;
    public int myChildrenRead;

    @Override
    public void nodeChildReadAccess(SNode node, String childRole, SNode child) {
      myChildrenRead++;
    }

    @Override
    public void nodePropertyReadAccess(SNode node, String propertyName, String value) {
      myPropertiesRead++;
    }

    @Override
    public void nodeReferentReadAccess(SNode node, String referentRole, SNode referent) {
      myReferencesRead++;
    }

    @Override
    public void nodeUnclassifiedReadAccess(SNode node) {
      myVisitedNodes++;
    }

    public void reset() {
      myVisitedNodes = myPropertiesRead = myReferencesRead = myChildrenRead = 0;
    }
  }

  /*package*/ static class AccessCountListener3 extends NodeReadAccessInEditorListener {
    public int myVisitedNodes;
    public int myPropertiesRead;
    public int myReferencesRead;
    public int myChildrenRead;

    @Override
    public void nodePropertyReadAccess(SNode node, String propertyName, String value) {
      Assert.fail("NodeReadAccessCasterInEditor doesn't call this method from NodeReadAccessInEditorListener");
    }

    @Override
    public void childrenReadAccess(SNode node, SContainmentLink role) {
      myChildrenRead++;
    }

    @Override
    public void propertyDirtyReadAccess(SNode node, String propertyName) {
      myPropertiesRead++;
    }

    @Override
    public void nodeReferentReadAccess(SNode node, String referentRole, SNode referent) {
      myReferencesRead++;
    }

    @Override
    public void nodeUnclassifiedReadAccess(SNode node) {
      myVisitedNodes++;
    }

    public void reset() {
      myVisitedNodes = myPropertiesRead = myReferencesRead = myChildrenRead = 0;
    }
  }

  // XXX likely, shall become NodeChangeBridge + event visitor once we get to SModelAdapter removal
  private static class ChangeListener1 extends SModelAdapter {
    public final List<SNode> myAdded = new ArrayList<SNode>();
    public final List<SNode> myAddedRoots = new ArrayList<SNode>();
    public final List<SNode> myRemoved = new ArrayList<SNode>();
    public final List<SNode> myRemovedRoots = new ArrayList<SNode>();
    public final List<SNode> myBeforeRemoved = new ArrayList<SNode>();
    public final List<SNode> myBeforeRemovedRoots = new ArrayList<SNode>();
    public final List<String> myChangedProperties = new ArrayList<String>();
    public final List<SReference> myAddedRef = new ArrayList<SReference>();
    public final List<SReference> myRemovedRef = new ArrayList<SReference>();

    @Override
    public void childAdded(SModelChildEvent event) {
      myAdded.add(event.getChild());
    }

    @Override
    public void childRemoved(SModelChildEvent event) {
      myRemoved.add(event.getChild());
    }

    @Override
    public void beforeChildRemoved(SModelChildEvent event) {
      myBeforeRemoved.add(event.getChild());
    }

    @Override
    public void propertyChanged(SModelPropertyEvent event) {
      myChangedProperties.add(event.getPropertyName());
    }

    @Override
    public void referenceAdded(SModelReferenceEvent event) {
      myAddedRef.add(event.getReference());
    }

    @Override
    public void referenceRemoved(SModelReferenceEvent event) {
      myRemovedRef.add(event.getReference());
    }

    @Override
    public void rootAdded(SModelRootEvent event) {
      myAddedRoots.add(event.getRoot());
    }

    @Override
    public void rootRemoved(SModelRootEvent event) {
      myRemovedRoots.add(event.getRoot());
    }

    @Override
    public void beforeRootRemoved(SModelRootEvent event) {
      myBeforeRemovedRoots.add(event.getRoot());
    }

    /*package*/ void reset() {
      myAdded.clear();
      myRemoved.clear();
      myBeforeRemoved.clear();
      myChangedProperties.clear();
      myAddedRef.clear();
      myRemovedRef.clear();
      myAddedRoots.clear();
      myRemovedRoots.clear();
      myBeforeRemovedRoots.clear();
    }
  }

  private static class ChangeListener2 implements SNodeChangeListener {
    // use list, not set to check for number of events, even if they come for the same object, to notice excessive notifications
    public final List<SNode> myAdded = new ArrayList<SNode>();
    public final List<SNode> myRemoved = new ArrayList<SNode>();
    public final List<String> myChangedProperties = new ArrayList<String>();
    public final List<String> myChangedReferences = new ArrayList<String>();

    @Override
    public void nodeAdded(@NotNull SNodeAddEvent event) {
      myAdded.add(event.getChild());
    }

    @Override
    public void nodeRemoved(@NotNull SNodeRemoveEvent event) {
      myRemoved.add(event.getChild());
    }

    @Override
    public void propertyChanged(@NotNull SPropertyChangeEvent event) {
      myChangedProperties.add(event.getProperty().getName());
    }

    @Override
    public void referenceChanged(@NotNull SReferenceChangeEvent event) {
      myChangedReferences.add(event.getAssociationLink().getName());
    }

    /*package*/ void reset() {
      myAdded.clear();
      myRemoved.clear();
      myChangedProperties.clear();
      myChangedReferences.clear();
    }
  }
}
