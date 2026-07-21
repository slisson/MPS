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

import jetbrains.mps.smodel.AssociationData.TransitionIndirect;
import jetbrains.mps.smodel.AssociationData.TransitionDirect;
import jetbrains.mps.smodel.ModelCommandContext.Provider;
import jetbrains.mps.smodel.event.ModelEventDispatch;
import jetbrains.mps.util.SNodeOperations;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.SRepository;

/**
 * Normal state of any node, being part of a model.
 *
 * Events are dispatched, model access ensured.
 * <p>
 * OpenAPI listeners ({@link org.jetbrains.mps.openapi.model.SNodeAccessListener}, {@link org.jetbrains.mps.openapi.model.SNodeChangeListener})
 * are notified through {@link jetbrains.mps.smodel.event.ModelEventDispatch},
 * this class shall not depend on particular openapi.SModel implementation (e.g. SModelBase or EditableSModelBase).
 * <p>
 * Legacy listeners ({@link jetbrains.mps.smodel.event.SModelListener}, {@link jetbrains.mps.smodel.NodeReadEventsCaster} and
 * {@link jetbrains.mps.smodel.NodeReadAccessCasterInEditor} are handled here.
 * <p>
 * IMPORTANT: property/reference access shall not trigger node read. Node read is triggered once the node is obtained from the model,
 * either as children, sibling or any other navigation means.
 *
 * @author Artem Tikhomirov
 */
final class AttachedNodeOwner extends SNodeOwner {

  private final SModel myModel;
  // can be null
  private ModelEventDispatch myEventDispatch;

  public AttachedNodeOwner(@NotNull SModel model) {
    myModel = model;
  }

  /*package*/ void setEventDispatch(ModelEventDispatch dispatch) {
    // the reason why I don't care to make myEventDispatch immediately visible
    // in a multi-thread environment (i.e. one thread reads model and dispatches notifications
    // while another attaches the model to model descriptor and updates myEventDispatch) as there's
    // no contract whatsoever about what happens in this case. In a single-thread, this assignment would
    // 'happen-before' any subsequent read and we are all set.
    myEventDispatch = dispatch;
  }

  @Override
  public void assertLegalRead() {
    // FIXME explicit attach to set repository? So that it behaves exactly as it was prior to SNodeOwner?
    final SRepository repo = myModel.getRepository();
    if (repo != null) {
      repo.getModelAccess().checkReadAccess();
    }
  }

  @Override
  public void assertLegalChange() {
    if (myModel.isUpdateMode()) {
      return;
    }
    final SRepository repo = myModel.getRepository();
    if (repo == null) {
      return;
    }
    repo.getModelAccess().checkWriteAccess();
    // here used to be one of most perplexing pieces of MPS core functionality, check for MA.isCommandAction with IMCE in case not.
    // Speculations are the check ensured all model changes for a model inside repository got Undo recorded (MM, slack, 13.02.2017)
    // however, I don't think it's proper in variant, as there are different models inside a repo (e.g. temp, transient,
    // internal Console state, etc), and we don't need to record Undo for these.
    // In case we need per-model variations in behavior, may invoke some internal API method on [smodel].SModel here, so that
    // various SModel implementation may provide their own logic (e.g. check MA.isCommandAction() if they truly need to)
    // Even better, the method might be part of SRepository or MA API. One could argue why not MA.isCommandAction() then, but
    //   this method is way too overloaded, and keeping both 'inside command' and 'can modify node now' knowledge under single
    //   method is worse than introducing a distinct API. For the same reason I believe having this check
    //   inside MA.checkWriteAccess() might not be perfect idea (although don't have that strong objections as for the
    //   single isCommandAction() check)
  }

  @Override
  public SModel getModel() {
    return myModel;
  }

  @Override
  SModelReference lastKnownModel() {
    return myModel.getReference();
  }

  @Override
  public void registerNode(SNode node) {
    myModel.enforceFullLoad(); // FIXME dubious need to perform full load if all we do is populating id map
    doRegister(node, commandContext());
    if (myModel.getRepository() != null) {
      // one can hardly expect to navigate/resolve indirect (aka 'mature') reference from a node that belongs to a model
      // not inside a repository, that's why I don't make them indirect just the moment node get attached to a model.
      // There's ImmatureReferences that would force indirect references the moment command completes, regardless of
      // repository presence.
      final TransitionIndirect transition = new TransitionIndirect(myModel.getModelDescriptor(), false);
      node.forEachAssociationDeep(data -> transition.makeIndirect(data, SNodeOperations::getResolveInfo));
    }
  }

  // pre: myCommandContext != null
  private void doRegister(SNode node, ModelCommandContext commandContext) {
    // XXX model.registerNode shall go *BEFORE* setNodeOwner, otherwise SNode.setId fails - attached owner provides model.
    //     At the moment, there's copy-paste editor functionality that depends on ability to change nodeId
    //     (copied node preserves id of the original node, and if pasted into same model, there's id conflict which is resolved in SModel.assignNewId())
    myModel.registerNode(node);
    node.setNodeOwner(this);
    // for an attached node, its complete subtree has to share same SNodeOwner, assign it unconditionally
    // FIXME why UnregisteredNodes.put in SNode#unRegisterFromModel (#detach(SNodeOwner)) us conditioned with !isUpdateMode(), and this one is not?
    //       I suppose the reason was remove() doesn't hurt in case there's no such node, though not 100% sure
    commandContext.nodeAttached(node);

    for (SNode child = node.firstChild(); child != null; child = child.treeNext()) {
      doRegister(child, commandContext);
    }
  }

  @Override
  public void unregisterNode(SNode node) {
    if (!myModel.isUpdateMode()) {
      // XXX no idea what this isUpdateMode() check is about, used to be in SNode.detach()
      //     it dates back to e64402e1, I suspect it might be a performance optimization
      //     (nobody gonna access references of a node that has been removed during internal update process)
      //
      // makeDirect has been separated from detach() code to give better control over reference resolution time.
      // indeed, in a perfect world we would know all nodes to be deleted during a command beforehand, and could process their references at once.
      // as it's not possible (node.sibling.detach could come right after node.detach) we at least go easy path for references within a detached subtree
      final org.jetbrains.mps.openapi.model.SModel current = myModel.getModelDescriptor();
      final TransitionDirect transition = new TransitionDirect(current);
      node.forEachAssociationDeep(data -> transition.makeDirect(data));
      // Direct object pointers facilitate reference access operations from the detached nodes just in case there's need.
    }

    doUnregister(new DetachedNodeOwner(myModel), node, commandContext());
  }

  // pre: myCommandContext != null
  private void doUnregister(DetachedNodeOwner detachedOwner, SNode node, ModelCommandContext commandContext) {
    myModel.unregisterNode(node);
    if (!myModel.isUpdateMode()) {
      // XXX perhaps, SModel shall tell myOwner.enterUpdate()/myOwner.leaveUpdate() instead of isUpdateMode checks?
      commandContext.nodeDetached(node);
    }
    // XXX when we put a node in UnregisteredNodes, it better keep original SModel so that any reference pointing to the node could still get resolved.
    //     Tests like MakeFieldNonStaticAndHaveReferencesUpdated fail if UN receives a node with detached model owner (model unset)
    node.setNodeOwner(detachedOwner);
    for (SNode child = node.firstChild(); child != null; child = child.treeNext()) {
      doUnregister(detachedOwner, child, commandContext);
    }
  }

  @Override
  void performUndoableAction(SNodeUndoableAction action) {
    myModel.performUndoableAction(action);
  }

  @Override
  /*package*/ void fireNodeRead(SNode node, boolean needUnclassified) {
    // nodeRead()
    if (myModel.isUpdateMode()) {
      return;
    }
    final ModelEventDispatch md = myEventDispatch;
    if (md != null) {
      md.fireNodeRead(node);
    }
    if (!myModel.canFireReadEvent()) {
      return;
    }
    // fireNodeReadAccess()
    NodeReadAccessCasterInEditor.fireNodeReadAccessed(node);
    if (needUnclassified) {
      // fireNodeUnclassifiedReadAccess()
      NodeReadEventsCaster.fireNodeUnclassifiedReadAccess(node);
    }
  }

  @Override
  /*package*/ void fireIteratedChildRead(SNode node) {
    if (myModel.isUpdateMode()) {
      return;
    }
    final ModelEventDispatch md = myEventDispatch;
    if (md != null) {
      md.fireNodeRead(node);
    }
    if (!myModel.canFireReadEvent()) {
      return;
    }
    // NodeReadAccessCasterInEditor is deliberately NOT notified here, which is the one way this differs from
    // fireNodeRead(node, true).
    //
    // Yielding a child from a children list told the editor only that the list holds this node — a fact now carried
    // precisely by the (node, role) dependency fireChildrenRead() emits from getChildren(). Reporting the child as a
    // whole-node dependency on top of that meant iterating a role made the reader depend on every child in it, so a
    // property change on any one of them rebuilt the cell. Whatever the reader goes on to read *of* the child still
    // notifies the editor through the usual property/reference/node paths.
    //
    // The typesystem and the legacy access listeners have no equivalent of the role dependency and still need the
    // per-element read, so they keep receiving it.
    NodeReadEventsCaster.fireNodeUnclassifiedReadAccess(node);
  }

  @Override
  /*package*/ void fireChildrenRead(SNode node, SContainmentLink role) {
    // Single guard on purpose: canFireEvent() already implies !isUpdateMode(), and isUpdateMode() is a lock probe.
    // fireNodeRead() has to test them separately only because it dispatches to myEventDispatch in between; this
    // notification has no such intermediate step, and getChildren() is hot enough for the extra probe to show up.
    if (!myModel.canFireReadEvent()) {
      return;
    }
    // Deliberately notified even when the role holds no children: the reader's outcome depends on the role being
    // empty, so it has to be invalidated once the role is filled. Unlike node reads, this is not driven off the
    // children actually returned, which is why it is fired here and not from ImmutableChildrenList's iterator.
    NodeReadAccessCasterInEditor.fireChildrenReadAccessed(node, role);
  }

  @Override
  /*package*/ void firePropertyRead(SNode node, SProperty p, String value, boolean hasProperty) {
    // propertyRead();
    if (myModel.isUpdateMode()) {
      return;
    }
    final ModelEventDispatch md = myEventDispatch;
    if (md != null) {
      md.firePropertyRead(node, p);
    }
    //firePropertyReadAccessInEditor();
    //fireNodePropertyReadAccess();
    if (!myModel.canFireReadEvent()) {
      return;
    }
    final String propertyName = p.getName();
    NodeReadAccessCasterInEditor.firePropertyReadAccessed(node, propertyName, hasProperty);
    NodeReadEventsCaster.fireNodePropertyReadAccess(node, propertyName, value);
  }

  /**
   * @param link not null
   * @param target may be null
   */
  @Override
  /*package*/ void fireReferenceRead(SNode node, SReferenceLink link, SNode target) {
    if (myModel.isUpdateMode()) {
      return;
    }
    // referenceRead()
    final ModelEventDispatch md = myEventDispatch;
    if (md != null) {
      md.fireReferenceRead(node, link);
    }
    if (!myModel.canFireReadEvent()) {
      return;
    }
    // Deliberately notified even when the link holds no reference, for the same reason fireChildrenRead() is: the
    // reader's outcome depends on the link being empty, so it has to be invalidated once the reference is set. The
    // (source, link) dependency cannot be left to StaticReference.getTargetNode(), which needs an SReference to exist
    // and so never runs for an unset link -- setting a reference for the first time then invalidated nothing.
    // Resolving a set reference records the pair twice, here and there; it is a set, and the target dependency
    // StaticReference adds alongside it can only be known there.
    NodeReadAccessCasterInEditor.fireReferenceReadAccessed(node, link);
    // fireNodeReferentReadAccess();
    NodeReadEventsCaster.fireNodeReferentReadAccess(node, link.getRoleName(), target);
  }

  @Override
  /*package*/ void firePropertyChange(SNode node, SProperty property, String oldValue, String newValue) {
    if (myModel.isUpdateMode()) {
      return;
    }
    myModel.firePropertyChangedEvent(node, property, oldValue, newValue);
    //propertyChanged(property, oldValue, newValue);
    final ModelEventDispatch md = myEventDispatch;
    if (md != null) {
      md.firePropertyChange(node, property, oldValue, newValue);
    }
  }

  @Override
  /*package*/ void fireReferenceChange(SNode node, SReferenceLink l, AssociationData oldRef, AssociationData newRef) {
    // FIXME is it true we need to register immature even in update mode?
    commandContext().associationSet(node, l, newRef);
    if (myModel.isUpdateMode()) {
      return;
    }
    if (oldRef != null) {
      myModel.fireReferenceRemovedEvent(node.toAPI(l, oldRef));
    }
    if (newRef != null) {
      myModel.fireReferenceAddedEvent(node.toAPI(l, newRef));
    }
    // referenceChanged(l, oldRef, newRef);
    final ModelEventDispatch md = myEventDispatch;
    if (md != null) {
      md.fireReferenceChange(node, l, oldRef == null ? null : node.toAPI(l, oldRef), newRef == null ? null : node.toAPI(l, newRef));
    }
  }

  @Override
  /*package*/ void fireNodeAdd(SNode node, SContainmentLink role, SNode child, SNode anchor) {
    if (node == null && role == null) {
      // root
      final ModelEventDispatch md = myEventDispatch;
      if (md != null) {
        md.fireNodeAdd(null, null, child);
      }
      myModel.fireRootAddedEvent(child);
      return;
    }
    if (myModel.isUpdateMode()) {
      return;
    }
    myModel.fireChildAddedEvent(node, role, child, anchor);
    //nodeAdded(role, child);
    final ModelEventDispatch md = myEventDispatch;
    if (md != null) {
      md.fireNodeAdd(node, role, child);
    }
  }

  @Override
  void fireBeforeNodeRemove(SNode node, SContainmentLink role, SNode child, SNode anchor) {
    if (node == null && role == null) {
      myModel.fireBeforeRootRemovedEvent(child);
    } else {
      myModel.fireBeforeChildRemovedEvent(node, role, child, anchor);
    }
  }

  @Override
  /*package*/ void fireNodeRemove(SNode node, SContainmentLink role, SNode child, SNode anchor) {
    if (node == null && role == null) {
      final ModelEventDispatch md = myEventDispatch;
      if (md != null) {
        md.fireNodeRemove(null, null, child, null);
      }
      myModel.fireRootRemovedEvent(child);
      return;
    }
    if (myModel.isUpdateMode()) {
      return;
    }
    myModel.fireChildRemovedEvent(node, role, child, anchor);
    //nodeRemoved(child, role);
    final ModelEventDispatch md = myEventDispatch;
    if (md != null) {
      md.fireNodeRemove(node, role, child, anchor);
    }
  }

  /*package*/ ModelCommandContext commandContext() {
    final SRepository repo = myModel.getRepository();
    final org.jetbrains.mps.openapi.model.SModel md = myModel.getModelDescriptor();
    if (repo == null || md == null) {
      return ModelCommandContext.EMPTY;
    }
    final ModelAccess ma = repo.getModelAccess();
    if (ma instanceof ModelCommandContext.Provider) {
      final ModelCommandContext cc = ((Provider) ma).getCommandContext(md);
      return cc == null ? ModelCommandContext.EMPTY : cc;
    }
    return ModelCommandContext.EMPTY;
  }
}
