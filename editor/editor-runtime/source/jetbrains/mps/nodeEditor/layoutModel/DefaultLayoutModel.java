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

import jetbrains.mps.openapi.editor.cells.EditorCell;

public class DefaultLayoutModel implements LayoutModel {
  protected LayoutBox myContentBox;
  protected LayoutBoxFrame myPaddingBox;
  protected LayoutBoxFrame myBracketsBox;
  // The gap box is there for compatibility reasons. It should be a margin, but the border is drawn outside the gap.
  protected LayoutBoxFrame myGapBox;
  protected LayoutBoxFrame myBorderBox;
  protected LayoutBoxFrame myMarginBox;

  public DefaultLayoutModel(EditorCell editorCell) {
    myContentBox = new DefaultLayoutBox();
    myPaddingBox = new DefaultLayoutBoxFrame(myContentBox);
    myBracketsBox = new BracketsFrame(myPaddingBox, editorCell);
    myGapBox = new DefaultLayoutBoxFrame(myBracketsBox);
    // The previous behavior was to not reserve any space for the border and let the border of neighbor cells overlap.
    // That's why we have to use 0 for the border size.
    myBorderBox = new BorderFrame(myGapBox, editorCell, 0);
    myMarginBox = new DefaultLayoutBoxFrame(myBorderBox);
  }

  @Override
  public LayoutBox getContentBox() {
    return myContentBox;
  }

  @Override
  public LayoutBoxFrame getPaddingBox() {
    return myPaddingBox;
  }

  @Override
  public LayoutBoxFrame getBorderBox() {
    return myBorderBox;
  }

  @Override
  public LayoutBoxFrame getMarginBox() {
    return myMarginBox;
  }

  @Override
  public LayoutBoxFrame getBracketsBox() {
    return myBracketsBox;
  }

  @Override
  public LayoutBoxFrame getGapBox() {
    return myGapBox;
  }
}
