package jetbrains.mps.lang.script.intentions;

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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public class ConvertToMethodFQNameSpecification_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public ConvertToMethodFQNameSpecification_Intention() {
  }
  public String getConcept() {
    return "jetbrains.mps.lang.script.structure.DirectMethodSpecification";
  }
  public String getPresentation() {
    return "ConvertToMethodFQNameSpecification";
  }
  public String getPersistentStateKey() {
    return "jetbrains.mps.lang.script.intentions.ConvertToMethodFQNameSpecification_Intention";
  }
  public String getLanguageFqName() {
    return "jetbrains.mps.lang.script";
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
    return new SNodePointer("r:b58ac159-1e62-40c6-8c0d-e9511a9824de(jetbrains.mps.lang.script.intentions)", "4126624587000694735");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new ConvertToMethodFQNameSpecification_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Convert Direct Method reference to hardcoded FQName specification";
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      SNode methodSpecification = SNodeFactoryOperations.replaceWithNewChild(node, SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xeddeefac2d64437L, 0xbc2cde50fd4ce470L, 0x4243146ba1b412e3L, "jetbrains.mps.lang.script.structure.FQNameMethodSpecification")));
      SPropertyOperations.set(methodSpecification, MetaAdapterFactory.getProperty(0xeddeefac2d64437L, 0xbc2cde50fd4ce470L, 0x4243146ba1b412e3L, 0x1fcdfeb518d2fe29L, "snodeId"), SLinkOperations.getTarget(node, MetaAdapterFactory.getReferenceLink(0xeddeefac2d64437L, 0xbc2cde50fd4ce470L, 0x1fcdfeb518c43583L, 0x1fcdfeb518c43c59L, "methodDeclaration")).getNodeId().toString());
      SNodeOperations.deleteNode(node);
    }
    public IntentionDescriptor getDescriptor() {
      return ConvertToMethodFQNameSpecification_Intention.this;
    }
  }
}
