package jetbrains.mps.smodel.adapter.structure.language;

import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.project.dependency.modules.LanguageDependenciesManager;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.adapter.structure.concept.SConceptAdapterById;
import jetbrains.mps.smodel.adapter.structure.concept.SInterfaceConceptAdapterById;
import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SDependencyScope;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public abstract class SLanguageAdapter implements SLanguage {
  protected String myLanguageFqName;

  public SLanguageAdapter(@NotNull String language) {
    this.myLanguageFqName = language;
  }

  @Nullable
  public abstract LanguageRuntime getLanguageDescriptor();

  @Override
  @Nullable
  public abstract Language getSourceModule();

  @Override
  public String getQualifiedName() {
    return myLanguageFqName;
  }

  @Override
  public Iterable<SAbstractConcept> getConcepts() {
    LanguageRuntime runtime = getLanguageDescriptor();
    if (runtime == null) return Collections.<SAbstractConcept>emptySet();

    StructureAspectDescriptor struc = getLanguageDescriptor().getAspect(StructureAspectDescriptor.class);
    ArrayList<SAbstractConcept> result = new ArrayList<SAbstractConcept>();
    for (ConceptDescriptor cd : ((BaseStructureAspectDescriptor) struc).getDescriptors()) {
      if (cd.isInterfaceConcept()) {
        result.add(new SInterfaceConceptAdapterById(cd.getId(), cd.getConceptFqName()));
      } else {
        result.add(new SConceptAdapterById(cd.getId(), cd.getConceptFqName()));
      }
    }
    return result;
  }

  @Override
  public Iterable<SModuleReference> getLanguageRuntimes() {
    Set<SModuleReference> runtimes = new HashSet<SModuleReference>();
    Language sourceModule = getSourceModule();
    assert sourceModule != null;
    for (Language language : SetSequence.fromSet(LanguageDependenciesManager.getAllExtendedLanguages(sourceModule))) {
      runtimes.addAll(language.getRuntimeModulesReferences());
      // GeneratesInto doesn't qualify as 'true' language runtime, it's rather generator aspect, however, for the time being,
      // while we transit from using 'Extends' between languages to 'GenerateInto' to grab runtime modules, keep them together
      // although GlobalModuleDependenciesManager might be better place to care about this kind of dependency. Anyway,
      // we likely need to move both true RT and 'GeneratesInto' to LanguageRuntime to get rid of source module use here.
      for (SDependency dep : language.getDeclaredDependencies()) {
        if (dep.getScope() == SDependencyScope.GENERATES_INTO && dep.getTarget() instanceof Language) {
          runtimes.addAll(((Language) dep.getTarget()).getRuntimeModulesReferences());
        }
      }
    }
    return runtimes;
  }

  public int getLanguageVersion() {
    LanguageRuntime languageDescriptor = getLanguageDescriptor();
    if (languageDescriptor == null) return -1;
    return languageDescriptor.getVersion();
  }

  @Override
  public String toString() {
    return myLanguageFqName;
  }

  @Override
  public int hashCode() {
    return 0;
  }
}
