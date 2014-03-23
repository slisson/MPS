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
package jetbrains.mps.nodeEditor.cells;

import jetbrains.mps.openapi.editor.cells.EditorCellContext;
import jetbrains.mps.openapi.editor.descriptor.BaseConceptEditor;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Collections;
import java.util.Deque;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * User: shatalin
 * Date: 4/24/13
 */
public class EditorCellContextImpl implements EditorCellContext {
  private Set<String> myHints = new HashSet<String>();
  private Deque<BaseConceptEditor> myNextEditors = new ArrayDeque<BaseConceptEditor>();

  public EditorCellContextImpl(EditorCellContext parentContext) {
    myHints.addAll(parentContext.getHints());
    setNextEditors(myNextEditors);
  }

  @Override
  public Collection<String> getHints() {
    return Collections.unmodifiableSet(myHints);
  }

  @Override
  public boolean hasContextHint(String hint) {
    return myHints.contains(hint);
  }

  public void addHints(String... hints) {
    for (String hint : hints) {
      myHints.add(hint);
    }
  }

  public void removeHints(String... hints) {
    for (String hint : hints) {
      myHints.remove(hint);
    }
  }

  public void setNextEditors(Collection<? extends BaseConceptEditor> nextEditors) {
    myNextEditors.clear();
    myNextEditors.addAll(nextEditors);
  }

  public BaseConceptEditor getNextEditor() {
    return myNextEditors.pollFirst();
  }
}
