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
package jetbrains.mps.openapi.editor.descriptor;

import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Collection;

/**
 * User: shatalin
 * Date: 5/13/13
 */
public interface BaseConceptEditor {
  /**
   * Used to specify collection of editor context hints this EditorAspect is applicable to.
   * Empty collection indicates default EditorAspect (applicable in any context). EditorAspect
   * is applicable in particular context only if all specified context hints are available in
   * this context.
   * <p/>
   * While creating new editor the most specific EditorAspect - having maximum number of context
   * hints specified - will be used.
   *
   * @return collection of context hints
   */
  Collection<String> getContextHints();

  EditorCell createEditorCell(EditorContext editorContext, SNode node);

  boolean isApplicable(SNode node);

  int getPriority();
}
