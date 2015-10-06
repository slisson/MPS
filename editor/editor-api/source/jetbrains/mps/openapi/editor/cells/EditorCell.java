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
package jetbrains.mps.openapi.editor.cells;

import jetbrains.mps.openapi.editor.EditorComponent;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage;
import jetbrains.mps.openapi.editor.style.Style;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Collection;
import java.util.List;

/**
 * evgeny, 11/17/11
 */
public interface EditorCell {

  int getX();

  /**
   * Set X position of the cell without any additional actions. Should be mostly used from cell layout process.
   * <p/>
   * This method Will not affect child cell positions (if any). This method will not call trigger cell re-layout
   * process (by calling {@link #requestRelayout()})
   */
  void setX(int x);

  int getY();

  /**
   * Set Y position of the cell without any additional actions. Should be mostly used from cell layout process.
   * <p/>
   * This method Will not affect child cell positions (if any). This method will not call trigger cell re-layout
   * process (by calling {@link #requestRelayout()})
   */
  void setY(int y);

  int getWidth();

  void setWidth(int width);

  int getHeight();

  void setHeight(int height);

  int getBottom();

  int getRight();

  int getBaseline();

  void setBaseline(int y);

  int getAscent();

  int getDescent();

  // Returns the same as getWidth. From the usages of this method and the comments in EditorCell_Basic.setLeftGap,
  // you cannot derive a consistent meaning of this method.
  @Deprecated
  int getEffectiveWidth();

  int getLeftInset();

  int getRightInset();

  int getTopInset();

  int getBottomInset();

  // TODO: same as inset?
  void setLeftGap(int gap);

  int getLeftGap();

  void setRightGap(int gap);

  int getRightGap();

  /**
   * Move cell to the specified location. In contrast with {@link #setX(int)}/{@link #setY(int)} methods, this method will re-position
   * complete cell structure: this cell together with all child cells. For {@link jetbrains.mps.openapi.editor.cells.EditorCell_Collection}
   * this method can trigger re-layout process for some child cells by calling {@link #requestRelayout()} method on corresponding cells.
   * <p/>
   * For example, if wrapping (indent) layout is attached to this {@link jetbrains.mps.openapi.editor.cells.EditorCell_Collection}, then
   * layout logic uses X coordinate of first (or parent) cell to determine cell wrapping position. As a result of {@link #moveTo(int, int)}
   * request, complete re-layout for cell subtree should be triggered to determine new wrapping position.
   * <p/>
   * In case of {@link jetbrains.mps.openapi.editor.cells.EditorCell_Collection} this method will delegate all layout-specific cell processing
   * to the corresponding {@link jetbrains.mps.openapi.editor.cells.CellLayout}
   *
   * @param x new X-coordinate
   * @param y new Y-coordinate
   */
  void moveTo(int x, int y);

  void setSelected(boolean isSelected);

  boolean isSelected();

  void setSelectable(boolean isSelected);

  boolean isSelectable();

  void setCellId(String cellId);

  String getCellId();

  void setRole(String role);

  String getRole();

  boolean isErrorState();

  void setErrorState(boolean isError);

  void relayout();

  void requestRelayout();

  boolean wasRelayoutRequested();

  void setCaretX(int x);

  int getCaretX();

  void home();

  void end();

  EditorContext getContext();

  EditorCell_Collection getParent();

  EditorCell getRootParent();

  EditorCell findLeaf(int x, int y);

  boolean isSingleNodeCell();

  SNode getSNode();

  void putUserObject(Object key, Object value);

  Object getUserObject(Object key);

  EditorComponent getEditorComponent();

  Style getStyle();

  KeyMap getKeyMap();

  void addKeyMap(KeyMap keyMap);

  CellAction getAction(CellActionType type);

  void setAction(CellActionType type, CellAction action);

  Collection<CellActionType> getAvailableActions();

  /**
   * This method can be used to access sorted  List of {@link jetbrains.mps.openapi.editor.message.SimpleEditorMessage}s
   * associated with this cell. Resulting list is sorted from less-important to most-important messages, so most-important
   * messages are added in the end of this list.
   */
  List<SimpleEditorMessage> getMessages();

  void setSubstituteInfo(SubstituteInfo info);

  SubstituteInfo getSubstituteInfo();

  TextBuilder renderText();

  void setBig(boolean big);

  boolean isBig();

  void setCellContext(EditorCellContext cellContext);

  EditorCellContext getCellContext();

  void setReferenceCell(boolean isReference);

  boolean isReferenceCell();
}
