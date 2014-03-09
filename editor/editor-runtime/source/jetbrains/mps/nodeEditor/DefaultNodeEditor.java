/*
 * Copyright 2003-2011 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.nodeEditor;

import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.cells.EditorCell_Error;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeUtil;

import java.util.Collection;
import java.util.Collections;

public class DefaultNodeEditor extends AbstractConceptEditor implements ConceptEditor {
  @Override
  public Collection<String> getContextHints() {
    return Collections.emptyList();
  }

  @Override
  public EditorCell createEditorCell(jetbrains.mps.openapi.editor.EditorContext editorContext, SNode node) {
    return createEditorCell((EditorContext) editorContext, node);
  }

  /**
   * @deprecated starting from MPS 3.0 another method should be used:
   *             <code>createEditorCell(jetbrains.mps.openapi.editor.EditorContext editorContext)</code>
   */
  @Deprecated
  public jetbrains.mps.nodeEditor.cells.EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return new EditorCell_Error(editorContext, node, "no editor found");
  }

  @Override
  public EditorCell createInspectedCell(jetbrains.mps.openapi.editor.EditorContext editorContext, SNode node) {
    return createInspectedCell((EditorContext) editorContext, node);
  }

  /**
   * @deprecated starting from MPS 3.0 another method should be used:
   *             <code>createInspectedCell(jetbrains.mps.openapi.editor.EditorContext editorContext)</code>
   */
  @Deprecated
  public jetbrains.mps.nodeEditor.cells.EditorCell createInspectedCell(EditorContext editorContext, SNode node) {
    return new DefaultInspectorCell(editorContext, node, SNodeUtil.getDebugText(node), true);
  }

  public static class DefaultInspectorCell extends EditorCell_Constant {
    public DefaultInspectorCell(@NotNull jetbrains.mps.openapi.editor.EditorContext editorContext, SNode node, String text, boolean editable) {
      super(editorContext, node, text, editable);
    }
  }
}
