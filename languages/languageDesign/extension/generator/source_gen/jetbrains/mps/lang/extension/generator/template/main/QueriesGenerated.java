package jetbrains.mps.lang.extension.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.CreateRootRuleContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.extension.behavior.ExtensionPointDeclaration_Behavior;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.extension.behavior.ExtensionDeclaration_Behavior;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.generator.template.ReferenceMacroContext;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.behavior.ClassConcept_Behavior;
import jetbrains.mps.generator.template.IfMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.typesystem.runtime.HUtil;
import jetbrains.mps.lang.extension.behavior.ExtensionObjectGetter_Behavior;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import jetbrains.mps.internal.collections.runtime.ISelector;

@Generated
public class QueriesGenerated {
  public final boolean NEEDS_OPCONTEXT = false;
  public static boolean createRootRule_Condition_63012922130977735(final CreateRootRuleContext _context) {
    return ListSequence.fromList(SModelOperations.roots(_context.getInputModel(), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d6L, "jetbrains.mps.lang.extension.structure.ExtensionPointDeclaration"))).isNotEmpty() || ListSequence.fromList(SModelOperations.roots(_context.getInputModel(), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, "jetbrains.mps.lang.extension.structure.ExtensionDeclaration"))).isNotEmpty();
  }
  public static Object propertyMacro_GetPropertyValue_4230423796260420199(final PropertyMacroContext _context) {
    return ExtensionPointDeclaration_Behavior.call_getId_63012922130945363(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x5bf74eafefe0e940L, 0x5bf74eafefe0eb55L, "extensionPoint")));
  }
  public static Object propertyMacro_GetPropertyValue_63012922130955117(final PropertyMacroContext _context) {
    return ExtensionPointDeclaration_Behavior.call_getId_63012922130945363(_context.getNode());
  }
  public static Object propertyMacro_GetPropertyValue_8820339482096486801(final PropertyMacroContext _context) {
    return _context.createUniqueName(ExtensionDeclaration_Behavior.call_getJavaName_5234729458457669523(_context.getNode()) + _context.getNode().getNodeId().toString(), null);

  }
  public static Object propertyMacro_GetPropertyValue_7036359038356140565(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_63012922130951121(final PropertyMacroContext _context) {
    return ExtensionPointDeclaration_Behavior.call_getId_63012922130945363(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, 0x33c018482cafa9d5L, "extensionPoint")));
  }
  public static Object referenceMacro_GetReferent_4230423796260420235(final ReferenceMacroContext _context) {
    return SLinkOperations.getTarget(ExtensionPointDeclaration_Behavior.call_getObjectClassifierType_6778078592468845406(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x5bf74eafefe0e940L, 0x5bf74eafefe0eb55L, "extensionPoint"))), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"));
  }
  public static Object referenceMacro_GetReferent_5911785528834334206(final ReferenceMacroContext _context) {
    return SLinkOperations.getTarget(ExtensionPointDeclaration_Behavior.call_getObjectClassifierType_6778078592468845406(_context.getNode()), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"));
  }
  public static Object referenceMacro_GetReferent_63012922130977670(final ReferenceMacroContext _context) {
    return Sequence.fromIterable(ClassConcept_Behavior.call_constructors_5292274854859503373(_context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "extensionClass"))).first();
  }
  public static Object referenceMacro_GetReferent_7036359038356141310(final ReferenceMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x61a62b43e1534e9eL, 0x61a62b43e1534e9fL, "declaration")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static boolean ifMacro_Condition_4230423796260420209(final IfMacroContext _context) {
    return !(SNodeOperations.isInstanceOf(ExtensionPointDeclaration_Behavior.call_getObjectClassifierType_6778078592468845406(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x5bf74eafefe0e940L, 0x5bf74eafefe0eb55L, "extensionPoint"))), MetaAdapterFactory.getConcept(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x1118e558c6dL, "jetbrains.mps.baseLanguageInternal.structure.InternalClassifierType")));
  }
  public static boolean ifMacro_Condition_5911785528834334190(final IfMacroContext _context) {
    return !(SNodeOperations.isInstanceOf(ExtensionPointDeclaration_Behavior.call_getObjectClassifierType_6778078592468845406(_context.getNode()), MetaAdapterFactory.getConcept(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x1118e558c6dL, "jetbrains.mps.baseLanguageInternal.structure.InternalClassifierType")));
  }
  public static boolean ifMacro_Condition_63012922130953655(final IfMacroContext _context) {
    return ListSequence.fromList(SModelOperations.roots(_context.getInputModel(), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d6L, "jetbrains.mps.lang.extension.structure.ExtensionPointDeclaration"))).isNotEmpty();
  }
  public static boolean ifMacro_Condition_63012922130955159(final IfMacroContext _context) {
    return ListSequence.fromList(SModelOperations.roots(_context.getInputModel(), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, "jetbrains.mps.lang.extension.structure.ExtensionDeclaration"))).isNotEmpty();
  }
  public static boolean ifMacro_Condition_8820339482096486134(final IfMacroContext _context) {
    return ListSequence.fromList(SModelOperations.roots(_context.getInputModel(), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d6L, "jetbrains.mps.lang.extension.structure.ExtensionPointDeclaration"))).isNotEmpty();
  }
  public static boolean ifMacro_Condition_8820339482096486138(final IfMacroContext _context) {
    return ListSequence.fromList(SModelOperations.roots(_context.getInputModel(), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, "jetbrains.mps.lang.extension.structure.ExtensionDeclaration"))).isNotEmpty();
  }
  public static boolean ifMacro_Condition_7036359038356140443(final IfMacroContext _context) {
    return (SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, 0x61a62b43e15253eeL, "activator")) != null);
  }
  public static boolean ifMacro_Condition_7036359038356140490(final IfMacroContext _context) {
    return (SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, 0x61a62b43e15253f6L, "deactivator")) != null);
  }
  public static SNode sourceNodeQuery_4230423796260420225(final SourceSubstituteMacroNodeContext _context) {
    return SNodeOperations.cast(ExtensionPointDeclaration_Behavior.call_getObjectClassifierType_6778078592468845406(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x5bf74eafefe0e940L, 0x5bf74eafefe0eb55L, "extensionPoint"))), MetaAdapterFactory.getConcept(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x1118e558c6dL, "jetbrains.mps.baseLanguageInternal.structure.InternalClassifierType"));
  }
  public static SNode sourceNodeQuery_4230423796260420184(final SourceSubstituteMacroNodeContext _context) {
    return ExtensionPointDeclaration_Behavior.call_getObjectClassifierType_6778078592468845406(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x5bf74eafefe0e940L, 0x5bf74eafefe0eb55L, "extensionPoint")));
  }
  public static SNode sourceNodeQuery_3175313036448599345(final SourceSubstituteMacroNodeContext _context) {
    if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x2c10fa62142eb538L, 0x2c10fa62142eb539L, "extensionPoint")), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d6L, 0x6f6f7f3b7a17bd0bL, "objectType")), MetaAdapterFactory.getConcept(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x1118e558c6dL, "jetbrains.mps.baseLanguageInternal.structure.InternalClassifierType"))) {
      return SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x2c10fa62142eb538L, 0x2c10fa62142eb539L, "extensionPoint")), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d6L, 0x6f6f7f3b7a17bd0bL, "objectType"));
    }
    return TypeChecker.getInstance().getRuntimeSupport().coerce_(SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x2c10fa62142eb538L, 0x2c10fa62142eb539L, "extensionPoint")), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d6L, 0x6f6f7f3b7a17bd0bL, "objectType")), HUtil.createMatchingPatternByConceptFQName("jetbrains.mps.baseLanguage.structure.ClassifierType"), true);
  }
  public static SNode sourceNodeQuery_5911785528834334240(final SourceSubstituteMacroNodeContext _context) {
    return SNodeOperations.cast(ExtensionPointDeclaration_Behavior.call_getObjectClassifierType_6778078592468845406(_context.getNode()), MetaAdapterFactory.getConcept(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x1118e558c6dL, "jetbrains.mps.baseLanguageInternal.structure.InternalClassifierType"));
  }
  public static SNode sourceNodeQuery_4585329983368332167(final SourceSubstituteMacroNodeContext _context) {
    return ExtensionObjectGetter_Behavior.call_getReturnClassifierType_7261386713308443934(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, 0x6f6f7f3b7a17bd13L, "objectGetter")));
  }
  public static SNode sourceNodeQuery_7036359038356140555(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x61a62b43e1534e99L, 0x61a62b43e1534e9dL, "fieldType"));
  }
  public static SNode sourceNodeQuery_7261386713308444323(final SourceSubstituteMacroNodeContext _context) {
    return ExtensionObjectGetter_Behavior.call_getReturnClassifierType_7261386713308443934(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, 0x6f6f7f3b7a17bd13L, "objectGetter")));
  }
  public static SNode sourceNodeQuery_7036359038356140466(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, 0x61a62b43e15253eeL, "activator")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x108bbca0f48L, 0x108bbd29b4aL, "body"));
  }
  public static SNode sourceNodeQuery_7036359038356140513(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, 0x61a62b43e15253f6L, "deactivator")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x108bbca0f48L, 0x108bbd29b4aL, "body"));
  }
  public static Iterable<SNode> sourceNodesQuery_63012922130955093(final SourceSubstituteMacroNodesContext _context) {
    return ListSequence.fromList(SModelOperations.roots(_context.getInputModel(), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d6L, "jetbrains.mps.lang.extension.structure.ExtensionPointDeclaration"))).sort(new ISelector<SNode, String>() {
      public String select(SNode it) {
        return SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
      }
    }, true);
  }
  public static Iterable<SNode> sourceNodesQuery_63012922130977659(final SourceSubstituteMacroNodesContext _context) {
    return ListSequence.fromList(SModelOperations.roots(_context.getInputModel(), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, "jetbrains.mps.lang.extension.structure.ExtensionDeclaration"))).sort(new ISelector<SNode, String>() {
      public String select(SNode it) {
        return SPropertyOperations.getString(SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, 0x33c018482cafa9d5L, "extensionPoint")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
      }
    }, true);
  }
  public static Iterable<SNode> sourceNodesQuery_7036359038356269822(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, 0x61a62b43e1534edcL, "fieldDeclaration"));
  }
  public static Iterable<SNode> sourceNodesQuery_7261386713308446738(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, 0x6f6f7f3b7a17bd13L, "objectGetter")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x108bbca0f48L, 0x108bbd29b4aL, "body")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"));
  }
}
