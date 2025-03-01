package jetbrains.mps.lang.refactoring.behavior;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.interpreted.BehaviorAspectInterpreted;

public class BehaviorAspectDescriptor implements jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor {
  public BehaviorAspectDescriptor() {
  }
  public BehaviorDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_846f5o_a0a0b, fqName)) {
      case 10:
        return new DoRefactorClause_BehaviorDescriptor();
      case 45:
        return new UpdateModelClause_BehaviorDescriptor();
      case 5:
        return new ConceptFunctionParameter_SModel_BehaviorDescriptor();
      case 44:
        return new UpdateModelByDefaultOperation_BehaviorDescriptor();
      case 46:
        return new UpdateModelProcedure_BehaviorDescriptor();
      case 0:
        return new AbstractMoveNodeExpression_BehaviorDescriptor();
      case 27:
        return new MoveNodeToModelExpression_BehaviorDescriptor();
      case 28:
        return new MoveNodeToNodeExpression_BehaviorDescriptor();
      case 29:
        return new MoveNodesToModelExpression_BehaviorDescriptor();
      case 30:
        return new MoveNodesToNodeExpression_BehaviorDescriptor();
      case 1:
        return new AffectedNodesClause_BehaviorDescriptor();
      case 15:
        return new IsApplicableToModelClause_BehaviorDescriptor();
      case 3:
        return new ConceptFunctionParameter_Model_BehaviorDescriptor();
      case 13:
        return new GetModelsToUpdateClause_BehaviorDescriptor();
      case 20:
        return new MergeNodeWithAnotherNodeExpression_BehaviorDescriptor();
      case 22:
        return new ModelTarget_BehaviorDescriptor();
      case 26:
        return new ModuleTarget_BehaviorDescriptor();
      case 32:
        return new NodeTarget_BehaviorDescriptor();
      case 16:
        return new IsApplicableToModuleClause_BehaviorDescriptor();
      case 4:
        return new ConceptFunctionParameter_Module_BehaviorDescriptor();
      case 17:
        return new IsApplicableToNodeClause_BehaviorDescriptor();
      case 6:
        return new ConceptFunctionParameter_SNode_BehaviorDescriptor();
      case 38:
        return new RefactoringField_BehaviorDescriptor();
      case 40:
        return new RefactoringParameter_BehaviorDescriptor();
      case 41:
        return new RefactoringParameterReference_BehaviorDescriptor();
      case 39:
        return new RefactoringFieldReference_BehaviorDescriptor();
      case 14:
        return new InitClause_BehaviorDescriptor();
      case 36:
        return new Refactoring_BehaviorDescriptor();
      case 11:
        return new DoWhenDoneClause_BehaviorDescriptor();
      case 21:
        return new ModelDescriptorOperation_BehaviorDescriptor();
      case 25:
        return new ModuleOperation_BehaviorDescriptor();
      case 31:
        return new NodeOperation_BehaviorDescriptor();
      case 33:
        return new NodesOperation_BehaviorDescriptor();
      case 34:
        return new OperationContextOperation_BehaviorDescriptor();
      case 35:
        return new ProjectOperation_BehaviorDescriptor();
      case 43:
        return new ScopeOperation_BehaviorDescriptor();
      case 37:
        return new RefactoringContext_ConceptFunctionParameter_BehaviorDescriptor();
      case 7:
        return new ContextType_BehaviorDescriptor();
      case 24:
        return new ModelsToGenerateClause_BehaviorDescriptor();
      case 2:
        return new ChangeFeatureNameExpression_BehaviorDescriptor();
      case 9:
        return new DeleteFeatureExpression_BehaviorDescriptor();
      case 19:
        return new MainProjectOperation_BehaviorDescriptor();
      case 23:
        return new ModelsToGenerateByDefault_BehaviorDescriptor();
      case 8:
        return new CreateRefactoringContext_BehaviorDescriptor();
      case 18:
        return new IsRefactoringApplicable_BehaviorDescriptor();
      case 12:
        return new ExecuteRefactoringStatement_BehaviorDescriptor();
      case 42:
        return new RepositoryOperation_BehaviorDescriptor();
      default:
        return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
    }
  }
  private static String[] stringSwitchCases_846f5o_a0a0b = new String[]{"jetbrains.mps.lang.refactoring.structure.AbstractMoveNodeExpression", "jetbrains.mps.lang.refactoring.structure.AffectedNodesClause", "jetbrains.mps.lang.refactoring.structure.ChangeFeatureNameExpression", "jetbrains.mps.lang.refactoring.structure.ConceptFunctionParameter_Model", "jetbrains.mps.lang.refactoring.structure.ConceptFunctionParameter_Module", "jetbrains.mps.lang.refactoring.structure.ConceptFunctionParameter_SModel", "jetbrains.mps.lang.refactoring.structure.ConceptFunctionParameter_SNode", "jetbrains.mps.lang.refactoring.structure.ContextType", "jetbrains.mps.lang.refactoring.structure.CreateRefactoringContext", "jetbrains.mps.lang.refactoring.structure.DeleteFeatureExpression", "jetbrains.mps.lang.refactoring.structure.DoRefactorClause", "jetbrains.mps.lang.refactoring.structure.DoWhenDoneClause", "jetbrains.mps.lang.refactoring.structure.ExecuteRefactoringStatement", "jetbrains.mps.lang.refactoring.structure.GetModelsToUpdateClause", "jetbrains.mps.lang.refactoring.structure.InitClause", "jetbrains.mps.lang.refactoring.structure.IsApplicableToModelClause", "jetbrains.mps.lang.refactoring.structure.IsApplicableToModuleClause", "jetbrains.mps.lang.refactoring.structure.IsApplicableToNodeClause", "jetbrains.mps.lang.refactoring.structure.IsRefactoringApplicable", "jetbrains.mps.lang.refactoring.structure.MainProjectOperation", "jetbrains.mps.lang.refactoring.structure.MergeNodeWithAnotherNodeExpression", "jetbrains.mps.lang.refactoring.structure.ModelDescriptorOperation", "jetbrains.mps.lang.refactoring.structure.ModelTarget", "jetbrains.mps.lang.refactoring.structure.ModelsToGenerateByDefault", "jetbrains.mps.lang.refactoring.structure.ModelsToGenerateClause", "jetbrains.mps.lang.refactoring.structure.ModuleOperation", "jetbrains.mps.lang.refactoring.structure.ModuleTarget", "jetbrains.mps.lang.refactoring.structure.MoveNodeToModelExpression", "jetbrains.mps.lang.refactoring.structure.MoveNodeToNodeExpression", "jetbrains.mps.lang.refactoring.structure.MoveNodesToModelExpression", "jetbrains.mps.lang.refactoring.structure.MoveNodesToNodeExpression", "jetbrains.mps.lang.refactoring.structure.NodeOperation", "jetbrains.mps.lang.refactoring.structure.NodeTarget", "jetbrains.mps.lang.refactoring.structure.NodesOperation", "jetbrains.mps.lang.refactoring.structure.OperationContextOperation", "jetbrains.mps.lang.refactoring.structure.ProjectOperation", "jetbrains.mps.lang.refactoring.structure.Refactoring", "jetbrains.mps.lang.refactoring.structure.RefactoringContext_ConceptFunctionParameter", "jetbrains.mps.lang.refactoring.structure.RefactoringField", "jetbrains.mps.lang.refactoring.structure.RefactoringFieldReference", "jetbrains.mps.lang.refactoring.structure.RefactoringParameter", "jetbrains.mps.lang.refactoring.structure.RefactoringParameterReference", "jetbrains.mps.lang.refactoring.structure.RepositoryOperation", "jetbrains.mps.lang.refactoring.structure.ScopeOperation", "jetbrains.mps.lang.refactoring.structure.UpdateModelByDefaultOperation", "jetbrains.mps.lang.refactoring.structure.UpdateModelClause", "jetbrains.mps.lang.refactoring.structure.UpdateModelProcedure"};
}
