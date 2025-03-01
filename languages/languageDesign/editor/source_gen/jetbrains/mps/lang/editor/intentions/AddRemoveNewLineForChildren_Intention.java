package jetbrains.mps.lang.editor.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.intentions.IntentionType;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.editor.behavior.IStyleContainer_Behavior;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public class AddRemoveNewLineForChildren_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public AddRemoveNewLineForChildren_Intention() {
  }
  public String getConcept() {
    return "jetbrains.mps.lang.editor.structure.EditorCellModel";
  }
  public String getPresentation() {
    return "AddRemoveNewLineForChildren";
  }
  public String getPersistentStateKey() {
    return "jetbrains.mps.lang.editor.intentions.AddRemoveNewLineForChildren_Intention";
  }
  public String getLanguageFqName() {
    return "jetbrains.mps.lang.editor";
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
    if (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eaff2517L, "jetbrains.mps.lang.editor.structure.CellModel_Collection"))) {
      if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eaff2517L, "jetbrains.mps.lang.editor.structure.CellModel_Collection")), MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eaff2517L, 0x10192e0d3baL, "cellLayout")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x120150bb441L, "jetbrains.mps.lang.editor.structure.CellLayout_Indent"))) {
        return true;
      }
    } else if (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eb0ad38eL, "jetbrains.mps.lang.editor.structure.CellModel_RefNodeList"))) {
      if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eb0ad38eL, "jetbrains.mps.lang.editor.structure.CellModel_RefNodeList")), MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1098c8cf48aL, 0x1098c8e38e8L, "cellLayout")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x120150bb441L, "jetbrains.mps.lang.editor.structure.CellLayout_Indent"))) {
        return true;
      }
    }
    return false;
  }
  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:00000000-0000-4000-0000-011c8959029b(jetbrains.mps.lang.editor.intentions)", "1445505956982000110");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new AddRemoveNewLineForChildren_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      if (ListSequence.fromList(IStyleContainer_Behavior.call_getClassItems_1219419901278(node, MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x120194c6bfdL, "jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem").getDeclarationNode())).isEmpty()) {
        return "Add New Line for Children";
      } else {
        return "Remove New Line for Children";
      }
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      if (ListSequence.fromList(IStyleContainer_Behavior.call_getClassItems_1219419901278(node, MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x120194c6bfdL, "jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem").getDeclarationNode())).isEmpty()) {
        SNode styleItem = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x120194c6bfdL, "jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem")), null);
        SPropertyOperations.set(styleItem, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd1283bL, 0x1143bd161dbL, "flag"), "" + (true));
        ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11beb039542L, 0x11beb040d06L, "styleItem"))).addElement(styleItem);
      } else {
        SNodeOperations.deleteNode(ListSequence.fromList(IStyleContainer_Behavior.call_getClassItems_1219419901278(node, MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x120194c6bfdL, "jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem").getDeclarationNode())).first());
      }
    }
    public IntentionDescriptor getDescriptor() {
      return AddRemoveNewLineForChildren_Intention.this;
    }
  }
}
