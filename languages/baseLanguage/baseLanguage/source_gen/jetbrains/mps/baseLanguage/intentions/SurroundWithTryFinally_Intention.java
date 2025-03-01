package jetbrains.mps.baseLanguage.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.intentions.IntentionType;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public class SurroundWithTryFinally_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public SurroundWithTryFinally_Intention() {
  }
  public String getConcept() {
    return "jetbrains.mps.baseLanguage.structure.Statement";
  }
  public String getPresentation() {
    return "SurroundWithTryFinally";
  }
  public String getPersistentStateKey() {
    return "jetbrains.mps.baseLanguage.intentions.SurroundWithTryFinally_Intention";
  }
  public String getLanguageFqName() {
    return "jetbrains.mps.baseLanguage";
  }
  public IntentionType getType() {
    return IntentionType.NORMAL;
  }
  public boolean isAvailableInChildNodes() {
    return true;
  }
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    return true;
  }
  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:00000000-0000-4000-0000-011c895902c6(jetbrains.mps.baseLanguage.intentions)", "3366354716707895805");
  }
  public boolean isSurroundWith() {
    return true;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new SurroundWithTryFinally_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Try / Finally";
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      SNode tryStatement = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cacebf556L, "jetbrains.mps.baseLanguage.structure.TryStatement")), null);
      List<SNode> selectedNodes = editorContext.getSelectedNodes();
      SNodeOperations.insertNextSiblingChild(node, tryStatement);
      for (SNode selectedNode : ListSequence.fromList(selectedNodes)) {
        ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(tryStatement, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cacebf556L, 0x10cacec83aeL, "body")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"))).addElement(SNodeOperations.getNodeAncestor(selectedNode, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b215L, "jetbrains.mps.baseLanguage.structure.Statement"), true, false));
      }
      editorContext.select(SLinkOperations.getTarget(tryStatement, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cacebf556L, 0x10cacecb713L, "finallyBody")));
    }
    public IntentionDescriptor getDescriptor() {
      return SurroundWithTryFinally_Intention.this;
    }
  }
}
