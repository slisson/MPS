package jetbrains.mps.lang.editor.intentions;

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
import jetbrains.mps.lang.editor.behavior.CellModel_ListWithRole_Behavior;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public class ChangeOrientationList_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public ChangeOrientationList_Intention() {
  }
  public String getConcept() {
    return "jetbrains.mps.lang.editor.structure.CellModel_ListWithRole";
  }
  public String getPresentation() {
    return "ChangeOrientationList";
  }
  public String getPersistentStateKey() {
    return "jetbrains.mps.lang.editor.intentions.ChangeOrientationList_Intention";
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
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1098c8cf48aL, 0x1098c8e38e8L, "cellLayout")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10192dcf685L, "jetbrains.mps.lang.editor.structure.CellLayout_Horizontal")) || SNodeOperations.isInstanceOf(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1098c8cf48aL, 0x1098c8e38e8L, "cellLayout")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10192dd4cbeL, "jetbrains.mps.lang.editor.structure.CellLayout_Vertical"));
  }
  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:00000000-0000-4000-0000-011c8959029b(jetbrains.mps.lang.editor.intentions)", "1227111401175");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new ChangeOrientationList_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return (CellModel_ListWithRole_Behavior.call_isVertical_1239873472748(node) ? "Make Horizontal" : "Make Vertical");
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      if (CellModel_ListWithRole_Behavior.call_isVertical_1239873472748(node)) {
        SLinkOperations.setTarget(node, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1098c8cf48aL, 0x1098c8e38e8L, "cellLayout"), SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10192dcf685L, "jetbrains.mps.lang.editor.structure.CellLayout_Horizontal")), null));
      } else {
        SLinkOperations.setTarget(node, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1098c8cf48aL, 0x1098c8e38e8L, "cellLayout"), SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10192dd4cbeL, "jetbrains.mps.lang.editor.structure.CellLayout_Vertical")), null));
      }
    }
    public IntentionDescriptor getDescriptor() {
      return ChangeOrientationList_Intention.this;
    }
  }
}
