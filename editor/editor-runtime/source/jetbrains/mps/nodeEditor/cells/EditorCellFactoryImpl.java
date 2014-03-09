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

import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.AbstractConceptEditor;
import jetbrains.mps.nodeEditor.AbstractConceptEditorComponent;
import jetbrains.mps.nodeEditor.DefaultEditor;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCellContext;
import jetbrains.mps.openapi.editor.cells.EditorCellFactory;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditorComponent;
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import org.apache.log4j.LogManager;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeUtil;

import java.util.Collection;
import java.util.Collections;
import java.util.Deque;
import java.util.LinkedList;

/**
 * User: shatalin
 * Date: 4/24/13
 */
public class EditorCellFactoryImpl implements EditorCellFactory {
  private static final Logger LOG = Logger.wrap(LogManager.getLogger(EditorCellFactoryImpl.class));

  private static final EditorCellContext DEFAULT_CELL_CONTEXT = new EditorCellContext() {
    @Override
    public Collection<String> getHints() {
      return Collections.emptySet();
    }

    @Override
    public boolean hasContextHint(String hint) {
      return false;
    }
  };

  private final EditorContext myEditorContext;
  private Deque<EditorCellContextImpl> myCellContextStack;
  private ConceptEditorRegistry myConceptEditorRegistry = new ConceptEditorRegistry();

  public EditorCellFactoryImpl(EditorContext editorContext) {
    myEditorContext = editorContext;
  }

  @Override
  public EditorCell createEditorCell(SNode node, boolean isInspector) {
    ConceptDescriptor conceptDescriptor = ConceptRegistry.getInstance().getConceptDescriptor(node.getConcept().getQualifiedName());

    EditorCell result = null;
    try {
      ConceptEditor editor = myConceptEditorRegistry.getEditor(conceptDescriptor, node);

      if (editor != null) {
        result = isInspector ? editor.createInspectedCell(myEditorContext, node) : editor.createEditorCell(myEditorContext, node);
      }
    } catch (RuntimeException e) {
      LOG.warning("Failed to create cell for node: " + SNodeUtil.getDebugText(node) + " using default editor", e, node);
    } catch (AssertionError e) {
      LOG.warning("Failed to create cell for node: " + SNodeUtil.getDebugText(node) + " using default editor", e, node);
    } catch (NoClassDefFoundError e) {
      LOG.warning("Failed to create cell for node: " + SNodeUtil.getDebugText(node) + " using default editor", e, node);
    }

    if (result == null) {
      ConceptEditor editor = conceptDescriptor.isInterfaceConcept() || conceptDescriptor.isAbstract() ? new DefaultInterfaceEditor() : new DefaultEditor();
      result = isInspector ? editor.createInspectedCell(myEditorContext, node) : editor.createEditorCell(myEditorContext, node);
    }

    result.setCellContext(getCellContext());
    return result;
  }

  @Override
  public EditorCell createEditorComponentCell(SNode node, String editorComponentId) {
    ConceptEditorComponent editorComponent = loadEditorComponent(node, editorComponentId);
    EditorCell result = editorComponent.createEditorCell(myEditorContext, node);
    result.setCellContext(getCellContext());
    return result;
  }

  @Override
  public EditorCellContext getCellContext() {
    return myCellContextStack == null ? DEFAULT_CELL_CONTEXT : myCellContextStack.getLast();
  }

  @Override
  public boolean hasCellContext() {
    return myCellContextStack != null && !myCellContextStack.isEmpty();
  }

  @Override
  public void pushCellContext() {
    EditorCellContextImpl newCellContext = new EditorCellContextImpl(getCellContext());
    if (myCellContextStack == null) {
      myCellContextStack = new LinkedList<EditorCellContextImpl>();
    }
    myCellContextStack.addLast(newCellContext);
  }

  @Override
  public void popCellContext() {
    if (myCellContextStack == null || myCellContextStack.isEmpty()) {
      throw new IllegalStateException("There is no CellContext in the stack");
    }
    myCellContextStack.removeLast();
    if (myCellContextStack.isEmpty()) {
      myCellContextStack = null;
    }
  }

  @Override
  public void addCellContextHints(String... hints) {
    if (myCellContextStack == null) {
      throw new IllegalStateException("There is no CellContext in the stack");
    }
    myCellContextStack.getLast().addHints(hints);
  }

  @Override
  public void removeCellContextHints(String... hints) {
    if (myCellContextStack == null) {
      throw new IllegalStateException("There is no CellContext in the stack");
    }
    myCellContextStack.getLast().removeHints(hints);
  }

  private ConceptEditorComponent loadEditorComponent(SNode node, String editorComponentId) {
    SConcept concept = node.getConcept();
    ConceptDescriptor conceptDescriptor = ConceptRegistry.getInstance().getConceptDescriptor(concept.getQualifiedName());
    ConceptEditorComponent conceptEditorComponent = new ConceptEditorComponentRegistry(editorComponentId).getEditor(conceptDescriptor, node);
    if (conceptEditorComponent != null) {
      return conceptEditorComponent;
    }

    return new DefaultEditorComponent(editorComponentId);
  }

  private class ConceptEditorRegistry extends AbstractEditorRegistry<ConceptEditor> {
    private ConceptEditorRegistry() {
      super(EditorCellFactoryImpl.this);
    }

    @Override
    protected Collection<ConceptEditor> getEditors(EditorAspectDescriptor aspectDescriptor, ConceptDescriptor conceptDescriptor) {
      return aspectDescriptor.getEditors(conceptDescriptor);
    }
  }

  private class ConceptEditorComponentRegistry extends AbstractEditorRegistry<ConceptEditorComponent> {
    private final String myEditorComponentId;

    private ConceptEditorComponentRegistry(String editorComponentId) {
      super(EditorCellFactoryImpl.this);
      myEditorComponentId = editorComponentId;
    }

    @Override
    protected Collection<ConceptEditorComponent> getEditors(EditorAspectDescriptor aspectDescriptor, ConceptDescriptor conceptDescriptor) {
      return aspectDescriptor.getEditorComponents(conceptDescriptor, myEditorComponentId);
    }
  }

  private static class DefaultInterfaceEditor extends AbstractConceptEditor implements ConceptEditor {
    @Override
    public Collection<String> getContextHints() {
      return Collections.emptyList();
    }

    @Override
    public EditorCell createEditorCell(EditorContext context, SNode node) {
      return new EditorCell_Error(context, node, "    ");
    }

    @Override
    public EditorCell createInspectedCell(EditorContext context, SNode node) {
      return new EditorCell_Constant(context, node, jetbrains.mps.util.SNodeOperations.getDebugText(node));
    }
  }

  private static class DefaultEditorComponent extends AbstractConceptEditorComponent implements ConceptEditorComponent {
    private final String myEditorComponentId;

    private DefaultEditorComponent(String editorComponentId) {
      myEditorComponentId = editorComponentId;
    }

    @Override
    public Collection<String> getContextHints() {
      return Collections.emptyList();
    }

    @Override
    public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
      return new EditorCell_Error(editorContext, node, "editor component not found: " + myEditorComponentId);
    }
  }
}
