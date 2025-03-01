package testDefaultEditor.intentions;

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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import jetbrains.mps.intentions.IntentionDescriptor;

public class AddDefaultReferenceAttribute_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public AddDefaultReferenceAttribute_Intention() {
  }
  public String getConcept() {
    return "testDefaultEditor.structure.Developer";
  }
  public String getPresentation() {
    return "AddDefaultReferenceAttribute";
  }
  public String getPersistentStateKey() {
    return "testDefaultEditor.intentions.AddDefaultReferenceAttribute_Intention";
  }
  public String getLanguageFqName() {
    return "testDefaultEditor";
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
    return new SNodePointer("r:be519384-ff73-407d-8bb6-1d18a1417684(testDefaultEditor.intentions)", "2870455723671213010");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new AddDefaultReferenceAttribute_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      if ((AttributeOperations.getAttribute(node, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0xb5734616c4b04639L, 0x9c6af3a1cf5dc4dbL, 0x27d5e845b8e8aeb7L, "testDefaultEditor.structure.DefaultReferenceAttribute"), MetaAdapterFactory.getReferenceLink(0xb5734616c4b04639L, 0x9c6af3a1cf5dc4dbL, 0xd0768d7cf132939L, 0xd0768d7cf132953L, "bestFriend"))) != null)) {
        return "remove default reference attribute";
      } else {
        return "add default reference attribute";
      }
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      if ((AttributeOperations.getAttribute(node, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0xb5734616c4b04639L, 0x9c6af3a1cf5dc4dbL, 0x27d5e845b8e8aeb7L, "testDefaultEditor.structure.DefaultReferenceAttribute"), MetaAdapterFactory.getReferenceLink(0xb5734616c4b04639L, 0x9c6af3a1cf5dc4dbL, 0xd0768d7cf132939L, 0xd0768d7cf132953L, "bestFriend"))) != null)) {
        SNodeOperations.deleteNode(AttributeOperations.getAttribute(node, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0xb5734616c4b04639L, 0x9c6af3a1cf5dc4dbL, 0x27d5e845b8e8aeb7L, "testDefaultEditor.structure.DefaultReferenceAttribute"), MetaAdapterFactory.getReferenceLink(0xb5734616c4b04639L, 0x9c6af3a1cf5dc4dbL, 0xd0768d7cf132939L, 0xd0768d7cf132953L, "bestFriend"))));
      } else {
        AttributeOperations.setAttribute(node, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0xb5734616c4b04639L, 0x9c6af3a1cf5dc4dbL, 0x27d5e845b8e8aeb7L, "testDefaultEditor.structure.DefaultReferenceAttribute"), MetaAdapterFactory.getReferenceLink(0xb5734616c4b04639L, 0x9c6af3a1cf5dc4dbL, 0xd0768d7cf132939L, 0xd0768d7cf132953L, "bestFriend")), SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xb5734616c4b04639L, 0x9c6af3a1cf5dc4dbL, 0x27d5e845b8e8aeb7L, "testDefaultEditor.structure.DefaultReferenceAttribute"))));
        SelectionUtil.selectCell(editorContext, AttributeOperations.getAttribute(node, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0xb5734616c4b04639L, 0x9c6af3a1cf5dc4dbL, 0x27d5e845b8e8aeb7L, "testDefaultEditor.structure.DefaultReferenceAttribute"), MetaAdapterFactory.getReferenceLink(0xb5734616c4b04639L, 0x9c6af3a1cf5dc4dbL, 0xd0768d7cf132939L, 0xd0768d7cf132953L, "bestFriend"))), "const");
      }

    }
    public IntentionDescriptor getDescriptor() {
      return AddDefaultReferenceAttribute_Intention.this;
    }
  }
}
