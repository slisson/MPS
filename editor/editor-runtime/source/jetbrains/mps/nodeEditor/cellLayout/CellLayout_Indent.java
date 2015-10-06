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

import jetbrains.mps.editor.runtime.style.DefaultBaseLine;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.nodeEditor.cells.EditorCell_Indent;
import jetbrains.mps.nodeEditor.cells.GeometryUtil;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.cells.CellTraversalUtil;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection;

import java.awt.Rectangle;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Stack;

public class CellLayout_Indent extends AbstractCellLayout {
  static boolean isOnNewLine(EditorCell root, EditorCell cell) {
    for (EditorCell current = cell; current != root; current = current.getParent()) {
      if (current.getStyle().get(StyleAttributes.INDENT_LAYOUT_ON_NEW_LINE)) {
        return true;
      }
      if (current.getParent() == null || current.getParent().firstCell() != current) {
        return false;
      }
    }
    return false;
  }

  private static int getIndent(EditorCell root, EditorCell cell, boolean overflow) {
    int result = 0;

    if (overflow) {
      result += 2;
    }

    while (cell != root) {
      if (cell.getStyle().get(StyleAttributes.INDENT_LAYOUT_INDENT)) {
        result++;
      }

      cell = cell.getParent();
    }

    return result;
  }

  public static boolean isNewLineAfter(EditorCell root, EditorCell cell) {
    for (EditorCell current = cell; current != root; current = current.getParent()) {
      if (current.getStyle().get(StyleAttributes.INDENT_LAYOUT_NEW_LINE)) {
        return true;
      }
      EditorCell_Collection parent = current.getParent();

      if (parent != null && parent.getStyle().get(StyleAttributes.INDENT_LAYOUT_CHILDREN_NEWLINE)) {
        return true;
      }
      if (parent == null || parent.lastCell() != current) {
        return false;
      }
    }
    return false;
  }

  @Override
  public int getAscent(EditorCell_Collection editorCells) {
    for (EditorCell cell : editorCells) {
      if (cell.getStyle().get(StyleAttributes.BASE_LINE_CELL)) {
        return cell.getY() - editorCells.getY() + cell.getAscent();
      }
    }

    DefaultBaseLine bL = editorCells.getStyle().get(StyleAttributes.DEFAULT_BASE_LINE);

    int result = 0;
    for (EditorCell cell : editorCells) {
      result = cell.getAscent();
      if (result > 0) {
        break;
      }
    }

    switch (bL) {
      case FIRST: // default behavior
        return result;
      case CENTER:
        return Math.max(result, editorCells.getHeight() / 2);
      case LAST:
        EditorCell lastCell = editorCells.getCellAt(editorCells.getCellsCount() - 1);
        if (lastCell != null) {
          return lastCell.getY() - editorCells.getY() + lastCell.getAscent();
        }
    }

    return 0;
  }

  @Override
  public void move(EditorCell_Collection editorCells, int deltaX, int deltaY) {
    if (editorCells.getParent() != null && editorCells.getParent().getCellLayout() instanceof CellLayout_Indent || deltaX == 0) {
      return;
    }
    // Triggering re-layout process for top-level EditorCell_Collection with indent layout on move.
    // Necessary to recalculate cell wrapping on moving EditorCell_Collection with indent layout enclosed
    // inside another (non-indent layout) cell. Such move can be performed as a part of layout process for
    // top-level cell with indent layout.
    editorCells.requestRelayout();
  }

  @Override
  public void doLayout(EditorCell_Collection editorCells) {
    if (editorCells.getParent() != null && editorCells.getParent().getCellLayout() instanceof CellLayout_Indent) {
      return;
    }

    new CellLayouter(editorCells, getMaxWidth(editorCells), getIndentSize()).layout();
  }

  private int getMaxWidth(EditorCell_Collection editorCells) {
    if (editorCells.getStyle().isSpecified(StyleAttributes.MAX_WIDTH)) {
      return editorCells.getX() + editorCells.getStyle().get(StyleAttributes.MAX_WIDTH);
    }
    return editorCells.getRootParent().getX() + EditorSettings.getInstance().getVerticalBoundWidth();
  }

  private int getIndentSize() {
    EditorSettings settings = EditorSettings.getInstance();
    return settings.getSpacesWidth(settings.getIndentSize());
  }

  @Override
  public TextBuilder doLayoutText(Iterable<EditorCell> editorCells) {
    Set<EditorCell> editorCellsSet = new HashSet<EditorCell>();
    for (EditorCell editorCell : editorCells) {
      editorCellsSet.add(editorCell);
    }
    TextBuilder result = jetbrains.mps.nodeEditor.text.TextBuilder.getEmptyTextBuilder();
    Iterator<EditorCell> iterator = editorCells.iterator();
    if (iterator.hasNext()) {
      boolean newLineAfter = false;
      EditorCell_Collection rootCell = iterator.next().getParent();
      for (EditorCell current : getIndentLeafs(rootCell)) {
        EditorCell childCell = current;
        while (childCell.getParent() != rootCell) {
          childCell = childCell.getParent();
        }
        if (!editorCellsSet.contains(childCell)) {
          continue;
        }
        if (isOnNewLine(rootCell, current) || newLineAfter) {
          newLineAfter = false;
          result = result.appendToTheRight(jetbrains.mps.nodeEditor.text.TextBuilder.fromString("\n"), true);
          for (int i = 0; i < getIndent(rootCell, current, false); i++) {
            result = result.appendToTheRight(jetbrains.mps.nodeEditor.text.TextBuilder.fromString(EditorCell_Indent.getIndentText()), false);
          }
        }

        result = result.appendToTheRight(current.renderText(), PunctuationUtil.hasLeftGap(current));

        if (isNewLineAfter(rootCell, current)) {
          newLineAfter = true;
        }
      }
    }
    return result;
  }

  @Override
  public List<? extends EditorCell> getSelectionCells(EditorCell_Collection editorCells) {
    return getIndentLeafs(editorCells);
  }

  @Override
  public List<Rectangle> getSelectionBounds(EditorCell_Collection editorCells) {
    List<Rectangle> result = new ArrayList<Rectangle>();
    List<EditorCell> indentLeafs = getIndentLeafs(editorCells);
    for (EditorCell leaf : indentLeafs) {
      result.add(GeometryUtil.getBounds(leaf));
    }
    return result;
  }

  @Override
  public boolean canBeFolded() {
    return true;
  }

  private static List<EditorCell> getIndentLeafs(EditorCell_Collection current) {
    List<EditorCell> result = new ArrayList<EditorCell>();
    collectCells(current, result, null);
    return result;
  }

  private static void collectCells(
      EditorCell_Collection current,
      List<EditorCell> frontier,
      List<EditorCell_Collection> collections) {

    for (EditorCell child : current) {
      if (child instanceof EditorCell_Collection) {
        EditorCell_Collection collection = (EditorCell_Collection) child;
        if (isIndentCollection(collection)) {
          collectCells(collection, frontier, collections);
        } else {
          frontier.add(child);
        }
      } else {
        frontier.add(child);
      }

      if (collections != null) {
        collections.add(current);
      }
    }
  }

  private static boolean isIndentCollection(EditorCell_Collection collection) {
    return collection.getCellLayout() instanceof CellLayout_Indent && collection.getCellsCount() > 0;
  }

  private class CellLayouter {
    private EditorCell_Collection myCell;

    private final int myX;
    private final int myMaxWidth;
    private int myWidth;
    private int myHeight;

    private int myLineWidth;
    private int myLineAscent;
    private int myLineDescent;
    private int myTopInset;
    private int myBottomInset;
    private boolean myOverflow;
    private int myLineIndent = 0;
    private List<EditorCell> myLineContent = new ArrayList<EditorCell>();
    private List<Integer> myLineWrapIndent = new ArrayList<Integer>();
    private int myIndentSize;

    private Stack<Integer> myIndentStack = new Stack<Integer>();
    private Stack<Integer> myWrapStack = new Stack<Integer>();
    private int myCurrentIndent;
    private int myCurrentIndentAfterWrap;

    private CellLayouter(EditorCell_Collection cell, int maxWidth, int indentSize) {
      myCell = cell;
      myX = myCell.getX() + myCell.getLeftInset();

      myWidth = 0;
      myHeight = 0;

      myLineWidth = 0;
      myLineAscent = 0;
      myLineDescent = 0;
      myTopInset = 0;
      myBottomInset = 0;
      myCurrentIndent = 0;

      myMaxWidth = maxWidth;
      myIndentSize = indentSize;

      myCurrentIndentAfterWrap = myIndentSize * 2;
    }

    public void layout() {
      layoutCollection(myCell);
      newLine(false);
      updatePositions(myCell);
    }


    private void layout(final EditorCell cell) {
      if (isOnNewLine(myCell, cell)) {
        newLine(false);
      }

      if (cell.getStyle().get(StyleAttributes.INDENT_LAYOUT_INDENT)) {
        withIndent(myCurrentIndent + myIndentSize, myCurrentIndent + 3 * myIndentSize, new Runnable() {
          @Override
          public void run() {
            appendCell(cell, false);
          }
        });
      } else {
        appendCell(cell, false);
      }

      if (haveToSplit()) {
        splitLineAt(findSplitPoint());
      }

      if (isNewLineAfter(myCell, cell)) {
        newLine(false);
      }
    }

    private void withIndent(int indent, int wrapIndent, Runnable r) {
      try {
        myIndentStack.push(myCurrentIndent);
        myWrapStack.push(myCurrentIndentAfterWrap);
        myCurrentIndent = indent;
        myCurrentIndentAfterWrap = wrapIndent;
        r.run();
      } finally {
        myCurrentIndent = myIndentStack.pop();
        myCurrentIndentAfterWrap = myWrapStack.pop();
      }
    }

    private void layoutCollection(final EditorCell_Collection collection) {
      boolean hasIndent = collection != myCell && collection.getStyle().get(StyleAttributes.INDENT_LAYOUT_INDENT);
      boolean hasAnchor = collection != myCell && collection.getStyle().get(StyleAttributes.INDENT_LAYOUT_INDENT_ANCHOR);
      boolean hasWrapAnchor = collection.getStyle().get(StyleAttributes.INDENT_LAYOUT_WRAP_ANCHOR);

      int indent = hasIndent && hasAnchor ? currentIndent() + myIndentSize :
          hasIndent ? myCurrentIndent + myIndentSize :
              hasAnchor ? currentIndent() + getFirstChildLeftGap(collection)
                  : myCurrentIndent;
      int wrapIndent = hasWrapAnchor ? currentIndent() + getFirstChildLeftGap(collection) :
          (hasAnchor || hasIndent) ? indent + 2 * myIndentSize
              : myCurrentIndentAfterWrap;

      withIndent(indent, wrapIndent, new Runnable() {
        @Override
        public void run() {
          for (EditorCell child : collection) {
            if (child instanceof EditorCell_Collection && isIndentCollection((EditorCell_Collection) child)) {
              layoutCollection((EditorCell_Collection) child);
            } else {
              layout(child);
            }
          }
        }
      });
    }

    private int currentIndent() {
      int indent = myLineWidth;
      if (myLineContent.isEmpty()) {
        indent += myOverflow ? myCurrentIndentAfterWrap : myCurrentIndent;
      }
      return indent;
    }

    private int getFirstChildLeftGap(EditorCell_Collection collection) {
      EditorCell firstLeaf = CellTraversalUtil.getFirstLeaf(collection);
      if (firstLeaf != null) {
        return PunctuationUtil.getLeftGap(firstLeaf);
      }
      return 0;
    }

    private void updatePositions(EditorCell_Collection collection) {
      for (EditorCell child : collection) {
        if (child instanceof EditorCell_Collection && isIndentCollection((EditorCell_Collection) child)) {
          updatePositions((EditorCell_Collection) child);
        }
      }

      int x0 = Integer.MAX_VALUE;
      int y0 = Integer.MAX_VALUE;
      int x1 = Integer.MIN_VALUE;
      int y1 = Integer.MIN_VALUE;

      for (EditorCell child : collection) {
        x0 = Math.min(x0, child.getX());
        y0 = Math.min(y0, child.getY());
        x1 = Math.max(x1, child.getX() + child.getWidth());
        y1 = Math.max(y1, child.getY() + child.getHeight());
      }

      collection.setX(x0 - collection.getLeftInset());
      collection.setY(y0 - collection.getTopInset());
      collection.setWidth(x1 - x0 + collection.getLeftInset() + collection.getRightInset());
      collection.setHeight(y1 - y0 + collection.getTopInset() + collection.getBottomInset());

      //collection is implicitly laid out
      ((EditorCell_Basic) collection).unrequestLayout();

      if (collection != myCell) {
        int ascent = getAscent(collection);
        int descent = collection.getHeight() - ascent;
        collection.setAscent(ascent);
        collection.setDescent(descent);
      }
    }

    private void appendCell(EditorCell cell, boolean last) {
      if (myLineContent.isEmpty()) {
        myLineIndent = myCurrentIndent;
        indent();
      }

      PunctuationUtil.addGaps(cell, myLineContent.isEmpty(), last);

      cell.moveTo(myX + myLineWidth, cell.getY());
      cell.relayout();

      myLineAscent = Math.max(myLineAscent, cell.getAscent());
      myLineDescent = Math.max(myLineDescent, cell.getDescent());
      myTopInset = Math.max(myTopInset, cell.getTopInset());
      myBottomInset = Math.max(myBottomInset, cell.getBottomInset());

      myLineWidth += cell.getWidth();

      myLineContent.add(cell);
      myLineWrapIndent.add(myCurrentIndentAfterWrap);
    }

    private void indent() {
      myLineWidth += myOverflow ? myCurrentIndentAfterWrap : myCurrentIndent;

    }

    private void newLine(boolean overflow) {
      int baseLine = myCell.getY() + myHeight + myTopInset + myLineAscent;

      for (EditorCell cell : myLineContent) {
        cell.setBaseline(baseLine);
        cell.relayout();
      }

      myWidth = Math.max(myWidth, myLineWidth);
      myHeight += myTopInset + myBottomInset + myLineAscent + myLineDescent;
      myOverflow = overflow;

      resetLine();
    }

    private void resetLine() {
      myLineWidth = 0;
      myLineAscent = 0;
      myLineDescent = 0;
      myTopInset = 0;
      myBottomInset = 0;
      myLineContent.clear();
      myLineWrapIndent.clear();
    }

    private boolean haveToSplit() {
      return myX + myLineWidth > myMaxWidth && myLineContent.size() > 1;
    }

    private EditorCell findSplitPoint() {
      EditorCell lastCell = myLineContent.get(myLineContent.size() - 1);
      EditorCell result = lastCell;

      EditorCell current = result;

      while (true) {
        if (!isIndentCollection(current.getParent())) break;

        EditorCell indentLeaf = getFirstIndentLeaf(current.getParent());
        EditorCell unitStart = expandToUnitStart(indentLeaf);

        if (myLineContent.contains(unitStart) && isOnRightSide(unitStart) &&
            cellRangeFitsOnOneLine(unitStart, lastCell)) {

          result = indentLeaf;
          current = current.getParent();
        } else {
          break;
        }
      }

      return expandToUnitStart(result);
    }

    private EditorCell expandToUnitStart(EditorCell cell) {
      EditorCell result = cell;

      while (true) {
        EditorCell prevLeaf = CellTraversalUtil.getPrevLeaf(result);
        // taking into account prevLeafs located inside collections with non-indent layouts:
        // in this case topmost collection itself will be included into myLineContent as a
        // child element 
        while (prevLeaf != null && !myLineContent.contains(prevLeaf)) {
          prevLeaf = prevLeaf.getParent();
        }

        if (!myCell.isAncestorOf(prevLeaf)) break;
        if (!myLineContent.contains(prevLeaf)) break;

        if (isNoWrap(result) || result.getStyle().get(StyleAttributes.PUNCTUATION_LEFT)) {
          result = prevLeaf;
        } else {
          break;
        }
      }

      return result;
    }

    private Boolean isNoWrap(EditorCell current) {
      while (current != null) {
        if (current.getStyle().get(StyleAttributes.INDENT_LAYOUT_NO_WRAP)) {
          return true;
        }
        if (current.getParent().firstCell() == current) {
          current = current.getParent();
        } else {
          return false;
        }
      }
      return false;
    }

    private boolean cellRangeFitsOnOneLine(EditorCell firstCell, EditorCell lastCell) {
      return lastCell.getX() + lastCell.getWidth() - firstCell.getX() <
          myMaxWidth - myX - myCurrentIndentAfterWrap;
    }

    private boolean isOnRightSide(EditorCell cell) {
      return cell.getX() + cell.getWidth() - myX > myMaxWidth / 2;
    }

    private EditorCell getFirstIndentLeaf(EditorCell_Collection collection) {
      if (!isIndentCollection(collection)) return collection;

      EditorCell firstChild = collection.firstCell();
      if (firstChild instanceof EditorCell_Collection) {
        return getFirstIndentLeaf((EditorCell_Collection) firstChild);
      }

      return firstChild;
    }

    private void splitLineAt(EditorCell splitAt) {
      int index = myLineContent.indexOf(splitAt);
      if (index == -1) throw new IllegalStateException();

      final List<EditorCell> oldLine = new ArrayList<EditorCell>(myLineContent.subList(0, index));
      final List<EditorCell> newLine = new ArrayList<EditorCell>(myLineContent.subList(index, myLineContent.size()));

      withIndent(myLineIndent, myLineWrapIndent.get(index), new Runnable() {
        @Override
        public void run() {
          resetLine();

          for (EditorCell cell : oldLine) {
            appendCell(cell, cell == oldLine.get(oldLine.size() - 1));
          }

          if (!oldLine.isEmpty()) {
            newLine(true);
          }

          for (EditorCell cell : newLine) {
            appendCell(cell, false);
          }
        }
      });
    }
  }

}
