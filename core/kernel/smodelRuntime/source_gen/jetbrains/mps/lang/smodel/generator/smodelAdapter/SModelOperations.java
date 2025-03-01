package jetbrains.mps.lang.smodel.generator.smodelAdapter;

/*Generated by MPS */

import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.ArrayList;
import org.jetbrains.mps.util.Condition;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import jetbrains.mps.util.ConditionalIterable;
import java.util.Collections;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.smodel.FastNodeFinderManager;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.mps.openapi.model.SNodeId;
import jetbrains.mps.smodel.adapter.structure.concept.SConceptAdapterByName;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.project.structure.ProjectStructureModule;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class SModelOperations {
  public SModelOperations() {
  }
  public static List<SNode> roots(SModel model, final SAbstractConcept concept) {
    if (model == null) {
      return new ArrayList<SNode>();
    }
    if (concept == null) {
      ArrayList<SNode> result = new ArrayList<SNode>();
      for (SNode root : model.getRootNodes()) {
        result.add(root);
      }
      return result;
    }
    List<SNode> list = new ArrayList<SNode>();
    Condition<SNode> cond = new Condition<SNode>() {
      @Override
      public boolean met(SNode node) {
        return SNodeUtil.isInstanceOf(node, concept);
      }
    };
    Iterable<SNode> iterable = new ConditionalIterable<SNode>(model.getRootNodes(), cond);
    for (SNode node : iterable) {
      list.add(node);
    }
    return list;
  }
  public static List<SNode> rootsIncludingImported(SModel model, SAbstractConcept concept) {
    if (model == null) {
      return Collections.emptyList();
    }
    if (concept == null) {
      return allNodesIncludingImported(model, true, null);
    }
    SNode conceptNode = (SNode) concept.getDeclarationNode();
    if (conceptNode == null) {
      return Collections.emptyList();
    }

    return allNodesIncludingImported(model, true, conceptNode);
  }
  public static List<SNode> nodesIncludingImported(SModel model, SAbstractConcept concept) {
    if (model == null) {
      return Collections.emptyList();
    }
    if (concept == null) {
      return allNodesIncludingImported(model, false, null);
    }
    final SNode conceptNode = (SNode) concept.getDeclarationNode();
    if (conceptNode == null) {
      return Collections.emptyList();
    }
    return allNodesIncludingImported(model, false, conceptNode);
  }
  private static List<SNode> allNodesIncludingImported(SModel sModel, boolean roots, @Nullable final SNode concept) {
    List<SModel> modelsList = new ArrayList<SModel>();
    modelsList.add(sModel);
    List<SModel> modelDescriptors = jetbrains.mps.smodel.SModelOperations.allImportedModels(sModel);
    for (SModel descriptor : modelDescriptors) {
      modelsList.add(descriptor);
    }
    List<SNode> resultNodes = new ArrayList<SNode>();
    for (SModel aModel : modelsList) {
      Iterable<SNode> nodes = (roots ? aModel.getRootNodes() : SNodeUtil.getDescendants(aModel));
      if (concept == null) {
        resultNodes.addAll(IterableUtil.asList(nodes));
      } else if (roots) {
        ListSequence.fromList(resultNodes).addSequence(Sequence.fromIterable(nodes).where(new IWhereFilter<SNode>() {
          public boolean accept(SNode it) {
            return SNodeOperations.isInstanceOf(((SNode) it), SNodeOperations.asSConcept(concept));
          }
        }));
      } else {
        resultNodes.addAll(IterableUtil.asList(FastNodeFinderManager.get(aModel).getNodes(NameUtil.nodeFQName(concept), true)));
      }
    }
    return resultNodes;
  }
  public static List<SNode> nodes(SModel model, final SAbstractConcept concept) {
    if (model == null) {
      return new ArrayList<SNode>();
    }
    if (concept != null) {
      return jetbrains.mps.smodel.SModelOperations.getNodes(model, concept.getQualifiedName());
    }
    List<SNode> result = new ArrayList<SNode>();
    for (SNode node : SNodeUtil.getDescendants(model)) {
      result.add(node);
    }
    return result;
  }
  @Deprecated
  @ToRemove(version = 3.2)
  public static SNode createNewNode(SModel model, SNodeId id, String conceptFqName) {
    return createNewNode(model, id, new SConceptAdapterByName(conceptFqName));
  }
  public static SNode createNewNode(SModel model, SNodeId id, SConcept concept) {
    if (concept == null) {
      return null;
    }

    SNode result = SModelUtil_new.instantiateConceptDeclaration(concept, model, id, false);
    if (result == null) {
      return null;
    }

    if (id != null) {
      ((jetbrains.mps.smodel.SNode) result).setId(id);
    }
    BehaviorReflection.initNode(result);
    return ((SNode) result);
  }
  public static SNode createNewRootNode(SModel model, SConcept concept) {
    SNode newNode = createNewNode(model, null, concept);
    model.addRootNode(newNode);
    return newNode;
  }
  public static SNode addRootNode(SModel model, SNode node) {
    if (model != null && node != null) {
      model.addRootNode(node);
    }
    return node;
  }
  public static String getModelName(SModel model) {
    if (model == null) {
      return null;
    }
    return jetbrains.mps.util.SNodeOperations.getModelLongName(model);
  }
  public static SNode getModuleStub(SModel model) {
    final SModule module = model.getModule();
    if (module instanceof Generator) {
      Language lang = ((Generator) module).getSourceLanguage();
      SModel m = ProjectStructureModule.getInstance().getModelByModule(lang);
      if (m == null) {
        return null;
      }
      SNode l = ListSequence.fromList(SModelOperations.roots(m, MetaAdapterFactory.getConcept(0x86ef829012bb4ca7L, 0x947f093788f263a9L, 0x5869770da61dfe1fL, "jetbrains.mps.lang.project.structure.Language"))).first();
      return (l == null ? null : ListSequence.fromList(SLinkOperations.getChildren(l, MetaAdapterFactory.getContainmentLink(0x86ef829012bb4ca7L, 0x947f093788f263a9L, 0x5869770da61dfe1fL, 0x5869770da61dfe37L, "generator"))).findFirst(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return eq_kkj9n5_a0a0a0a0a0a4a1a11(SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0x86ef829012bb4ca7L, 0x947f093788f263a9L, 0x5869770da61dfe1eL, 0x5869770da61dfe22L, "uuid")), module.getModuleReference().getModuleId().toString());
        }
      }));
    } else {
      SModel m = ProjectStructureModule.getInstance().getModelByModule(module);
      return (m == null ? null : ListSequence.fromList(SModelOperations.roots(m, MetaAdapterFactory.getConcept(0x86ef829012bb4ca7L, 0x947f093788f263a9L, 0x5869770da61dfe1eL, "jetbrains.mps.lang.project.structure.Module"))).first());
    }
  }
  private static boolean eq_kkj9n5_a0a0a0a0a0a4a1a11(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
}
