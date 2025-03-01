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
package jetbrains.mps.smodel.persistence.def.v4;

import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SModel.ImportElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.SModuleReference;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.smodel.SModelOperations;
import jetbrains.mps.smodel.SModelVersionsInfo;
import jetbrains.mps.smodel.SNodeId.Foreign;
import jetbrains.mps.util.NameUtil;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;

public class VersionUtil {
  private static final char VERSION_SEPARATOR_CHAR = ':';
  private static final String VERSION_SEPARATOR = "" + VERSION_SEPARATOR_CHAR;
  private static final int NO_VERSION = -100;

  private static int parseVersionedString(String rawString) {
    if (rawString.startsWith(Foreign.ID_PREFIX)) {
      return NO_VERSION;
    }
    int result = 0;
    int mul = 1;
    char[] chars = rawString.toCharArray();
    int lastCharNum = rawString.length() - 1;

    for (int i = lastCharNum; i >= 0; i--) {
      int digit = Character.digit(chars[i], 10);
      if (digit != -1) {
        result += digit * mul;
        mul *= 10;
      } else {
        if (chars[i] == VERSION_SEPARATOR_CHAR) return result;
        return NO_VERSION;
      }
    }
    return NO_VERSION;
  }

  private static String getBeforeSeparator(String s) {
    if (parseVersionedString(s) == NO_VERSION) return s;
    int index = s.lastIndexOf(VERSION_SEPARATOR_CHAR);
    if (index == -1) return s;
    return s.substring(0, index);
  }

  public static String formVersionedString(String parameter, int version) {
    if (version == -1) return parameter;
    return parameter + VERSION_SEPARATOR + version;
  }

  public static void fetchConceptVersion(String rawFqName, SNode node, SModelVersionsInfo versionsInfo) {
    int version = parseVersionedString(rawFqName);
    if (version != NO_VERSION) {
      versionsInfo.addConceptNameVersion(node, version);
    }
  }

  public static String getConceptFQName(String rawFqName) {
    return getBeforeSeparator(rawFqName);
  }

  public static void fetchChildNodeRoleVersion(String rawRole, SNode childNode, SModelVersionsInfo versionsInfo) {
    int version = parseVersionedString(rawRole);
    if (version != NO_VERSION) {
      versionsInfo.addRoleVersion(childNode, version);
    }
  }

  public static String getRole(String rawRole) {
    return getBeforeSeparator(rawRole);
  }

  public static String getPropertyName(String raw, SNode node, SModelVersionsInfo versionsInfo) {
    String propertyName = getBeforeSeparator(raw);
    int version = parseVersionedString(raw);
    if (version != NO_VERSION) {
      versionsInfo.addPropertyVersion(node, propertyName, version);
    }
    return propertyName;
  }

  public static String getLinkRole(String rawRole, SNode node, SModelVersionsInfo versionsInfo) {
    int version = parseVersionedString(rawRole);
    String linkRole = getBeforeSeparator(rawRole);
    if (version != NO_VERSION) {
      versionsInfo.addLinkRoleVersion(node, linkRole, version);
    }
    return linkRole;
  }

  //this did not work: a model reference did not equal nothing
  public static int getNodeLanguageVersion(SNode node) {
    SModuleReference moduleRef = new jetbrains.mps.project.structure.modules.ModuleReference(NameUtil.namespaceFromConceptFQName(node.getConcept().getQualifiedName()));
    Language lang = (Language) moduleRef.resolve(MPSModuleRepository.getInstance());
    SModelReference reference = LanguageAspect.STRUCTURE.get(lang).getReference();
    return VersionUtil.getUsedVersion(node.getModel(), reference);
  }

  public static int getReferenceToNodeVersion(SNode node, SModelReference targetModelReference) {
    if (targetModelReference == null) return -1;//target model reference is nullable in postponed references
    return VersionUtil.getUsedVersion(node.getModel(), targetModelReference);
  }

  //for children's roles version: finds a parent's concept, its version is a version of a role
  public static int getRoleVersion(SNode node) {
    final SNode parent = node.getParent();
    if (parent == null) return -1;
    return VersionUtil.getNodeLanguageVersion(parent);
  }


  public static String getTargetNodeId(String targetId, String role, SNode node, SModelVersionsInfo versionsInfo) {
    final String linkRole = getBeforeSeparator(targetId);
    int version = parseVersionedString(targetId);
    if (version != NO_VERSION) {
      versionsInfo.addLinkTargetIdVersion(node, role, version);
    }
    return linkRole;
  }
  static int getUsedVersion(SModel sModel, SModelReference sModelReference) {
    ImportElement importElement = getImportElement(sModel, sModelReference);
    if (importElement == null) {
      if (sModel instanceof SModelBase) {
        return getLanguageAspectModelVersion(((SModelBase) sModel).getSModel(), sModelReference);
      }
      return -1;
    }
    return importElement.getUsedVersion();
  }
  static ImportElement getImportElement(SModel model, @NotNull org.jetbrains.mps.openapi.model.SModelReference modelReference) {
    for (ImportElement importElement : ((jetbrains.mps.smodel.SModelInternal) model).importedModels()) {
      if (importElement.getModelReference().equals(modelReference)) {
        return importElement;
      }
    }
    return null;
  }
  static int getLanguageAspectModelVersion(jetbrains.mps.smodel.SModel sModel, SModelReference sModelReference) {
    ImportElement importElement = sModel.getImplicitImportsSupport().find(sModelReference);
    if (importElement == null) return -1;
    return importElement.getUsedVersion();
  }
}
