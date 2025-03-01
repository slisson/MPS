package jetbrains.mps.lang.smodel.scripts;

/*Generated by MPS */

import jetbrains.mps.lang.script.runtime.BaseMigrationScript;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.script.runtime.AbstractMigrationRefactoring;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.typesystem.inference.TypeContextManager;
import jetbrains.mps.util.Computable;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.smodel.behavior.SNodeOperation_Behavior;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.lang.typesystem.runtime.HUtil;

public class MigrateAbstractConceptDeclarationMethodOnConceptVariable_MigrationScript extends BaseMigrationScript {
  public MigrateAbstractConceptDeclarationMethodOnConceptVariable_MigrationScript(IOperationContext operationContext) {
    super("Migration abstract concept declaration methods on concept<>");
    this.addRefactoring(new AbstractMigrationRefactoring(operationContext) {
      public String getName() {
        return "Migration abstract concept declaration methods on concept<>";
      }
      public String getAdditionalInfo() {
        return "Migration abstract concept declaration methods on concept<>";
      }
      public String getFqNameOfConceptToSearchInstances() {
        return "jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall";
      }
      public boolean isApplicableInstanceNode(final SNode node) {
        if (SPropertyOperations.getBoolean(SLinkOperations.getTarget(node, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")), MetaAdapterFactory.getProperty(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL, 0x51613f7fe129b24dL, "isStatic"))) {
          return false;
        }
        SNode type = TypeContextManager.getInstance().runResolveAction(new Computable<SNode>() {
          public SNode compute() {
            return TypeChecker.getInstance().getTypeOf(SNodeOperation_Behavior.call_getLeftExpression_1213877508894(node));
          }
        });
        return SNodeOperations.isInstanceOf(type, MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x110f9b63680L, "jetbrains.mps.lang.smodel.structure.SConceptType"));
      }
      public void doUpdateInstanceNode(SNode node) {
        SNode operand = SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"));
        SNode newOperand = _quotation_createNode_dt2z82_a0b0a0(operand);
        SNodeOperations.replaceWithAnother(SNodeOperations.getParent(node), _quotation_createNode_dt2z82_a0a2a0a(newOperand, SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation"))));
      }
      public boolean isShowAsIntention() {
        return false;
      }
    });
  }
  private static SNode _quotation_createNode_dt2z82_a0b0a0(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    SNode quotedNode_3 = null;
    SNode quotedNode_4 = null;
    SNode quotedNode_5 = null;
    SNode quotedNode_6 = null;
    SNode quotedNode_7 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression"), null, null, false);
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x7b0da3c650be8558L, "jetbrains.mps.lang.smodel.structure.AsNodeOperation"), null, null, false);
    quotedNode_2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation"), quotedNode_3);
    quotedNode_4 = (SNode) parameter_1;
    if (quotedNode_4 != null) {
      quotedNode_2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"), HUtil.copyIfNecessary(quotedNode_4));
    }
    return quotedNode_2;
  }
  private static SNode _quotation_createNode_dt2z82_a0a2a0a(Object parameter_1, Object parameter_2) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_3 = null;
    SNode quotedNode_4 = null;
    SNode quotedNode_5 = null;
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression"), null, null, false);
    quotedNode_4 = (SNode) parameter_1;
    if (quotedNode_4 != null) {
      quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"), HUtil.copyIfNecessary(quotedNode_4));
    }
    quotedNode_5 = (SNode) parameter_2;
    if (quotedNode_5 != null) {
      quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation"), HUtil.copyIfNecessary(quotedNode_5));
    }
    return quotedNode_3;
  }
}
