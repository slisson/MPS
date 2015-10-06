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
package jetbrains.mps.ide.editor.checkers;

import com.intellij.openapi.editor.colors.EditorColorsManager;
import com.intellij.openapi.editor.colors.TextAttributesKey;
import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.ide.util.ColorAndGraphicsUtil;
import jetbrains.mps.nodeEditor.DefaultEditorMessage;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.openapi.editor.message.EditorMessageOwner;
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.Color;
import java.awt.Graphics;

public class ModelProblemMessage extends DefaultEditorMessage {

  public ModelProblemMessage(SNode errorNode, MessageStatus status, Color color, String string, EditorMessageOwner owner) {
    super(errorNode, status, color, string, owner);
  }

  @Override
  public boolean sameAs(SimpleEditorMessage message) {
    if (!(message instanceof ModelProblemMessage)) {
      return false;
    }
    return super.sameAs(message);
  }

  @Override
  public boolean isBackground() {
    return isWarning();
  }

  private boolean isWarning() {
    return getStatus() == MessageStatus.WARNING;
  }

  @Override
  public void paint(Graphics g, EditorComponent editorComponent, EditorCell cell) {
    paintDecorations(g, cell);
  }

  private void paintDecorations(Graphics g, EditorCell cell) {
    if (cell == null) return;
    if (isWarning()) {
      cell.paintSelection(g,
          EditorColorsManager.getInstance().getGlobalScheme().getAttributes(
              TextAttributesKey.createTextAttributesKey("WARNING_ATTRIBUTES")).getBackgroundColor(),
          false);
    } else {
      drawWaveUnderCell(g, getColor(), cell);
    }
  }

  public static void drawWaveUnderCell(Graphics g, Color c, EditorCell cell) {
    if (cell == null) return;
    int x1 = cell.getX() + cell.getLeftInset();
    int x2 = x1 + cell.getWidth() - cell.getLeftInset() - cell.getRightInset();
    int y = cell.getY() + cell.getHeight() - cell.getBottomInset() - ColorAndGraphicsUtil.WAVE_HEIGHT;
    g.setColor(c);
    ColorAndGraphicsUtil.drawWave(g, x1, x2, y);
  }

}
