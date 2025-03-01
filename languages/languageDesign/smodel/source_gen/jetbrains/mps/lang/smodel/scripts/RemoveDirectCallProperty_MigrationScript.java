package jetbrains.mps.lang.smodel.scripts;

/*Generated by MPS */

import jetbrains.mps.lang.script.runtime.BaseMigrationScript;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.script.runtime.AbstractMigrationRefactoring;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class RemoveDirectCallProperty_MigrationScript extends BaseMigrationScript {
  public RemoveDirectCallProperty_MigrationScript(IOperationContext operationContext) {
    super("Remove directCall property in nodes");
    this.addRefactoring(new AbstractMigrationRefactoring(operationContext) {
      public String getName() {
        return "Remove directCall property in nodes";
      }
      public String getAdditionalInfo() {
        return "Remove directCall property in nodes";
      }
      public String getFqNameOfConceptToSearchInstances() {
        return "jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall";
      }
      public boolean isApplicableInstanceNode(SNode node) {
        return true;
      }
      public void doUpdateInstanceNode(SNode node) {
        SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x1129a43046bL, 0x27990abcdcff2f1dL, "directCall"), null);
      }
      public boolean isShowAsIntention() {
        return false;
      }
    });
  }
}
