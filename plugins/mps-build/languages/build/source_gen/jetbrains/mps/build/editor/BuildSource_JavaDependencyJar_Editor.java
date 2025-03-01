package jetbrains.mps.build.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.RefNodeCellProvider;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;

public class BuildSource_JavaDependencyJar_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_tvqbfe_a(editorContext, node);
  }
  public EditorCell createInspectedCell(EditorContext editorContext, SNode node) {
    return this.createCollection_tvqbfe_a_0(editorContext, node);
  }
  private EditorCell createCollection_tvqbfe_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_tvqbfe_a");
    editorCell.setBig(true);
    editorCell.addEditorCell(this.createRefNode_tvqbfe_a0(editorContext, node));
    if (renderingCondition_tvqbfe_a1a(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_tvqbfe_b0(editorContext, node));
    }
    return editorCell;
  }
  private EditorCell createRefNode_tvqbfe_a0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefNodeCellProvider(node, editorContext);
    provider.setRole("jar");
    provider.setNoTargetText("<no jar>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setRole("jar");
    }
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(editorContext, attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  private EditorCell createConstant_tvqbfe_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "(reexport)");
    editorCell.setCellId("Constant_tvqbfe_b0");
    Style style = new StyleImpl();
    buildStyles_StyleSheet.apply_keyword(style, editorCell);
    editorCell.getStyle().putAll(style);
    delete_reexport_inJavaDependencyJar.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private static boolean renderingCondition_tvqbfe_a1a(SNode node, EditorContext editorContext) {
    return SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x3395e884b6185c40L, 0x715eee405bff376dL, "reexport"));
  }
  private EditorCell createCollection_tvqbfe_a_0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_tvqbfe_a_0");
    editorCell.setBig(true);
    editorCell.addEditorCell(this.createConstant_tvqbfe_a0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_tvqbfe_b0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_tvqbfe_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "reexport:");
    editorCell.setCellId("Constant_tvqbfe_a0");
    Style style = new StyleImpl();
    buildStyles_StyleSheet.apply_keyword(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_tvqbfe_b0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("reexport");
    provider.setNoTargetText("<no reexport>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_reexport");
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(editorContext, attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
}
