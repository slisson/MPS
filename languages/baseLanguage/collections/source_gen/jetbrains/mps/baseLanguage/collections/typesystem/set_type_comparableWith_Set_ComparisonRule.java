package jetbrains.mps.baseLanguage.collections.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.ComparisonRule_Runtime;
import jetbrains.mps.lang.pattern.GeneratedMatchingPattern;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.typesystem.runtime.IsApplicable2Status;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.lang.pattern.IMatchingPattern;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.lang.pattern.runtime.PatternUtil;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.smodel.SNodePointer;

public class set_type_comparableWith_Set_ComparisonRule extends ComparisonRule_Runtime {
  /*package*/ GeneratedMatchingPattern myMatchingPattern2;
  public set_type_comparableWith_Set_ComparisonRule() {
  }
  public boolean areComparable(SNode node1, SNode node2, IsApplicable2Status status) {
    return true;
  }
  public boolean isWeak() {
    return true;
  }
  public IsApplicableStatus isApplicableFirst(SNode node) {
    {
      boolean b = SModelUtil_new.isAssignableConcept(node.getConcept().getQualifiedName(), this.getApplicableConceptFQName1());
      return new IsApplicableStatus(b, null);
    }
  }
  public IsApplicableStatus isApplicableSecond(SNode node) {
    {
      GeneratedMatchingPattern pattern = new set_type_comparableWith_Set_ComparisonRule.Pattern_3k2v7g_a0a0a0a5();
      this.myMatchingPattern2 = pattern;
      boolean b = pattern.match(node);
      return new IsApplicableStatus(b, pattern);
    }
  }
  public String getApplicableConceptFQName1() {
    return "jetbrains.mps.baseLanguage.collections.structure.SetType";
  }
  public String getApplicableConceptFQName2() {
    return "jetbrains.mps.baseLanguage.structure.ClassifierType";
  }
  public static class Pattern_3k2v7g_a0a0a0a5 extends GeneratedMatchingPattern implements IMatchingPattern {
    /*package*/ SNode patternVar_ELEMENT;
    public Pattern_3k2v7g_a0a0a0a5() {
    }
    public boolean match(SNode nodeToMatch) {
      {
        SNode nodeToMatch_plg4lh_a0a = nodeToMatch;
        if (!("jetbrains.mps.baseLanguage.structure.ClassifierType".equals(nodeToMatch_plg4lh_a0a.getConcept().getQualifiedName()))) {
          return false;
        }
        {
          SNodeReference pointer = SNODE_POINTER_3k2v7g_a0a0a0a0b0b0a0a0a0a0a0f;
          if (!(PatternUtil.matchReferentWithNode(pointer, nodeToMatch_plg4lh_a0a.getReferenceTarget(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"))))) {
            return false;
          }
        }
        {
          SContainmentLink childRole_plg4lh_ = MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter");
          if (!(PatternUtil.hasNChildren(nodeToMatch_plg4lh_a0a, childRole_plg4lh_, 1))) {
            return false;
          }
          {
            SNode childVar_plg4lh_a0a0 = IterableUtil.get(nodeToMatch_plg4lh_a0a.getChildren(childRole_plg4lh_), 0);
            this.patternVar_ELEMENT = childVar_plg4lh_a0a0;
          }
        }
      }
      return true;
    }
    public boolean hasAntiquotations() {
      return false;
    }
    public void fillFieldValuesFrom(GeneratedMatchingPattern pattern) {
      if (pattern != null && pattern.getClass() == this.getClass()) {
        patternVar_ELEMENT = (SNode) pattern.getFieldValue("patternVar_ELEMENT");
      }
    }
    public Object getFieldValue(String fieldName) {
      if ("patternVar_ELEMENT".equals(fieldName)) {
        return patternVar_ELEMENT;
      }
      return null;
    }
    public void performActions(Object o) {
    }
  }
  private static SNodePointer SNODE_POINTER_3k2v7g_a0a0a0a0b0b0a0a0a0a0a0f = new SNodePointer("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)", "~Set");
}
