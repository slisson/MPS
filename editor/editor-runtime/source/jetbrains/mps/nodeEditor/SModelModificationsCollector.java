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
package jetbrains.mps.nodeEditor;

import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.smodel.event.SModelEventVisitorAdapter;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import jetbrains.mps.smodel.event.SModelReferenceEvent;
import jetbrains.mps.smodel.event.SModelRootEvent;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/**
 * User: shatalin
 * Date: 12/07/14
 */
public class SModelModificationsCollector extends SModelEventVisitorAdapter {
  private Collection<ModelModification> myModifications = null;

  // TODO: move to jetbrains.mps.nodeEditor.updater package, make package-local
  public SModelModificationsCollector(List<SModelEvent> events) {
    if (events == null) {
      return;
    }
    myModifications = new LinkedHashSet<>();
    for (SModelEvent event : events) {
      event.accept(this);
    }
  }

  public List<ModelModification> getModifications() {
    return myModifications == null ? null : new ArrayList<>(myModifications);
  }

  @Override
  public void visitRootEvent(SModelRootEvent event) {
    Queue<SNode> nodeQueue = new LinkedList<>();
    nodeQueue.add(event.getRoot());
    while (!nodeQueue.isEmpty()) {
      SNode nextNode = nodeQueue.remove();
      for (SNode child : nextNode.getChildren()) {
        nodeQueue.add(child);
      }
      addModification(nextNode, event);
    }
  }

  @Override
  public void visitChildEvent(SModelChildEvent event) {
    // Only the parent's modification carries the role: it is the parent's role contents that changed. The added or
    // removed subtree below is reported role-less, matching cells that had read those nodes themselves.
    addChildModification(event.getParent(), event.getAggregationLink(), event);
    Queue<SNode> nodeQueue = new LinkedList<>();
    nodeQueue.add(event.getChild());
    while (!nodeQueue.isEmpty()) {
      SNode nextNode = nodeQueue.remove();
      for (SNode child : nextNode.getChildren()) {
        nodeQueue.add(child);
      }
      addModification(nextNode, event);
    }
  }

  @Override
  public void visitReferenceEvent(SModelReferenceEvent event) {
    // Reported against the source node: it is the source's link that now points elsewhere. A cell that resolved that
    // link depends on (source, link) -- see NodeReadAccessInEditorListener.referenceReadAccess.
    SNode source = event.getReference().getSourceNode();
    myModifications.add(newModification(source, null, event.getReference().getLink(), null, false, event));
  }

  @Override
  public void visitPropertyEvent(SModelPropertyEvent event) {
    boolean addedRemoved = SModelPropertyEvent.isEmptyPropertyValue(event.getOldPropertyValue())
        != SModelPropertyEvent.isEmptyPropertyValue(event.getNewPropertyValue());
    myModifications.add(newModification(event.getNode(), null, null, event.getPropertyName(), addedRemoved, event));
  }

  private void addModification(SNode node, SModelEvent event) {
    myModifications.add(newModification(node, null, null, null, false, event));
  }

  private void addChildModification(SNode node, @Nullable SContainmentLink childRole, SModelEvent event) {
    myModifications.add(newModification(node, childRole, null, null, false, event));
  }

  private static ModelModification newModification(SNode node, @Nullable SContainmentLink childRole,
      @Nullable SReferenceLink referenceLink, @Nullable String propertyName, boolean propertyAddedRemoved,
      SModelEvent event) {
    return new ModelModification(node, new CachingSNodePointer(event.getModel().getReference(), node.getNodeId()),
        childRole, referenceLink, propertyName, propertyAddedRemoved);
  }

  // TODO: move this logic to SNodePointer? Ask MMuhin.
  private static class CachingSNodePointer extends SNodePointer {
    private int myHashCode = -1;

    private CachingSNodePointer(@Nullable SModelReference modelReference, @Nullable SNodeId nodeId) {
      super(modelReference, nodeId);
    }

    @Override
    public int hashCode() {
      if (myHashCode == -1) {
        myHashCode = super.hashCode();
      }
      return myHashCode;
    }
  }
}
