package jetbrains.mps.vcs.mergehints.intentions;

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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public class SetLinkMergeHint_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public SetLinkMergeHint_Intention() {
  }
  public String getConcept() {
    return "jetbrains.mps.lang.structure.structure.LinkDeclaration";
  }
  public String getPresentation() {
    return "SetLinkMergeHint";
  }
  public String getPersistentStateKey() {
    return "jetbrains.mps.vcs.mergehints.intentions.SetLinkMergeHint_Intention";
  }
  public String getLanguageFqName() {
    return "jetbrains.mps.vcs.mergehints";
  }
  public IntentionType getType() {
    return IntentionType.NORMAL;
  }
  public boolean isAvailableInChildNodes() {
    return false;
  }
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    return true;
  }
  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:fb6ad0f1-e6b1-43e0-ae40-6b43fa1f4536(jetbrains.mps.vcs.mergehints.intentions)", "6307349610828070962");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new SetLinkMergeHint_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return (((AttributeOperations.getAttribute(node, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x37e03aa1728949bcL, 0x826930de5eceec76L, 0x657f08af7deb331aL, "jetbrains.mps.vcs.mergehints.structure.MergeHint"))) == null) ? "set" : "clear")) + " @mergeHint attribute";
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      if ((AttributeOperations.getAttribute(node, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x37e03aa1728949bcL, 0x826930de5eceec76L, 0x657f08af7deb331aL, "jetbrains.mps.vcs.mergehints.structure.MergeHint"))) == null)) {
        AttributeOperations.createAndSetAttrbiute(node, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x37e03aa1728949bcL, 0x826930de5eceec76L, 0x657f08af7deb331aL, "jetbrains.mps.vcs.mergehints.structure.MergeHint")), "jetbrains.mps.vcs.mergehints.structure.MergeHint");
      } else {
        SNodeOperations.deleteNode(AttributeOperations.getAttribute(node, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x37e03aa1728949bcL, 0x826930de5eceec76L, 0x657f08af7deb331aL, "jetbrains.mps.vcs.mergehints.structure.MergeHint"))));
      }
    }
    public IntentionDescriptor getDescriptor() {
      return SetLinkMergeHint_Intention.this;
    }
  }
}
