package jetbrains.mps.lang.generator.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.intentions.IntentionType;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.nodeEditor.CreateFromUsageUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.util.Condition;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.util.Setter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import jetbrains.mps.intentions.IntentionDescriptor;

public class NewTemplateInRootMappingRule_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public NewTemplateInRootMappingRule_Intention() {
  }
  public String getConcept() {
    return "jetbrains.mps.lang.generator.structure.Root_MappingRule";
  }
  public String getPresentation() {
    return "NewTemplateInRootMappingRule";
  }
  public String getPersistentStateKey() {
    return "jetbrains.mps.lang.generator.intentions.NewTemplateInRootMappingRule_Intention";
  }
  public String getLanguageFqName() {
    return "jetbrains.mps.lang.generator";
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
    return SLinkOperations.getTarget(node, MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fd54746dbL, 0x10fd54746ddL, "template")) == null;
  }
  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:00000000-0000-4000-0000-011c895902e5(jetbrains.mps.lang.generator.intentions)", "1216334426557");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new NewTemplateInRootMappingRule_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "New Root Template";
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      final Wrappers._T<String> name = new Wrappers._T<String>(CreateFromUsageUtil.getText(editorContext));
      if (name.value == null || name.value.length() == 0) {
        name.value = "map_" + SPropertyOperations.getString(SLinkOperations.getTarget(node, MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0b64647L, 0x10fc0b6e730L, "applicableConcept")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
      }
      final SNode rule = node;
      CreateFromUsageUtil.showCreateNewRootMenu(editorContext, new Condition<SNode>() {
        public boolean met(SNode n) {
          SNode c = (SNode) n;
          if (SConceptOperations.isExactly(SNodeOperations.asSConcept(c), MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10313ed7688L, "jetbrains.mps.lang.generator.structure.TemplateSwitch"))) {
            return false;
          }
          if (SConceptOperations.isExactly(SNodeOperations.asSConcept(c), MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0xff0bea0475L, "jetbrains.mps.lang.generator.structure.MappingConfiguration"))) {
            return false;
          }
          if (SConceptOperations.isExactly(SNodeOperations.asSConcept(c), MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfe43cb41d0L, "jetbrains.mps.lang.generator.structure.TemplateDeclaration"))) {
            return false;
          }
          if (SConceptOperations.isExactly(SNodeOperations.asSConcept(c), MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x1165958fcd6L, "jetbrains.mps.lang.generator.structure.MappingScript"))) {
            return false;
          }
          return true;
        }
      }, new Setter<SNode>() {
        public void set(SNode root) {
          if (!(SNodeOperations.isInstanceOf(root, MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, "jetbrains.mps.lang.core.structure.INamedConcept")))) {
            return;
          }
          SPropertyOperations.set(SNodeOperations.cast(root, MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, "jetbrains.mps.lang.core.structure.INamedConcept")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), name.value);
          MacroIntentionsUtil.copyVirtualPackage(root, node);
          SLinkOperations.setTarget(AttributeOperations.getAttribute(root, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11017244494L, "jetbrains.mps.lang.generator.structure.RootTemplateAnnotation"))), MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11017244494L, 0x11017255ccfL, "applicableConcept"), SLinkOperations.getTarget(rule, MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0b64647L, 0x10fc0b6e730L, "applicableConcept")));
          SLinkOperations.setTarget(rule, MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fd54746dbL, 0x10fd54746ddL, "template"), SNodeOperations.cast(root, MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, "jetbrains.mps.lang.core.structure.INamedConcept")));
          SelectionUtil.selectCell(editorContext, rule, "templateName");
        }
      });
    }
    public IntentionDescriptor getDescriptor() {
      return NewTemplateInRootMappingRule_Intention.this;
    }
  }
}
