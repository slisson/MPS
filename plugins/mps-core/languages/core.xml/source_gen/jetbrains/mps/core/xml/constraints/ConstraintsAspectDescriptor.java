package jetbrains.mps.core.xml.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.SConceptId;

public class ConstraintsAspectDescriptor implements jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor {
  public ConstraintsAspectDescriptor() {
  }
  public ConstraintsDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_2qnle6_a0a0b, fqName)) {
      case 12:
        return new XmlProcessingInstruction_Constraints();
      case 8:
        return new XmlElement_Constraints();
      case 10:
        return new XmlEntityRefValue_Constraints();
      case 14:
        return new XmlTextValue_Constraints();
      case 0:
        return new XmlAttribute_Constraints();
      case 5:
        return new XmlContent_Constraints();
      case 1:
        return new XmlCDATA_Constraints();
      case 4:
        return new XmlCommentLine_Constraints();
      case 9:
        return new XmlEntityRef_Constraints();
      case 13:
        return new XmlText_Constraints();
      case 2:
        return new XmlCharRef_Constraints();
      case 3:
        return new XmlCharRefValue_Constraints();
      case 15:
        return new XmlValuePart_Constraints();
      case 16:
        return new XmlWhitespace_Constraints();
      case 7:
        return new XmlDoctypeDeclaration_Constraints();
      case 11:
        return new XmlExternalId_Constraints();
      case 6:
        return new XmlDeclaration_Constraints();
      default:
        return new BaseConstraintsDescriptor(fqName);
    }
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0x5c842a42c5494875L) {
      return new XmlProcessingInstruction_Constraints();
    }
    if (id == 0x5c842a42c54b10b2L) {
      return new XmlElement_Constraints();
    }
    if (id == 0x5c842a42c54cfd21L) {
      return new XmlEntityRefValue_Constraints();
    }
    if (id == 0x5c842a42c54cfd1fL) {
      return new XmlTextValue_Constraints();
    }
    if (id == 0x5c842a42c54b8df3L) {
      return new XmlAttribute_Constraints();
    }
    if (id == 0x5c842a42c549486bL) {
      return new XmlContent_Constraints();
    }
    if (id == 0x5c842a42c549487aL) {
      return new XmlCDATA_Constraints();
    }
    if (id == 0x16838b3fce9bec5eL) {
      return new XmlCommentLine_Constraints();
    }
    if (id == 0x16838b3fce9c6f4dL) {
      return new XmlEntityRef_Constraints();
    }
    if (id == 0x16838b3fce9aa513L) {
      return new XmlText_Constraints();
    }
    if (id == 0x2abf08504ffe9886L) {
      return new XmlCharRef_Constraints();
    }
    if (id == 0x2abf08504ffed7feL) {
      return new XmlCharRefValue_Constraints();
    }
    if (id == 0x5c842a42c54cfd1cL) {
      return new XmlValuePart_Constraints();
    }
    if (id == 0x6988ccb84e3cfaa8L) {
      return new XmlWhitespace_Constraints();
    }
    if (id == 0x1d9c27c394f4069bL) {
      return new XmlDoctypeDeclaration_Constraints();
    }
    if (id == 0x1d9c27c394f6033fL) {
      return new XmlExternalId_Constraints();
    }
    if (id == 0x4890619bb401ef6eL) {
      return new XmlDeclaration_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
  private static String[] stringSwitchCases_2qnle6_a0a0b = new String[]{"jetbrains.mps.core.xml.structure.XmlAttribute", "jetbrains.mps.core.xml.structure.XmlCDATA", "jetbrains.mps.core.xml.structure.XmlCharRef", "jetbrains.mps.core.xml.structure.XmlCharRefValue", "jetbrains.mps.core.xml.structure.XmlCommentLine", "jetbrains.mps.core.xml.structure.XmlContent", "jetbrains.mps.core.xml.structure.XmlDeclaration", "jetbrains.mps.core.xml.structure.XmlDoctypeDeclaration", "jetbrains.mps.core.xml.structure.XmlElement", "jetbrains.mps.core.xml.structure.XmlEntityRef", "jetbrains.mps.core.xml.structure.XmlEntityRefValue", "jetbrains.mps.core.xml.structure.XmlExternalId", "jetbrains.mps.core.xml.structure.XmlProcessingInstruction", "jetbrains.mps.core.xml.structure.XmlText", "jetbrains.mps.core.xml.structure.XmlTextValue", "jetbrains.mps.core.xml.structure.XmlValuePart", "jetbrains.mps.core.xml.structure.XmlWhitespace"};
}
