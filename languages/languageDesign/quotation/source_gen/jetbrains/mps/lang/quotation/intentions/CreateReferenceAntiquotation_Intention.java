package jetbrains.mps.lang.quotation.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.intentions.IntentionType;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public class CreateReferenceAntiquotation_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public CreateReferenceAntiquotation_Intention() {
  }
  public String getConcept() {
    return "jetbrains.mps.lang.quotation.structure.Quotation";
  }
  public String getPresentation() {
    return "CreateReferenceAntiquotation";
  }
  public String getPersistentStateKey() {
    return "jetbrains.mps.lang.quotation.intentions.CreateReferenceAntiquotation_Intention";
  }
  public String getLanguageFqName() {
    return "jetbrains.mps.lang.quotation";
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
    EditorCell selectedCell = editorContext.getSelectedCell();
    if (!(selectedCell.isReferenceCell())) {
      return false;
    }
    SNode contextNode = SNodeOperations.cast(selectedCell.getSNode(), MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept"));
    if (contextNode == null) {
      return false;
    }
    return true;
  }
  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:f4b34c7d-c02f-43b9-b6e7-feff8966461c(jetbrains.mps.lang.quotation.intentions)", "1227886614590");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new CreateReferenceAntiquotation_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Create Reference Antiquotation";
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      EditorCell selectedCell = editorContext.getSelectedCell();
      if (!(selectedCell.isReferenceCell())) {
        return;
      }
      SNode contextNode = SNodeOperations.cast(selectedCell.getSNode(), MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept"));
      if (contextNode == null) {
        return;
      }
      String role = selectedCell.getRole();
      if (SNodeOperations.isInstanceOf(contextNode, MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation"))) {
        SNode attributedNode = SNodeOperations.cast(SNodeOperations.getParent(contextNode), MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept"));
        assert attributedNode != null;
        AttributeOperations.setAttribute(attributedNode, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation"), role), null);
        return;
      }
      if (AttributeOperations.getAttribute(contextNode, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation"), role)) != null) {
        AttributeOperations.setAttribute(contextNode, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation"), role), null);
      } else {
        SNode referenceAntiquotation = SNodeFactoryOperations.setNewAttribute(contextNode, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation"), role), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation")));
        if (selectedCell.isSingleNodeCell()) {
          SPropertyOperations.set(referenceAntiquotation, MetaAdapterFactory.getProperty(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104656L, 0x5a0ec74a8bd5aeb2L, "label"), SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(contextNode), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
        }
      }
    }
    public IntentionDescriptor getDescriptor() {
      return CreateReferenceAntiquotation_Intention.this;
    }
  }
}
