package jetbrains.mps.ide.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.apache.log4j.Level;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import com.intellij.openapi.project.Project;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.util.DepthFirstConceptIterator;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.util.NameUtil;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class FindUnusedAndDeprecatedConcepts_Action extends BaseAction {
  private static final Icon ICON = null;
  public FindUnusedAndDeprecatedConcepts_Action() {
    super("Find unused and deprecated concepts", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    try {
      this.enable(event.getPresentation());
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action doUpdate method failed. Action:" + "FindUnusedAndDeprecatedConcepts", t);
      }
      this.disable(event.getPresentation());
    }
  }
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    MapSequence.fromMap(_params).put("ideaProject", event.getData(CommonDataKeys.PROJECT));
    if (MapSequence.fromMap(_params).get("ideaProject") == null) {
      return false;
    }
    MapSequence.fromMap(_params).put("project", event.getData(MPSCommonDataKeys.MPS_PROJECT));
    if (MapSequence.fromMap(_params).get("project") == null) {
      return false;
    }
    return true;
  }
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    try {
      final Set<String> usedConcepts = SetSequence.fromSet(new HashSet<String>());
      InternalActionsUtils.executeActionOnAllNodesInModal("find used concepts", ((Project) MapSequence.fromMap(_params).get("ideaProject")), new _FunctionTypes._void_P1_E0<SNode>() {
        public void invoke(SNode node) {
          for (SAbstractConcept c : new DepthFirstConceptIterator(node.getConcept())) {
            SetSequence.fromSet(usedConcepts).addElement(c.getQualifiedName());
          }
        }
      });

      List<SNodeReference> concepts = ListSequence.fromList(InternalActionsUtils.getAllConcepts()).where(new IWhereFilter<SNodeReference>() {
        public boolean accept(final SNodeReference it) {
          final Wrappers._boolean isOk = new Wrappers._boolean(false);
          ((MPSProject) MapSequence.fromMap(_params).get("project")).getModelAccess().runReadAction(new Runnable() {
            public void run() {
              SNode concept = SNodeOperations.cast(it.resolve(MPSModuleRepository.getInstance()), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, "jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration"));
              isOk.value = (concept != null) && (BehaviorReflection.invokeVirtual(Boolean.TYPE, concept, "virtual_isDeprecated_1224609060727", new Object[]{}) || !(SetSequence.fromSet(usedConcepts).contains(NameUtil.nodeFQName(concept))));
            }
          });
          return isOk.value;
        }
      }).toListSequence();

      InternalActionsUtils.showUsagesViewForNodes(((Project) MapSequence.fromMap(_params).get("ideaProject")), concepts);
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action execute method failed. Action:" + "FindUnusedAndDeprecatedConcepts", t);
      }
    }
  }
  protected static Logger LOG = LogManager.getLogger(FindUnusedAndDeprecatedConcepts_Action.class);
}
