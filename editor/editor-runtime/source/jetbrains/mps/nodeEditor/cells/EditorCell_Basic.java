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
package jetbrains.mps.nodeEditor.cells;

import com.intellij.util.ui.UIUtil;
import jetbrains.mps.editor.runtime.commands.EditorCommand;
import jetbrains.mps.editor.runtime.impl.CellUtil;
import jetbrains.mps.editor.runtime.impl.LayoutConstraints;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.nodeEditor.EditorMessage;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.cellMenu.NodeSubstitutePatternEditor;
import jetbrains.mps.nodeEditor.layoutModel.LayoutBoxFrame;
import jetbrains.mps.nodeEditor.layoutModel.LayoutModel;
import jetbrains.mps.nodeEditor.layoutModel.DefaultLayoutModel;
import jetbrains.mps.nodeEditor.sidetransform.EditorCell_STHint;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.cells.CellAction;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.openapi.editor.cells.CellMessagesUtil;
import jetbrains.mps.openapi.editor.cells.EditorCellContext;
import jetbrains.mps.openapi.editor.cells.KeyMap;
import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import jetbrains.mps.openapi.editor.cells.SubstituteInfo;
import jetbrains.mps.openapi.editor.message.EditorMessageOwner;
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SNodeLegacy;
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration;
import jetbrains.mps.smodel.constraints.ModelConstraints;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.ListMap;
import org.apache.log4j.LogManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import org.jetbrains.mps.util.Condition;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.event.KeyEvent;
import java.awt.event.MouseEvent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/**
 * Author: Sergey Dmitriev
 * Created Sep 14, 2003
 */
public abstract class EditorCell_Basic implements EditorCell {
  public static final Logger LOG = Logger.wrap(LogManager.getLogger(EditorCell_Basic.class));

  public static final int BRACKET_WIDTH = 7;

  private Map myUserObjects;

  private LayoutModel myLayoutModel = new DefaultLayoutModel(this);
  private int myCaretX = 0;

  private boolean myErrorState;
  private boolean mySelected;

  @NotNull
  private EditorContext myEditorContext;

  private EditorCell_Collection myParent = null;
  private SNode myNode;
  private SNodeId myNodeId;
  private SubstituteInfo mySubstituteInfo;
  private Map<CellActionType, CellAction> myActionMap = new ListMap<CellActionType, CellAction>();

  private Style myStyle = new StyleImpl();

  private KeyMap myKeyMap;
  private String myCellId;
  private String myRole;
  private SNodeReference myLinkDeclarationPointer;
  private boolean myInTree;
  private boolean myIsReferenceCell = false;

  private boolean myIsNeedRelayout = true;
  private boolean myBig;
  private EditorCellContext myCellContext;

  protected EditorCell_Basic(@NotNull EditorContext editorContext, SNode node) {
    myEditorContext = editorContext;
    myNode = node;
    myNodeId = node == null ? null : node.getNodeId();
  }

  @Override
  public EditorComponent getEditor() {
    return (EditorComponent) getContext().getEditorComponent();
  }

  @Override
  public jetbrains.mps.openapi.editor.EditorComponent getEditorComponent() {
    return getContext().getEditorComponent();
  }

  @Override
  public boolean isErrorState() {
    return myErrorState;
  }

  @Override
  public boolean isPunctuationLayout() {
    return LayoutConstraints.PUNCTUATION_LAYOUT_CONSTRAINT.getName().equals(getStyle().get(StyleAttributes.LAYOUT_CONSTRAINT));
  }

  @Override
  public void setErrorState(boolean errorState) {
    boolean wasState = myErrorState;
    myErrorState = errorState;

    if (myInTree && wasState != myErrorState) {
      if (myErrorState) {
        getEditor().getCellTracker().addErrorCell(this);
      } else {
        getEditor().getCellTracker().removeErrorCell(this);
      }
    }
  }

  @Override
  public boolean validate(boolean strict, boolean canActivatePopup) {
    SubstituteInfo substituteInfo = getSubstituteInfo();
    if (substituteInfo == null) {
      return false;
    }

    String pattern = "";
    if (this instanceof EditorCell_Label) {
      pattern = ((EditorCell_Label) this).getText();
    }

    if (pattern.equals("")) return false;

    List<SubstituteAction> matchingActions = substituteInfo.getMatchingActions(pattern, strict);
    return APICellAdapter.substituteIfPossible(this, canActivatePopup, pattern, matchingActions);
  }

  public boolean isDrawBrackets() {
    return getStyle().get(StyleAttributes.DRAW_BRACKETS);
  }


  @Override
  public void setCellBackgroundColor(Color color) {
    getStyle().set(StyleAttributes.BACKGROUND_COLOR, color);
  }

  @Override
  public Color getCellBackgroundColor() {
    return getStyle().get(StyleAttributes.BACKGROUND_COLOR);
  }

  public Color getBracketsColor() {
    return getStyle().get(StyleAttributes.BRACKETS_COLOR);
  }

  @Override
  public CellAction getAction(CellActionType type) {
    return myActionMap.get(type);
  }

  @Override
  public Collection<CellActionType> getAvailableActions() {
    return new HashSet<CellActionType>(myActionMap.keySet());
  }

  @Override
  public void setAction(CellActionType type, CellAction action) {
    myActionMap.put(type, action);
  }

  @Override
  public void addKeyMap(KeyMap keyMap) {
    if (myKeyMap != null) {
      myKeyMap.addKeyMap(keyMap);
    } else {
      myKeyMap = keyMap;
    }
  }

  @Override
  public KeyMap getKeyMap() {
    return myKeyMap;
  }

  @Override
  public SNode getSNode() {
    return myNode;
  }

  public final void setSNode(@NotNull SNode node) {
    myNode = node;
    myNodeId = node.getNodeId();
  }

  @NotNull
  protected SNodeId getSNodeId() {
    return myNodeId;
  }

  public LayoutModel getLayoutModel() {
    return myLayoutModel;
  }

  @Override
  public int getHeight() {
    return getLayoutModel().getMarginBox().getHeight();
  }

  @Override
  public void setHeight(int height) {
    getLayoutModel().getMarginBox().setHeight(height);
  }

  @Override
  public int getBottom() {
    return getLayoutModel().getMarginBox().getBottom();
  }

  @Override
  public int getRight() {
    return getLayoutModel().getMarginBox().getRight();
  }

  @Override
  public int getEffectiveWidth() {
    return getLayoutModel().getMarginBox().getWidth();
  }

  @Override
  public int getLeftInset() {
    return getLayoutModel().getContentBox().getX() - getLayoutModel().getMarginBox().getX();
  }

  @Override
  public int getRightInset() {
    return getLayoutModel().getMarginBox().getRight() - getLayoutModel().getContentBox().getRight();
  }

  @Override
  public int getTopInset() {
    return getLayoutModel().getContentBox().getY() - getLayoutModel().getMarginBox().getY();
  }

  @Override
  public int getBottomInset() {
    return getLayoutModel().getMarginBox().getBottom() - getLayoutModel().getContentBox().getBottom();
  }

  @Override
  public int getWidth() {
    return getLayoutModel().getMarginBox().getWidth();
  }

  @Override
  public void setWidth(int width) {
    getLayoutModel().getMarginBox().setWidth(width);
  }

  @Override
  public int getY() {
    return getLayoutModel().getMarginBox().getY();
  }

  @Override
  public void setY(int y) {
    getLayoutModel().getMarginBox().setY(y);
  }

  @Override
  public int getX() {
    return getLayoutModel().getMarginBox().getX();
  }

  @Override
  public void setX(int x) {
    getLayoutModel().getMarginBox().setX(x);
  }

  @Override
  public boolean isSelected() {
    return mySelected;
  }

  public boolean isWithinSelection() {
    return mySelected && getEditor().getDeepestSelectedCell() == this;
  }


  @Override
  public boolean isSelectable() {
    return getStyle().get(StyleAttributes.SELECTABLE);
  }

  @Override
  public void setSelectable(boolean selectable) {
    getStyle().set(StyleAttributes.SELECTABLE, selectable);
  }

  @Override
  public void setCellId(@NotNull String cellId) {
    assert myCellId == null;
    myCellId = cellId;
  }

  @Override
  public String getCellId() {
    return myCellId;
  }

  @Override
  public String getRole() {
    String role = getStyle().get(StyleAttributes.NAVIGATABLE_REFERENCE);
    if (role != null) {
      return role;
    }
    return myRole;
  }

  @Override
  public void setRole(String role) {
    myRole = role;
  }

  @Override
  public void setSelected(boolean selected) {
    mySelected = selected;
  }

  public boolean isDrawBorder() {
    return getStyle().get(StyleAttributes.DRAW_BORDER);
  }

  @Override
  public Object getUserObject(Object key) {
    if (myUserObjects == null) {
      return null;
    }
    return myUserObjects.get(key);
  }

  @Override
  public void moveTo(int x, int y) {
    getLayoutModel().getMarginBox().setX(x);
    getLayoutModel().getMarginBox().setY(y);
  }

  @Override
  public void putUserObject(Object key, Object value) {
    if (myUserObjects == null) {
      myUserObjects = new ListMap();
    }
    myUserObjects.put(key, value);
  }

  @Override
  public EditorContext getContext() {
    return myEditorContext;
  }

  public IOperationContext getOperationContext() {
    return getContext().getOperationContext();
  }

  @Override
  public final boolean processKeyPressed(KeyEvent e, boolean allowErrors) {
    if (e.isConsumed()) return false;
    return doProcessKeyPressed(e, allowErrors);
  }

  protected boolean doProcessKeyPressed(KeyEvent e, boolean allowErrors) {
    return false;
  }

  @Override
  public final boolean processKeyTyped(KeyEvent e, boolean allowErrors) {
    if (e.isConsumed()) return false;
    return doProcessKeyTyped(e, allowErrors);
  }

  protected boolean doProcessKeyTyped(final KeyEvent e, final boolean allowErrors) {
    if (getSNode() == null || !isBig() || !isTextTypedEvent(e)) {
      return false;
    }

    if (ModelAccess.instance().runReadAction(new Computable<Boolean>() {
      @Override
      public Boolean compute() {
        return getSNode().getModel() != null && getSNode().getParent() == null;
      }
    })) return false;

    getContext().getRepository().getModelAccess().executeCommand(new EditorCommand(getContext()) {
      @Override
      public void doExecute() {
        EditorComponent editor = getEditor();
        SNode oldNode = getSNode();
        SNode newNode = replaceWithDefault();
        if (newNode == null) {
          EditorCell_Label editable = CellFinderUtil.findFirstEditable(EditorCell_Basic.this);
          if (editable != null) {
            editor.changeSelection(editable);
            editor.processKeyTyped(e);
          }
          return;
        }

        newNode.putUserObject(EditorManager.OLD_NODE_FOR_SUBSTITUTION, oldNode);
        EditorCell nodeCell = editor.findNodeCell(newNode);
        if (nodeCell == null) return;
        EditorCell_Label editable = CellFinderUtil.findFirstEditable(nodeCell);
        if (editable != null) {
          editor.changeSelection(editable);
          editor.processKeyTyped(e);
        } else {
          editor.changeSelection(nodeCell);
          editor.processKeyTyped(e);
        }
      }
    });

    return true;
  }

  protected boolean isTextTypedEvent(KeyEvent e) {
    return UIUtil.isReallyTypedEvent(e);
  }

  private SNode replaceWithDefault() {
    SNode node = getSNode();
    while (AttributeOperations.isAttribute(node)) {
      node = node.getParent();
    }
    SNode link = new SNodeLegacy(node).getRoleLink();
    SNode concept = CellUtil.getLinkDeclarationTarget(link);
    SConcept concreteConcept = ModelConstraints.getDefaultConcreteConcept(MetaAdapterByDeclaration.getConcept(concept));
    if (node.getConcept().equals(concreteConcept)) {
      return null;
    }
    jetbrains.mps.smodel.SNode newNode = new jetbrains.mps.smodel.SNode(concreteConcept);
    SNodeUtil.replaceWithAnother(node, newNode);
    getContext().flushEvents();
    return newNode;
  }

  @Override
  public void setCaretX(int x) {
    myCaretX = x;
  }

  @Override
  public int getCaretX() {
    return myCaretX;
  }

  @Override
  public void home() {

  }

  @Override
  public void end() {

  }

  @Override
  public final EditorCell findLeaf(int x, int y) {
    return findLeaf(x, y, Condition.TRUE_CONDITION);
  }

  @Override
  public EditorCell findLeaf(int x, int y, Condition<EditorCell> condition) {
    if (getLayoutModel().getMarginBox().containsPoint(x, y) && condition.met(this)) {
      return this;
    }
    return null;
  }

  @Override
  public final EditorCell findCellWeak(int x, int y) {
    return findCellWeak(x, y, Condition.TRUE_CONDITION);
  }

  @Override
  public EditorCell findCellWeak(int x, int y, Condition<EditorCell> condition) {
    Set<EditorCell> candidates = new LinkedHashSet<EditorCell>();
    collectCellsWithY(this, y, candidates);

    EditorCell best = findClosestHorizontal(x, condition, candidates);

    if (best == null) {
      best = findClosestHorizontal(x, Condition.TRUE_CONDITION, candidates);
      if (best != null) {
        best = best.getPrevLeaf(condition);
      }
    }

    return best;
  }

  private EditorCell findClosestHorizontal(int x, Condition<? super EditorCell> condition, Set<EditorCell> candidates) {
    EditorCell best = null;
    int bestDistance = -1;
    for (EditorCell cell : candidates) {
      if (!condition.met(cell)) continue;

      int distance = horizontalDistance(x, cell);
      if (bestDistance == -1 || distance < bestDistance) {
        best = cell;
        bestDistance = distance;
      }
    }
    return best;
  }

  private int horizontalDistance(int x, EditorCell cell) {
    if (x >= cell.getX() && x <= cell.getX() + cell.getWidth()) return 0;
    return Math.min(Math.abs(x - cell.getX()), Math.abs(x - cell.getX() - cell.getWidth()));
  }

  private void collectCellsWithY(EditorCell current, int y, Set<EditorCell> cells) {
    collectCellsWithY(current, y, cells, true);
  }

  private void collectCellsWithY(EditorCell current, int y, Set<EditorCell> cells, boolean leafsOnly) {
    if (y >= current.getY() && y <= current.getY() + current.getHeight() && (!leafsOnly || current.isLeaf())) {
      cells.add(current);
    }

    if (current instanceof EditorCell_Collection) {
      for (EditorCell cell : ((EditorCell_Collection) current).getCells()) {
        collectCellsWithY(cell, y, cells);
      }
    }
  }

  @Override
  public EditorCell_Collection getParent() {
    return myParent;
  }

  @Override
  public boolean isSingleNodeCell() {
    if (myParent == null) {
      return true;
    }
    if (myParent.getSNode() != myNode) {
      return true;
    }
    if (myParent.getChildCount() == 1) {
      return myParent.isSingleNodeCell();
    }
    return false;
  }

  void setParent(EditorCell_Collection parent) {
    myParent = parent;
  }

  @Override
  public boolean processMousePressed(MouseEvent e) {
    return false;
  }

  @Override
  public NodeSubstitutePatternEditor createSubstitutePatternEditor() {
    return new NodeSubstitutePatternEditor();
  }

  @Override
  public void setSubstituteInfo(SubstituteInfo info) {
    mySubstituteInfo = info;
  }

  @Override
  public SubstituteInfo getSubstituteInfo() {
    return mySubstituteInfo;
  }

  @Override
  public void setBig(boolean big) {
    myBig = big;
  }

  @Override
  public boolean isBig() {
    return myBig;
  }

  public void setReferenceCell(boolean isReference) {
    myIsReferenceCell = isReference;
  }

  @Override
  public boolean isReferenceCell() {
    return myIsReferenceCell;
  }

  @Override
  public void paint(Graphics g) {
    paintCell(g, ParentSettings.createDefaultSetting());
    paintDecorations(g);
  }

  @Override
  public void paintCell(Graphics g, ParentSettings parentSettings) {
    fillBackground(g, parentSettings);
    paintContent(g, parentSettings);
  }

  @Override
  public void paint(Graphics g, ParentSettings parentSettings) {
    paintCell(g, parentSettings);
    paintDecorations(g);
  }

  protected ParentSettings fillBackground(Graphics g, ParentSettings parentSettings) {
    ParentSettings settings = isSelectionPaintedOnAncestor(parentSettings);
    if (!settings.isSelectionPainted()) {
      if (!parentSettings.isSkipBackground()) {
        if (getCellBackgroundColor() != null) {
          g.setColor(getCellBackgroundColor());
          paintBackground(g);
        }
      }
      boolean hasMessages = false;
      for (EditorMessage message : CellMessagesUtil.getMessages(this, EditorMessage.class)) {
        if (message != null && message.isBackground()) {
          message.paint(g, getEditor(), this);
          hasMessages = true;
        }
      }
      settings = ParentSettings.createBackgroundlessSetting(hasMessages).combineWith(parentSettings);
    }
    paintSelectionIfRequired(g, parentSettings);
    return settings;
  }

  protected ParentSettings isSelectionPaintedOnAncestor(ParentSettings parentSettings) {
    return ParentSettings.createSelectedSetting(isSelectionPainted()).combineWith(parentSettings);
  }

  protected void paintBackground(Graphics g) {
    g.fillRect(getX(), getY(), getWidth(), getHeight());
  }

  protected boolean isSelectionPainted() {
    return isSelected();
  }

  protected void paintSelectionIfRequired(Graphics g, ParentSettings parentSettings) {
    if (isSelectionPainted()) {
      paintSelection(g, getSelectionColor(), true, parentSettings);
    }
  }

  protected abstract void paintContent(Graphics g, ParentSettings parentSettings);

  public void paintDecorations(Graphics g) {
    if (isDrawBorder()) {
      // COLORS: Remove hardcoded color
      g.setColor(Color.lightGray);
      LayoutBoxFrame box = getLayoutModel().getBorderBox();
      // The previous behavior was to not reserve any space for the border and let the border of neighbor cells overlap.
      // That's why we have to add 1 to the border width.
      g.fillRect(box.getX(), box.getY(), box.getLeftSize() + 1, getHeight()); // left
      g.fillRect(box.getX(), box.getY(), box.getWidth(), box.getTopSize() + 1); // top
      g.fillRect(box.getRight() - box.getRightSize(), box.getY(), box.getRightSize() + 1, box.getHeight()); // right
      g.fillRect(box.getX(), box.getBottom() - box.getBottomSize(), box.getWidth(), box.getBottomSize() + 1); // bottom
    }

    if (isDrawBrackets()) {
      g.setColor(getBracketsColor());

      // opening bracket
      LayoutBoxFrame box = getLayoutModel().getBracketsBox();
      int lineWidth = 2;
      g.fillRect(box.getX() + 3, box.getY() + 2, box.getLeftSize() - 3, lineWidth); // top
      g.fillRect(box.getX() + 2, box.getY() + 3, lineWidth, box.getHeight() - 6); // left
      g.fillRect(box.getX() + 3, box.getBottom() - lineWidth - 2, box.getLeftSize() - 3, lineWidth); // bottom

      // closing bracket
      g.fillRect(box.getRight() - box.getRightSize(), box.getY() + 2, box.getRightSize() - 3, lineWidth); // top
      g.fillRect(box.getRight() - lineWidth - 2, box.getY() + 3, lineWidth, box.getHeight() - 6); // right
      g.fillRect(box.getRight() - box.getRightSize(), box.getBottom() - lineWidth - 2, box.getRightSize() - 3, lineWidth); // bottom
    }

    List<EditorMessage> messages = CellMessagesUtil.getMessages(this, EditorMessage.class);
    for (EditorMessage message : messages) {
      if (message != null && !message.isBackground()) {
        message.paint(g, getEditor(), this);
      }
    }
  }

  @Override
  public List<SimpleEditorMessage> getMessages() {
    return getEditor().getHighlightManager().getMessages(this);
  }

  /**
   * @deprecated since MPS 3.2 use corresponding method from {@link jetbrains.mps.openapi.editor.cells.CellMessagesUtil} instead
   */
  @Deprecated
  @Override
  public <T extends SimpleEditorMessage> List<T> getMessages(Class<T> clazz) {
    return CellMessagesUtil.getMessages(this, clazz);
  }

  /**
   * @deprecated since MPS 3.2 not used
   */
  @Deprecated
  @Override
  public List<SimpleEditorMessage> getMessagesForOwner(EditorMessageOwner owner) {
    ArrayList<SimpleEditorMessage> result = new ArrayList<SimpleEditorMessage>(1);
    for (SimpleEditorMessage message : getMessages()) {
      if (message.getOwner() == owner) {
        result.add(message);
      }
    }
    return result;
  }

  /**
   * @deprecated since MPS 3.2 use corresponding method from {@link jetbrains.mps.openapi.editor.cells.CellMessagesUtil} instead
   */
  @Deprecated
  @Override
  public boolean hasErrorMessages() {
    return CellMessagesUtil.hasErrorMessages(this);
  }

  /**
   * @deprecated since MPS 3.2 use corresponding method from {@link jetbrains.mps.nodeEditor.sidetransform.EditorCell_STHint} instead
   */
  @Deprecated
  @Override
  public EditorCell_Label getSTHintCell() {
    SNode node = getSNode();
    if (node == null) {
      return null;
    }
    return EditorCell_STHint.getSTHintCell(node, getEditorComponent());
  }

  @Override
  public void synchronizeViewWithModel() {
  }

  @Override
  public void setBaseline(int y) {
    moveTo(getX(), y - getAscent());
  }

  @Override
  public int getBaseline() {
    return getY() + getAscent();
  }

  @Override
  public int getAscent() {
    return getLayoutModel().getMarginBox().getAscent();
  }

  @Override
  public int getDescent() {
    return getLayoutModel().getMarginBox().getDescent();
  }
  
  public void setAscent(int newAscent) {
    getLayoutModel().getMarginBox().setAscent(newAscent);
  }
  
  public void setDescent(int newDescent) {
    getLayoutModel().getMarginBox().setDescent(newDescent);
  }
  
  @Override
  public void paintSelection(Graphics g, Color c, boolean drawBorder) {
    paintSelection(g, c, drawBorder, ParentSettings.createDefaultSetting());
  }

  @Override
  public void paintSelection(Graphics g, Color c, boolean drawBorder, ParentSettings parentSettings) {
    g.setColor(c);
    g.fillRect(getX(), getY() /*+ getTopInset()*/, getWidth(), getHeight() - getTopInset() - getBottomInset());
    if (getEditor().hasFocus() && drawBorder) {
      g.setColor(c.darker());
      g.drawRect(getX(), getY(), getWidth(), getHeight());
    }
  }

  @Override
  public TextBuilder renderText() {
    return jetbrains.mps.nodeEditor.text.TextBuilder.getEmptyTextBuilder();
  }

  @Override
  public final void relayout() {
    if (!myIsNeedRelayout) {
      return;
    }
    relayoutImpl();
    myIsNeedRelayout = false;
  }

  protected void relayoutImpl() {

  }

  @Override
  public void switchCaretVisible() {

  }

  @Override
  public CellInfo getCellInfo() {
    return new DefaultCellInfo(this);
  }

  @Override
  public void setRightTransformAnchorTag(String tag) {
    getStyle().set(StyleAttributes.RT_ANCHOR_TAG, tag);
  }

  @Override
  public String getRightTransformAnchorTag() {
    return getStyle().get(StyleAttributes.RT_ANCHOR_TAG);
  }

  @Override
  public boolean hasRightTransformAnchorTag(String tag) {
    return getRightTransformAnchorTag() != null && getRightTransformAnchorTag().equals(tag);
  }

  @Override
  public boolean isAncestorOf(EditorCell cell) {
    jetbrains.mps.openapi.editor.cells.EditorCell_Collection parent = cell.getParent();
    while (parent != null) {
      if (parent == this) return true;
      parent = parent.getParent();
    }
    return false;
  }

  public Color getSelectionColor() {
    return EditorSettings.getInstance().getSelectionBackgroundColor();
  }

  public static Color getRangeSelectionColor() {
    return EditorSettings.getInstance().getRangeSelectionForegroundColor();
  }

  @Override
  public Iterator<EditorCell_Collection> parents() {
    return new Iterator<EditorCell_Collection>() {
      private EditorCell myCurrentCell = EditorCell_Basic.this;

      @Override
      public boolean hasNext() {
        return myCurrentCell.getParent() != null;
      }

      @Override
      public EditorCell_Collection next() {
        EditorCell_Collection parent = (EditorCell_Collection) myCurrentCell.getParent();
        if (parent == null) throw new NoSuchElementException();
        myCurrentCell = parent;
        return parent;
      }

      @Override
      public void remove() {
        throw new UnsupportedOperationException();
      }
    };
  }

  @Override
  public EditorCell_Collection findParent(Condition<EditorCell_Collection> condition) {
    if (this instanceof EditorCell_Collection && condition.met((EditorCell_Collection) this)) {
      return (EditorCell_Collection) this;
    }
    for (EditorCell_Collection collection : IterableUtil.asIterable(parents())) {
      if (condition.met(collection)) {
        return collection;
      }
    }
    return null;
  }

  /**
   * @deprecated since MPS 3.2 this method present in {@link jetbrains.mps.openapi.editor.cells.EditorCell_Collection}
   */
  @Deprecated
  public boolean isFolded() {
    return false;
  }

  @Override
  public boolean isUnfoldedCollection() {
    return false;
  }

  @Override
  public boolean canBePossiblyFolded() {
    return false;
  }

  @Override
  public EditorCell getRootParent() {
    EditorCell cell = this;
    EditorCell prevCell = null;
    while (cell != null) {
      prevCell = cell;
      cell = (EditorCell) cell.getParent();
    }
    return prevCell;
  }

  @Override
  public boolean isFirstCaretPosition() {
    return false;
  }

  @Override
  public boolean isLastCaretPosition() {
    return false;
  }

  @Override
  public boolean isFirstPositionInBigCell() {
    return false;
  }

  @Override
  public boolean isLastPositionInBigCell() {
    return false;
  }

  @Override
  public boolean isLastChild() {
    return getParent() != null && this == getParent().lastCell();
  }

  @Override
  public boolean isFirstChild() {
    return getParent() != null && this == getParent().firstCell();
  }

  @Override
  public boolean isOnLeftBoundary() {
    return getPrevLeaf() == null || getPrevLeaf().getSNode() != getSNode();
  }

  @Override
  public boolean isOnRightBoundary() {
    return getNextLeaf() == null || getNextLeaf().getSNode() != getSNode();
  }

  @Override
  public EditorCell getContainingBigCell() {
    if (isBig() || getParent() == null) {
      return this;
    }
    return getParent().getContainingBigCell();
  }

  @Override
  public boolean isAbove(EditorCell cell) {
    return getY() + getHeight() <= cell.getY();
  }

  @Override
  public boolean isBelow(EditorCell cell) {
    return cell.isAbove(this);
  }

  @Override
  public boolean isToLeft(EditorCell cell) {
    return getX() + getWidth() <= cell.getX();
  }

  @Override
  public boolean isToRight(EditorCell cell) {
    return cell.isToLeft(this);
  }

  private static int horizontalDistance(EditorCell cell, int x) {
    if (cell.getX() + cell.getLeftGap() <= x && x <= cell.getX() + cell.getWidth() - cell.getRightGap()) return 0;
    return Math.min(Math.abs(cell.getX() + cell.getLeftGap() - x), Math.abs(cell.getX() + cell.getWidth() - cell.getRightGap() - x));
  }

  @Override
  public EditorCell getUpper(Condition<EditorCell> condition, int baseX) {
    EditorCell bestMatch = null;
    EditorCell current = getPrevLeaf(condition);

    while (current != null) {
      if (current.isAbove(this)) {
        if (bestMatch != null && current.isAbove(bestMatch)) {
          break;
        }

        if (bestMatch != null) {
          if (horizontalDistance(bestMatch, baseX) > horizontalDistance(current, baseX)) {
            bestMatch = current;
          }
        } else {
          bestMatch = current;
        }
      }

      current = current.getPrevLeaf(condition);
    }

    return bestMatch;
  }

  @Override
  public EditorCell getLower(Condition<EditorCell> condition, int baseX) {
    EditorCell bestMatch = null;
    EditorCell current = getNextLeaf(condition);

    while (current != null) {
      if (current.isBelow(this)) {
        if (bestMatch != null && current.isBelow(bestMatch)) {
          break;
        }

        if (bestMatch != null) {
          if (horizontalDistance(bestMatch, baseX) > horizontalDistance(current, baseX)) {
            bestMatch = current;
          }
        } else {
          bestMatch = current;
        }
      }

      current = current.getNextLeaf(condition);
    }

    return bestMatch;
  }

  @Override
  public EditorCell getEndCell(Condition<EditorCell> condition) {
    EditorCell current = this;
    while (current.getLeafToRight(condition) != null) {
      current = current.getLeafToRight(condition);
    }
    return current.getLastLeaf(condition);
  }

  @Override
  public EditorCell getHomeCell(Condition<EditorCell> condition) {
    EditorCell current = this;
    while (current.getLeafToLeft(condition) != null) {
      current = current.getLeafToLeft(condition);
    }
    return current.getFirstLeaf();
  }

  @Override
  public EditorCell getLeafToLeft(Condition<EditorCell> condition) {
    return getPrevLeaf(new Condition<EditorCell>() {
      @Override
      public boolean met(EditorCell current) {
        return current.isSelectable() && !isAbove(current) && !isBelow(current) && isToRight(current);
      }
    });
  }

  @Override
  public EditorCell getLeafToRight(Condition<EditorCell> condition) {
    return getNextLeaf(new Condition<EditorCell>() {
      @Override
      public boolean met(EditorCell current) {
        return current.isSelectable() && !isAbove(current) && !isBelow(current) && isToLeft(current);
      }
    });
  }

  @Override
  public EditorCell getNextSibling() {
    if (myParent == null) {
      return null;
    }
    int index = myParent.indexOf(this);
    if (index + 1 < myParent.getChildCount()) {
      EditorCell nextChild = myParent.getChildAt(index + 1);
      assert nextChild.getParent() == myParent;
      return nextChild;
    }
    return null;
  }

  @Override
  public EditorCell getNextSibling(Condition<EditorCell> condition) {
    EditorCell current = getNextSibling();
    while (current != null) {
      if (condition.met(current)) {
        return current;
      }
      current = current.getNextSibling();
    }
    return null;
  }

  @Override
  public EditorCell getPrevSibling() {
    if (myParent == null) {
      return null;
    }
    int index = myParent.indexOf(this);
    if (index > 0) {
      EditorCell prevChild = myParent.getChildAt(index - 1);
      assert prevChild.getParent() == myParent;
      return prevChild;
    }
    return null;
  }

  @Override
  public EditorCell getPrevSibling(Condition<EditorCell> condition) {
    EditorCell current = getPrevSibling();
    while (current != null) {
      if (condition.met(current)) {
        return current;
      }
      current = current.getPrevSibling();
    }
    return null;
  }

  @Override
  public EditorCell getNextLeaf() {
    if (getNextSibling() != null) {
      return getNextSibling().getFirstLeaf();
    }
    if (myParent != null) {
      return myParent.getNextLeaf();
    }
    return null;
  }

  @Override
  public EditorCell getNextLeaf(Condition<EditorCell> condition) {
    EditorCell current = getNextLeaf();
    while (current != null) {
      if (condition.met(current)) {
        return current;
      }
      current = current.getNextLeaf();
    }
    return null;
  }

  @Override
  public EditorCell getPrevLeaf() {
    if (getPrevSibling() != null) {
      return getPrevSibling().getLastLeaf();
    }
    if (myParent != null) {
      return myParent.getPrevLeaf();
    }
    return null;
  }

  @Override
  public EditorCell getPrevLeaf(Condition<EditorCell> condition) {
    EditorCell current = getPrevLeaf();
    while (current != null) {
      if (condition.met(current)) {
        return current;
      }
      current = current.getPrevLeaf();
    }
    return null;
  }

  @Override
  public EditorCell getFirstLeaf() {
    return this;
  }

  @Override
  public EditorCell getLastLeaf() {
    return this;
  }

  @Override
  public EditorCell getFirstLeaf(final Condition<EditorCell> condition) {
    EditorCell firstLeaf = getFirstLeaf();
    if (condition.met(firstLeaf)) {
      return firstLeaf;
    }
    return firstLeaf.getNextLeaf(new Condition<EditorCell>() {
      @Override
      public boolean met(EditorCell object) {
        return isAncestorOf(object) && condition.met(object);
      }
    });
  }

  @Override
  public EditorCell getLastLeaf(final Condition<EditorCell> condition) {
    EditorCell lastLeaf = getLastLeaf();
    if (condition.met(lastLeaf)) {
      return lastLeaf;
    }
    return lastLeaf.getPrevLeaf(new Condition<EditorCell>() {
      @Override
      public boolean met(EditorCell object) {
        return isAncestorOf(object) && condition.met(object);
      }
    });
  }

  @Override
  public EditorCell getLastChild() {
    return this;
  }

  @Override
  public EditorCell getFirstChild() {
    return this;
  }

  @Override
  public Style getStyle() {
    return myStyle;
  }

  @Override
  public boolean isLeaf() {
    return true;
  }

  public boolean isInTree() {
    return myInTree;
  }

  public void onAdd() {
    myInTree = true;

    if (isErrorState()) {
      getEditor().getCellTracker().addErrorCell(this);
    }
  }

  public void onRemove() {
    myInTree = false;

    if (isErrorState()) {
      getEditor().getCellTracker().removeErrorCell(this);
    }
  }

  @Override
  public void setLeftGap(int gap) {
    getLayoutModel().getGapBox().setLeftSize(gap);
  }

  public int getLeftGap() {
    return getLayoutModel().getGapBox().getLeftSize();
  }

  @Override
  public void setRightGap(int gap) {
    getLayoutModel().getGapBox().setRightSize(gap);
  }

  public int getRightGap() {
    return getLayoutModel().getGapBox().getRightSize();
  }

  public void requestRelayout() {
    if (myIsNeedRelayout) {
      return;
    }
    myIsNeedRelayout = true;
    if (getParent() != null) {
      getParent().requestRelayout();
    }
  }

  // Following methods are used from layout algorythms

  /**
   * @deprecated not used.
   */
  @Deprecated
  protected void markNeedsRelayout() {
    myIsNeedRelayout = true;
  }

  /**
   * @deprecated not used.
   */
  @Deprecated
  boolean isNeedsRelayout() {
    return myIsNeedRelayout;
  }

  @Override
  public boolean wasRelayoutRequested() {
    return myIsNeedRelayout;
  }

  public void unrequestLayout() {
    myIsNeedRelayout = false;
  }

  @Override
  public void setCellContext(EditorCellContext cellContext) {
    myCellContext = cellContext;
  }

  @Override
  public EditorCellContext getCellContext() {
    return myCellContext;
  }
}
