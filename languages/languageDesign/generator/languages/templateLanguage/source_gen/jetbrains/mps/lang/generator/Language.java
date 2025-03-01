package jetbrains.mps.lang.generator;

/*Generated by MPS */

import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.adapter.ids.SLanguageId;
import java.util.UUID;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.smodel.runtime.LanguageAspectDescriptor;
import jetbrains.mps.openapi.actions.descriptor.ActionAspectDescriptor;
import jetbrains.mps.lang.generator.actions.ActionAspectDescriptorImpl;
import jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor;
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import jetbrains.mps.lang.generator.editor.EditorAspectDescriptorImpl;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;
import jetbrains.mps.lang.typesystem.runtime.IHelginsDescriptor;
import jetbrains.mps.lang.generator.typesystem.TypesystemDescriptor;

public class Language extends LanguageRuntime {
  public static String MODULE_REF = "b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)";
  public Language() {
  }
  @Override
  public String getNamespace() {
    return "jetbrains.mps.lang.generator";
  }

  @Override
  public int getVersion() {
    return 0;
  }

  public SLanguageId getId() {
    return new SLanguageId(UUID.fromString("b401a680-8325-4110-8fd3-84331ff25bef"));
  }
  @Override
  protected String[] getExtendedLanguageIDs() {
    return new String[]{};
  }
  @Override
  public Collection<TemplateModule> getGenerators() {
    return TemplateUtil.<TemplateModule>asCollection(TemplateUtil.createInterpretedGenerator(this, "f1457ec8-c780-4f6f-89b4-c79af7789be1(jetbrains.mps.lang.generator#1167163152317)"));
  }
  @Override
  protected <T extends LanguageAspectDescriptor> T createAspectDescriptor(Class<T> descriptorClass) {
    if (descriptorClass == ActionAspectDescriptor.class) {
      return (T) new ActionAspectDescriptorImpl();
    }
    if (descriptorClass == BehaviorAspectDescriptor.class) {
      return (T) new jetbrains.mps.lang.generator.behavior.BehaviorAspectDescriptor();
    }
    if (descriptorClass == ConstraintsAspectDescriptor.class) {
      return (T) new jetbrains.mps.lang.generator.constraints.ConstraintsAspectDescriptor();
    }
    if (descriptorClass == EditorAspectDescriptor.class) {
      return (T) new EditorAspectDescriptorImpl();
    }
    if (descriptorClass == StructureAspectDescriptor.class) {
      return (T) new jetbrains.mps.lang.generator.structure.StructureAspectDescriptor();
    }
    if (descriptorClass == IHelginsDescriptor.class) {
      return (T) new TypesystemDescriptor();
    }
    return super.createAspectDescriptor(descriptorClass);
  }
}
