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


import jetbrains.mps.nodeEditor.cells.APICellAdapter;
import jetbrains.mps.nodeEditor.keymaps.KeymapHandler;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.KeyMapAction;
import jetbrains.mps.openapi.editor.selection.Selection;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.Pair;

import java.awt.event.KeyEvent;
import java.util.Collection;

public class EditorComponentKeyboardHandler implements KeyboardHandler {
  private final KeymapHandler<KeyEvent> myKeymapHandler;

  public EditorComponentKeyboardHandler(KeymapHandler<KeyEvent> keymapHandler) {
    myKeymapHandler = keymapHandler;
  }

  @Override
  public boolean processKeyPressed(final EditorContext editorContext, final KeyEvent keyEvent) {
    EditorComponent nodeEditor = editorContext.getNodeEditorComponent();
    nodeEditor.hideMessageToolTip();

    if (processKeyMaps(editorContext, keyEvent)) {
      return true;
    }

    jetbrains.mps.openapi.editor.cells.CellActionType actionType = editorContext.getNodeEditorComponent().getActionType(keyEvent, editorContext);
    EditorCell selectedCell = editorContext.getSelectedCell();

    // process action
    if (selectedCell != null && actionType != null && editorContext.getEditorComponent().getActionHandler().executeAction(selectedCell, actionType)) {
      return true;
    }

    // special case - don't allow kbd focus to leave editor area
    if (keyEvent.getKeyCode() == KeyEvent.VK_UP && keyEvent.isControlDown() && !keyEvent.isAltDown() && !keyEvent.isShiftDown()) {
      keyEvent.consume();
    }

    return false;
  }

  @Override
  public boolean processKeyTyped(EditorContext editorContext, final KeyEvent keyEvent) {
    EditorComponent nodeEditor = editorContext.getNodeEditorComponent();
    nodeEditor.hideMessageToolTip();

    if (processKeyMaps(editorContext, keyEvent)) {
      return true;
    }

    Selection selection = editorContext.getSelectionManager().getSelection();
    if (selection != null) {
      if (selection.processKeyTyped(keyEvent)) {
        keyEvent.consume();
        return true;
      }
    }

    final EditorCell selectedCell = editorContext.getSelectedCell();
    if (selectedCell != null && ((jetbrains.mps.nodeEditor.cells.EditorCell) selectedCell).processKeyTyped(keyEvent, false)) {
      keyEvent.consume();
      return true;
    }

    jetbrains.mps.openapi.editor.cells.CellActionType actionType = editorContext.getNodeEditorComponent().getActionType(keyEvent, editorContext);

    if (selectedCell != null) {
      final boolean strictMatching = jetbrains.mps.openapi.editor.cells.CellActionType.RIGHT_TRANSFORM.equals(actionType) ||
          jetbrains.mps.openapi.editor.cells.CellActionType.LEFT_TRANSFORM.equals(actionType);

      if (selectedCell.isErrorState() && strictMatching) {
        boolean res = ModelAccess.instance().runWriteActionInCommand(new Computable<Boolean>() {
          @Override
          public Boolean compute() {
            return APICellAdapter.validate(selectedCell, strictMatching, false);
          }
        });

        if (res) return true;
      }

      if (actionType != null) {
        if (editorContext.getEditorComponent().getActionHandler().executeAction(selectedCell, actionType)) {
          return true;
        }
      }
    }

    if (selectedCell != null && ((jetbrains.mps.nodeEditor.cells.EditorCell) selectedCell).processKeyTyped(keyEvent, true)) {
      keyEvent.consume();
      return true;
    }

    return false;
  }

  @Override
  public boolean processKeyReleased(EditorContext editorContext, KeyEvent keyEvent) {
    return false;
  }

  private boolean processKeyMaps(EditorContext editorContext, KeyEvent keyEvent) {
    EditorCell selectedCell = editorContext.getSelectedCell();
    if (selectedCell == null) {
      return false;
    }

    if (keyEvent.getID() != KeyEvent.KEY_PRESSED && keyEvent.getID() != KeyEvent.KEY_TYPED) {
      // Looks like unnecessary check
      return false;
    }

    int keyCode = keyEvent.getKeyCode();
    if (keyCode == KeyEvent.VK_CONTROL || keyCode == KeyEvent.VK_ALT || keyCode == KeyEvent.VK_SHIFT ||
        keyCode == KeyEvent.VK_PAGE_UP || keyCode == KeyEvent.VK_PAGE_DOWN) {
      return false;
    }

    Collection<Pair<KeyMapAction, EditorCell>> actionCellPairs = myKeymapHandler.getActions(selectedCell, keyEvent, editorContext);
    if (actionCellPairs.size() == 0) {
      return false;
    }
    Pair<KeyMapAction, EditorCell> first = actionCellPairs.iterator().next();
    if (actionCellPairs.size() == 1 && !first.o1.isMenuAlwaysShown()) {
      myKeymapHandler.executeAction(first.o1, first.o2, editorContext);
    } else {
      // show menu
      myKeymapHandler.showActionsMenu(actionCellPairs, editorContext, selectedCell);
    }
    return true;
  }
}
