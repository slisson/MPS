package jetbrains.mps.lang.smodel.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.intentions.IntentionType;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public class Replace_ListType_withNodeListType_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public Replace_ListType_withNodeListType_Intention() {
  }
  public String getConcept() {
    return "jetbrains.mps.baseLanguage.collections.structure.ListType";
  }
  public String getPresentation() {
    return "Replace_ListType_withNodeListType";
  }
  public String getPersistentStateKey() {
    return "jetbrains.mps.lang.smodel.intentions.Replace_ListType_withNodeListType_Intention";
  }
  public String getLanguageFqName() {
    return "jetbrains.mps.lang.smodel";
  }
  public IntentionType getType() {
    return IntentionType.NORMAL;
  }
  public boolean isAvailableInChildNodes() {
    return false;
  }
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c25fb076aL, 0x10c25fe95c5L, "elementType")), MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f968b3caL, "jetbrains.mps.lang.smodel.structure.SNodeType"));
  }
  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:00000000-0000-4000-0000-011c895902ff(jetbrains.mps.lang.smodel.intentions)", "1205354609722");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new Replace_ListType_withNodeListType_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Replace with 'nlist < >'";
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      SNodeFactoryOperations.replaceWithNewChild(node, SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x10aae26be32L, "jetbrains.mps.lang.smodel.structure.SNodeListType")));
    }
    public IntentionDescriptor getDescriptor() {
      return Replace_ListType_withNodeListType_Intention.this;
    }
  }
}
