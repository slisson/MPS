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
package jetbrains.mps.nodeEditor.selection;

import jetbrains.mps.openapi.editor.EditorComponent;
import org.jetbrains.annotations.NotNull;

import java.awt.Graphics2D;
import java.awt.event.KeyEvent;

public abstract class AbstractSelection implements SelectionInternal {
  private EditorComponent myEditorComponent;

  public AbstractSelection(@NotNull EditorComponent editorComponent) {
    myEditorComponent = editorComponent;
  }

  @NotNull
  @Override
  public EditorComponent getEditorComponent() {
    return myEditorComponent;
  }

  public void paintSelection(Graphics2D g) {
  }

  @Override
  public boolean processKeyTyped(KeyEvent e) {
    return false;
  }
}
