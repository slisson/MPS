package jetbrains.mps.lang.structure.scripts;

/*Generated by MPS */

import jetbrains.mps.lang.script.runtime.BaseMigrationScript;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.script.runtime.AbstractMigrationRefactoring;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.util.NameUtil;

public class CheckRootNodesNamingInternalPolicy_MigrationScript extends BaseMigrationScript {
  public CheckRootNodesNamingInternalPolicy_MigrationScript(IOperationContext operationContext) {
    super("Check Root Concepts' Internal Naming Policy");
    this.addRefactoring(new AbstractMigrationRefactoring(operationContext) {
      public String getName() {
        return "Fix Root Concepts' Aliases";
      }
      public String getAdditionalInfo() {
        return "Fix Root Concepts' Aliases";
      }
      public String getFqNameOfConceptToSearchInstances() {
        return "jetbrains.mps.lang.structure.structure.ConceptDeclaration";
      }
      public boolean isApplicableInstanceNode(SNode node) {
        if (SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x403a32c5772c7ec2L, "abstract"))) {
          return false;
        }
        if (!(SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979ba0450L, 0xff49c1d648L, "rootable")))) {
          return false;
        }
        if (isEmptyString(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias")))) {
          return false;
        }
        return !(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias")).equals(NameUtil.multiWordDecapitalize(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias")))));
      }
      public void doUpdateInstanceNode(SNode node) {
        SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias"), NameUtil.multiWordDecapitalize(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias"))));
      }
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring(operationContext) {
      public String getName() {
        return "Add Alias to Root Concepts";
      }
      public String getAdditionalInfo() {
        return "Add Alias to Root Concepts";
      }
      public String getFqNameOfConceptToSearchInstances() {
        return "jetbrains.mps.lang.structure.structure.ConceptDeclaration";
      }
      public boolean isApplicableInstanceNode(SNode node) {
        if (SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x403a32c5772c7ec2L, "abstract"))) {
          return false;
        }
        if (!(SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979ba0450L, 0xff49c1d648L, "rootable")))) {
          return false;
        }
        return isEmptyString(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias")));
      }
      public void doUpdateInstanceNode(SNode node) {
        StringBuilder sb = new StringBuilder();
        for (String word : NameUtil.splitByCamels(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")))) {
          sb.append(NameUtil.decapitalize(word)).append(" ");
        }
        SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias"), sb.toString().trim());
      }
      public boolean isShowAsIntention() {
        return false;
      }
    });
  }
  private static boolean isEmptyString(String str) {
    return str == null || str.length() == 0;
  }
}
