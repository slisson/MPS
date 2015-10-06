/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.layoutModel;

import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.openapi.editor.cells.EditorCell;

public class BracketsFrame extends AbstractLayoutBoxFrame {
  public static final int BRACKET_WIDTH = 7;

  protected LayoutBox myBox;
  protected EditorCell myEditorCell;
  protected boolean myEnabled;

  public BracketsFrame(LayoutBox box, EditorCell editorCell) {
    myBox = box;
    myEditorCell = editorCell;
  }

  @Override
  public LayoutBox getBox() {
    return myBox;
  }

  @Override
  public void setBox(LayoutBox box) {
    myBox = box;
  }

  @Override
  public int getLeftSize() {
    return isEnabled() ? BRACKET_WIDTH : 0;
  }

  @Override
  public int getRightSize() {
    return getLeftSize();
  }

  @Override
  public int getTopSize() {
    return 0;
  }

  @Override
  public int getBottomSize() {
    return 0;
  }

  @Override
  public void setLeftSize(int leftSize) {
    throw new UnsupportedOperationException();
  }

  @Override
  public void setRightSize(int rightSize) {
    throw new UnsupportedOperationException();
  }

  @Override
  public void setTopSize(int topSize) {
    throw new UnsupportedOperationException();
  }

  @Override
  public void setBottomSize(int bottomSize) {
    throw new UnsupportedOperationException();
  }

  public boolean isEnabled() {
    return myEditorCell instanceof EditorCell_Basic ? ((EditorCell_Basic)myEditorCell).isDrawBrackets() : false;
  }
}
