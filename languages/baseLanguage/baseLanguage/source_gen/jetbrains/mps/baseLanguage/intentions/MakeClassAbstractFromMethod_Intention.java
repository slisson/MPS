package jetbrains.mps.baseLanguage.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.intentions.IntentionType;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import jetbrains.mps.intentions.IntentionDescriptor;

public class MakeClassAbstractFromMethod_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public MakeClassAbstractFromMethod_Intention() {
  }
  public String getConcept() {
    return "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration";
  }
  public String getPresentation() {
    return "MakeClassAbstractFromMethod";
  }
  public String getPersistentStateKey() {
    return "jetbrains.mps.baseLanguage.intentions.MakeClassAbstractFromMethod_Intention";
  }
  public String getLanguageFqName() {
    return "jetbrains.mps.baseLanguage";
  }
  public IntentionType getType() {
    return IntentionType.ERROR;
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
    if ((SNodeOperations.getNodeAncestor(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"), false, false) == null)) {
      return false;
    }
    return SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, 0x1126a8d157dL, "isAbstract")) && eq_vh1n9u_a0a0b0j(SNodeOperations.getConcept(SNodeOperations.getParent(node)), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")) && !(SPropertyOperations.getBoolean(SNodeOperations.cast(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0xfa5cee6dfaL, "abstractClass")));
  }
  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:00000000-0000-4000-0000-011c895902c6(jetbrains.mps.baseLanguage.intentions)", "2357139912674293033");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new MakeClassAbstractFromMethod_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Make Class Abstract";
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      SPropertyOperations.set(SNodeOperations.getNodeAncestor(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"), false, false), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0xfa5cee6dfaL, "abstractClass"), "" + (true));
    }
    public IntentionDescriptor getDescriptor() {
      return MakeClassAbstractFromMethod_Intention.this;
    }
  }
  private static boolean eq_vh1n9u_a0a0b0j(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
}
