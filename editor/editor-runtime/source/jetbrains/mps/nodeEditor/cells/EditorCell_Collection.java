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
package jetbrains.mps.nodeEditor.cells;

import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.editor.runtime.style.Padding;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.nodeEditor.EditorCellListHandler;
import jetbrains.mps.nodeEditor.EditorCell_WithComponent;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Flow;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Horizontal;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Indent;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Superscript;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Table;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.cells.CellAction;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.openapi.editor.cells.CellTraversalUtil;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.SubstituteInfo;
import jetbrains.mps.openapi.editor.selection.Selection;
import jetbrains.mps.openapi.editor.selection.SelectionListener;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.util.ArrayWrapper;
import jetbrains.mps.util.NameUtil;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.util.Condition;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Rectangle;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Queue;

/**
 * Author: Sergey Dmitriev
 * Created Sep 14, 2003
 */
public class EditorCell_Collection extends EditorCell_Basic implements jetbrains.mps.openapi.editor.cells.EditorCell_Collection, SynchronizeableEditorCell {
  private static Logger LOG = LogManager.getLogger(EditorCell_Collection.class);

  public static final String FOLDED_TEXT = "...";
  private static final EditorCell[] EMPTY_ARRAY = new EditorCell[0];

  private EditorCell[] myEditorCells = EditorCell_Collection.EMPTY_ARRAY;
  private List<EditorCell> myEditorCellsWrapper = new ArrayWrapper<EditorCell>() {
    @Override
    protected EditorCell[] getArray() {
      return myEditorCells;
    }

    @Override
    protected void setArray(EditorCell[] newArray) {
      myEditorCells = newArray;
    }

    @Override
    protected EditorCell[] newArray(int size) {
      return new EditorCell[size];
    }
  };

  private List<EditorCell> myFoldedCellCollection;
  private EditorCell myFoldedCell;

  @NotNull
  protected CellLayout myCellLayout;
  private AbstractCellListHandler myCellListHandler;

  private EditorCell_Brace myOpeningBrace;
  private EditorCell_Brace myClosingBrace;

  private MyLastCellSelectionListener myLastCellSelectionListener;
  private boolean myUsesBraces = false;
  private boolean myBracesEnabled = false;

  private int myArtificialBracesIndent = 0;

  private boolean myFolded = false;
  private boolean myCanBeFolded = false;

  private MouseListener myUnfoldCollectionMouseListener;
  private boolean myCanBeSynchronized;

  @SuppressWarnings({"UnusedDeclaration"})
  public static EditorCell_Collection createVertical(EditorContext editorContext, SNode node, EditorCellListHandler handler) {
    return new EditorCell_Collection(editorContext, node, new CellLayout_Vertical(), handler);
  }

  @SuppressWarnings({"UnusedDeclaration"})
  public static EditorCell_Collection createHorizontal(EditorContext editorContext, SNode node, EditorCellListHandler handler) {
    return new EditorCell_Collection(editorContext, node, new CellLayout_Horizontal(), handler);
  }

  public static EditorCell_Collection createVertical(EditorContext editorContext, SNode node) {
    return new EditorCell_Collection(editorContext, node, new CellLayout_Vertical(), null);
  }

  public static EditorCell_Collection createHorizontal(EditorContext editorContext, SNode node) {
    return new EditorCell_Collection(editorContext, node, new CellLayout_Horizontal(), null);
  }

  public static EditorCell_Collection createIndent2(EditorContext editorContext, SNode node) {
    return new EditorCell_Collection(editorContext, node, new CellLayout_Indent(), null);
  }

  public static EditorCell_Collection createSuperscript(EditorContext editorContext, SNode node) {
    return new EditorCell_Collection(editorContext, node, new CellLayout_Superscript(), null);
  }

  public static EditorCell_Collection createTable(EditorContext editorContext, SNode node) {
    return new EditorCell_Collection(editorContext, node, new CellLayout_Table(), null);
  }

  @SuppressWarnings({"UnusedDeclaration"})
  public static EditorCell_Collection createFlow(EditorContext editorContext, SNode node, EditorCellListHandler handler) {
    return new EditorCell_Collection(editorContext, node, new CellLayout_Flow(), handler);
  }

  public static EditorCell_Collection createFlow(EditorContext editorContext, SNode node) {
    return new EditorCell_Collection(editorContext, node, new CellLayout_Flow(), null);
  }

  public static EditorCell_Collection create(EditorContext editorContext, SNode node, CellLayout cellLayout, AbstractCellListHandler handler) {
    return new EditorCell_Collection(editorContext, node, cellLayout, handler);
  }

  @Override
  public boolean isFolded() {
    return myFolded;
  }

  private List<EditorCell> getEditorCells() {
    return myEditorCellsWrapper;
  }

  @NotNull
  private List<EditorCell> getFoldedCellCollection() {
    if (!hasFoldedCell()) {
      return Collections.emptyList();
    }
    if (myFoldedCellCollection == null) {
      myFoldedCellCollection = Collections.singletonList(getFoldedCell());
    }
    return myFoldedCellCollection;
  }

  private EditorCell getFoldedCell() {
    assert hasFoldedCell();
    if (myFoldedCell == null) {
      EditorCell_Constant foldedCell = new EditorCell_Constant(getContext(), getSNode(), FOLDED_TEXT);
      Style style = foldedCell.getStyle();
      // COLORS: Remove hardcoded colors & font
      style.set(StyleAttributes.FONT_STYLE, Font.BOLD);
      style.set(StyleAttributes.TEXT_BACKGROUND_COLOR, Color.lightGray);
      style.set(StyleAttributes.TEXT_COLOR, Color.darkGray);
      style.set(StyleAttributes.SELECTABLE, Boolean.FALSE);
      setFoldedCell(foldedCell);
    }
    return myFoldedCell;
  }

  public void setFoldedCell(EditorCell foldedCell) {
    if (myFoldedCell != null) {
      ((EditorCell_Basic) myFoldedCell).setParent(null);
      getStyle().remove(myFoldedCell.getStyle());
    }
    myFoldedCell = foldedCell;
    ((EditorCell_Basic) myFoldedCell).setParent(this);
    getStyle().add(myFoldedCell.getStyle());
  }

  private boolean hasFoldedCell() {
    return myCanBeFolded;
  }

  private List<EditorCell> getVisibleChildCells() {
    return isFolded() ? getFoldedCellCollection() : getEditorCells();
  }

  public int getChildCount() {
    return getVisibleChildCells().size();
  }

  public jetbrains.mps.nodeEditor.cells.EditorCell getChildAt(int i) {
    return (jetbrains.mps.nodeEditor.cells.EditorCell) getVisibleChildCells().get(i);
  }

  @Override
  public int indexOf(EditorCell cell) {
    return getVisibleChildCells().indexOf(cell);
  }

  @NotNull
  @Override
  public CellLayout getCellLayout() {
    return myCellLayout;
  }

  @Override
  public boolean isLeaf() {
    return false;
  }

  @SuppressWarnings({"UnusedDeclaration"})
  public AbstractCellListHandler getCellListHandler() {
    return myCellListHandler;
  }

  public boolean hasCellListHandler() {
    return myCellListHandler != null;
  }

  public String getCellNodesRole() {
    if (myCellListHandler == null) return null;
    return myCellListHandler.getElementRole();
  }

  public int getCellNumber(jetbrains.mps.nodeEditor.cells.EditorCell cell) {
    if (usesBraces()) {
      return indexOf(cell) - 1;
    } else {
      return indexOf(cell);
    }
  }

  @Override
  public EditorCell getCellAt(int number) {
    try {
      return getChildAt(usesBraces() ? number + 1 : number);
    } catch (IndexOutOfBoundsException e) {
      return null;
    }
  }

  public void setGridLayout(boolean gridLayout) {
    if (myCellLayout instanceof CellLayout_Vertical) {
      ((CellLayout_Vertical) myCellLayout).setGridLayout(gridLayout);
    }
  }

  @Override
  public void setArtificialBracesIndent(int indent) {
    myArtificialBracesIndent = indent;
  }

  @Override
  public boolean isAncestorOf(EditorCell cell) {
    while (cell != null) {
      cell = cell.getParent();
      if (cell == this) return true;
    }
    return false;
  }

  @Override
  public int getBracesIndent() {
    int naturalIndent = usesBraces() ? myOpeningBrace.getWidth() : 0;
    return Math.max(myArtificialBracesIndent, naturalIndent);
  }

  protected EditorCell_Collection(EditorContext editorContext, SNode node, @NotNull CellLayout cellLayout, AbstractCellListHandler handler) {
    super(editorContext, node);
    myCellLayout = cellLayout;
    myCellListHandler = handler;
    this.setAction(CellActionType.LOCAL_HOME, new SelectFirstChild());
    this.setAction(CellActionType.LOCAL_END, new SelectLastChild());
  }

  private void setBraces() {
    myOpeningBrace = new EditorCell_Brace(getContext(), getSNode(), true);
    myClosingBrace = new EditorCell_Brace(getContext(), getSNode(), false);

    if (myLastCellSelectionListener == null) {
      myLastCellSelectionListener = new MyLastCellSelectionListener();
    }
    addEditorCellAt(0, myOpeningBrace, true);
    addEditorCellAt(getChildCount(), myClosingBrace, true);
  }

  private void removeBraces() {
    removeCell(myOpeningBrace);
    removeCell(myClosingBrace);
    getEditor().getSelectionManager().removeSelectionListener(myLastCellSelectionListener);

    myOpeningBrace = null;
    myClosingBrace = null;
    myLastCellSelectionListener = null;
  }

  private void setBracesEnabled(boolean enabled) {
    myBracesEnabled = enabled;
    getEditor().setBracesEnabled(this, enabled);
  }

  public void enableBraces() {
    setBracesEnabled(true);
    myOpeningBrace.setEnabled(true);
    myClosingBrace.setEnabled(true);
    // COLORS: Remove hardcoded color
    getEditor().leftHighlightCell(this, new Color(80, 0, 120));
  }

  public void disableBraces() {
    setBracesEnabled(false);
    myOpeningBrace.setEnabled(false);
    myClosingBrace.setEnabled(false);
    getEditor().leftUnhighlightCell(this);
  }

  public boolean areBracesEnabled() {
    return myBracesEnabled;
  }

  @Override
  public EditorCell getOpeningBrace() {
    return myOpeningBrace;
  }

  @Override
  public EditorCell getClosingBrace() {
    return myClosingBrace;
  }

  // TODO: not used? Remove?
  public Iterable<EditorCell> contentCells() {
    if (usesBraces()) {
      return new Iterable<EditorCell>() {
        @Override
        public Iterator<EditorCell> iterator() {
          return new Iterator<EditorCell>() {//iterates from second to before last
            private Iterator<EditorCell> myIterator = EditorCell_Collection.this.iterator();
            private EditorCell myNext;

            {
              myIterator.next();
              myNext = myIterator.next();
            }

            @Override
            public boolean hasNext() {
              return myIterator.hasNext();
            }

            @Override
            public EditorCell next() {
              if (!hasNext()) throw new NoSuchElementException();
              EditorCell result = myNext;
              myNext = myIterator.next();
              return result;
            }

            @Override
            public void remove() {
              throw new UnsupportedOperationException();
            }
          };
        }
      };
    } else return this;
  }

  @Override
  public Iterator<EditorCell> iterator() {
    return new UnmodifiableIterator<EditorCell>(getVisibleChildCells(), false);
  }

  @Override
  public Iterator<EditorCell> reverseIterator() {
    return new UnmodifiableIterator<EditorCell>(getVisibleChildCells(), true);
  }

  @Override
  public Iterable<EditorCell> getContentCells() {
    if (usesBraces() && !isFolded()) {
      List<EditorCell> editorCells = getEditorCells();
      return editorCells.subList(1, editorCells.size() - 1);
    } else {
      return this;
    }
  }

  public jetbrains.mps.nodeEditor.cells.EditorCell[] getCells() {
    return getVisibleChildCells().toArray(new jetbrains.mps.nodeEditor.cells.EditorCell[getVisibleChildCells().size()]);
  }

  public List<jetbrains.mps.nodeEditor.cells.EditorCell> dfsCells() {
    List<jetbrains.mps.nodeEditor.cells.EditorCell> result = new ArrayList<jetbrains.mps.nodeEditor.cells.EditorCell>();
    for (EditorCell cell : getVisibleChildCells()) {
      if (cell instanceof EditorCell_Collection) {
        result.add((jetbrains.mps.nodeEditor.cells.EditorCell) cell);
        result.addAll(((EditorCell_Collection) cell).dfsCells());
      } else {
        result.add((jetbrains.mps.nodeEditor.cells.EditorCell) cell);
      }
    }
    return result;
  }

  @Override
  public void addEditorCell(EditorCell editorCell) {
    if (editorCell == null) return;
    addCell(editorCell);
    ((EditorCell_Basic) editorCell).setParent(this);
  }

  public boolean containsCell(jetbrains.mps.nodeEditor.cells.EditorCell editorCell) {
    return getVisibleChildCells().contains(editorCell);
  }

  @Override
  public int getCellsCount() {
    return getChildCount();
  }

  @Override
  public int getContentCellsCount() {
    int count = getCellsCount();
    if (usesBraces()) {
      return count - 2;
    } else {
      return count;
    }
  }

  @Override
  protected void relayoutImpl() {
    myCellLayout.doLayout(this);
    setAscent(myCellLayout.getAscent(this));
    setDescent(myCellLayout.getDescent(this));
    for (EditorCell childCell : this) {
      if (childCell.wasRelayoutRequested()) {
        LOG.error("Some child cells of " + this + " cell with the layout: " + myCellLayout + " still needs re-layout", new Throwable());
        return;
      }
    }
  }


  public void fold() {
    fold(false);
  }

  public void unfold() {
    unfold(false);
  }

  private void setFolded(boolean folded) {
    if (myFolded == folded) {
      return;
    }
    myFolded = folded;
    getEditor().setFolded(this, folded);
    requestRelayout();
  }

  public void fold(boolean programmaticaly) {
    if (!isFoldable()) return;
    if (isFolded()) {
      // updating editor's myFoldedCells set (sometimes this method is called from Memento) 
      getEditor().setFolded(this, true);
      return;
    }
    setFolded(true);
    if (!isUnderFolded()) {
      addUnfoldingListener();
      removeFoldingListenerForChildren();
    }
    if (!programmaticaly) {
      getContext().flushEvents();
      getEditor().relayout();
      adjustSelectionToFoldingState(getEditor());
    }
  }

  protected boolean isUnderFolded() {
    return CellTraversalUtil.getFoldedParent(this) != null;
  }

  private void addUnfoldingListenerForChildren() {
    Queue<EditorCell> children = new LinkedList<EditorCell>(getEditorCells());
    while (!children.isEmpty()) {
      EditorCell child = children.poll();
      if (child instanceof EditorCell_WithComponent) {
        ((EditorCell_WithComponent) child).getComponent().setVisible(true);
      }
      if (!(child instanceof EditorCell_Collection)) {
        continue;
      }
      EditorCell_Collection childCollection = (EditorCell_Collection) child;
      if (childCollection.isFolded()) {
        childCollection.addUnfoldingListener();
      } else {
        children.addAll(childCollection.getEditorCells());
      }
    }
  }

  private void removeFoldingListenerForChildren() {
    Queue<EditorCell> children = new LinkedList<EditorCell>(getEditorCells());
    while (!children.isEmpty()) {
      EditorCell child = children.poll();
      if (child instanceof EditorCell_WithComponent) {
        ((EditorCell_WithComponent) child).getComponent().setVisible(false);
      }
      if (!(child instanceof EditorCell_Collection)) {
        continue;
      }
      EditorCell_Collection childCollection = (EditorCell_Collection) child;
      if (childCollection.isFolded()) {
        childCollection.removeUnfoldingListener();
      } else {
        children.addAll(childCollection.getEditorCells());
      }
    }
  }

  private void removeUnfoldingListener() {
    if (myUnfoldCollectionMouseListener == null) {
      return;
    }
    getEditor().removeMouseListener(myUnfoldCollectionMouseListener);
    myUnfoldCollectionMouseListener = null;
  }

  private void addUnfoldingListener() {
    if (myUnfoldCollectionMouseListener != null) {
      return;
    }
    final EditorComponent editorComponent = getEditor();
    editorComponent.addMouseListener(myUnfoldCollectionMouseListener = new MouseAdapter() {
      @Override
      public void mouseClicked(MouseEvent e) {
        if (GeometryUtil.contains(EditorCell_Collection.this, e.getX(), e.getY())) {
          editorComponent.clearSelectionStack();
          editorComponent.changeSelection(getFoldedCell());
          unfold();
        }
      }
    });
  }

  private void adjustSelectionToFoldingState(EditorComponent editorComponent) {
    if (isDescendantCellSelected(editorComponent)) {
      editorComponent.clearSelectionStack();
      jetbrains.mps.nodeEditor.cells.EditorCell editorCellToSelect = getFirstLeaf(CellConditions.SELECTABLE);
      if (editorCellToSelect != null) {
        editorComponent.changeSelection(editorCellToSelect);
        editorCellToSelect.home();
      } else {
        editorComponent.changeSelection(this);
        home();
      }
    }
  }

  private boolean isDescendantCellSelected(EditorComponent editorComponent) {
    EditorCell selectedCell = editorComponent.getDeepestSelectedCell();
    return selectedCell != null && CellFinderUtil.findParent(selectedCell, new Condition<jetbrains.mps.openapi.editor.cells.EditorCell_Collection>() {
      @Override
      public boolean met(jetbrains.mps.openapi.editor.cells.EditorCell_Collection object) {
        return object == EditorCell_Collection.this;
      }
    }) != null;
  }

  @Override
  public boolean canBePossiblyFolded() {
    return isFoldable();
  }

  @Override
  public boolean isFoldable() {
    return myCanBeFolded && myCellLayout.canBeFolded();
  }

  public void setFoldable(boolean foldable) {
    boolean wasPossiblyFolded = isFoldable();
    myCanBeFolded = foldable;

    if (isInTree()) {
      if (wasPossiblyFolded && !isFoldable()) {
        getEditor().getCellTracker().removeFoldableCell(this);
      }
      if (!wasPossiblyFolded && isFoldable()) {
        getEditor().getCellTracker().addFoldableCell(this);
      }
    }
  }

  /**
   * @deprecated since MPS 3.2 use setFoldable()
   */
  @Deprecated
  public void setCanBeFolded(boolean canBeFolded) {
    setFoldable(canBeFolded);
  }

  public void unfold(boolean programmaticaly) {
    if (!isFolded()) {
      return;
    }
    setFolded(false);
    if (!isUnderFolded()) {
      removeUnfoldingListener();
      addUnfoldingListenerForChildren();
    }

    if (!programmaticaly) {
      getContext().flushEvents();
      getEditor().relayout();
      adjustSelectionToFoldingState(getEditor());
    }
  }

  @Override
  public boolean isUnfoldedCollection() {
    return !isFolded();
  }

  @Override
  public void paintCell(Graphics g, ParentSettings parentSettings) {
    ParentSettings settings = fillBackground(g, parentSettings);
    paintContent(g, parentSettings);
    paintChildCells(g, settings);
  }

  protected void paintChildCells(Graphics g, ParentSettings settings) {
    for (EditorCell child : this) {
      if (g.hitClip(child.getX(), child.getY(), child.getWidth(), child.getHeight())) {
        ((jetbrains.mps.nodeEditor.cells.EditorCell) child).paintCell(g, settings);
      }
    }
  }

  @Override
  public void paintDecorations(Graphics g) {
    super.paintDecorations(g);
    paintChildDecorations(g);
  }

  protected void paintChildDecorations(Graphics g) {
    for (EditorCell child : this) {
      if (g.hitClip(child.getX(), child.getY(), child.getWidth(), child.getHeight())) {
        ((jetbrains.mps.nodeEditor.cells.EditorCell) child).paintDecorations(g);
      }
    }
  }

  @Override
  public void moveTo(int x, int y) {
    if (x == getX() && y == getY()) {
      return;
    }

    int xOld = getX();
    int yOld = getY();
    super.moveTo(x, y);
    for (jetbrains.mps.nodeEditor.cells.EditorCell myEditorCell : getCells()) {
      myEditorCell.moveTo(myEditorCell.getX() + x - xOld, myEditorCell.getY() + y - yOld);
    }
    getCellLayout().move(this, x - xOld, y - yOld);
  }

  @Override
  protected void paintContent(Graphics g, ParentSettings parentSettings) {
  }

  @Override
  public void paintSelection(Graphics g, Color c, boolean drawBorder, ParentSettings parentSettings) {
    List<? extends EditorCell> selectionCells = myCellLayout.getSelectionCells(this);
    if (selectionCells != null) {
      ParentSettings selection = isSelectionPaintedOnAncestor(parentSettings);
      for (EditorCell cell : selectionCells) {
        if (g.hitClip(cell.getX(), cell.getY(), cell.getWidth(), cell.getHeight())) {
          ((jetbrains.mps.nodeEditor.cells.EditorCell) cell).paintSelection(g, c, false, selection);
        }
      }
    } else {
      List<Rectangle> selection = myCellLayout.getSelectionBounds(this);
      g.setColor(c);
      for (Rectangle part : selection) {
        g.fillRect(part.x, part.y, part.width, part.height);
      }
    }
  }

  @Override
  protected void paintBackground(Graphics g) {
    List<Rectangle> selection = myCellLayout.getSelectionBounds(this);
    for (Rectangle part : selection) {
      g.fillRect(part.x, part.y, part.width, part.height);
    }
  }

  @Override
  public TextBuilder renderText() {
    return myCellLayout.doLayoutText(this);
  }

  @Override
  public void synchronizeViewWithModel() {
    for (EditorCell myEditorCell : getEditorCells()) {
      ((jetbrains.mps.nodeEditor.cells.EditorCell) myEditorCell).synchronizeViewWithModel();
    }
    if (hasFoldedCell()) {
      ((jetbrains.mps.nodeEditor.cells.EditorCell) getFoldedCell()).synchronizeViewWithModel();
    }
  }

  @Override
  public jetbrains.mps.nodeEditor.cells.EditorCell findLeaf(int x, int y, Condition<jetbrains.mps.nodeEditor.cells.EditorCell> condition) {
    if (getLayoutModel().getMarginBox().containsPoint(x, y)) {
      for (EditorCell child : getVisibleChildCells()) {
        jetbrains.mps.nodeEditor.cells.EditorCell result = ((jetbrains.mps.nodeEditor.cells.EditorCell) child).findLeaf(x, y, condition);
        if (result != null) {
          return result;
        }
      }
    }

    return null;
  }

  @Override
  public void addEditorCellAt(int i, EditorCell cellToAdd, boolean ignoreBraces) {
    int j = i;
    if (usesBraces() && !ignoreBraces) {
      j = i - 1;
    }
    ((EditorCell_Basic) cellToAdd).setParent(this);
    getEditorCells().add(j, cellToAdd);
    getStyle().add(cellToAdd.getStyle());

    if (isInTree()) {
      ((EditorCell_Basic) cellToAdd).onAdd();
    }
  }

  public void removeCell(jetbrains.mps.nodeEditor.cells.EditorCell cellToRemove) {
    ((EditorCell_Basic) cellToRemove).setParent(null);
    getEditorCells().remove(cellToRemove);
    getStyle().remove(cellToRemove.getStyle());

    if (isInTree()) {
      ((EditorCell_Basic) cellToRemove).onRemove();
    }
  }

  public void removeAllCells() {
    for (jetbrains.mps.nodeEditor.cells.EditorCell cell : getCells()) {
      removeCell(cell);
    }
  }

  private void addCell(EditorCell cellToAdd) {
    addEditorCellAt(getChildCount(), cellToAdd, false);
  }

  @Override
  public boolean usesBraces() {
    return isFolded() ? false : myUsesBraces;
  }

  public void setUsesBraces(boolean b) {
    if (myUsesBraces != b) {
      myUsesBraces = b;
      if (myUsesBraces) {
        setBraces();
      } else {
        removeBraces();
      }
    }
  }

  @Override
  public EditorCell firstCell() {
    return getFirstChild();
  }

  @Override
  public EditorCell lastCell() {
    return getLastChild();
  }

  @Override
  @SuppressWarnings({"UnusedDeclaration"})
  public EditorCell firstContentCell() {
    int shift = 0;
    int size = 0;
    if (usesBraces()) {
      shift = 1;
      size = 2;
    }
    if (getChildCount() > size) {
      return getChildAt(shift);
    }
    return null;
  }

  @Override
  public EditorCell lastContentCell() {
    int shift = 0;
    int size = 0;
    if (usesBraces()) {
      shift = 1;
      size = 2;
    }
    if (getChildCount() > size) {
      return getChildAt(getChildCount() - (1 + shift));
    }
    return null;
  }

  @Override
  public jetbrains.mps.nodeEditor.cells.EditorCell getFirstLeaf() {
    return getChildCount() > 0 ? getFirstChild().getFirstLeaf() : this;
  }

  @Override
  public jetbrains.mps.nodeEditor.cells.EditorCell getLastLeaf() {
    return getChildCount() > 0 ? getLastChild().getLastLeaf() : this;
  }

  @Override
  public jetbrains.mps.nodeEditor.cells.EditorCell getLastChild() {
    return getChildCount() > 0 ? getChildAt(getChildCount() - 1) : null;
  }

  @Override
  public jetbrains.mps.nodeEditor.cells.EditorCell getFirstChild() {
    return getChildCount() > 0 ? getChildAt(0) : null;
  }

  public String toString() {
    return NameUtil.shortNameFromLongName(getClass().getName());
  }

  @Override
  public void onAdd() {
    super.onAdd();
    for (EditorCell child : getEditorCells()) {
      ((EditorCell_Basic) child).onAdd();
    }
    if (hasFoldedCell()) {
      ((EditorCell_Basic) getFoldedCell()).onAdd();
    }
    if (myLastCellSelectionListener != null) {
      getEditor().getSelectionManager().addSelectionListener(myLastCellSelectionListener);
    }

    if (isFoldable()) {
      getEditor().getCellTracker().addFoldableCell(this);
    }
  }

  @Override
  public void onRemove() {
    if (isFoldable()) {
      getEditor().getCellTracker().removeFoldableCell(this);
    }
    removeUnfoldingListener();
    if (isFolded()) {
      getEditor().setFolded(this, false);
    }

    if (myLastCellSelectionListener != null) {
      setBracesEnabled(false);
      getEditor().getSelectionManager().removeSelectionListener(myLastCellSelectionListener);
    }
    for (EditorCell child : getEditorCells()) {
      ((EditorCell_Basic) child).onRemove();
    }
    if (hasFoldedCell()) {
      ((EditorCell_Basic) getFoldedCell()).onRemove();
    }
    super.onRemove();
  }

  @Override
  public void synchronize() {
    for (EditorCell cell : getCellsToSynchronize()) {
      ((SynchronizeableEditorCell) cell).synchronize();
    }
  }

  @Override
  public boolean canBeSynchronized() {
    return myCanBeSynchronized;
  }

  public void setCanBeSynchronized(boolean canBeSynchronized) {
    myCanBeSynchronized = canBeSynchronized;
  }

  private Iterable<EditorCell> getCellsToSynchronize() {
    ArrayList<EditorCell> result = new ArrayList<EditorCell>();
    result.addAll(getEditorCells());
    result.addAll(getFoldedCellCollection());
    return result;
  }

  private class SelectFirstChild extends AbstractCellAction {
    @Override
    public boolean canExecute(EditorContext context) {
      return EditorCell_Collection.this.isSelected() && CellFinderUtil.findFirstSelectableLeaf(EditorCell_Collection.this) != null;
    }

    @Override
    public void execute(EditorContext context) {
      EditorComponent editorComponent = (EditorComponent) context.getEditorComponent();
      editorComponent.clearSelectionStack();
      editorComponent.changeSelection(CellFinderUtil.findFirstSelectableLeaf(EditorCell_Collection.this));
    }
  }

  private class SelectLastChild extends AbstractCellAction {
    @Override
    public boolean canExecute(EditorContext context) {
      return EditorCell_Collection.this.isSelected() && CellFinderUtil.findLastSelectableLeaf(EditorCell_Collection.this) != null;
    }

    @Override
    public void execute(EditorContext context) {
      EditorComponent editorComponent = (EditorComponent) context.getEditorComponent();
      editorComponent.clearSelectionStack();
      editorComponent.changeSelection(CellFinderUtil.findLastSelectableLeaf(EditorCell_Collection.this));
    }
  }

  @Override
  public void setSubstituteInfo(SubstituteInfo substitueInfo) {
    super.setSubstituteInfo(substitueInfo);
    if (isTransparentCollection()) {
      for (EditorCell child : getEditorCells()) {
        if (child.getSNode() == getSNode()) {
          child.setSubstituteInfo(substitueInfo);
        }
      }
    }
  }

  @Override
  public void setAction(CellActionType type, CellAction action) {
    super.setAction(type, action);
    if (isTransparentCollection()) {
      for (EditorCell child : getEditorCells()) {
        if (child.getSNode() == getSNode()) {
          child.setAction(type, action);
        }
      }
    }
  }

  @Override
  public void requestRelayout() {
    super.requestRelayout();
    getCellLayout().requestRelayout(this);
  }

  @Override
  public boolean isTransparentCollection() {
    return getChildCount() == 1 && getStyle().get(StyleAttributes.SELECTABLE);
  }


  class EditorCell_Brace extends EditorCell_Constant {
    public static final String OPENING_TEXT = "(";
    public static final String CLOSING_TEXT = ")";
    private boolean myIsOpening = false;
    private boolean myIsEnabled = false;
    private TextLine myBraceTextLine;

    protected EditorCell_Brace(EditorContext editorContext, SNode node, boolean isOpening) {
      super(editorContext, node, "");
      myIsOpening = isOpening;
      String text = getBraceText();

      Style style = new StyleImpl();
      // COLORS: Remove hardcoded color & font
      style.set(StyleAttributes.TEXT_COLOR, Color.BLUE);
      style.set(StyleAttributes.FONT_STYLE, Font.BOLD);
      style.set(StyleAttributes.PADDING_LEFT, new Padding(0.0));
      style.set(StyleAttributes.PADDING_RIGHT, new Padding(0.0));

      myBraceTextLine = new TextLine(text, style, false);
      myBraceTextLine.setCaretEnabled(false);
      setEditable(false);
      setEnabled(false);
    }

    @Override
    public CellInfo getCellInfo() {
      return new BraceCellInfo(EditorCell_Brace.this);
    }

    private String getBraceText() {
      return myIsOpening ? OPENING_TEXT : CLOSING_TEXT;
    }

    public void setEnabled(boolean enabled) {
      myIsEnabled = enabled;
      setSelectable(enabled);
    }

    @Override
    protected void paintContent(Graphics g, ParentSettings parentSettings) {
      if (!myIsEnabled) return;
      TextLine textLine = getRenderedTextLine();
      boolean toShowCaret = toShowCaret();
      int overlapping = getOverlapping();
      myBraceTextLine.setSelected(false);
      myBraceTextLine.setShowCaret(false);

      textLine.setSelected(isSelected());
      textLine.setShowCaret(toShowCaret);

      if (myIsOpening) {
        myBraceTextLine.paint(g, getX() + textLine.getWidth() - overlapping, getY());
        textLine.paint(g, getX(), getY());
      } else {
        myBraceTextLine.paint(g, getX(), getY());
        textLine.paint(g, getX() + myBraceTextLine.getWidth() - overlapping, getY());
      }
    }

    @Override
    public void relayoutImpl() {
      super.relayoutImpl();
      myBraceTextLine.relayout();
      getLayoutModel().getMarginBox().growWidth(myBraceTextLine.getWidth() - getOverlapping());
    }

    private int getOverlapping() {
      if (myIsOpening) {
        return myBraceTextLine.getPaddingLeft() + myTextLine.getPaddingRight();
      } else {
        return myBraceTextLine.getPaddingRight() + myTextLine.getPaddingLeft();
      }
    }

  }

  private static class BraceCellInfo extends DefaultCellInfo {
    private CellInfo myCollectionCellInfo;
    private boolean myOpeningBrace;

    public BraceCellInfo(EditorCell_Brace cell) {
      super(cell);
      myOpeningBrace = cell.myIsOpening;
      myCollectionCellInfo = cell.getParent().getCellInfo();
    }

    @Override
    public jetbrains.mps.nodeEditor.cells.EditorCell findCell(EditorComponent editorComponent) {
      jetbrains.mps.nodeEditor.cells.EditorCell cell = myCollectionCellInfo.findCell(editorComponent);
      if (!(cell instanceof EditorCell_Collection)) return null;
      EditorCell_Collection parent = (EditorCell_Collection) cell;
      if (myOpeningBrace) {
        return parent.myOpeningBrace;
      } else {
        return parent.myClosingBrace;
      }
    }

    public int hashCode() {
      return myCollectionCellInfo.hashCode() + (myOpeningBrace ? 50 : -50);
    }

    public boolean equals(Object o) {
      if (!(o instanceof BraceCellInfo)) return false;
      BraceCellInfo cellInfo = ((BraceCellInfo) o);
      return myCollectionCellInfo.equals(cellInfo.myCollectionCellInfo) && myOpeningBrace == cellInfo.myOpeningBrace;
    }
  }

  private class MyLastCellSelectionListener implements SelectionListener {
    public final Condition<EditorCell> FIRST_SELECTABLE_LEAF_EXCLUDING_BRACE =
        new Condition<EditorCell>() {
          @Override
          public boolean met(EditorCell cell) {
            return myOpeningBrace != cell && cell.isSelectable() && !(cell instanceof EditorCell_Collection);
          }
        };
    public final Condition<EditorCell> LAST_SELECTABLE_LEAF_EXCLUDING_BRACE =
        new Condition<EditorCell>() {
          @Override
          public boolean met(EditorCell cell) {
            return myClosingBrace != cell && cell.isSelectable() && !(cell instanceof EditorCell_Collection);
          }
        };

    @Override
    public void selectionChanged(jetbrains.mps.openapi.editor.EditorComponent editorComponent, Selection oldSelection, Selection newSelection) {
      if (oldSelection == newSelection) {
        return;
      }
      if (myClosingBrace.isSelected() || myOpeningBrace.isSelected()) {
        enableBraces();
        return;
      }
      EditorCell deepestSelection = editorComponent.getDeepestSelectedCell();
      EditorCell lastSelectableLeaf = CellFinderUtil.findChildByCondition(EditorCell_Collection.this, LAST_SELECTABLE_LEAF_EXCLUDING_BRACE, false);
      EditorCell firstSelectableLeaf = CellFinderUtil.findChildByCondition(EditorCell_Collection.this, FIRST_SELECTABLE_LEAF_EXCLUDING_BRACE, true);
      if (deepestSelection instanceof EditorCell_Brace) {
        EditorCell_Collection braceOwner = (EditorCell_Collection) deepestSelection.getParent();
        if (braceOwner.myClosingBrace == deepestSelection &&
            CellFinderUtil.findChildByCondition(braceOwner, LAST_SELECTABLE_LEAF_EXCLUDING_BRACE, false) == lastSelectableLeaf) {
          enableBraces();
          return;
        }
        if (braceOwner.myOpeningBrace == deepestSelection &&
            CellFinderUtil.findChildByCondition(braceOwner, FIRST_SELECTABLE_LEAF_EXCLUDING_BRACE, true) == firstSelectableLeaf) {
          enableBraces();
          return;
        }
      }
      if (lastSelectableLeaf == deepestSelection || firstSelectableLeaf == deepestSelection) {
        enableBraces();
      } else {
        disableBraces();
      }
    }
  }

  private class UnmodifiableIterator<T> implements Iterator<T> {
    private ListIterator<T> myIterator;
    private boolean myReverse;

    private UnmodifiableIterator(List<T> list, boolean reverse) {
      myReverse = reverse;
      myIterator = myReverse ? list.listIterator(list.size()) : list.listIterator();
    }

    @Override
    public boolean hasNext() {
      return myReverse ? myIterator.hasPrevious() : myIterator.hasNext();
    }

    @Override
    public T next() {
      return myReverse ? myIterator.previous() : myIterator.next();
    }

    @Override
    public void remove() {
      throw new UnsupportedOperationException();
    }
  }
}
