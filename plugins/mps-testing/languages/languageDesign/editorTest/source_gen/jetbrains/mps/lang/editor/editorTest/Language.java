package jetbrains.mps.lang.editor.editorTest;

/*Generated by MPS */

import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.adapter.ids.SLanguageId;
import java.util.UUID;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.smodel.runtime.LanguageAspectDescriptor;
import jetbrains.mps.openapi.actions.descriptor.ActionAspectDescriptor;
import jetbrains.mps.actions.descriptor.AbstractActionAspectDescriptor;
import jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor;
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import jetbrains.mps.lang.editor.editorTest.editor.EditorAspectDescriptorImpl;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;

public class Language extends LanguageRuntime {
  public static String MODULE_REF = "81f0abb8-d71e-4d13-a0c1-d2291fbb28b7(jetbrains.mps.lang.editor.editorTest)";
  public Language() {
  }
  @Override
  public String getNamespace() {
    return "jetbrains.mps.lang.editor.editorTest";
  }

  @Override
  public int getVersion() {
    return 0;
  }

  public SLanguageId getId() {
    return new SLanguageId(UUID.fromString("81f0abb8-d71e-4d13-a0c1-d2291fbb28b7"));
  }
  @Override
  protected String[] getExtendedLanguageIDs() {
    return new String[]{"jetbrains.mps.lang.core"};
  }
  @Override
  public Collection<TemplateModule> getGenerators() {
    return null;
  }
  @Override
  protected <T extends LanguageAspectDescriptor> T createAspectDescriptor(Class<T> descriptorClass) {
    if (descriptorClass == ActionAspectDescriptor.class) {
      return (T) new AbstractActionAspectDescriptor() {};
    }
    if (descriptorClass == BehaviorAspectDescriptor.class) {
      return (T) new jetbrains.mps.lang.editor.editorTest.behavior.BehaviorAspectDescriptor();
    }
    if (descriptorClass == ConstraintsAspectDescriptor.class) {
      return (T) new jetbrains.mps.lang.editor.editorTest.constraints.ConstraintsAspectDescriptor();
    }
    if (descriptorClass == EditorAspectDescriptor.class) {
      return (T) new EditorAspectDescriptorImpl();
    }
    if (descriptorClass == StructureAspectDescriptor.class) {
      return (T) new jetbrains.mps.lang.editor.editorTest.structure.StructureAspectDescriptor();
    }
    return super.createAspectDescriptor(descriptorClass);
  }
}
