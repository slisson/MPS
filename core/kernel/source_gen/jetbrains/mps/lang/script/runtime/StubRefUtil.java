package jetbrains.mps.lang.script.runtime;

/*Generated by MPS */

import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SReference;
import jetbrains.mps.smodel.SNodeId;
import org.jetbrains.mps.openapi.model.SModelReference;
import jetbrains.mps.smodel.SModelStereotype;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.util.NameUtil;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import jetbrains.mps.smodel.SModelInternal;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.project.dependency.GlobalModuleDependenciesManager;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.smodel.StaticReference;

public class StubRefUtil {
  private static boolean isReferenceToJavaStub(@NotNull SReference reference) {
    if (!(reference.getTargetNodeId() instanceof SNodeId.Foreign)) {
      return false;
    }

    SModelReference tRef = reference.getTargetSModelReference();
    if (tRef == null) {
      return false;
    }

    return SModelStereotype.getStereotype(tRef.getModelName()).endsWith(SModelStereotype.STUB_SUFFIX);
  }
  private static String getTargetStringFromReference(@NotNull SReference reference) {
    String targetPackage = SModelStereotype.withoutStereotype(check_4tnolf_a0a0a1(check_4tnolf_a0a0a0b(reference)));
    String targetName = reference.getTargetNodeId().toString();
    return targetPackage + "/" + targetName;
  }
  public static boolean isReferenceToClass(@Nullable SReference reference, @NotNull String classFqName) {
    if (reference == null || !(isReferenceToJavaStub(reference))) {
      return false;
    }
    String expectedString = NameUtil.namespaceFromLongName(classFqName) + "/~" + NameUtil.shortNameFromLongName(classFqName);
    return getTargetStringFromReference(reference).equals(expectedString);
  }
  public static boolean isReferenceToMethod(@Nullable SReference reference, @NotNull String methodSignature) {
    if (reference == null || !(isReferenceToJavaStub(reference))) {
      return false;
    }
    int packageClassDot = methodSignature.lastIndexOf(".", methodSignature.lastIndexOf(".", methodSignature.indexOf("(")) - 1);
    String expectedString = methodSignature.substring(0, packageClassDot) + "/~" + methodSignature.substring(packageClassDot + 1);
    return expectedString.equals(getTargetStringFromReference(reference));
  }
  public static boolean isReferenceToField(@Nullable SReference reference, @NotNull String field) {
    if (reference == null || !(isReferenceToJavaStub(reference))) {
      return false;
    }
    int packageClassDot = field.lastIndexOf(".", field.lastIndexOf(".") - 1);
    String expectedString = field.substring(0, packageClassDot) + "/~" + field.substring(packageClassDot + 1);
    return expectedString.equals(getTargetStringFromReference(reference));
  }
  public static boolean isStaticMethodCall(SNode staticMethodCall, @NotNull String methodSignature) {
    String classFqName = NameUtil.namespaceFromLongName(methodSignature.substring(0, methodSignature.indexOf("(")));
    return isReferenceToClass(SNodeOperations.getReference(staticMethodCall, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf09L, 0x10a7588b546L, "classConcept")), classFqName) && isReferenceToMethod(SNodeOperations.getReference(staticMethodCall, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")), methodSignature);
  }
  public static boolean isStaticFieldReference(SNode staticFieldRef, @NotNull String field) {
    String classFqName = NameUtil.namespaceFromLongName(field);
    return isReferenceToClass(SNodeOperations.getReference(staticFieldRef, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940c80846L, 0x10a75869f9bL, "classifier")), classFqName) && isReferenceToField(SNodeOperations.getReference(staticFieldRef, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration")), field);
  }
  public static boolean isReferenceTo(@Nullable SReference ref, @NotNull SModelReference targetModel, @NotNull org.jetbrains.mps.openapi.model.SNodeId targetId) {
    return ref != null && targetId.equals(ref.getTargetNodeId()) && targetModel.equals(ref.getTargetSModelReference());
  }
  public static boolean isStaticMethodCall(SNode staticMethodCall, @NotNull String targetModelID, @NotNull String classId, @NotNull String methodId) {
    SModelReference targetModel = PersistenceFacade.getInstance().createModelReference(targetModelID);
    return isReferenceTo(SNodeOperations.getReference(staticMethodCall, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf09L, 0x10a7588b546L, "classConcept")), targetModel, SNodeId.fromString(classId)) && isReferenceTo(SNodeOperations.getReference(staticMethodCall, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")), targetModel, SNodeId.fromString(methodId));
  }
  public static boolean isClassifierType(SNode classifierType, @NotNull String targetModel, @NotNull String classId) {
    return isReferenceTo(SNodeOperations.getReference(classifierType, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), PersistenceFacade.getInstance().createModelReference(targetModel), PersistenceFacade.getInstance().createNodeId(classId));
  }
  public static boolean isInstanceMethodCall(SNode methodCallOperation, @NotNull String methodSignature) {
    return isReferenceToMethod(SNodeOperations.getReference(methodCallOperation, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")), methodSignature);
  }
  public static boolean isInstanceMethodCall(SNode methodCallOperation, @NotNull SModelReference targetModel, @NotNull String methodId) {
    return isReferenceTo(SNodeOperations.getReference(methodCallOperation, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")), targetModel, SNodeId.fromString(methodId));
  }
  public static boolean isEnumClassifierReference(SNode ref, String modelRef, String nodeRef) {
    return isReferenceTo(SNodeOperations.getReference(ref, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc37588bc8L, 0x10a758428feL, "enumClass")), PersistenceFacade.getInstance().createModelReference(modelRef), PersistenceFacade.getInstance().createNodeId(nodeRef));
  }
  public static boolean isClassCreator(SNode creator, @NotNull String creatorSignature) {
    return isReferenceToMethod(SNodeOperations.getReference(creator, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")), creatorSignature);
  }
  public static boolean isClassCreator(SNode creator, @NotNull String creatorModel, @NotNull String creatorId) {
    return isReferenceTo(SNodeOperations.getReference(creator, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")), PersistenceFacade.getInstance().createModelReference(creatorModel), PersistenceFacade.getInstance().createNodeId(creatorId));
  }
  public static void addRequiredImports(SModel model, SNode newNode) {
    for (SReference ref : ListSequence.fromList(SNodeOperations.getNodeDescendants(newNode, null, true, new SAbstractConcept[]{})).translate(new ITranslator2<SNode, SReference>() {
      public Iterable<SReference> translate(SNode n) {
        return SNodeOperations.getReferences(n);
      }
    })) {
      SModelReference targetModelRef = ref.getTargetSModelReference();
      ((SModelInternal) model).addModelImport(targetModelRef, false);

      SModule sourceModule = check_4tnolf_a0d0a0p(model);
      SModule targetModule = check_4tnolf_a0e0a0p(SModelRepository.getInstance().getModelDescriptor(targetModelRef));
      if (sourceModule != null && targetModule != null) {
        if (!(new GlobalModuleDependenciesManager(sourceModule).getModules(GlobalModuleDependenciesManager.Deptype.VISIBLE).contains(targetModule))) {
          ((AbstractModule) sourceModule).addDependency(targetModule.getModuleReference(), false);
        }
      }
    }
  }
  public static void replaceNode(SNode oldNode, SNode newNode) {
    StubRefUtil.addRequiredImports(SNodeOperations.getModel(oldNode), newNode);
    SNodeOperations.replaceWithAnother(oldNode, newNode);
  }
  public static void replaceRefs(SNode oldNode, SNode newNode) {
    for (SReference newRef : Sequence.fromIterable(newNode.getReferences())) {
      oldNode.setReference(newRef.getRole(), null);
      oldNode.setReference(new StaticReference(newRef.getRole(), oldNode, newRef.getTargetSModelReference(), newRef.getTargetNodeId(), ((jetbrains.mps.smodel.SReference) newRef).getResolveInfo()).getRole(), new StaticReference(newRef.getRole(), oldNode, newRef.getTargetSModelReference(), newRef.getTargetNodeId(), ((jetbrains.mps.smodel.SReference) newRef).getResolveInfo()));
    }
    StubRefUtil.addRequiredImports(oldNode.getModel(), newNode);
  }
  public static void replaceReference(SNode oldNode, SReference reference) {
    oldNode.setReference(reference.getRole(), null);
    oldNode.setReference(new StaticReference(reference.getRole(), oldNode, reference.getTargetSModelReference(), reference.getTargetNodeId(), ((jetbrains.mps.smodel.SReference) reference).getResolveInfo()).getRole(), new StaticReference(reference.getRole(), oldNode, reference.getTargetSModelReference(), reference.getTargetNodeId(), ((jetbrains.mps.smodel.SReference) reference).getResolveInfo()));
    StubRefUtil.addRequiredImports(oldNode.getModel(), reference.getSourceNode());
  }
  private static String check_4tnolf_a0a0a1(SModelReference checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getModelName();
    }
    return null;
  }
  private static SModelReference check_4tnolf_a0a0a0b(SReference checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getTargetSModelReference();
    }
    return null;
  }
  private static SModule check_4tnolf_a0d0a0p(SModel checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getModule();
    }
    return null;
  }
  private static SModule check_4tnolf_a0e0a0p(SModel checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getModule();
    }
    return null;
  }
}
