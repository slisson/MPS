package jetbrains.mps.execution.configurations.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.intentions.IntentionType;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;

public class AddProducer_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public AddProducer_Intention() {
  }
  public String getConcept() {
    return "jetbrains.mps.execution.configurations.structure.RunConfiguration";
  }
  public String getPresentation() {
    return "AddProducer";
  }
  public String getPersistentStateKey() {
    return "jetbrains.mps.execution.configurations.intentions.AddProducer_Intention";
  }
  public String getLanguageFqName() {
    return "jetbrains.mps.execution.configurations";
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
    final SNode nodeFinal = node;
    return ListSequence.fromList(SModelOperations.roots(SNodeOperations.getModel(node), MetaAdapterFactory.getConcept(0x22e72e4c0f6946ceL, 0x84036750153aa615L, 0x3c97fcb79c842305L, "jetbrains.mps.execution.configurations.structure.RunConfigurationProducer"))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SLinkOperations.getTarget(SLinkOperations.getTarget(it, MetaAdapterFactory.getContainmentLink(0x22e72e4c0f6946ceL, 0x84036750153aa615L, 0x3c97fcb79c842305L, 0x3c97fcb79c84a8efL, "configuration")), MetaAdapterFactory.getReferenceLink(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91001cL, 0xd244b712f91001dL, "persistentConfiguration")) == nodeFinal;
      }
    }).isEmpty();
  }
  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:35b5b700-0b3d-462f-8dd7-537dfc6a7ae6(jetbrains.mps.execution.configurations.intentions)", "2557661505909760572");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new AddProducer_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Create Producer for " + SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      SNode producer = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x22e72e4c0f6946ceL, 0x84036750153aa615L, 0x3c97fcb79c842305L, "jetbrains.mps.execution.configurations.structure.RunConfigurationProducer")), null);
      SLinkOperations.setTarget(producer, MetaAdapterFactory.getContainmentLink(0x22e72e4c0f6946ceL, 0x84036750153aa615L, 0x3c97fcb79c842305L, 0x3c97fcb79c84a8efL, "configuration"), createPersistentConfigurationType_wy7zix_a0b0a(node));
      SPropertyOperations.set(producer, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x115eca8579fL, "virtualPackage"), SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x115eca8579fL, "virtualPackage")));
      SModelOperations.addRootNode(SNodeOperations.getModel(node), producer);
      NavigationSupport.getInstance().openNode(editorContext.getOperationContext(), producer, true, false);
    }
    public IntentionDescriptor getDescriptor() {
      return AddProducer_Intention.this;
    }
  }
  private static SNode createPersistentConfigurationType_wy7zix_a0b0a(Object p0) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode n1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91001cL, "jetbrains.mps.execution.settings.structure.PersistentConfigurationType"), null, null, false);
    n1.setReferenceTarget(MetaAdapterFactory.getReferenceLink(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91001cL, 0xd244b712f91001dL, "persistentConfiguration"), (SNode) p0);
    return n1;
  }
}
