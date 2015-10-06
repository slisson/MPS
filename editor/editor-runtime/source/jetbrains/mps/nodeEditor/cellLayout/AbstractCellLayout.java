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
package jetbrains.mps.nodeEditor.cellLayout;

import jetbrains.mps.nodeEditor.cells.GeometryUtil;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection;

import java.awt.Rectangle;
import java.util.Arrays;
import java.util.List;

public abstract class AbstractCellLayout implements CellLayout {
  @Override
  public int getAscent(EditorCell_Collection editorCells) {
    int ascent = 0;
    for (EditorCell cell : editorCells) {
      ascent = Math.max(ascent, cell.getAscent());
    }
    return ascent + editorCells.getTopInset();
  }

  @Override
  public int getDescent(EditorCell_Collection editorCells) {
    return editorCells.getHeight() - getAscent(editorCells);
  }

  @Override
  public List<? extends EditorCell> getSelectionCells(EditorCell_Collection editorCells) {
    return null;
  }

  @Override
  public List<Rectangle> getSelectionBounds(EditorCell_Collection editorCells) {
    return Arrays.asList(GeometryUtil.getBounds(editorCells));
  }

  public int getRightInternalInset(EditorCell_Collection editorCell_collection) {
    EditorCell editorCell = editorCell_collection.lastCell();
    if (editorCell == null) return 0;
    return editorCell.getRightInset();
  }

  public int getLeftInternalInset(EditorCell_Collection editorCell_collection) {
    EditorCell editorCell = editorCell_collection.firstCell();
    if (editorCell == null) return 0;
    return editorCell.getLeftInset();
  }

  @Override
  public boolean canBeFolded() {
    return false;
  }

  @Override
  public void requestRelayout(EditorCell_Collection editorCells) {
  }

  @Override
  public void move(EditorCell_Collection editorCells, int deltaX, int deltaY) {
  }
}
