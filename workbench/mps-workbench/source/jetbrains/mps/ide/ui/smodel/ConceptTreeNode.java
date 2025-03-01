/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.ide.ui.smodel;

import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.ui.tree.MPSTreeNodeEx;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeUtil;

public class ConceptTreeNode extends MPSTreeNodeEx {
  private final Project myProject;
  private SNode myNode;
  private boolean myInitialized;

  @Override
  public boolean isLeaf() {
    return true;
  }

  public ConceptTreeNode(Project project, SNode node) {
    myProject = project;
    myNode = node;

    SConcept concept = myNode.getConcept();
    setIcon(IconManager.getIcon(concept));
    setNodeIdentifier(concept.getName());
  }

  @Override
  public SNode getSNode() {
    return myNode;
  }

  @Override
  public boolean isInitialized() {
    return myInitialized;
  }

  @Override
  protected void doInit() {
    super.doInit();
    myInitialized = true;
  }

  @Override
  protected void doUpdate() {
    super.doUpdate();
    myInitialized = false;
  }

  @Override
  public void doubleClick() {
    // XXX doubleClick shall be external, so that neither ConceptTreeNode nor ReferenceTreeNode shall know about project and writeInEDT
    myProject.getModelAccess().runWriteInEDT(new Runnable() {
      @Override
      public void run() {
        SNode concept = getSNode();
        if (concept == null || !SNodeUtil.isAccessible(concept, myProject.getRepository())) return;
        // TODO: use node pointers here
        NavigationSupport.getInstance().openNode(myProject, concept, true, true);
      }
    });
  }
}
