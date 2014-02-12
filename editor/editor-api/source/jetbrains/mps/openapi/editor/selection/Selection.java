/*
 * Copyright 2003-2013 JetBrains s.r.o.
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
package jetbrains.mps.openapi.editor.selection;

import jetbrains.mps.openapi.editor.EditorComponent;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.event.KeyEvent;
import java.util.List;

/**
 * User: shatalin
 * Date: 6/3/13
 */
public interface Selection {
  @NotNull
  EditorComponent getEditorComponent();

  void activate();

  void deactivate();

  SelectionInfo getSelectionInfo() throws SelectionStoreException;

  boolean isSame(Selection another);

  public boolean canExecuteAction(CellActionType type);

  void executeAction(CellActionType type);

  boolean processKeyTyped(KeyEvent e);

  /**
   * @return non-empty list of selected cells
   */
  @NotNull
  List<EditorCell> getSelectedCells();

  /**
   * @return non-empty list of selected nodes
   */
  @NotNull
  List<SNode> getSelectedNodes();

  void ensureVisible();
}
