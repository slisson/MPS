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
package jetbrains.mps.smodel;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.util.Pair;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.HashSet;
import java.util.Set;

public class NodeReadAccessInEditorListener implements INodesReadListener {
  protected HashSet<SNode> myNodesToDependOn = new HashSet<>();
  protected HashSet<SNodeReference> myReferentTargetsToDependOn = new HashSet<>();
  protected HashSet<Pair<SNode, SContainmentLink>> myChildrenToDependOn = new HashSet<>();
  protected HashSet<Pair<SNode, SReferenceLink>> myReferencesToDependOn = new HashSet<>();
  protected HashSet<Pair<SNodeReference, String>> myDirtilyReadAccessedProperties = new HashSet<>();
  protected HashSet<Pair<SNodeReference, String>> myExistenceReadAccessProperties = new HashSet<>();

  private Set<Pair<SNodeReference, String>> myCleanlyReadAccessedProperties = new HashSet<>();

  private static final Logger LOG = Logger.getLogger(NodeReadAccessInEditorListener.class);

  public Set<SNode> getNodesToDependOn() {
    return myNodesToDependOn;
  }

  /**
   * Containment links whose children were read, as (node, role) pairs. A {@code null} role means children of every
   * role were read, and is matched by a change to any role of that node.
   * <p/>
   * Unlike {@link #getNodesToDependOn()}, this records the <em>question asked</em> rather than the nodes that happened
   * to answer it, so it is recorded even when the role holds no children.
   */
  public Set<Pair<SNode, SContainmentLink>> getChildrenToDependOn() {
    return myChildrenToDependOn;
  }

  public Set<SNodeReference> getRefTargetsToDependOn() {
    return myReferentTargetsToDependOn;
  }

  public HashSet<Pair<SNodeReference, String>> getDirtilyReadAccessedProperties() {
    return myDirtilyReadAccessedProperties;
  }

  public HashSet<Pair<SNodeReference, String>> getExistenceReadAccessProperties() {
    return myExistenceReadAccessProperties;
  }

  public Set<Pair<SNodeReference, String>> popCleanlyReadAccessedProperties() {
    Set<Pair<SNodeReference, String>> result = myCleanlyReadAccessedProperties;
    myCleanlyReadAccessedProperties = new HashSet<>();
    return result;
  }

  public void addNodesToDependOn(Set<SNode> nodes) {
    if (nodes == null) {
      LOG.error("passing null nodes collection to depend on");
      return;
    }
    myNodesToDependOn.addAll(nodes);
  }

  public void addRefTargetsToDependOn(Set<SNodeReference> targets) {
    myReferentTargetsToDependOn.addAll(targets);
  }

  public void addChildrenToDependOn(Set<Pair<SNode, SContainmentLink>> children) {
    myChildrenToDependOn.addAll(children);
  }

  /**
   * Reference links whose targets were resolved, as (source node, link) pairs. This is what a re-pointed reference
   * invalidates: the change is reported against the source node, not the target.
   */
  public Set<Pair<SNode, SReferenceLink>> getReferencesToDependOn() {
    return myReferencesToDependOn;
  }

  public void addReferencesToDependOn(Set<Pair<SNode, SReferenceLink>> references) {
    myReferencesToDependOn.addAll(references);
  }

  public void referenceReadAccess(SNode sourceNode, SReferenceLink link) {
    myReferencesToDependOn.add(new Pair<>(sourceNode, link));
  }

  public void addDirtilyReadAccessedProperties(Set<Pair<SNodeReference, String>> properties) {
    myDirtilyReadAccessedProperties.addAll(properties);
  }

  public void addExistenceReadAccessProperties(Set<Pair<SNodeReference, String>> properties) {
    myExistenceReadAccessProperties.addAll(properties);
  }

  /**
   * @param role containment link whose children were read, or {@code null} if children of every role were read
   */
  public void childrenReadAccess(SNode node, SContainmentLink role) {
    myChildrenToDependOn.add(new Pair<>(node, role));
  }

  @Override
  public void propertyDirtyReadAccess(SNode node, String propertyName) {
    // No nodeUnclassifiedReadAccess(node) here: the (node, property) pair recorded above says exactly what was read,
    // and adding a whole-node dependency alongside it subsumed the pair — a cell reading only "name" was rebuilt by a
    // change to any other property, any child, or any reference of the node.
    myDirtilyReadAccessedProperties.add(new Pair<>(new jetbrains.mps.smodel.SNodePointer(node), propertyName));
  }

  @Override
  public void propertyCleanReadAccess(SNode node, String propertyName) {
    myCleanlyReadAccessedProperties.add(new Pair<>(new jetbrains.mps.smodel.SNodePointer(node), propertyName));
  }

  @Override
  public void nodeUnclassifiedReadAccess(SNode node) {
    myNodesToDependOn.add(node);
  }

  @Override
  public void modelNodesReadAccess(SModel model) {
    /* ignored */
  }

  @Override
  public void nodeReferentReadAccess(SNode node, String referentRole, SNode referent) {
    addRefTargetToDependOn(new jetbrains.mps.smodel.SNodePointer(referent));
  }

  public void addRefTargetToDependOn(SNodeReference target) {
    myReferentTargetsToDependOn.add(target);
  }

  @Override
  public void propertyExistenceAccess(SNode node, String propertyName) {
    // As in propertyDirtyReadAccess: no whole-node dependency. An existence check is invalidated only by the property
    // being set or unset, which is narrower still than a value change.
    myExistenceReadAccessProperties.add(new Pair<>(new jetbrains.mps.smodel.SNodePointer(node), propertyName));
  }

  public void clearCleanlyReadAccessProperties() {
    myCleanlyReadAccessedProperties = new HashSet<>();
  }

  @Override
  public void nodeChildReadAccess(SNode node, String childRole, SNode child) {
    assert false : "should be never called";
  }

  @Override
  public void nodePropertyReadAccess(SNode node, String propertyName, String value) {
    // todo remove when refactoring completed
  }
}
