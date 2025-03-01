package jetbrains.mps.ide.editor.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.apache.log4j.Level;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import org.jetbrains.mps.openapi.model.EditableSModel;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.nodeEditor.cells.EditorCell_Label;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.nodeEditor.cellMenu.NodeSubstituteChooser;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import com.intellij.openapi.project.Project;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.openapi.editor.cells.SubstituteInfo;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import java.util.List;
import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class AddModelImportByRoot_Action extends BaseAction {
  private static final Icon ICON = null;
  public AddModelImportByRoot_Action() {
    super("Add Model Import by Root", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(false);
  }
  @Override
  public boolean isDumbAware() {
    return false;
  }
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    try {
      this.enable(event.getPresentation());
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action doUpdate method failed. Action:" + "AddModelImportByRoot", t);
      }
      this.disable(event.getPresentation());
    }
  }
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    MapSequence.fromMap(_params).put("project", event.getData(CommonDataKeys.PROJECT));
    if (MapSequence.fromMap(_params).get("project") == null) {
      return false;
    }
    MapSequence.fromMap(_params).put("module", event.getData(MPSCommonDataKeys.CONTEXT_MODULE));
    if (MapSequence.fromMap(_params).get("module") == null) {
      return false;
    }
    MapSequence.fromMap(_params).put("model", event.getData(MPSCommonDataKeys.CONTEXT_MODEL));
    if (MapSequence.fromMap(_params).get("model") == null) {
      return false;
    }
    if (!(MapSequence.fromMap(_params).get("model") instanceof EditableSModel) || ((EditableSModel) MapSequence.fromMap(_params).get("model")).isReadOnly()) {
      return false;
    }
    MapSequence.fromMap(_params).put("node", event.getData(MPSCommonDataKeys.NODE));
    {
      EditorComponent editorComponent = event.getData(MPSEditorDataKeys.EDITOR_COMPONENT);
      if (editorComponent != null && editorComponent.isInvalid()) {
        editorComponent = null;
      }
      MapSequence.fromMap(_params).put("editorComponent", editorComponent);
    }
    MapSequence.fromMap(_params).put("editorContext", event.getData(MPSEditorDataKeys.EDITOR_CONTEXT));
    return true;
  }
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    try {
      final Wrappers._T<String> initialText = new Wrappers._T<String>("");

      final Wrappers._T<EditorCell_Label> errorLabel = new Wrappers._T<EditorCell_Label>(null);
      final Wrappers._T<SNode> unresolvedReference = new Wrappers._T<SNode>(null);
      if (((EditorComponent) MapSequence.fromMap(_params).get("editorComponent")) != null) {
        unresolvedReference.value = SNodeOperations.as(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x28e9fc3ba3fa3940L, "jetbrains.mps.baseLanguage.structure.UnresolvedNameReference"));
        errorLabel.value = AddModelImportByRoot_Action.this.getErrorCell(_params);
        NodeSubstituteChooser nodeSubstituteChooser = ((EditorComponent) MapSequence.fromMap(_params).get("editorComponent")).getNodeSubstituteChooser();
        if (check_a68f4j_a3a4a0(nodeSubstituteChooser)) {
          String pattern = nodeSubstituteChooser.getPatternEditor().getPattern();
          if (check_a68f4j_a1a3a4a0(pattern)) {
            initialText.value = pattern;
          }
        }
        if (isEmptyString(initialText.value)) {
          EditorCell_Label label = AddModelImportByRoot_Action.this.getCellLabel(_params);
          String selectedText = check_a68f4j_a0b0e0e0a(label);
          if (selectedText != null && !(selectedText.isEmpty())) {
            initialText.value = selectedText;
          }
        }

        if (isEmptyString(initialText.value)) {

          if (errorLabel.value != null) {
            initialText.value = errorLabel.value.getRenderedText();
          } else if (unresolvedReference.value != null) {
            initialText.value = SPropertyOperations.getString(unresolvedReference.value, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x28e9fc3ba3fa3940L, 0x28e9fc3ba3fa3941L, "resolveName"));
          }
        }

      }
      ImportHelper.addModelImportByRoot(((Project) MapSequence.fromMap(_params).get("project")), ((SModule) MapSequence.fromMap(_params).get("module")), ((SModel) MapSequence.fromMap(_params).get("model")), initialText.value, AddModelImportByRoot_Action.this, new ImportHelper.ModelImportByRootCallback() {
        public void importForRootAdded(String rootName) {
          String textToMatch = (rootName != null ? rootName : initialText.value);
          if (textToMatch.length() == 0) {
            return;
          }
          SubstituteInfo substituteInfo = null;
          if (errorLabel.value != null) {
            substituteInfo = errorLabel.value.getSubstituteInfo();
          } else if (unresolvedReference.value != null && ((EditorContext) MapSequence.fromMap(_params).get("editorContext")) != null) {
            substituteInfo = new DefaultChildSubstituteInfo(SNodeOperations.getParent(unresolvedReference.value), unresolvedReference.value, SNodeOperations.getContainingLinkDeclaration(unresolvedReference.value), ((EditorContext) MapSequence.fromMap(_params).get("editorContext")));
            substituteInfo.setOriginalText(initialText.value);
          }
          if (substituteInfo == null) {
            return;
          }
          substituteInfo.invalidateActions();
          List<SubstituteAction> matchingActions = substituteInfo.getMatchingActions(textToMatch, true);
          if (ListSequence.fromList(matchingActions).count() == 1) {
            ListSequence.fromList(matchingActions).first().substitute(((EditorContext) MapSequence.fromMap(_params).get("editorContext")), initialText.value);
          }
        }
      });
    } catch (Throwable t) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("User's action execute method failed. Action:" + "AddModelImportByRoot", t);
      }
    }
  }
  private EditorCell_Label getErrorCell(final Map<String, Object> _params) {
    EditorCell_Label editorCellLabel = AddModelImportByRoot_Action.this.getCellLabel(_params);
    if (check_a68f4j_a1a0(editorCellLabel)) {
      return editorCellLabel;
    }
    return null;
  }
  private EditorCell_Label getCellLabel(final Map<String, Object> _params) {
    if (((EditorComponent) MapSequence.fromMap(_params).get("editorComponent")) == null) {
      return null;
    }
    EditorCell selectedCell = ((EditorComponent) MapSequence.fromMap(_params).get("editorComponent")).getSelectedCell();
    if (selectedCell instanceof EditorCell_Label && !(isEmptyString(((EditorCell_Label) selectedCell).getText()))) {
      return (EditorCell_Label) selectedCell;
    }
    return null;
  }
  protected static Logger LOG = LogManager.getLogger(AddModelImportByRoot_Action.class);
  private static boolean check_a68f4j_a1a3a4a0(String checkedDotOperand) {
    if (null != checkedDotOperand) {
      return (checkedDotOperand != null && checkedDotOperand.length() > 0);
    }
    return false;
  }
  private static boolean check_a68f4j_a3a4a0(NodeSubstituteChooser checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.isVisible();
    }
    return false;
  }
  private static String check_a68f4j_a0b0e0e0a(EditorCell_Label checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getSelectedText();
    }
    return null;
  }
  private static boolean check_a68f4j_a1a0(EditorCell_Label checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.isErrorState();
    }
    return false;
  }
  private static boolean isEmptyString(String str) {
    return str == null || str.length() == 0;
  }
}
