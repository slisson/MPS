package jetbrains.mps.lang.smodel.scripts;

/*Generated by MPS */

import jetbrains.mps.lang.script.runtime.BaseMigrationScript;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.script.runtime.AbstractMigrationRefactoring;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SReference;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.model.SNodeId;
import jetbrains.mps.smodel.StaticReference;
import jetbrains.mps.smodel.SModelInternal;
import jetbrains.mps.project.AbstractModule;

public class ISModule_MigrationScript extends BaseMigrationScript {
  public ISModule_MigrationScript(IOperationContext operationContext) {
    super("Migrate IModule to SModule");
    this.addRefactoring(new AbstractMigrationRefactoring(operationContext) {
      public String getName() {
        return "Replacing static field references referencing static fields declared in jetbrains.mps.project.structure.modules.ModuleReference classified with static fields from org.jetbrains.mps.openapi.module.SModuleReference";
      }
      public String getAdditionalInfo() {
        return "Replacing static field references referencing static fields declared in jetbrains.mps.project.structure.modules.ModuleReference classified with static fields from org.jetbrains.mps.openapi.module.SModuleReference";
      }
      public String getFqNameOfConceptToSearchInstances() {
        return "jetbrains.mps.baseLanguage.structure.StaticFieldReference";
      }
      public boolean isApplicableInstanceNode(SNode node) {
        SReference reference = SNodeOperations.getReference(node, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"));
        if (reference == null || jetbrains.mps.util.SNodeOperations.getTargetNodeSilently(reference) != null) {
          return false;
        }

        if (!(PersistenceFacade.getInstance().createModelReference("6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project.structure.modules(MPS.Core/jetbrains.mps.project.structure.modules@java_stub)").equals(reference.getTargetSModelReference()))) {
          return false;
        }

        SNodeId targetNodeId = reference.getTargetNodeId();
        return false;
      }
      public void doUpdateInstanceNode(SNode node) {
        SReference oldReference = SNodeOperations.getReference(node, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"));
        SReference newReference = new StaticReference(oldReference.getRole(), node, PersistenceFacade.getInstance().createModelReference("8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)"), oldReference.getTargetNodeId(), ((jetbrains.mps.smodel.SReference) oldReference).getResolveInfo());
        node.setReference(oldReference.getRole(), null);
        node.setReference("staticFieldDeclaration", newReference);

        ((SModelInternal) node.getModel()).addModelImport(PersistenceFacade.getInstance().createModelReference("8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)"), false);
        ((AbstractModule) node.getModel().getModule()).addDependency(PersistenceFacade.getInstance().createModuleReference("8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)"), false);
      }
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring(operationContext) {
      public String getName() {
        return "Pull up and remove all methods from jetbrains.mps.project.structure.modules.ModuleReference to org.jetbrains.mps.openapi.module.SModuleReference";
      }
      public String getAdditionalInfo() {
        return "Pull up and remove all methods from jetbrains.mps.project.structure.modules.ModuleReference to org.jetbrains.mps.openapi.module.SModuleReference";
      }
      public String getFqNameOfConceptToSearchInstances() {
        return "jetbrains.mps.baseLanguage.structure.IMethodCall";
      }
      public boolean isApplicableInstanceNode(SNode node) {
        SReference reference = SNodeOperations.getReference(node, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"));
        if (reference == null || jetbrains.mps.util.SNodeOperations.getTargetNodeSilently(reference) != null) {
          return false;
        }

        if (!(PersistenceFacade.getInstance().createModelReference("6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project.structure.modules(MPS.Core/jetbrains.mps.project.structure.modules@java_stub)").equals(reference.getTargetSModelReference()))) {
          return false;
        }

        SNodeId targetNodeId = reference.getTargetNodeId();
        if (jetbrains.mps.smodel.SNodeId.fromString("~SModuleReference.getModuleId():org.jetbrains.mps.openapi.module.SModuleId").equals(targetNodeId)) {
          return true;
        }
        if (jetbrains.mps.smodel.SNodeId.fromString("~SModuleReference.getModuleName():java.lang.String").equals(targetNodeId)) {
          return true;
        }
        if (jetbrains.mps.smodel.SNodeId.fromString("~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.module.SModule").equals(targetNodeId)) {
          return true;
        }
        return false;
      }
      public void doUpdateInstanceNode(SNode node) {
        SReference oldReference = SNodeOperations.getReference(node, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"));
        SReference newReference = new StaticReference(oldReference.getRole(), node, PersistenceFacade.getInstance().createModelReference("8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)"), oldReference.getTargetNodeId(), ((jetbrains.mps.smodel.SReference) oldReference).getResolveInfo());
        node.setReference(oldReference.getRole(), null);
        node.setReference("baseMethodDeclaration", newReference);

        ((SModelInternal) node.getModel()).addModelImport(PersistenceFacade.getInstance().createModelReference("8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)"), false);
        ((AbstractModule) node.getModel().getModule()).addDependency(PersistenceFacade.getInstance().createModuleReference("8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)"), false);
      }
      public boolean isShowAsIntention() {
        return false;
      }
    });
  }
}
