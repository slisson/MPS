package jetbrains.mps.baseLanguage.textGen;

/*Generated by MPS */

import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.textGen.SNodeTextGen;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import java.util.Set;
import jetbrains.mps.textGen.TextGen;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.baseLanguage.behavior.Classifier_Behavior;
import jetbrains.mps.textGen.TextGenBuffer;
import org.jetbrains.mps.openapi.model.SReference;
import jetbrains.mps.baseLanguage.tuples.runtime.Tuples;
import jetbrains.mps.smodel.DynamicReference;
import jetbrains.mps.baseLanguage.tuples.runtime.MultiTuple;
import org.jetbrains.mps.openapi.model.SModelReference;
import jetbrains.mps.smodel.SModelStereotype;
import org.apache.log4j.Level;
import java.util.HashSet;
import jetbrains.mps.util.JavaNameUtil;
import jetbrains.mps.util.InternUtil;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public abstract class BaseLanguageTextGen {
  public static void typeParameters(List<SNode> types, final SNodeTextGen textGen) {
    if (ListSequence.fromList(types).isNotEmpty()) {
      textGen.append("<");
      {
        Iterable<SNode> collection = types;
        final SNode lastItem = Sequence.fromIterable(collection).last();
        for (SNode item : collection) {
          textGen.appendNode(item);
          if (item != lastItem) {
            textGen.append(", ");
          }
        }
      }
      textGen.append(">");
    }
  }
  public static void arguments(SNode methodCall, final SNodeTextGen textGen) {
    textGen.append("(");
    {
      Iterable<SNode> collection = SLinkOperations.getChildren(methodCall, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"));
      final SNode lastItem = Sequence.fromIterable(collection).last();
      for (SNode item : collection) {
        textGen.appendNode(item);
        if (item != lastItem) {
          textGen.append(", ");
        }
      }
    }
    textGen.append(")");
  }
  public static void newLine(boolean need, final SNodeTextGen textGen) {
    if (need) {
      textGen.appendNewLine();
    }
  }
  public static void annotations(SNode annotable, final SNodeTextGen textGen) {
    {
      Iterable<SNode> collection = SLinkOperations.getChildren(annotable, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6be947aL, 0x114a6beb0bdL, "annotation"));
      for (SNode item : collection) {
        textGen.appendNode(item);
      }
    }
    if (SNodeOperations.isInstanceOf(annotable, MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x11d205fe38dL, "jetbrains.mps.lang.core.structure.IDeprecatable")) && BehaviorReflection.invokeVirtual(Boolean.TYPE, SNodeOperations.cast(annotable, MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x11d205fe38dL, "jetbrains.mps.lang.core.structure.IDeprecatable")), "virtual_isDeprecated_1224609060727", new Object[]{})) {
      boolean containsDeprecated = false;
      for (SNode annotationInstance : SLinkOperations.getChildren(annotable, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6be947aL, 0x114a6beb0bdL, "annotation"))) {
        if (SLinkOperations.getTarget(annotationInstance, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation")) == SNodeOperations.getNode("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)", "~Deprecated")) {
          containsDeprecated = true;
          break;
        }
      }
      if (!(containsDeprecated)) {
        SNode deprecated = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, "jetbrains.mps.baseLanguage.structure.AnnotationInstance")));
        SLinkOperations.setTarget(deprecated, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation"), SNodeOperations.getNode("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)", "~Deprecated"));
        textGen.appendNode(deprecated);
      }
    }
  }
  public static void visibility(SNode v, final SNodeTextGen textGen) {
    if ((v == null)) {
      textGen.append("/*package*/ ");
    } else {
      textGen.appendNode(v);
    }
  }
  public static void visibilityWithIndent(SNode v, final SNodeTextGen textGen) {
    textGen.indentBuffer();
    BaseLanguageTextGen.visibility(v, textGen);
  }
  public static void internalClassifierName(SNode node, SNode contextNode, final SNodeTextGen textGen) {
    if ((node == null)) {
      textGen.append("???");
      textGen.foundError("classifier is null");
      return;
    }
    BaseLanguageTextGen.appendClassName(BaseLanguageTextGen.getPackageName(node, textGen), NameUtil.longNameFromNamespaceAndShortName(BaseLanguageTextGen.getPackageName(node, textGen), SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x11a134c900dL, "nestedName"))), contextNode, textGen);
  }
  public static void internalClassName(String packageName, String className, SNode contextNode, final SNodeTextGen textGen) {
    BaseLanguageTextGen.appendClassName(packageName, NameUtil.longNameFromNamespaceAndShortName(packageName, className), contextNode, textGen);
  }
  public static void extendedInterface(SNode interface1, final SNodeTextGen textGen) {
    Set<String> dependencies = BaseLanguageTextGen.getUserObjects(TextGen.EXTENDS, textGen);
    SetSequence.fromSet(dependencies).addElement(NameUtil.nodeFQName(interface1));
  }
  public static void implementedInterface(SNode classConcept, final SNodeTextGen textGen) {
    for (SNode classifierType : SLinkOperations.getChildren(classConcept, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0xff2ac0b419L, "implementedInterface"))) {
      if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(classifierType, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface"))) {
        BaseLanguageTextGen.extendedInterface(SNodeOperations.cast(SLinkOperations.getTarget(classifierType, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface")), textGen);
      }
    }
  }
  public static void extendedClasses(SNode classConcept, final SNodeTextGen textGen) {
    Set<String> dependencies = BaseLanguageTextGen.getUserObjects(TextGen.EXTENDS, textGen);
    SetSequence.fromSet(dependencies).addElement(NameUtil.nodeFQName(classConcept));
  }
  public static void variableDeclaration(SNode node, final SNodeTextGen textGen) {
    if (SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0x111f9e9f00cL, "isFinal"))) {
      textGen.append("final ");
    }
    textGen.appendNode(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type")));
    textGen.append(" ");
    textGen.append(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
    if ((SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")) != null)) {
      textGen.append(" = ");
      textGen.appendNode(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")));
    }
  }
  public static void fileHeader(SNode cls, final SNodeTextGen textGen) {
    boolean topClassifier = !(Classifier_Behavior.call_isInner_521412098689998677(cls));
    if (topClassifier) {
      int wasPart = textGen.getBuffer().selectPart(TextGenBuffer.TOP);
      textGen.append("package " + BaseLanguageTextGen.getPackageName(cls, textGen) + ";");
      textGen.appendNewLine();
      textGen.appendNewLine();
      textGen.append("/*Generated by MPS */");
      textGen.appendNewLine();
      textGen.getBuffer().selectPart(wasPart);
    }
    if (SNodeOperations.isInstanceOf(cls, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface"))) {
      BaseLanguageTextGen.registerExtendsRelation(SLinkOperations.getChildren(SNodeOperations.cast(cls, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, 0x101eddadad7L, "extendedInterface")), topClassifier, textGen);
    } else if (SNodeOperations.isInstanceOf(cls, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"))) {
      BaseLanguageTextGen.registerExtendsRelation(SLinkOperations.getChildren(SNodeOperations.cast(cls, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0xff2ac0b419L, "implementedInterface")), topClassifier, textGen);
      BaseLanguageTextGen.registerExtendsRelation(Sequence.fromIterable(Sequence.<SNode>singleton(SLinkOperations.getTarget(SNodeOperations.cast(cls, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x10f6353296dL, "superclass")))).toListSequence(), topClassifier, textGen);
    }
  }
  public static void methodCall(SNode methodCall, final SNodeTextGen textGen) {
    BaseLanguageTextGen.methodTypeArguments(methodCall, textGen);
    textGen.append(textGen.getReferentPresentation(SNodeOperations.getReference(methodCall, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")), false));
    BaseLanguageTextGen.arguments(methodCall, textGen);
  }
  public static void methodTypeArguments(SNode methodCall, final SNodeTextGen textGen) {
    if (ListSequence.fromList(SLinkOperations.getChildren(methodCall, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0x4500f31eb02a7788L, "typeArgument"))).isNotEmpty()) {
      textGen.append("<");
      {
        Iterable<SNode> collection = SLinkOperations.getChildren(methodCall, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0x4500f31eb02a7788L, "typeArgument"));
        final SNode lastItem = Sequence.fromIterable(collection).last();
        for (SNode item : collection) {
          textGen.appendNode(item);
          if (item != lastItem) {
            textGen.append(",");
          }
        }
      }
      textGen.append(">");
    }
  }
  public static void blClassifierRef(SReference classifierRef, final SNodeTextGen textGen) {
    if (classifierRef == null) {
      textGen.foundError("null classifier ref");
      return;
    }
    Tuples._2<String, String> packageAndShortName = BaseLanguageTextGen.getPackageAndShortName(classifierRef, textGen);
    if (packageAndShortName == null) {
      return;
    }
    String longName = NameUtil.longNameFromNamespaceAndShortName(packageAndShortName._0(), packageAndShortName._1());
    BaseLanguageTextGen.appendClassName(packageAndShortName._0(), longName, classifierRef.getSourceNode(), textGen);
  }
  protected static Tuples._2<String, String> getPackageAndShortName(SReference classifierRef, final SNodeTextGen textGen) {
    SReference reference = classifierRef;
    if (reference == null) {
      textGen.foundError("null reference");
      return null;
    }
    String shortName = "";
    String packageName = "";
    if (reference instanceof DynamicReference) {
      shortName = ((jetbrains.mps.smodel.SReference) reference).getResolveInfo();
      // hack, todo: remove! 
      if (shortName.startsWith("[")) {
        return MultiTuple.<String,String>from(shortName.substring(1, shortName.lastIndexOf("]")).trim(), shortName.substring(shortName.lastIndexOf("]") + 1).trim());
      } else {
        // todo: remove! 
        final SModelReference modelReference = reference.getTargetSModelReference();
        if (modelReference != null) {
          packageName = SModelStereotype.withoutStereotype(modelReference.getModelName());
          if (LOG.isEnabledFor(Level.WARN)) {
            LOG.warn("generating classifier reference with target model reference " + modelReference + " @ " + classifierRef);
          }
        } else {
          int lastDot = shortName.lastIndexOf('.');
          if (lastDot >= 0) {
            packageName = shortName.substring(0, lastDot);
            shortName = shortName.substring(lastDot + 1).replace('$', '.');
          } else {
            SModelReference sModelReference = classifierRef.getSourceNode().getModel().getReference();
            packageName = (sModelReference != null ? SModelStereotype.withoutStereotype(sModelReference.getModelName()) : "");
          }
        }
        return MultiTuple.<String,String>from(packageName, shortName);
      }
    } else {
      SNode targetNode = jetbrains.mps.util.SNodeOperations.getTargetNodeSilently(reference);
      if (targetNode == null) {
        textGen.foundError("Target node is null for reference to classifier with role " + SLinkOperations.getRole(classifierRef) + "; resolve info " + SLinkOperations.getResolveInfo(classifierRef) + "; " + jetbrains.mps.util.SNodeOperations.getDebugText(classifierRef.getSourceNode()));
        return null;
      }
      return MultiTuple.<String,String>from(SModelStereotype.withoutStereotype(targetNode.getModel().getReference().getModelName()), (SNodeOperations.isInstanceOf(targetNode, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier")) ? SPropertyOperations.getString(SNodeOperations.cast(targetNode, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x11a134c900dL, "nestedName")) : jetbrains.mps.util.SNodeOperations.getResolveInfo(targetNode)));
    }
  }
  protected static Set<String> getUserObjects(String type, final SNodeTextGen textGen) {
    Set<String> names = (Set<String>) textGen.getBuffer().getUserObject(type);
    if (names == null) {
      names = SetSequence.fromSet(new HashSet<String>());
      textGen.getBuffer().putUserObject(type, names);
    }
    return names;
  }
  protected static String getPackageName(SNode cls, final SNodeTextGen textGen) {
    return SModelStereotype.withoutStereotype(cls.getModel().getReference().getModelName());
  }
  protected static String getClassName(String packageName, String fqName, SNode contextNode, final SNodeTextGen textGen) {
    if (fqName == null) {
      textGen.foundError("class name is NULL");
      return "???";
    }

    BaseLanguageTextGen.addDependency(packageName, fqName, textGen);
    return ImportsContext.getInstance(textGen.getBuffer()).getClassifierRefText(packageName, fqName, contextNode);
  }
  protected static void addDependency(String packageName, String fqName, final SNodeTextGen textGen) {
    // using only root classifiers as dependencies 
    String nestedName = JavaNameUtil.nestedClassName(packageName, fqName);
    int dotIndex = nestedName.indexOf(".");
    String dependencyFqName;
    if (dotIndex == -1) {
      dependencyFqName = fqName;
    } else {
      dependencyFqName = packageName + "." + nestedName.substring(0, dotIndex);
    }
    BaseLanguageTextGen.addDependency(dependencyFqName, textGen);
  }
  protected static void addDependency(String fqName, final SNodeTextGen textGen) {
    Set<String> dependencies = BaseLanguageTextGen.getUserObjects(TextGen.DEPENDENCY, textGen);
    SetSequence.fromSet(dependencies).addElement(InternUtil.intern(fqName));
  }
  protected static void appendClassName(String packageName, String fqName, SNode contextNode, final SNodeTextGen textGen) {
    textGen.append(BaseLanguageTextGen.getClassName(packageName, fqName, contextNode, textGen));
  }
  protected static void registerExtendsRelation(List<SNode> classifiers, boolean isTopClassifier, final SNodeTextGen textGen) {
    // if an inner class extends/implements outer classifier, we shall not record this dependency as 'extends' of a 
    // top-level unit (see sample in MPS-17604). Perhaps, we shall not record this dependency at all? 
    Set<String> dependencies = BaseLanguageTextGen.getUserObjects((isTopClassifier ? TextGen.EXTENDS : TextGen.DEPENDENCY), textGen);
    for (SNode c : classifiers) {
      SetSequence.fromSet(dependencies).addElement(NameUtil.nodeFQName(SLinkOperations.getTarget(c, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"))));
    }
  }
  protected static Logger LOG = LogManager.getLogger(BaseLanguageTextGen.class);
}
