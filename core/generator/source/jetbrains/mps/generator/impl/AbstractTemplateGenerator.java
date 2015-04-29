/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.generator.impl;

import jetbrains.mps.generator.GenerationCanceledException;
import jetbrains.mps.generator.GenerationSessionContext;
import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.impl.RoleValidation.RoleValidator;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.template.ITemplateGenerator;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

import java.util.List;

public abstract class AbstractTemplateGenerator implements ITemplateGenerator {

  private GenerationSessionContext myOperationContext;
  protected ProgressMonitor myProgressMonitor;

  protected final SModel myInputModel;
  protected final SModel myOutputModel;

  private final RoleValidation myValidation;
  private final GeneratorMappings myMappings;

  protected AbstractTemplateGenerator(GenerationSessionContext operationContext, SModel inputModel, SModel outputModel, GeneratorMappings mappings) {
    myOperationContext = operationContext;
    myInputModel = inputModel;
    myOutputModel = outputModel;
    myValidation = operationContext.getRoleValidationFacility();
    myMappings = mappings;
  }

  @Override
  public GenerationSessionContext getGeneratorSessionContext() {
    return myOperationContext;
  }

  protected void checkMonitorCanceled() throws GenerationCanceledException {
    if (myProgressMonitor != null && myProgressMonitor.isCanceled()) throw new GenerationCanceledException();
  }

  @Override
  public IGeneratorLogger getLogger() {
    return myOperationContext.getLogger();
  }

  @Override
  public SModel getInputModel() {
    return myInputModel;
  }


  @Override
  public SModel getOutputModel() {
    return myOutputModel;
  }

  public GeneratorMappings getMappings() {
    return myMappings;
  }

  @Override
  public void registerMappingLabel(SNode inputNode, String mappingName, SNode outputNode) {
    myMappings.addOutputNodeByInputNodeAndMappingName(inputNode, mappingName, outputNode);
  }

  public SNode findOutputNodeByTemplateNodeUnique(String templateNode) {
    return myMappings.findOutputNodeByTemplateNodeUnique(templateNode);
  }

  @Override
  public SNode findOutputNodeByInputNodeAndMappingName(SNode inputNode, String mappingName) {
    return myMappings.findOutputNodeByInputNodeAndMappingName(inputNode, mappingName);
  }

  @Override
  public List<SNode> findAllOutputNodesByInputNodeAndMappingName(SNode inputNode, String mappingName) {
    return myMappings.findAllOutputNodesByInputNodeAndMappingName(inputNode, mappingName);
  }

  @Override
  public SNode findCopiedOutputNodeForInputNode(SNode inputNode) {
    if (inputNode == null) return null;

    SNode outputNode = myMappings.findCopiedOutputNodeForInputNode(inputNode);
    if (outputNode == null) {
      outputNode = findOutputNodeById(inputNode.getNodeId());
    }
    return outputNode;
  }

  protected void addCopiedOutputNodeForInputNode(SNode inputNode, SNode outputNode) {
    myMappings.addCopiedOutputNodeForInputNode(inputNode, outputNode);
  }

  public void addOutputNodeByInputAndTemplateNode(SNode inputNode, String templateNodeId, SNode outputNode) {
    myMappings.addOutputNodeByInputAndTemplateNode(inputNode, templateNodeId, outputNode);
  }

  void nodeCopied(TemplateContext context, SNode outputNode, String templateNodeId) {
    myMappings.addOutputNodeForContext(context, templateNodeId, outputNode);
  }

  public SNode findCopiedOutputNodeForInputNode_unique(SNode inputNode) {
    SNode node = findCopiedOutputNodeForInputNode(inputNode);
    if (myMappings.isInputNodeHasUniqueCopiedOutputNode(inputNode)) return node;
    return null;
  }

  public SNode findOutputNodeByInputAndTemplateNode(SNode inputNode, String templateNodeId) {
    return myMappings.findOutputNodeByInputAndTemplateNode(inputNode, templateNodeId);
  }

  public SNode findOutputNodeById(SNodeId nodeId) {
    return getOutputModel().getNode(nodeId);
  }

  @Deprecated
  @ToRemove(version = 0)
  public RoleValidator getChildRoleValidator(SNode parent, String role) {
    return myValidation.getValidator(parent, role, true);
  }
  public RoleValidator getChildRoleValidator(SNode parent, SContainmentLink role) {
    return myValidation.getValidator(parent, role.getRoleName(), true);
  }

  @Deprecated
  @ToRemove(version = 0)
  public RoleValidator getReferentRoleValidator(SNode source, String role) {
    return myValidation.getValidator(source, role, false);
  }

  public RoleValidator getReferentRoleValidator(SNode source, SReferenceLink role) {
    return myValidation.getValidator(source, role.getRoleName(), false);
  }
}
