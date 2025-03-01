package jetbrains.mps.baseLanguage.intentions;

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

public class SwitchToCustomPropertyImplementation_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public SwitchToCustomPropertyImplementation_Intention() {
  }
  public String getConcept() {
    return "jetbrains.mps.baseLanguage.structure.Property";
  }
  public String getPresentation() {
    return "SwitchToCustomPropertyImplementation";
  }
  public String getPersistentStateKey() {
    return "jetbrains.mps.baseLanguage.intentions.SwitchToCustomPropertyImplementation_Intention";
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
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    return !(SNodeOperations.isInstanceOf(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b744dafeL, 0x117b75fb65aL, "propertyImplementation")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b8f1b18eL, "jetbrains.mps.baseLanguage.structure.CustomPropertyImplementation")));
  }
  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:00000000-0000-4000-0000-011c895902c6(jetbrains.mps.baseLanguage.intentions)", "6526572214144685276");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new SwitchToCustomPropertyImplementation_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Customize Getter and Setter";
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      SNode toBeReplaced = SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b744dafeL, 0x117b75fb65aL, "propertyImplementation"));
      SNode replacingNode = SNodeFactoryOperations.replaceWithNewChild(toBeReplaced, SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b8f1b18eL, "jetbrains.mps.baseLanguage.structure.CustomPropertyImplementation")));
      if (SNodeOperations.isInstanceOf(toBeReplaced, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x3b7a2005a14cfe5eL, "jetbrains.mps.baseLanguage.structure.CustomSetterPropertyImplementation"))) {
        SLinkOperations.setTarget(replacingNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b8f1b18eL, 0x117bd9b26faL, "setAccessor"), SLinkOperations.getTarget(SNodeOperations.cast(toBeReplaced, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x3b7a2005a14cfe5eL, "jetbrains.mps.baseLanguage.structure.CustomSetterPropertyImplementation")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x3b7a2005a14cfe5eL, 0x3b7a2005a14d0185L, "setAccessor")));
      }
    }
    public IntentionDescriptor getDescriptor() {
      return SwitchToCustomPropertyImplementation_Intention.this;
    }
  }
}
