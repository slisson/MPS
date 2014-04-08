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
package jetbrains.mps.nodeEditor.messageTargets;

import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.nodeEditor.DefaultEditorMessage;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.openapi.editor.message.EditorMessageOwner;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.ModelAccessor;
import jetbrains.mps.nodeEditor.cells.PropertyAccessor;
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;

import java.awt.Color;

/**
 * Cyril.Konopko, 18.02.2010
 */
public class EditorMessageWithTarget extends DefaultEditorMessage {
  protected MessageTarget myMessageTarget;

  public EditorMessageWithTarget(SNode errorNode, MessageStatus status, @NotNull MessageTarget target, Color color, String string, EditorMessageOwner owner) {
    super(errorNode, status, color, string, owner);
    myMessageTarget = target;
  }

  @Override
  public boolean acceptCell(jetbrains.mps.openapi.editor.cells.EditorCell cell, EditorComponent editor) {
    //cell can be not a big one so we don't call super.acceptCell
    if (cell == null || !editor.isValid(cell) || cell.getSNode() != getNode()) {
      return false;
    }

    switch (myMessageTarget.getTarget()) {
      case NODE:
        return cell.isBig();
      case REFERENCE:
        if (cell.isReferenceCell()) {
          return myMessageTarget.getRole().equals(cell.getRole()) && getNode() == cell.getSNode();
        } else {
          return cell.isBig() && getCell(editor) == cell;
        }
      case PROPERTY:
        if (!(cell instanceof EditorCell_Property)) {
          return cell.isBig() && getCell(editor) == cell;
        }
        EditorCell_Property propertyCell = (EditorCell_Property) cell;
        ModelAccessor modelAccessor = propertyCell.getModelAccessor();
        if (modelAccessor instanceof PropertyAccessor) {
          return myMessageTarget.getRole().equals(((PropertyAccessor) modelAccessor).getPropertyName()) && getNode() == propertyCell.getSNode();
        }
      case DELETED_CHILD:
        return getCell(editor) == cell;
      default:
        return false;
    }
  }

  @Override
  public jetbrains.mps.openapi.editor.cells.EditorCell getCell(EditorComponent editor) {
    switch (myMessageTarget.getTarget()) {
      case NODE:
        return super.getCell(editor);
      case REFERENCE:
        return CellFinder.getCellForReference(editor, getNode(), myMessageTarget.getRole());
      case PROPERTY:
        return CellFinder.getCellForProperty(editor, getNode(), myMessageTarget.getRole());
      case DELETED_CHILD:
        return CellFinder.getCellForChild(editor, getNode(), myMessageTarget.getRole());
      default:
        return null;
    }
  }

  @Override
  public boolean sameAs(SimpleEditorMessage message) {
    return super.sameAs(message) && message instanceof EditorMessageWithTarget
      && myMessageTarget.sameAs(((EditorMessageWithTarget) message).myMessageTarget);
  }
}
