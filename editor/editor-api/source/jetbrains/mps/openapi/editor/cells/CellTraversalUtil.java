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
package jetbrains.mps.openapi.editor.cells;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.util.Condition;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Semen Alperovich
 * 03 05, 2013
 */
public class CellTraversalUtil {

  // no one can instantiate this class.
  private CellTraversalUtil() {
  }

  public static EditorCell getNextSibling(@NotNull EditorCell cell) {
    return getSibling(cell, true);
  }

  public static EditorCell getPrevSibling(@NotNull EditorCell cell) {
    return getSibling(cell, false);
  }

  private static EditorCell getSibling(@NotNull EditorCell cell, boolean forward) {
    final EditorCell_Collection parent = cell.getParent();
    if (parent == null) {
      return null;
    }

    int index = parent.indexOf(cell);
    if (index < 0) return null;
    index = forward ? index + 1 : index - 1;
    if (0 <= index && index < parent.getCellsCount()) {
      return parent.getCellAt(index);
    }

    return null;
  }

  public static EditorCell getNextLeaf(@NotNull EditorCell cell) {
    EditorCell next = getNextSibling(cell);
    if (next != null) {
      return getFirstLeaf(next);
    }

    EditorCell_Collection parent = cell.getParent();
    if (parent != null) {
      return getNextLeaf(parent);
    }

    return null;
  }

  /**
   * Compares two cells.
   * Cell which is first is the editor is lesser.
   *
   * <p>
   * Comparing cells must have common parent.
   * Check getCommonParent(firstCell, secondCell) != null
   *
   * @param firstCell a first cell to be compared.
   * @param secondCell a second cell to be compared.
   * @return  -1, zero, or 1 as the first cell
   *		is less than, equal to, or greater than the second cell.
   *
   * @throws java.lang.IllegalArgumentException if the first cell and
   *         the second cell don't have common parent.
   */
  public static int compare(@NotNull EditorCell firstCell, @NotNull EditorCell secondCell) {
    if (firstCell.equals(secondCell)) {
      return 0;
    }
    EditorCell parent = getCommonParent(firstCell, secondCell);

    if (parent == null) {
      throw new IllegalArgumentException(firstCell.toString() + " and " + secondCell.toString() + " don't have common parent");
    }
    assert parent instanceof EditorCell_Collection;

    if (parent.equals(firstCell)) {
      return -1;
    }
    if (parent.equals(secondCell)) {
      return 1;
    }
    for (EditorCell cell : ((EditorCell_Collection) parent)) {
      if (isAncestorOrEquals(cell, firstCell)) {
        return -1;
      }

      if (isAncestorOrEquals(cell, secondCell)) {
        return 1;
      }
    }
    assert false; //this line should not be reached
    return 0;
  }

  public static EditorCell getNextLeaf(@NotNull EditorCell cell, @NotNull Condition<EditorCell> condition) {
    EditorCell current = getNextLeaf(cell);
    while (current != null) {
      if (condition.met(current)) {
        return current;
      }
      current = getNextLeaf(current);
    }
    return null;
  }

  public static EditorCell getPrevLeaf(@NotNull EditorCell cell) {
    EditorCell prev = getPrevSibling(cell);
    if (prev != null) {
      return getLastLeaf(prev);
    }

    EditorCell_Collection parent = cell.getParent();
    if (parent != null) {
      return getPrevLeaf(parent);
    }

    return null;
  }

  public static EditorCell getPrevLeaf(@NotNull EditorCell cell, @NotNull Condition<EditorCell> condition) {
    EditorCell current = getPrevLeaf(cell);
    while (current != null) {
      if (condition.met(current)) {
        return current;
      }
      current = getPrevLeaf(current);
    }
    return null;
  }

  public static EditorCell getFirstLeaf(@NotNull EditorCell cell) {
    if (cell instanceof EditorCell_Collection) {
      return ((EditorCell_Collection) cell).getCellsCount() > 0 ? getFirstLeaf(((EditorCell_Collection) cell).firstCell()) : cell;
    } else {
      return cell;
    }
  }

  public static EditorCell getLastLeaf(@NotNull EditorCell cell) {
    if (cell instanceof EditorCell_Collection) {
      return ((EditorCell_Collection) cell).getCellsCount() > 0 ? getLastLeaf(((EditorCell_Collection) cell).lastCell()) : cell;
    } else {
      return cell;
    }
  }

  public static EditorCell getCommonParent(@NotNull EditorCell firstCell, @NotNull EditorCell secondCell) {
    List<EditorCell> firstParents = getParents(firstCell, true);
    List<EditorCell> secondParents = getParents(secondCell, true);
    for (EditorCell cell : firstParents) {
      if (secondParents.contains(cell)) {
        return cell;
      }
    }
    return null;
  }

  public static List<EditorCell> getParents(@NotNull EditorCell cell, boolean includeThis) {
    List<EditorCell> parents = new ArrayList<EditorCell>();
    EditorCell tempCell = includeThis ? cell : cell.getParent();
    while (tempCell != null) {
      parents.add(tempCell);
      tempCell = tempCell.getParent();
    }
    return parents;
  }

  public static boolean isAncestor(@NotNull EditorCell ancestor, @NotNull EditorCell child) {
    EditorCell_Collection parent = child.getParent();
    while (parent != null) {
      if (parent.equals(ancestor)) return true;
      parent = parent.getParent();
    }
    return false;
  }

  public static boolean isAncestorOrEquals(@NotNull EditorCell ancestor, @NotNull EditorCell child) {
    return ancestor.equals(child) || isAncestor(ancestor, child);
  }
  public static EditorCell_Collection getFoldedParent(@NotNull EditorCell cell) {
    for (EditorCell_Collection parent = cell.getParent(); parent != null; parent = parent.getParent()) {
      if (parent.isFolded()) {
        return parent;
      }
    }
    return null;
  }
}
