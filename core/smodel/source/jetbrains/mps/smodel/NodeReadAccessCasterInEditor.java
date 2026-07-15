/*
 * Copyright 2003-2011 JetBrains s.r.o.
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

import jetbrains.mps.util.Computable;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;

import java.util.Stack;

public class NodeReadAccessCasterInEditor {
  private static ThreadLocal<ListenersContainer> ourListenersContainer = new ThreadLocal<>();

  public static void setCellBuildNodeReadAccessListener(NodeReadAccessInEditorListener listener) {
    getListenersContainer().addListener(listener);
  }

  public static void removeCellBuildNodeAccessListener() {
    ListenersContainer listenersContainer = ourListenersContainer.get();
    assert listenersContainer != null : "Removing not existing listener";
    listenersContainer.removeListener();
    if (listenersContainer.canBeDisposed()) {
      ourListenersContainer.set(null);
    }
  }

  public static void fireNodeReadAccessed(SNode node) {
    ListenersContainer listenersContainer = ourListenersContainer.get();
    if (listenersContainer != null) {
      listenersContainer.fireNodeReadAccessed(node);
    }
  }

  public static void firePropertyReadAccessed(SNode node, String propertyName, boolean propertyExistenceCheck) {
    ListenersContainer listenersContainer = ourListenersContainer.get();
    if (listenersContainer != null) {
      listenersContainer.firePropertyReadAccessed(node, propertyName, propertyExistenceCheck);
    }
  }

  /**
   * @param role containment link whose children were read, or {@code null} if children of every role were read
   */
  public static void fireChildrenReadAccessed(SNode node, SContainmentLink role) {
    ListenersContainer listenersContainer = ourListenersContainer.get();
    if (listenersContainer != null) {
      listenersContainer.fireChildrenReadAccessed(node, role);
    }
  }

  public static void fireReferenceTargetReadAccessed(SNode sourceNode, SReferenceLink link,
      SModelReference targetModelReference, SNodeId targetNodeId) {
    ListenersContainer listenersContainer = ourListenersContainer.get();
    if (listenersContainer != null) {
      listenersContainer.fireReferenceTargetReadAccessed(sourceNode, link, targetModelReference, targetNodeId);
    }
  }

  public static NodeReadAccessInEditorListener getReadAccessListener() {
    ListenersContainer listenersContainer = ourListenersContainer.get();
    return listenersContainer == null ? null : listenersContainer.getActiveListener();
  }

  public static boolean areEventsBlocked() {
    ListenersContainer listenersContainer = ourListenersContainer.get();
    return listenersContainer != null && listenersContainer.areEventsBlocked();
  }

  public static void setEventsBlocked(boolean blocked) {
    ListenersContainer listenersCotainer = getListenersContainer();
    listenersCotainer.setEventsBlocked(blocked);
    if (listenersCotainer.canBeDisposed()) {
      ourListenersContainer.set(null);
    }
  }

  public static void runReadTransparentAction(Runnable r) {
    boolean wereBlocked = areEventsBlocked();
    boolean wereBlockedNonEditor = NodeReadEventsCaster.areEventsBlocked();
    NodeReadEventsCaster.setEventsBlocked(true);
    setEventsBlocked(true);
    try {
      r.run();
    } finally {
      setEventsBlocked(wereBlocked);
      NodeReadEventsCaster.setEventsBlocked(wereBlockedNonEditor);
    }
  }

  public static <T> T runReadTransparentAction(final Computable<T> c) {
    boolean wereBlocked = areEventsBlocked();
    boolean wereBlockedNonEditor = NodeReadEventsCaster.areEventsBlocked();
    NodeReadEventsCaster.setEventsBlocked(true);
    setEventsBlocked(true);
    try {
      return c.compute();
    } finally {
      setEventsBlocked(wereBlocked);
      NodeReadEventsCaster.setEventsBlocked(wereBlockedNonEditor);
    }
  }

  public static<T> T runCleanPropertyAccessAction(Computable<T> propertyAccess) {
    ListenersContainer listenersContainer = ourListenersContainer.get();
    boolean wasCleanAccessMode = false;
    if (listenersContainer != null) {
      wasCleanAccessMode = listenersContainer.isCleanPropertyAccessMode();
      listenersContainer.setCleanPropertyAccessMode(true);
    }
    try {
      return propertyAccess.compute();
    } finally {
      if (listenersContainer != null) {
        listenersContainer.setCleanPropertyAccessMode(wasCleanAccessMode);
      }
    }
  }

  private static ListenersContainer getListenersContainer() {
    ListenersContainer listeners = ourListenersContainer.get();
    if (listeners == null) {
      listeners = new ListenersContainer();
      ourListenersContainer.set(listeners);
    }
    return listeners;
  }

  static class ListenersContainer {
    private Stack<NodeReadAccessInEditorListener> myListenersStack = new Stack<>();
    private boolean myEventsBlocked;
    private boolean myCleanPropertyAccessMode;
    private boolean myPropertyReadEventsSuppressed;

    public void addListener(NodeReadAccessInEditorListener listener) {
      assert listener != null : "Trying to add null as a listener";
      myListenersStack.push(listener);
    }

    public void removeListener() {
      assert !myListenersStack.isEmpty() : "Trying to remove listener from an empty Listeners stack";
      NodeReadAccessInEditorListener listener = myListenersStack.pop();
      if (!myListenersStack.isEmpty()) {
        myListenersStack.peek().addNodesToDependOn(listener.getNodesToDependOn());
        myListenersStack.peek().addRefTargetsToDependOn(listener.getRefTargetsToDependOn());
        myListenersStack.peek().addChildrenToDependOn(listener.getChildrenToDependOn());
        myListenersStack.peek().addReferencesToDependOn(listener.getReferencesToDependOn());
        // Property reads used to reach the parent only as the whole-node dependency propertyDirtyReadAccess added on
        // the side. With that gone they have to be merged in their own right, or a parent cell would not be rebuilt
        // when a property one of its child cells rendered changes.
        myListenersStack.peek().addDirtilyReadAccessedProperties(listener.getDirtilyReadAccessedProperties());
        myListenersStack.peek().addExistenceReadAccessProperties(listener.getExistenceReadAccessProperties());
      }
    }

    public boolean canBeDisposed() {
      return !myEventsBlocked && myListenersStack.isEmpty();
    }

    public NodeReadAccessInEditorListener getActiveListener() {
      return myListenersStack.isEmpty() ? null : myListenersStack.peek();
    }

    public boolean areEventsBlocked() {
      return myEventsBlocked;
    }

    public void setEventsBlocked(boolean eventsBlocked) {
      myEventsBlocked = eventsBlocked;
    }

    public boolean isCleanPropertyAccessMode() {
      return myCleanPropertyAccessMode;
    }

    public void setCleanPropertyAccessMode(boolean cleanPropertyAccess) {
      myCleanPropertyAccessMode = cleanPropertyAccess;
    }

    public void fireNodeReadAccessed(SNode node) {
      if (myEventsBlocked || myListenersStack.isEmpty()) return;
      myListenersStack.peek().nodeUnclassifiedReadAccess(node);
    }

    public void firePropertyReadAccessed(SNode node, String propertyName, boolean propertyExistenceCheck) {
      if (myEventsBlocked || myPropertyReadEventsSuppressed || myListenersStack.isEmpty()) return;

      NodeReadAccessInEditorListener listener = myListenersStack.peek();
      myPropertyReadEventsSuppressed = true;
      try {
        if (myCleanPropertyAccessMode) {
          listener.propertyCleanReadAccess(node, propertyName);
        } else if (propertyExistenceCheck) {
          listener.propertyExistenceAccess(node, propertyName);
        } else {
          listener.propertyDirtyReadAccess(node, propertyName);
        }
      } finally {
        myPropertyReadEventsSuppressed = false;
      }
    }

    public void fireChildrenReadAccessed(SNode node, SContainmentLink role) {
      if (myEventsBlocked || myListenersStack.isEmpty()) return;
      myListenersStack.peek().childrenReadAccess(node, role);
    }

    public void fireReferenceTargetReadAccessed(SNode sourceNode, SReferenceLink link,
        SModelReference targetModelReference, SNodeId targetNodeId) {
      if (myEventsBlocked || myListenersStack.isEmpty()) return;
      // Two distinct dependencies, and the first of them used to be missing. Resolving a reference reads the link of
      // the source node, so re-pointing it must rebuild the reader; that change is reported against the source, and
      // nothing recorded here matched it — a whole-node dependency on the source, added elsewhere, was covering it.
      myListenersStack.peek().referenceReadAccess(sourceNode, link);
      // The target is depended upon in its own right, because deleting it must rebuild the reader too. Still coarse:
      // any change to the target matches, not just its removal.
      myListenersStack.peek().addRefTargetToDependOn(new jetbrains.mps.smodel.SNodePointer(targetModelReference, targetNodeId));
    }
  }
}
