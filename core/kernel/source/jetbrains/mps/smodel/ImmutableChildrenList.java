/*
 * Copyright 2003-2019 JetBrains s.r.o.
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
package jetbrains.mps.smodel;

import jetbrains.mps.util.AbstractSequentialIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SContainmentLink;

import java.util.AbstractSequentialList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

final class ImmutableChildrenList extends AbstractSequentialList<SNode> {
  @Nullable
  private final SContainmentLink myRole;
  private final SNode myFirst;
  private int mySize = -1;

  public ImmutableChildrenList(SNode first, @Nullable SContainmentLink role) {
    myFirst = first;
    myRole = role;
  }

  @Override
  public int size() {
    if (mySize == -1) {
      mySize = 0;
      for (Iterator<SNode> iterator = iterator(); iterator.hasNext(); mySize++) {
        iterator.next();
      }
    }
    return mySize;
  }

  @NotNull
  @Override
  public ListIterator<SNode> listIterator(int index) {
    if (index < 0) {
      throw new IndexOutOfBoundsException();
    }

    ListIterator<SNode> iterator = new ChildrenIterator(myFirst);
    for (int i = 0; i < index; i++) {
      if (iterator.hasNext()) {
        iterator.next();
      } else {
        throw new IndexOutOfBoundsException();
      }
    }
    return iterator;
  }

  @NotNull
  @Override
  public List<SNode> subList(int fromIndex, int toIndex) {
    if (fromIndex < toIndex) {
      return new ImmutableChildrenList(get(fromIndex), myRole);
    } else {
      return Collections.emptyList();
    }
  }

  private class ChildrenIterator extends AbstractSequentialIterator<SNode> {
    public ChildrenIterator(@NotNull SNode first) {
      super(first);
    }

    @Override
    protected SNode doNext(SNode node) {
      node.assertCanRead();

      if (myRole == null) {
        return node.treeNext();
      }

      do {
        node = node.treeNext();
      } while (node != null && !myRole.equals(node.getContainmentLink()));
      return node;
    }

    @Override
    protected SNode doPrevious(SNode node) {
      node.assertCanRead();

      if (node.treeParent() == null) {
        return null;
      }
      SNode fc = node.treeParent().firstChild();

      if (node == fc) {
        return null;
      }
      if (myRole == null) {
        return node.treePrevious();
      }

      do {
        node = node.treePrevious();
      } while (node != fc && !myRole.equals(node.getContainmentLink()));

      return myRole.equals(node.getContainmentLink()) ? node : null;
    }

    @Override
    public SNode next() {
      final SNode node = super.next();
      if (node != null) {
        node.getNodeOwner().fireIteratedChildRead(node);
      }
      return node;
    }
  }
}
