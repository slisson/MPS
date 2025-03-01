package jetbrains.mps.baseLanguage.typesystem;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.dataFlow.framework.Program;
import jetbrains.mps.lang.dataFlow.DataFlowManager;
import jetbrains.mps.lang.dataFlow.DataFlow;
import jetbrains.mps.lang.typesystem.dependencies.CheckingMethod;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.errors.BaseQuickFixProvider;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class VariableReferenceUtil {
  public VariableReferenceUtil() {
  }
  public static boolean isUninitializedOrBad(SNode thisNode) {
    SNode declContainer = SNodeOperations.getNodeAncestor(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration")), MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11750ef8265L, "jetbrains.mps.baseLanguage.structure.IStatementListContainer"), false, false);
    if (declContainer == null) {
      return true;
    }
    SNode currentContainer = SNodeOperations.getNodeAncestor(thisNode, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11750ef8265L, "jetbrains.mps.baseLanguage.structure.IStatementListContainer"), false, false);
    SNode ourContainer = null;

    SNode assignmentExpression = SNodeOperations.as(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e96L, "jetbrains.mps.baseLanguage.structure.AssignmentExpression"));
    if (SLinkOperations.getTarget(assignmentExpression, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11b0d00332cL, 0xf8c77f1e97L, "lValue")) != thisNode) {
      return true;
    }

    while ((currentContainer != null)) {
      if (currentContainer == declContainer) {
        ourContainer = currentContainer;
        break;
      }
      currentContainer = SNodeOperations.getNodeAncestor(currentContainer, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11750ef8265L, "jetbrains.mps.baseLanguage.structure.IStatementListContainer"), false, false);
    }
    if ((ourContainer != null)) {
      Program program = DataFlowManager.getInstance().buildProgramFor(ourContainer);
      return !(DataFlow.isInitializedRewritten(program, assignmentExpression));
    } else {
      return true;
    }
  }
  public static boolean isAssigned(Iterable<SNode> references) {
    for (SNode ref : references) {
      if (CheckingUtil.isAssigned(ref)) {
        return true;
      }
    }
    return false;
  }
  public static boolean isRead(Iterable<SNode> references) {
    for (SNode ref : references) {
      if (!(CheckingUtil.isAssigned(ref))) {
        return true;
      }
    }
    return false;
  }
  @CheckingMethod
  public static void checkField(final TypeCheckingContext typeCheckingContext, SNode field, Iterable<SNode> references) {
    if (Sequence.fromIterable(references).isEmpty()) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportWarning(field, "Field is never used", "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "7581428506283755675", null, errorTarget);
        {
          BaseQuickFixProvider intentionProvider = new BaseQuickFixProvider("jetbrains.mps.baseLanguage.typesystem.RemoveUnusedField_QuickFix", false);
          _reporter_2309309498.addIntentionProvider(intentionProvider);
        }
      }
    } else {
      boolean isAssigned = VariableReferenceUtil.isAssigned(references);
      boolean isRead = VariableReferenceUtil.isRead(references);
      if (SLinkOperations.getTarget(field, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")) != null) {
        isAssigned = true;
      }
      if (!(isAssigned)) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportWarning(field, "Private field " + SPropertyOperations.getString(field, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) + " is never assigned", "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "7581428506283755703", null, errorTarget);
        }
      } else if (!(isRead)) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportWarning(field, "Private field " + SPropertyOperations.getString(field, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) + " is assigned but never accessed", "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "7581428506283755712", null, errorTarget);
        }
      }
    }
  }
}
