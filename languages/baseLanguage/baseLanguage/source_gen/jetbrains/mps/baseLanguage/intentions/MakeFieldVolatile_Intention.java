package jetbrains.mps.baseLanguage.intentions;

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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.intentions.IntentionDescriptor;

public class MakeFieldVolatile_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public MakeFieldVolatile_Intention() {
  }
  public String getConcept() {
    return "jetbrains.mps.baseLanguage.structure.FieldDeclaration";
  }
  public String getPresentation() {
    return "MakeFieldVolatile";
  }
  public String getPersistentStateKey() {
    return "jetbrains.mps.baseLanguage.intentions.MakeFieldVolatile_Intention";
  }
  public String getLanguageFqName() {
    return "jetbrains.mps.baseLanguage";
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
    return new SNodePointer("r:00000000-0000-4000-0000-011c895902c6(jetbrains.mps.baseLanguage.intentions)", "1240251547040");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new MakeFieldVolatile_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return (SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, 0x120c4a208a1L, "isVolatile")) ? "Make Field Not Volatile" : "Make Field Volatile");
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, 0x120c4a208a1L, "isVolatile"), "" + (!(SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, 0x120c4a208a1L, "isVolatile")))));
    }
    public IntentionDescriptor getDescriptor() {
      return MakeFieldVolatile_Intention.this;
    }
  }
}
