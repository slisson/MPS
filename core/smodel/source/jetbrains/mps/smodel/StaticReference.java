/*
 * Copyright 2000-2025 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.smodel;

import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.extapi.model.ModelWithDisposeInfo;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.AssociationData.DirectNode;
import jetbrains.mps.smodel.AssociationData.IndirectNodePtr;
import jetbrains.mps.smodel.AssociationData.LocalNodePtr;
import jetbrains.mps.smodel.AssociationData.SNodeAssociationUpdate;
import jetbrains.mps.smodel.AssociationData.TransitionIndirect;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.ResolveInfo;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.Objects;

/**
 * API mediator for association link. {@code SNode} describes its associations using these objects, but doesn't necessarily keep these,
 * users shall not assume <code>node1.getReference(r1) == node1.getReference(r1)</code>.
 * Generally, associations are not modified though this class, although there are few legacy scenarios where MPS still uses methods of this class.
 * <p/>
 * Instances of this class are not supposed to be shared between threads in a multi-thread environment
 * (no synchronisation; model access is guarded by {@code SNode})
 */
public final class StaticReference extends SReference {

  /**
   * Either DirectNode (including subclasses) or IndirectNodePtr, never null.
   * This is the actual presentation of the association link, {@code StaticReference} is rather an access mediator
   */
  private AssociationData myData;

  /**
   * Clients shall not instantiate SReference or its subclass directly, use {@link SNode#setReference(SReferenceLink, ResolveInfo)} instead.
   * This constructor is for transitional access from SReference.create() methods
   */
  /*package*/ StaticReference(@NotNull SReferenceLink role, @NotNull SNode sourceNode, @NotNull AssociationData data) {
    super(role, sourceNode);
    assert data instanceof DirectNode || data instanceof IndirectNodePtr || data instanceof LocalNodePtr; // i.e. !DynamicPtr
    myData = data;
  }

  @Override
  public SModelReference getTargetSModelReference() {
    // Here, we expect 3 major cases: one when reference is 'mature' and got model ref+node id already (I), and
    // two cases when reference has not been 'matured' yet, i.e. we have direct link to a target node. This happens when a reference
    // is created and nobody requested 'become mature' yet (usually MA.commandFinished() together with ImmatureReferences, II), or when
    // a reference's source node has been detached from a model and references became direct (smodel.SNode#makeReferencesDirect(), III)
    // For (I), there's no special treatment. For (II) and (III), we are fine as long as 'immature'/young target node is in a model
    // (node.getModel().getReference() is meaningful). If not, we can do nothing in (II), but may try to resort to last known model
    // reference, if any, in case of detached nodes, (III).
    // Note, earlier code used to make an attempt to make 'young' reference mature on any access, which seems excessive at least (or even wrong)
    // as the outcome is essentially the same as with immatureNode.getModel(), except for the moment reference become 'mature' (end of command or first access)
    // I don't see any strong reason to be in a hurry with that. The change dates back to commit 5ac3704, with a comment that doesn't indicate any
    // specific issue being addressed.
    AssociationData data = getData();
    return data instanceof LocalNodePtr ? mySourceNode.getReference().getModelReference() : data.getTargetModel();
  }

  @Override
  @Nullable
  public SNodeId getTargetNodeId() {
    // see #getTargetSModelReference(), above for detailed description of expected scenarios here.
    // As long as there's 'young' node, use it. If it's already in a model (makeIndirect() that used to be here succeeds), node.getNodeId() would
    // give proper value (well, theoretically, if we 'adopt' node instances the moment they are attached to a model with another SNode impl, they
    // could be different, but this scenario is not supported now as well); if not in a model, makeIndirect() won't help us a bit.
    //
    // unlike #getTargetSModelReference(), III, node id unlikely to change for a detached node, hence we don't check for nodeId == null here, neither
    // resort to myTargetNodeId value.
    return getData().getTargetNode();
  }

  @Override
  //exclusively for debug purposes
  public String toString() {
    if (isDirect()){
      return "StaticRef[immature]";
    }
    return "StaticRef[" +
           "model:" + getTargetSModelReference() + ";" +
           "nodeid:" + getTargetNodeId() +
           "]";
  }
  // FIXME check uses, perhaps, have to be SNodeImplAccess operations rather than SReference-mediator? Then, we can cease using invalid getResolveInfo() here
  public void setTargetSModelReference(@NotNull SModelReference modelReference) {
    // preserve node id and resolve info value of 'young' target, if any
    // FIXME makeMature to create proper IndirectNodePtr right away
    final AssociationData d = new TransitionIndirect(mySourceNode.getModel()).makeIndirect(getData(), StaticReference::getResolveInfo);
    if (modelReference.equals(mySourceNode.getReference().getModelReference())) {
      setData(new LocalNodePtr(d.getTargetNode(), d.getRI()));
    } else {
      setData(new IndirectNodePtr(modelReference, d.getTargetNode(), d.getRI()));
    }
  }

  public void setTargetNodeId(SNodeId nodeId) {
    // preserve model reference and resolve info value of 'young' target, if any
    final AssociationData d = new TransitionIndirect(mySourceNode.getModel()).makeIndirect(getData(), StaticReference::getResolveInfo);
    if (d instanceof LocalNodePtr) {
      setData(new LocalNodePtr(nodeId, d.getRI()));
    } else {
      setData(new IndirectNodePtr(d.getTargetModel(), nodeId, d.getRI()));
    }
  }

  @Override
  protected SNode getTargetNode_internal(ProblemReporter report) {
    AssociationData d = getData();
    SModelReference mr = d instanceof LocalNodePtr ? getSourceNode().getReference().getModelReference() : d.getTargetModel();
    if (mr != null) {
      NodeReadAccessCasterInEditor.fireReferenceTargetReadAccessed(getSourceNode(), getLink(), mr, getTargetNodeId());
    }

    final SNode immatureTargetNode = d instanceof DirectNode ? ((DirectNode)d).myImmatureTargetNode : null;
    if (immatureTargetNode != null) {
      return immatureTargetNode;
    }

    SNodeId targetNodeId = d.getTargetNode();
    if (targetNodeId == null) {
      // 'unresolved' actually.
      // It can be tmp reference created while copy/pasting a node
      return null;
    }

    SModel targetModel = getTargetSModel(d);
    if (targetModel == null) return null;

    if (targetModel instanceof ModelWithDisposeInfo && ((ModelWithDisposeInfo) targetModel).isDisposed()) {
      Logger log = Logger.getLogger(this.getClass());
      StringBuilder sb = new StringBuilder();
      sb.append("target model ");
      sb.append(targetModel.toString());
      sb.append(" is disposed\n");
      SNode sourceNode = getSourceNode();
      sb.append("source node is: name = ");
      sb.append(sourceNode.getName());
      sb.append(", model = ");
      sb.append(sourceNode.getModel());
      sb.append(", id = ");
      sb.append(sourceNode.getNodeId().toString());
      sb.append("\ntarget node id = ");
      sb.append(targetNodeId);
      // sourceNode.getName() above ensures ModelAccess.instance().canRead() == true
      final StackTraceElement[] disposedStacktrace = ((ModelWithDisposeInfo) targetModel).getDisposedStacktrace();
      if (disposedStacktrace != null) {
        sb.append("\nstack trace of model disposing is: ");
        for (StackTraceElement ste : disposedStacktrace) {
          sb.append(ste);
          sb.append('\n');
        }
      }
      log.error(sb.toString());
      log.errorWithTrace("=============current trace:=============");
      return null;
    }

    SNode targetNode = targetModel.getNode(targetNodeId);
    if (targetNode != null) {
      return targetNode;
    }
    targetNode = commandContext(targetModel).resolveUnregistered(targetNodeId);
    if (targetNode == null) {
      final SNode sn = getSourceNode();
      final String m = "Model %s, node %s can't resolve node with id=%s in target model '%s'";
      final SModelReference sm = sn.getReference().getModelReference();
      report.warn(String.format(m, sm == null ? sm : sm.getName(), sn.getNodeId(), getTargetNodeId(), targetModel.getReference()));
    }

    return targetNode;
  }

  /**
   * @deprecated Is flawed with respect to global repository assumption, references are resolved with null repository
   *             To be replaced with #getTargetModel_Fair
   *             However, it's quite common pattern to use quotation to create a reference and navigate it to obtain node instance.
   *             E.g. {@code node<Classifier> jlObj = <ClassifierType: Object>.classifier}
   *             Until this practice is over, we have to deal with global repository
   */
  @Deprecated(since = "2018.3", forRemoval = true)
  private SModel getTargetSModel(AssociationData d) {
    SModel current = getSourceNode().getModel();
    if (d instanceof LocalNodePtr || (current != null && current.getReference().equals(getTargetSModelReference()))) {
      return current;
    }

    // external
    SModelReference targetModelReference = getTargetSModelReference();
    // 'unresolved' actually.
    // It can be tmp reference created while copy/pasting a node
    if (targetModelReference == null) return null;

    SModel modelDescriptor = null;
    if (current != null) {
      // indeed, repository might ne null, and present resolve() implementation tolerates null, see below.
      // likely, shall change once SRepository story is complete
      modelDescriptor = targetModelReference.resolve(current.getRepository());
      if (modelDescriptor == null && current.getModule() != null) {
        modelDescriptor = resolveModuleOwnModelHack(current.getModule(), targetModelReference);
      }
    } else if (!RuntimeFlags.isMergeDriverMode()) {
      // [artem] here comes essential piece of MPS functionality - one can create node hanging in the thin air
      // set reference using string for model name and node id, and then magically resolve this simply navigating the reference
      // Why not e.g. nodePointer.resolve(repo) - I have no idea. Try to remove once RuntimeUtils got fixed to see if there are a lot of assumptions like that.
      modelDescriptor = targetModelReference.resolve(null);
    }
    return modelDescriptor;
  }

  // XXX as there are no longer 'proxy' models, not sure there's need in this hack. OTOH, the idea to give module
  // some degree of control over model resolution looks appealing to me
  private static SModel resolveModuleOwnModelHack(SModule module, SModelReference targetModelReference) {
    // FIXME this hack is a replacement for deprecated SModule.resolveInDependencies
    // which used to help in resolution of transient proxy models. Transient models are not
    // available in a repository unless published, and regular model id we use for them are
    // globally unique, thus resolution through SModelReference.resolve() fails.
    // For regular transient models, resolution works as we use transient module id as part of the reference,
    // while for proxy models we use ModelFactory.create API which doesn't provide mechanism to specify model reference yet,
    // and generates one without module id.
    // Even if there's mechanism to specify module id for proxy model, shall decide how to approach greater control of a module
    // over resolution of its models, whether it should be new resolveInDependencies(SModelReference) or a dedicated SRepository with
    // transient/proxy models.
    // Perhaps, immature references in transient models would be even better way to go.
    // In fact, that's how proxy resolution works in in-place == true mode, as source nodes the moment their references got replaced
    // are free-floating (without in-place, they are part of output model), and references get created with immature target node.
    return module.getModel(targetModelReference.getModelId());
  }

  /**
   * replacement for #getTargetSModel() that fairly handles scenario of a detached model/node (not from a repository)
   */
  private SModel getTargetModel_Fair() {
    final SModelReference targetModelReference = getTargetSModelReference();
    // 'unresolved' actually.
    // It can be tmp reference created while copy/pasting a node
    // XXX why don't we assume 'source' model in case 'target' has not been specified? What's the benefit of
    //     (a) keeping and updating model reference information for same-model refs
    //     (b) treating this as error
    if (targetModelReference == null) {
      return null;
    }
    final SModel current = getSourceNode().getModel();
    return getTargetModel_Fair_ProvisionalStatic(targetModelReference, current);
  }

  /*package*/ static SModel getTargetModel_Fair_ProvisionalStatic(SModelReference targetModelReference, SModel current) {
    // target points to the same model
    if (current != null && current.getReference().equals(targetModelReference)) {
      return current;
    }
    if (current == null) {
      return null;
    }
    if (targetModelReference == null) {
      // not clear when does this happen. Transition.makeDirect() code rules out DirectNode and DynamicPtr cases, therefore
      // it's either IndirectNodePtr with a broken reference or ConvertedDirectNode and some unusual condition. Nevertheless,
      // can't do anything here but say 'nada'.
      return null;
    }

    // external
    SModel modelDescriptor = null;
    final SRepository repo = current.getRepository();
    // repository may be null
    if (repo != null) {
      modelDescriptor = targetModelReference.resolve(repo);
    }
    if (modelDescriptor == null && current.getModule() != null) {
      modelDescriptor = resolveModuleOwnModelHack(current.getModule(), targetModelReference);
    }
    return modelDescriptor;
  }

  @Nullable
  /*package*/ private static String getResolveInfo(SNode immatureNode) {
    // FIXME need a better approach to keep names of predefined attributes;
    // however, a dependency to generated kernel module is an overkill for the sake of few strings
    // XXX move both smodel.SNode and SNodeLegacy to [smodel], why it's in [kernel]?
    // If all uses of this method happen to be part of [kernel] impl classes, may want to use SNodeUtil-generated property constant here
    String value = immatureNode.getProperty("resolveInfo");
    if (value != null) {
      return value;
    }
    return immatureNode.getName();
  }


  public boolean isDirect() {
    return getData().isDirectNode();
  }

  @NotNull
  @Override
  public ResolveInfo describeTarget() {
    return ResolveInfo.of(new SNodePointer(getTargetSModelReference(), getTargetNodeId()), getResolveInfo());
  }

  public String getResolveInfo() {
    return getData().getRI();
  }

  public void setResolveInfo(String info) {
    if (Objects.equals(getData().getRI(), info)) {
      return;
    }
    setData(getData().withRI(info == null ? null : info.intern()));
  }

  @Override
  /*package*/ AssociationData getData() {
    // FIXME do I want to keep a copy or would I like to go to SNode impl each time to pick up actual AssociationData?
    return myData;
  }

  private void setData(AssociationData data) {
    ((SNodeAssociationUpdate) mySourceNode).updateAssociation(getLink(), myData, data);
    myData = data;
  }

  private static ModelCommandContext commandContext(SModel targetModel) {
    // took repo from target model, assume MA is the same as the one for source's repo.
    // Indeed, need to have clear contract what happens if source node is inside a repo, while target is not.
    // I assume getTargetModel[_Fair] is not supposed to give target model in that case, therefore would have failed sooner than get to this method
    final SRepository repo = targetModel.getRepository();
    if (repo != null && repo.getModelAccess() instanceof ModelCommandContext.Provider) {
      final ModelCommandContext cc = ((ModelCommandContext.Provider) repo.getModelAccess()).getCommandContext(targetModel);
      if (cc != null) {
        return cc;
      }
      // fall-through
    }
    return ModelCommandContext.EMPTY;
  }
}
