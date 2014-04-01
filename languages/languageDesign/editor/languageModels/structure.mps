<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" version="35">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="18bc6592-03a6-4e29-a83a-7ff23bde13ba(jetbrains.mps.lang.editor)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" />
  <import index="tpcw" modelUID="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" version="0" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <import index="tp4f" modelUID="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" version="0" />
  <import index="tpdg" modelUID="r:00000000-0000-4000-0000-011c895902a8(jetbrains.mps.lang.actions.structure)" version="-1" />
  <import index="8q6x" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt.event(java.awt.event@java_stub)" version="-1" />
  <import index="tpcb" modelUID="r:00000000-0000-4000-0000-011c89590297(jetbrains.mps.lang.editor.behavior)" version="-1" />
  <import index="tpc2" modelUID="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" version="35" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1071666914219" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="iconPath" nameId="tpce.1160488491229" value="${language_descriptor}/icons/editor.png" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptEditorDeclaration" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Concept Editor" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1080736578640" resolveInfo="BaseEditorComponent" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1078153129734" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="inspectedCellModel" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2597348684684069742" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="contextHints" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6822301196700715228" resolveInfo="ConceptEditorHintDeclarationReference" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1210369064378" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2621449412040149672" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpce.2621449412040133764" resolveInfo="IConceptAspect" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1073389214265" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="EditorCellModel" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1142887637401" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="renderingCondition" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1142886221719" resolveInfo="QueryFunction_NodeCondition" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1139959269582" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="actionMap" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1139535219966" resolveInfo="CellActionMapDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1081339532145" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="keyMap" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1081293058843" resolveInfo="CellKeyMapDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1164826688380" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="menuDescriptor" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1164824717996" resolveInfo="CellMenuDescriptor" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1198512004906" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="focusPolicyApplicable" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1142886221719" resolveInfo="QueryFunction_NodeCondition" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4323500428121274054" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="id" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4323500428121233431" resolveInfo="EditorCellId" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1130859485024" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="attractsFocus" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1130926557197" resolveInfo="FocusPolicy" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1381004262292426852" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1381004262292414836" resolveInfo="ICellStyle" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1073389446423" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="collection of cells" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_Collection" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="collection" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1073389446424" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="childCellModel" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7723470090030138869" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="foldedCellModel" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1106270802874" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="cellLayout" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1106270491082" resolveInfo="CellLayout" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8709572687796959088" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="usesFoldingCondition" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1142886221719" resolveInfo="QueryFunction_NodeCondition" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4242538589862653897" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="addHints" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4653693564097968040" resolveInfo="ContextHintsSpecification" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4242538589862654489" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="removeHints" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4653693564097968040" resolveInfo="ContextHintsSpecification" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1073389446425" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="vertical" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="1239869892471" nodeInfo="ig">
        <property name="comment" nameId="tpce.1225118933224" value="Use isVertical()" />
      </node>
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1073389446426" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="gridLayout" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="1239869894921" nodeInfo="ig">
        <property name="comment" nameId="tpce.1225118933224" value="Use isVerticalGrid()" />
      </node>
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1139416841293" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="usesBraces" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1160590353935" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="usesFolding" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1073389577006" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="text label" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_Constant" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="constant" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1079353555532" resolveInfo="CellModel_AbstractLabel" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1073389577007" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="text" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1082639509531" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="nullText" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1073389658414" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="property" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_Property" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="{&lt;{propertyDeclaration}&gt;}" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1139848536355" resolveInfo="CellModel_WithRole" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1073389964684" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="propertyDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1071489288299" resolveInfo="PropertyDeclaration" />
      <link role="specializedLink" roleId="tpce.1071599698500" targetNodeId="1140103550593" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1073389882823" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="single aggregation" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_RefNode" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="%&lt;{linkDeclaration}&gt;%" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1139848536355" resolveInfo="CellModel_WithRole" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5861024100072578575" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="addHints" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4653693564097968040" resolveInfo="ContextHintsSpecification" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5861024100072578576" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="removeHints" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4653693564097968040" resolveInfo="ContextHintsSpecification" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1073389882824" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="linkDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1071489288298" resolveInfo="LinkDeclaration" />
      <link role="specializedLink" roleId="tpce.1071599698500" targetNodeId="1140103550593" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1073390211982" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="multiple aggregation" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_RefNodeList" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="%&lt;{linkDeclaration}&gt;%" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1140524381322" resolveInfo="CellModel_ListWithRole" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1145360728033" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="reverse" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1073390211987" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="linkDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1071489288298" resolveInfo="LinkDeclaration" />
      <link role="specializedLink" roleId="tpce.1071599698500" targetNodeId="1140103550593" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165347032372" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="elementMenuDescriptor" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1164824717996" resolveInfo="CellMenuDescriptor" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1173177718857" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="elementActionMap" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1139535219966" resolveInfo="CellActionMapDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1182233390675" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="filter" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1182191800432" resolveInfo="QueryFunction_NodeListFilter" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7279578193766667846" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="addHints" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4653693564097968040" resolveInfo="ContextHintsSpecification" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7279578193766667847" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="removeHints" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4653693564097968040" resolveInfo="ContextHintsSpecification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1074767920765" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="reference to accessor" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_ModelAccess" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="model access" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1079353555532" resolveInfo="CellModel_AbstractLabel" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1176718152741" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="modelAcessor" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1176717996748" resolveInfo="ModelAccessor" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1082638248796" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="nullText" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1075375595203" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="red text label" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_Error" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="error" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1079353555532" resolveInfo="CellModel_AbstractLabel" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1075375595204" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="text" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1078308402140" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="reference to cell provider" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_Custom" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="custom" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1176795024817" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="cellProvider" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1176749715029" resolveInfo="QueryFunction_CellProvider" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1078938745671" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="iconPath" nameId="tpce.1160488491229" value="${language_descriptor}/icons/editorComponent.png" />
    <property name="name" nameId="tpck.1169194664001" value="EditorComponentDeclaration" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Editor Component" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1080736578640" resolveInfo="BaseEditorComponent" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7033942394258392116" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="overridenEditorComponent" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7033942394256351208" resolveInfo="EditorComponentDeclarationReference" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7348800710862477686" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="contextHints" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6822301196700715228" resolveInfo="ConceptEditorHintDeclarationReference" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1210369055138" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7033942394262078020" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1212170275853" resolveInfo="IValidIdentifier" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5270353093116097894" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpce.2621449412040133764" resolveInfo="IConceptAspect" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1078939183254" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="reference to editor component" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_Component" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="component" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1078939183255" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="editorComponent" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1078938745671" resolveInfo="EditorComponentDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1079353555532" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_AbstractLabel" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1197893615481" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="defaultCaretPosition" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1197893505573" resolveInfo="_CaretPosition_Enum" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1080736578640" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="BaseEditorComponent" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1166049232041" resolveInfo="AbstractComponent" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1080736633877" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="cellModel" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7348800710866295304" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.3734116213129792499" resolveInfo="ScopeProvider" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1081293058843" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="iconPath" nameId="tpce.1160488491229" value="${language_descriptor}/icons/keyMap.png" />
    <property name="name" nameId="tpck.1169194664001" value="CellKeyMapDeclaration" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellKeyMap" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Cell Keymap" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1173470710781" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5270353093116096533" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpce.2621449412040133764" resolveInfo="IConceptAspect" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1149937560128" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="everyModel" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1139445935125" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="applicableConcept" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1169125787135" resolveInfo="AbstractConceptDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1136930944870" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="item" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1136916919141" resolveInfo="CellKeyMapItem" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1083928804390" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="_YesNoDefault_Enum" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1083928804393" resolveInfo="none" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083928804391" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="true" />
      <property name="externalValue" nameId="tpce.1083923523172" value="yes" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083928804392" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="false" />
      <property name="externalValue" nameId="tpce.1083923523172" value="no" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083928804393" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="none" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1083952545109" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="_Colors_Enum" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1083952545110" resolveInfo="none" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545110" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="none" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545111" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="red" />
      <property name="externalValue" nameId="tpce.1083923523172" value="red" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545112" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="pink" />
      <property name="externalValue" nameId="tpce.1083923523172" value="pink" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545113" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="orange" />
      <property name="externalValue" nameId="tpce.1083923523172" value="orange" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545114" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="yellow" />
      <property name="externalValue" nameId="tpce.1083923523172" value="yellow" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545115" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="green" />
      <property name="externalValue" nameId="tpce.1083923523172" value="green" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1101213169706" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="DARK_GREEN" />
      <property name="externalValue" nameId="tpce.1083923523172" value="darkGreen" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545116" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="magenta" />
      <property name="externalValue" nameId="tpce.1083923523172" value="magenta" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1101213185757" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="DARK_MAGENTA" />
      <property name="externalValue" nameId="tpce.1083923523172" value="darkMagenta" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545117" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="cyan" />
      <property name="externalValue" nameId="tpce.1083923523172" value="cyan" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545118" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="blue" />
      <property name="externalValue" nameId="tpce.1083923523172" value="blue" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1216404713420" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="LIGHT_BLUE" />
      <property name="externalValue" nameId="tpce.1083923523172" value="lightBlue" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1101209985304" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="DARK_BLUE" />
      <property name="externalValue" nameId="tpce.1083923523172" value="darkBlue" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1084208529765" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="gray" />
      <property name="externalValue" nameId="tpce.1083923523172" value="gray" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1084208529766" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="lightGray" />
      <property name="externalValue" nameId="tpce.1083923523172" value="lightGray" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1084208529767" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="darkGray" />
      <property name="externalValue" nameId="tpce.1083923523172" value="darkGray" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1214395400259" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="WHITE" />
      <property name="externalValue" nameId="tpce.1083923523172" value="white" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="7151630269404055096" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="black" />
      <property name="externalValue" nameId="tpce.1083923523172" value="black" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1088013125922" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="reference" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_RefCell" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="%&lt;{linkDeclaration}&gt;%-&gt;" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1139848536355" resolveInfo="CellModel_WithRole" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1088013239202" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="linkDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1071489288298" resolveInfo="LinkDeclaration" />
      <link role="specializedLink" roleId="tpce.1071599698500" targetNodeId="1140103550593" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1088186146602" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="editorComponent" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1088185857835" resolveInfo="InlineEditorComponent" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1088185857835" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="in-line editor component" />
    <property name="name" nameId="tpck.1169194664001" value="InlineEditorComponent" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1080736578640" resolveInfo="BaseEditorComponent" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1088612959204" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="cell alternation" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_Alternation" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="alternation" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1088613081987" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="vertical" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1145918517974" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="alternationCondition" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1142886221719" resolveInfo="QueryFunction_NodeCondition" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1088612958265" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="ifTrueCellModel" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1088612973955" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="ifFalseCellModel" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1101211480448" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="_FontStyle_Enum" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1134577855137" resolveInfo="plain" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1101211523070" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="BOLD" />
      <property name="externalValue" nameId="tpce.1083923523172" value="bold" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1101211542532" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="ITALIC" />
      <property name="externalValue" nameId="tpce.1083923523172" value="italic" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1101213960346" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="BOLD_ITALIC" />
      <property name="externalValue" nameId="tpce.1083923523172" value="boldItalic" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1134577855137" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="PLAIN" />
      <property name="externalValue" nameId="tpce.1083923523172" value="plain" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1220973684614" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="QUERY" />
      <property name="externalValue" nameId="tpce.1083923523172" value="query" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1103016434866" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_JComponent" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="swing component" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1176475119347" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="componentProvider" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1176474535556" resolveInfo="QueryFunction_JComponent" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1106270491082" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellLayout" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellLayout" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1106270549637" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellLayout_Horizontal" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="horizontal" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1106270491082" resolveInfo="CellLayout" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1106270571710" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellLayout_Vertical" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="vertical" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1106270491082" resolveInfo="CellLayout" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1106270637846" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellLayout_Flow" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="flow" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1106270491082" resolveInfo="CellLayout" />
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1130847686886" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="UnderlineStyle" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1130847686918" resolveInfo="as_is" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1130847686918" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="0" />
      <property name="externalValue" nameId="tpce.1083923523172" value="as_is" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1130847816499" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="1" />
      <property name="externalValue" nameId="tpce.1083923523172" value="not_underlined" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1130847833453" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="2" />
      <property name="externalValue" nameId="tpce.1083923523172" value="underlined" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1130926557197" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="FocusPolicy" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1130926557292" resolveInfo="noAttraction" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1130926557292" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="0" />
      <property name="externalValue" nameId="tpce.1083923523172" value="noAttraction" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1130926591919" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="1" />
      <property name="externalValue" nameId="tpce.1083923523172" value="attractsFocus" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1130926603060" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="2" />
      <property name="externalValue" nameId="tpce.1083923523172" value="firstEditableCell" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1227082414196" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="3" />
      <property name="externalValue" nameId="tpce.1083923523172" value="attractsRecursively" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1134379236839" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="cell for attributed property" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_AttributedPropertyCell" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="attributed property" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1136564507907" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="cell for attributed link" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_AttributedLinkCell" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="attributed link" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1136916919141" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CellKeyMapItem" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellKeyMap" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1136916998332" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="keystroke" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1136916976737" resolveInfo="CellKeyMapKeystroke" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1136917325338" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="isApplicableFunction" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1136917249679" resolveInfo="CellKeyMap_IsApplicableFunction" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1136920925604" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="executeFunction" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1136917288805" resolveInfo="CellKeyMap_ExecuteFunction" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1136916941877" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="description" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1141091278922" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="caretPolicy" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1141091053936" resolveInfo="CellKeyMapCaretPolicy" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1163507208434" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="showInPopup" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1184322083615" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="menuAlwaysShown" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1136916976737" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CellKeyMapKeystroke" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellKeyMap" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1136923970223" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="modifiers" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1136923970224" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="keycode" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1136917155755" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellKeyMap_AbstractFunction" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellKeyMap" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1136917249679" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellKeyMap_IsApplicableFunction" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellKeyMap" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="is applicable block" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1136917155755" resolveInfo="CellKeyMap_AbstractFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1136917288805" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellKeyMap_ExecuteFunction" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellKeyMap" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="execute block" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1136917155755" resolveInfo="CellKeyMap_AbstractFunction" />
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1138197387103" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="_Layout_Constraints_Enum" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1138197631095" resolveInfo="none" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1138197387339" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="punctuation" />
      <property name="externalValue" nameId="tpce.1083923523172" value="punctuation" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1138197619454" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="noflow" />
      <property name="externalValue" nameId="tpce.1083923523172" value="noflow" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1138197631095" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="none" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1139535219966" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="iconPath" nameId="tpce.1160488491229" value="${language_descriptor}/icons/actionMap.png" />
    <property name="name" nameId="tpck.1169194664001" value="CellActionMapDeclaration" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Cell Action Map" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1173470751204" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5270353093116090437" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpce.2621449412040133764" resolveInfo="IConceptAspect" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1139535219968" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="applicableConcept" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1169125787135" resolveInfo="AbstractConceptDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1139535219969" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="item" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1139535280617" resolveInfo="CellActionMapItem" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1139535280617" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CellActionMapItem" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1139537298254" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="description" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1139535298778" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="actionId" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1139535328871" resolveInfo="CellActionId" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1139535280620" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="executeFunction" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1139535439104" resolveInfo="CellActionMap_ExecuteFunction" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741642214" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1139535328871" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="CellActionId" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1139535329028" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1139535329028" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="right_transform_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="RIGHT_TRANSFORM" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1139535387060" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="delete_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="DELETE" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1222746468862079483" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="insert_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="INSERT" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1222746468862079484" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="insert_before_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="INSERT_BEFORE" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657675082" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="backspace_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="BACKSPACE" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707152" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="delete_to_word_end_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="DELETE_TO_WORD_END" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707153" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="copy_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="COPY" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707154" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="cut_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="CUT" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707155" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="paste_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="PASTE" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707156" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="paste_before_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="PASTE_BEFORE" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707157" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="paste_after_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="PASTE_AFTER" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707158" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="left_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="LEFT" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707159" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="right_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="RIGHT" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707160" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="up_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="UP" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707161" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="down_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="DOWN" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707162" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="next_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="NEXT" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707163" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="prev_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="PREV" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707164" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="home_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="HOME" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707165" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="end_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="END" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707166" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="page_up_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="PAGE_UP" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707167" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="page_down_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="PAGE_DOWN" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707168" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="root_home_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="ROOT_HOME" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707169" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="root_end_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="ROOT_END" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707170" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="local_home_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="LOCAL_HOME" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707171" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="local_end_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="LOCAL_END" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707172" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="select_left_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="SELECT_LEFT" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707173" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="select_right_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="SELECT_RIGHT" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707174" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="select_up_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="SELECT_UP" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707175" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="select_down_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="SELECT_DOWN" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707176" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="select_home_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="SELECT_HOME" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707177" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="select_end_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="SELECT_END" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707178" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="select_local_end_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="SELECT_LOCAL_END" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707179" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="select_local_home_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="SELECT_LOCAL_HOME" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707180" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="select_next_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="SELECT_NEXT" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707181" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="select_previous_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="SELECT_PREVIOUS" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707182" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="left_transform_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="LEFT_TRANSFORM" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707183" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="complete_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="COMPLETE" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707184" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="complete_smart_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="COMPLETE_SMART" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707185" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="fold_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="FOLD" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707186" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="unfold_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="UNFOLD" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707187" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="fold_all_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="FOLD_ALL" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707188" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="unfold_all_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="UNFOLD_ALL" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707189" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="toggle_folding_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="TOGGLE_FOLDING" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="9025760234657707190" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="show_message_action_id" />
      <property name="externalValue" nameId="tpce.1083923523172" value="SHOW_MESSAGE" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1139535439104" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellActionMap_ExecuteFunction" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="execute block" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1139744471051" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="_ImageAlignment_Enum" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1139744471411" resolveInfo="alignmentJustify" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1139744471411" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="justify" />
      <property name="externalValue" nameId="tpce.1083923523172" value="alignmentJustify" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1139744531598" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="center" />
      <property name="externalValue" nameId="tpce.1083923523172" value="alignmentCenter" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1139744545740" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="tile" />
      <property name="externalValue" nameId="tpce.1083923523172" value="alignmentTile" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1139744628335" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="cell for an image" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_Image" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="image" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1176899909521" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="imagePathProvider" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1176899348742" resolveInfo="QueryFunction_ImagePath" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1139746504291" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="imageFile" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1139858284555" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="descent" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1139848536355" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_WithRole" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1079353555532" resolveInfo="CellModel_AbstractLabel" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1139852716018" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="noTargetText" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1214560368769" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="emptyNoTargetText" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1140017977771" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="readOnly" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1140114345053" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="allowEmptyText" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1140103550593" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="relationDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1140524381322" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_ListWithRole" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1139848536355" resolveInfo="CellModel_WithRole" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1176897874615" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="nodeFactory" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1176897764478" resolveInfo="QueryFunction_NodeFactory" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1140524464359" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="emptyCellModel" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6046489571270834038" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="foldedCellModel" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1140524464360" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="cellLayout" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1106270491082" resolveInfo="CellLayout" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1233141163694" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="separatorStyle" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1233148810477" resolveInfo="InlineStyleDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="928328222691832421" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="separatorTextQuery" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="709996738298806197" resolveInfo="QueryFunction_SeparatorText" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4601216887035799527" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="usesFoldingCondition" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1142886221719" resolveInfo="QueryFunction_NodeCondition" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1140524450554" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="vertical" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="1239873962700" nodeInfo="ig" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1140524450555" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="gridLayout" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="1239873964974" nodeInfo="ig" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1140524450556" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="usesBraces" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1160590307797" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="usesFolding" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1140524450557" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="separatorText" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1156252885376" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="separatorLayoutConstraint" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1138197387103" resolveInfo="_Layout_Constraints_Enum" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1140813780565" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="RightTransformAnchorTag" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1140813780644" resolveInfo="none" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1140813780644" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="none" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1140813835051" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="default_RTransform" />
      <property name="externalValue" nameId="tpce.1083923523172" value="default_" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1140813898505" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="ext_1_RTransform" />
      <property name="externalValue" nameId="tpce.1083923523172" value="ext_1" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1140813939727" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="ext_2_RTransform" />
      <property name="externalValue" nameId="tpce.1083923523172" value="ext_2" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1140813947731" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="ext_3_RTransform" />
      <property name="externalValue" nameId="tpce.1083923523172" value="ext_3" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1140813957048" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="ext_4_RTransform" />
      <property name="externalValue" nameId="tpce.1083923523172" value="ext_4" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1140813967505" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="ext_5_RTransform" />
      <property name="externalValue" nameId="tpce.1083923523172" value="ext_5" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1141091053936" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="CellKeyMapCaretPolicy" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellKeyMap" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1141091054266" resolveInfo="ANY_POSITION" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1141091054266" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="ANY_POSITION" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1141091172402" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="caret_at_first_position" />
      <property name="externalValue" nameId="tpce.1083923523172" value="FIRST_POSITION" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1141091209420" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="caret_at_last_position" />
      <property name="externalValue" nameId="tpce.1083923523172" value="LAST_POSITION" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1143573566373" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="caret_at_intermediate_position" />
      <property name="externalValue" nameId="tpce.1083923523172" value="INTERMEDIATE_POSITION" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1142886221719" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="embedded block of code" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_NodeCondition" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="condition" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1142886811589" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="function parameter" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptFunctionParameter_node" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Parameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="node" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741642741" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1143891911797" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="_LeftRight_Enum" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1143891911798" resolveInfo="left" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1143891911798" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="true" />
      <property name="externalValue" nameId="tpce.1083923523172" value="left" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1143891954220" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="false" />
      <property name="externalValue" nameId="tpce.1083923523172" value="right" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1149850725784" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="cell for attributed node" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_AttributedNodeCell" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="attributed node" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1160493135005" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_PropertyValues_GetValues" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="property values" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1161622981231" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptFunctionParameter_editorContext" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Parameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="editorContext" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741702895" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1162497113192" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceChild_currentChild" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="currentChild" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741523462" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1162498275506" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceChild_defaultConceptOfChild" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="defaultConceptOfChild" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="conceptLink" roleId="tpce.1105736949336" type="tpce.AggregationConceptLink" typeId="tpce.1105736889287" id="1162498325651" nodeInfo="ig">
      <link role="conceptLinkDeclaration" roleId="tpce.1105736734721" targetNodeId="tpee.1137545963098" resolveInfo="conceptFunctionParameterType" />
      <node role="target" roleId="tpce.1105736901241" type="tp25.SNodeType" typeId="tp25.1138055754698" id="1162498330044" nodeInfo="in">
        <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpce.1071489090640" resolveInfo="ConceptDeclaration" />
      </node>
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741642941" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1163613035599" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_AbstractGroup_Query" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="get objects" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1163613131943" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceNode_Group_Create" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="create replacement node" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1163613549566" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_AbstractGroup_parameterObject" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="parameterObject" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741704576" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1163613822479" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_Abstract_editedNode" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="node" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741718748" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1164052439493" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_AbstractGroup_MatchingText" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="matching text" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1164052588708" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_AbstractGroup_DescriptionText" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="description text" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1164824717996" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuDescriptor" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="cell menu" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1164824815888" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="cellMenuPart" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1164824854750" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_Abstract" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1164833692343" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_PropertyValues" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="property values" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1164833692344" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="valuesFunction" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1160493135005" resolveInfo="CellMenuPart_PropertyValues_GetValues" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741647420" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1164914519156" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceNode_CustomNodeConcept" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="replace node (custom node concept)" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1164914727930" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="replacementConcept" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1169125787135" resolveInfo="AbstractConceptDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1164996492011" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReferentPrimary" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="primary choose referent menu" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741523500" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165004207520" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceNode_Group" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="replace node (group of custom actions)" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1165253627126" resolveInfo="CellMenuPart_AbstractGroup" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165004529292" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="parametersFunction" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1163613035599" resolveInfo="CellMenuPart_AbstractGroup_Query" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165004529293" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="createFunction" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1163613131943" resolveInfo="CellMenuPart_ReplaceNode_Group_Create" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165253627126" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_AbstractGroup" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165253890469" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="parameterObjectType" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790189" resolveInfo="Type" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1165254125954" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="presentation" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpcw.1165007009656" resolveInfo="NodePresentationOptions" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165254159533" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="matchingTextFunction" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1164052439493" resolveInfo="CellMenuPart_AbstractGroup_MatchingText" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165254180581" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="descriptionTextFunction" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1164052588708" resolveInfo="CellMenuPart_AbstractGroup_DescriptionText" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165270418989" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceChild_Group" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="replace child (group of custom actions)" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1165253627126" resolveInfo="CellMenuPart_AbstractGroup" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165270418991" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="parametersFunction" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1165270662927" resolveInfo="CellMenuPart_ReplaceChild_Group_Query" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165270418992" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="createFunction" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1165270999881" resolveInfo="CellMenuPart_ReplaceChild_Group_Create" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741703130" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165270662927" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceChild_Group_Query" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="get objects" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165270999881" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceChild_Group_Create" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="create new child" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165280503630" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceChild_CustomChildConcept" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="replace child (custom child's concept)" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165280503631" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="childConceptFunction" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1165280856333" resolveInfo="CellMenuPart_ReplaceChild_CustomChildConcept_Query" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741647053" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165280856333" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceChild_CustomChildConcept_Query" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="get child concept" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165339175678" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceChild_Item" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="replace child (custom action)" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1165339639991" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="matchingText" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1175117579502" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="descriptionText" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165339175680" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="createFunction" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1165339307433" resolveInfo="CellMenuPart_ReplaceChild_Item_Create" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741520159" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165339307433" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceChild_Item_Create" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165420413719" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_Generic_Group" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="generic group" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1165253627126" resolveInfo="CellMenuPart_AbstractGroup" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165420413720" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="parametersFunction" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1163613035599" resolveInfo="CellMenuPart_AbstractGroup_Query" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165420413721" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="handlerFunction" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1165420626554" resolveInfo="CellMenuPart_Generic_Group_Handler" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165420626554" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_Generic_Group_Handler" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="generic handler" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165424453110" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_Generic_Item" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="generic item" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1165424453111" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="matchingText" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1165424453112" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="handlerFunction" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1165424657443" resolveInfo="CellMenuPart_Generic_Item_Handler" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1165424657443" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_Generic_Item_Handler" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1166040637528" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="iconPath" nameId="tpce.1160488491229" value="${language_descriptor}/icons/menuComponent.png" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuComponent" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Cell Menu Component" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1166049232041" resolveInfo="AbstractComponent" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1166040865497" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="applicableFeature" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1166041033436" resolveInfo="CellMenuComponentFeature" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1166041505377" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="menuDescriptor" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1164824717996" resolveInfo="CellMenuDescriptor" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1210369041997" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5270353093116097656" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpce.2621449412040133764" resolveInfo="IConceptAspect" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1166041033436" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuComponentFeature" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1166054297096" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="relationDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1166041748520" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CellMenuComponentFeature_Property" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1166041033436" resolveInfo="CellMenuComponentFeature" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1166041884271" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="propertyDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1071489288299" resolveInfo="PropertyDeclaration" />
      <link role="specializedLink" roleId="tpce.1071599698500" targetNodeId="1166054297096" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1166042131867" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CellMenuComponentFeature_Link" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1166041033436" resolveInfo="CellMenuComponentFeature" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1166042131869" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="linkDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1071489288298" resolveInfo="LinkDeclaration" />
      <link role="specializedLink" roleId="tpce.1071599698500" targetNodeId="1166054297096" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1166049232041" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="AbstractComponent" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1166049300910" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="conceptDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1169125787135" resolveInfo="AbstractConceptDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1166059625718" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_CellMenuComponent" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="menu component" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1166059677893" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="cellMenuComponent" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1166040637528" resolveInfo="CellMenuComponent" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1174088067129" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ReplaceChildPrimary" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="primary replace child menu" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741702896" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1176474535556" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="embedded block of code" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_JComponent" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="component" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1176717779940" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="function parameter" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptFunctionParameter_text" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="text" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="conceptLink" roleId="tpce.1105736949336" type="tpce.AggregationConceptLink" typeId="tpce.1105736889287" id="1176717792086" nodeInfo="ig">
      <link role="conceptLinkDeclaration" roleId="tpce.1105736734721" targetNodeId="tpee.1137545963098" resolveInfo="conceptFunctionParameterType" />
      <node role="target" roleId="tpce.1105736901241" type="tpee.StringType" typeId="tpee.1225271177708" id="1225191485527" nodeInfo="in" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741647440" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1176717841777" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="embedded block of code" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_ModelAccess_Getter" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="condition" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1176717871254" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="embedded block of code" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_ModelAccess_Setter" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="condition" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1176717888428" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="embedded block of code" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_ModelAccess_Validator" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="condition" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1176717996748" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ModelAccessor" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1176718001874" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="getter" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1176717841777" resolveInfo="QueryFunction_ModelAccess_Getter" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1176718007938" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="setter" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1176717871254" resolveInfo="QueryFunction_ModelAccess_Setter" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1176718014393" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="validator" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1176717888428" resolveInfo="QueryFunction_ModelAccess_Validator" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1176731909317" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="function parameter" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptFunctionParameter_oldText" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="oldText" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="conceptLink" roleId="tpce.1105736949336" type="tpce.AggregationConceptLink" typeId="tpce.1105736889287" id="1176731909318" nodeInfo="ig">
      <link role="conceptLinkDeclaration" roleId="tpce.1105736734721" targetNodeId="tpee.1137545963098" resolveInfo="conceptFunctionParameterType" />
      <node role="target" roleId="tpce.1105736901241" type="tpee.StringType" typeId="tpee.1225271177708" id="1225191495552" nodeInfo="in" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741703107" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1176749715029" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="embedded block of code" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_CellProvider" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="cell provider" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1176809959526" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_Color" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Style" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="color function" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1221059528506" resolveInfo="QueryFunction_StyleParameter" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1225456207992" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1225456097782" resolveInfo="IQueryFunction_Color" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1176897764478" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="embedded block of code" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_NodeFactory" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="node factory" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1176899348742" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="embedded block of code" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_ImagePath" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="string" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1180615838666" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_PropertyPostfixHints" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="property postfix hints" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1180615838667" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="postfixesFunction" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1180616057533" resolveInfo="CellMenuPart_PropertyPostfixHints_GetPostfixes" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741704680" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1180616057533" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_PropertyPostfixHints_GetPostfixes" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="postfixes" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1182191800432" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="embedded block of code" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_NodeListFilter" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="node list provider" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1182233249301" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="function parameter" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptFunctionParameter_childNode" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="childNode" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741703380" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1184319644772" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="not empty property" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_NonEmptyProperty" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="{+&lt;{propertyDeclaration}&gt;+}" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389658414" resolveInfo="CellModel_Property" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741704574" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186402211651" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="iconPath" nameId="tpce.1160488491229" value="${language_descriptor}/icons/editorStylesheet.png" />
    <property name="name" nameId="tpck.1169194664001" value="StyleSheet" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Stylesheet" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1186402402630" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="styleClass" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="3383245079136928391" resolveInfo="IStyleSheetMember" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1186402303894" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186402373407" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="StyleSheetClass" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="style" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="3383245079137382173" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="3383245079136928391" resolveInfo="IStyleSheetMember" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2491174914162276359" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1198252369256" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="extendedClass" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1198252130653" resolveInfo="StyleSheetClassReference" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="9122903797336079904" nodeInfo="ig" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186402475462" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="StyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186403694788" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ColorStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1186403803051" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="query" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1225456097782" resolveInfo="IQueryFunction_Color" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1186403713874" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="color" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1083952545109" resolveInfo="_Colors_Enum" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186403751766" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="FontStyleStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="font-style" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1220975211821" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="query" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1220974635399" resolveInfo="QueryFunction_FontStyle" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1186403771423" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="style" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1101211480448" resolveInfo="_FontStyle_Enum" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186404549998" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ForegroundColorStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="text-foreground-color" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186403694788" resolveInfo="ColorStyleClassItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186404574412" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="BackgroundColorStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="background-color" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186403694788" resolveInfo="ColorStyleClassItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186413799158" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="BracketColorStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="bracket-color" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186403694788" resolveInfo="ColorStyleClassItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186414536763" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="BooleanStyleSheetItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1223387335081" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="query" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1223387125302" resolveInfo="QueryFunction_Boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1186414551515" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="flag" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186414928363" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="SelectableStyleSheetItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="selectable" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186414949600" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="AutoDeletableStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="auto-deletable" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186414976055" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="DrawBorderStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="draw-border" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186414999511" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="UnderlinedStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="underlined" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1214316229833" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="underlined" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1130847686886" resolveInfo="UnderlineStyle" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1221219051630" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="query" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1221062700015" resolveInfo="QueryFunction_Underlined" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186415722038" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="FontSizeStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="font-size" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1221064706952" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="query" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1221057094638" resolveInfo="QueryFunction_Integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1221209241505" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1186414860679" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="EditableStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="editable" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1187258617779" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ForegroundNullColorStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="text-foreground-null-color" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186403694788" resolveInfo="ColorStyleClassItem" />
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1197893505573" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="_CaretPosition_Enum" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1197893505574" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="NONE" />
      <property name="externalValue" nameId="tpce.1083923523172" value="none" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1197893580900" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="FIRST" />
      <property name="externalValue" nameId="tpce.1083923523172" value="first" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1197893584870" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="LAST" />
      <property name="externalValue" nameId="tpce.1083923523172" value="last" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1198252130653" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="StyleSheetClassReference" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1198252276894" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="styleSheetClass" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1186402373407" resolveInfo="StyleSheetClass" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="9122903797336079906" nodeInfo="ig" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1198256887712" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="indent" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_Indent" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="---&gt;" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1198257632966" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_BlockStart" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="block start" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1198504797640" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="openBrace" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1198257747917" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_BlockEnd" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="block end" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1198506631483" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="closeBrace" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1198489924438" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_Block" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="block" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1198508727334" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="openBrace" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1198508733600" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="closeBrace" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1198489985045" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="header" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1198489993734" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="body" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1201266127262" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="SelectParameter" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="SNode" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1201268783309" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="SelectPositionParameter" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="SNode" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="position=" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1201266127262" resolveInfo="SelectParameter" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1201268881975" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="position" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1201268793545" resolveInfo="SelectPosition" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1201268793545" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="SelectPosition" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="SNode" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1201268793546" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="before" />
      <property name="externalValue" nameId="tpce.1083923523172" value="before" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1201268803781" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="after" />
      <property name="externalValue" nameId="tpce.1083923523172" value="after" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1201270864927" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CaretPositionParameter" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="SNode" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="caret position=" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1201266127262" resolveInfo="SelectParameter" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1201270907764" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="position" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1214317859050" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="LayoutConstraintStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="layout constraint" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1214317859051" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="layoutConstraint" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1138197387103" resolveInfo="_Layout_Constraints_Enum" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1214320119173" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="SideTransformAnchorTagStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="side-transform-anchor-tag" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3608226089191997414" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="tags" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="3608226089191997415" resolveInfo="RightTransformAnchorTagWrapper" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1214320119174" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="tag" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1140813780565" resolveInfo="RightTransformAnchorTag" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1214406454886" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="TextBackgroundColorStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="text-background-color" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186403694788" resolveInfo="ColorStyleClassItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1214406466686" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="TextBackgroundColorSelectedStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="text-background-color-selected" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186403694788" resolveInfo="ColorStyleClassItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1214472762472" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="DefaultCaretPositionStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="default-caret-position" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1214472762473" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="position" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1197893505573" resolveInfo="_CaretPosition_Enum" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1215007762405" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="FloatStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1215007802031" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1239805001815" resolveInfo="_FloatOrInteger_String" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1215007883204" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="PaddingLeftStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.Paddings" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="padding-left" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1226339938453" resolveInfo="AbstractPaddingStyleClassItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1215007897487" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="PaddingRightStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.Paddings" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="padding-right" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1226339938453" resolveInfo="AbstractPaddingStyleClassItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1215085112640" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="FirstPositionAllowedStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="first-position-allowed" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1215085197271" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="LastPositionAllowedStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="last-position-allowed" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1216308376568" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="_NextLine_Enum" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1216308507057" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="right" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1216308502931" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="next-line" />
      <property name="externalValue" nameId="tpce.1083923523172" value="next-line" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1216308376569" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="indented" />
      <property name="externalValue" nameId="tpce.1083923523172" value="indented" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1216308599511" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="rootable" nameId="tpce.1096454100552" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="PositionStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="position" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1216308761668" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="position" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1216308376568" resolveInfo="_NextLine_Enum" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1216380990741" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_TransactionalProperty" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="{T &lt;{property}&gt; T}" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1079353555532" resolveInfo="CellModel_AbstractLabel" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1232439938817" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="runInCommand" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="8251517099537646385" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="allowEmptyText" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1216381211800" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="handlerBlock" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1216381054717" resolveInfo="TransactionalPropertyHandler" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1216381219207" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="property" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1071489288299" resolveInfo="PropertyDeclaration" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741718855" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1216381054717" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TransactionalPropertyHandler" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1216381117100" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="TransactionPropertyHandler_oldValue" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="oldValue" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1216381148013" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="TransactionPropertyHandler_newValue" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="newValue" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741641622" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1216560327200" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="PositionChildrenStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="position-children" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1216560518566" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="position" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1216308376568" resolveInfo="_NextLine_Enum" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1216672142186" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellLayout_Indent_Old" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="indent_old" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1106270491082" resolveInfo="CellLayout" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1219226236603" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="DrawBracketsStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="draw-brackets" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="1219418625346" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IStyleContainer" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1219418656006" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="styleItem" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1220974635399" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_FontStyle" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Style" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="font style function" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1221059528506" resolveInfo="QueryFunction_StyleParameter" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1221057094638" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_Integer" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Style" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="int function" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1221059528506" resolveInfo="QueryFunction_StyleParameter" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1221059528506" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="embedded block of code" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_StyleParameter" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Style" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1221062700015" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_Underlined" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Style" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="underlined function" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1221059528506" resolveInfo="QueryFunction_StyleParameter" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1223386653097" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="StrikeOutStyleSheet" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="strike-out" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1223387125302" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_Boolean" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Style" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="boolean function" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1221059528506" resolveInfo="QueryFunction_StyleParameter" />
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="1225456097782" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IQueryFunction_Color" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Style" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1225456267680" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="#RRGGBB" />
    <property name="name" nameId="tpck.1169194664001" value="RGBColor" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="#" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1225456281899" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1225456097782" resolveInfo="IQueryFunction_Color" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1225456424731" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1225898583838" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ReadOnlyModelAccessor" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1225898971709" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="getter" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1176717841777" resolveInfo="QueryFunction_ModelAccess_Getter" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1225900081164" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="reference to read only accessor" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_ReadOnlyModelAccessor" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="read only model access" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1079353555532" resolveInfo="CellModel_AbstractLabel" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1225900141900" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="modelAccessor" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1225898583838" resolveInfo="ReadOnlyModelAccessor" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1226339751946" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="PaddingTopStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.Paddings" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="padding-top" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1226339938453" resolveInfo="AbstractPaddingStyleClassItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1226339813308" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="PaddingBottomStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.Paddings" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="padding-bottom" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1226339938453" resolveInfo="AbstractPaddingStyleClassItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1226339938453" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="AbstractPaddingStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.Paddings" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1215007762405" resolveInfo="FloatStyleClassItem" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1226504838901" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="measure" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1226504633752" resolveInfo="_Enum_Measure" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1226504633752" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="_Enum_Measure" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.Paddings" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1226504706052" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1226504633753" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="PIXELS" />
      <property name="externalValue" nameId="tpce.1083923523172" value="pixels" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1226504706052" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="SPACES" />
      <property name="externalValue" nameId="tpce.1083923523172" value="spaces" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1227861515039" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="NavigatableReferenceStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="navigatable-reference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1227861587090" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="link" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1071489288298" resolveInfo="LinkDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1233148810477" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="InlineStyleDeclaration" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1381004262292426860" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1381004262292414836" resolveInfo="ICellStyle" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1233758997495" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="PunctuationLeftStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="punctuation-left" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1233759184865" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="PunctuationRightStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="punctuation-right" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1233823429331" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="HorizontalGapStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.Paddings" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="horizontal-gap" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1226339938453" resolveInfo="AbstractPaddingStyleClassItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1235728439575" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="BaseLineCell" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="base-line-cell" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1235999440492" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="HorizontalAlign" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="horizontal-align" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1235999920262" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="align" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1235999709834" resolveInfo="AlignEnum" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1235999709834" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="AlignEnum" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1235999709835" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1235999709835" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="LEFT" />
      <property name="externalValue" nameId="tpce.1083923523172" value="left" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1235999738057" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="RIGHT" />
      <property name="externalValue" nameId="tpce.1083923523172" value="right" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1235999744266" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="CENTER" />
      <property name="externalValue" nameId="tpce.1083923523172" value="center" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1236262245656" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="MatchingLabelStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="matching-label" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1238091709220" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="labelName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5915179142332960580" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="hasNoLabel" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1236443321503" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="query" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1236443640684" resolveInfo="QueryFunction_String" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1236443640684" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_String" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237303669825" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellLayout_Indent" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="indent" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1106270491082" resolveInfo="CellLayout" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237307900041" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="IndentLayoutIndentStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.IndentLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="indent-layout-indent" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237308012275" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="IndentLayoutNewLineStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.IndentLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="indent-layout-new-line" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237375020029" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="IndentLayoutNewLineChildrenStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.IndentLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="indent-layout-new-line-children" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237385578942" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="IndentLayoutOnNewLineStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.IndentLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="indent-layout-on-new-line" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConstrainedDataTypeDeclaration" typeId="tpce.1082978499127" id="1239805001815" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="_FloatOrInteger_String" />
    <property name="constraint" nameId="tpce.1083066089218" value="-?[0-9]+\\.?[0-9]*" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.Paddings" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239814640496" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellLayout_VerticalGrid" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="vertical grid" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1106270571710" resolveInfo="CellLayout_Vertical" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1240253180846" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="IndentLayoutNoWrapClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.IndentLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="indent-layout-no-wrap" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="625126330682908270" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_ReferencePresentation" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="ref. presentation" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7667276221847570194" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ParametersInformationStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="parameters-information" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8863456892852949148" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="parametersInformation" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7667276221847612622" resolveInfo="ParametersInformationQuery" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7667276221847612622" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="iconPath" nameId="tpce.1160488491229" value="${language_descriptor}/icons/parametersInformation.png" />
    <property name="name" nameId="tpck.1169194664001" value="ParametersInformationQuery" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Parameters Information Query" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4203201205843994215" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="applicableConcept" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1169125787135" resolveInfo="AbstractConceptDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8178273524755058633" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="type" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790189" resolveInfo="Type" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7667276221847612623" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="methods" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7667276221847612943" resolveInfo="QueryFunction_ParametersList" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="671290755174161557" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="presentation" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="671290755174094686" resolveInfo="QueryFunction_MethodPresentation" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6419604448124516218" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="isMethodCurrent" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6419604448124516209" resolveInfo="QueryFunction_IsMethodCurrent" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1336839120510622371" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="methodDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp4f.1205769003971" resolveInfo="DefaultClassifierMethodDeclaration" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4755152624708547702" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1336839120510359488" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tp4f.1205751982837" resolveInfo="IClassifier" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7667276221847612943" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_ParametersList" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="671290755174094686" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_MethodPresentation" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="671290755174094691" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptFunctionParameter_parameterObject" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="parameterObject" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741719857" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6419604448124516209" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_IsMethodCurrent" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4526149749187797167" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptFunctionParameter_StyledText" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="styledText" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="conceptLink" roleId="tpce.1105736949336" type="tpce.AggregationConceptLink" typeId="tpce.1105736889287" id="4526149749187937572" nodeInfo="ig">
      <link role="conceptLinkDeclaration" roleId="tpce.1105736734721" targetNodeId="tpee.1137545963098" resolveInfo="conceptFunctionParameterType" />
      <node role="target" roleId="tpce.1105736901241" type="tpc2.StyledTextType" typeId="3903367331818357915" id="1511134095826078599" nodeInfo="in" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741641670" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="280151408461567367" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="AppendTextOperation" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="append" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="4531786690998636238" resolveInfo="AbstractStyledTextOperation" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="280151408461909164" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="SetBoldOperation" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="setBold" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="4531786690998636238" resolveInfo="AbstractStyledTextOperation" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4531786690998636238" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="AbstractStyledTextOperation" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="conceptLinkDeclaration" roleId="tpce.1137532086877" type="tpce.AggregationConceptLinkDeclaration" typeId="tpce.1105741535888" id="4531786690998812992" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="operationArgumentType" />
      <link role="targetType" roleId="tpce.1105736621938" targetNodeId="tpee.1068431790189" resolveInfo="Type" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="7750832940155868846" nodeInfo="ig" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4531786690998636239" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1197027803184" resolveInfo="IOperation" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4531786690998636240" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="actualArgument" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741703014" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3903367331818357915" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="StyledTextType" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="styled text" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790189" resolveInfo="Type" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7620205565664569937" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="DefaultBaseLine" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="default-baseline" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7620205565664606477" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="baseline" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="7620205565664606377" resolveInfo="DefaultBaseLineEnum" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="7620205565664606377" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="DefaultBaseLineEnum" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="7620205565664606378" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="FIRST" />
      <property name="externalValue" nameId="tpce.1083923523172" value="first cell baseline" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="7620205565664606380" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="CENTER" />
      <property name="externalValue" nameId="tpce.1083923523172" value="collection center" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="7620205565664606448" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="LAST" />
      <property name="externalValue" nameId="tpce.1083923523172" value="last cell baseline" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1886960078078641793" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellLayout_Superscript" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="superscript" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1106270491082" resolveInfo="CellLayout" />
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="8255250703325730686" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="ScriptSwitchEnum" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="8255250703325730687" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="NORMAL" />
      <property name="externalValue" nameId="tpce.1083923523172" value="plain text" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="8255250703325731012" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="SUPERSCRIPT" />
      <property name="externalValue" nameId="tpce.1083923523172" value="superscript" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="8255250703325731013" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="SUBSCRIPT" />
      <property name="externalValue" nameId="tpce.1083923523172" value="subscript" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8255250703325731016" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ScriptKindClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="script-kind" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="8255250703325731018" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="script" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="8255250703325730686" resolveInfo="ScriptSwitchEnum" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4203201205844553978" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="selected node" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptFunctionParameter_selectedNode" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="node" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741646912" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5949640294884234625" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellLayout_Table" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="table" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1106270491082" resolveInfo="CellLayout" />
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="6820251943131810951" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="TableComponentEnum" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="6820251943131810953" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="HORIZONTAL_COLLECTION" />
      <property name="externalValue" nameId="tpce.1083923523172" value="horizontal collection" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="6820251943131810954" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="VERTICAL_COLLECTION" />
      <property name="externalValue" nameId="tpce.1083923523172" value="vertical collection" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6820251943131810950" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="TableComponentStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="table-component" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="6820251943131810955" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="tableComponent" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="6820251943131810951" resolveInfo="TableComponentEnum" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8313721352726366579" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_Empty" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="empty" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1073389214265" resolveInfo="EditorCellModel" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7597241200646296617" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="NavigatableNodeStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="navigatable-node" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7597241200646296618" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="functionNode" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7597241200646296619" resolveInfo="QueryFunction_SNode" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7597241200646296619" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_SNode" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Style" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="snode function" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1221059528506" resolveInfo="QueryFunction_StyleParameter" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3696012239575138270" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="URL property" />
    <property name="name" nameId="tpck.1169194664001" value="CellModel_URL" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="URL" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1139848536355" resolveInfo="CellModel_WithRole" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3696012239575138271" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="propertyDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="specializedLink" roleId="tpce.1071599698500" targetNodeId="1140103550593" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1071489288299" resolveInfo="PropertyDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3608226089191997415" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="RightTransformAnchorTagWrapper" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3608226089191997418" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="tag" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1140813780565" resolveInfo="RightTransformAnchorTag" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="709996738298806197" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="embedded block of code" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_SeparatorText" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="separator text" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7651593722933768974" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="MaxWidthStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.Layout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="max-width" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7651593722933768976" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="query" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1221057094638" resolveInfo="QueryFunction_Integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7651593722933768975" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7667708318090877006" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="IndentLayoutWrapAnchorStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.IndentLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="indent-layout-wrap-anchor" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7667708318090725848" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="IndentLayoutIndentAnchorStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.IndentLayout" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="indent-layout-indent-anchor" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1402906326895675325" nodeInfo="ig">
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="selected node (action map function parameter)" />
    <property name="name" nameId="tpck.1169194664001" value="CellActionMap_FunctionParm_selectedNode" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="node" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1402906326896143883" nodeInfo="ig">
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="keymap function parameter" />
    <property name="name" nameId="tpck.1169194664001" value="CellKeyMap_FunctionParm_selectedNode" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="node" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1402906326896143909" nodeInfo="ig">
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="keymap function parameter" />
    <property name="name" nameId="tpck.1169194664001" value="CellKeyMap_FunctionParm_selectedNodes" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="MethodParameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="selectedNodes" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7991857262589831666" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="function parameter" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptFunctionParameter_prevNode" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Parameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="prevNode" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7991857262589831667" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7991857262589829730" nodeInfo="ig">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="function parameter" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptFunctionParameter_nextNode" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Parameters" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="nextNode" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7991857262589829731" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4151393920404716535" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PreDefinedStyleClassItem" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="pre-defined-style" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8730965736661186051" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="query" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1223387125302" resolveInfo="QueryFunction_Boolean" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4151393920404978387" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="key" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4151393920374910634" resolveInfo="StyleKey" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="9122903797335909684" nodeInfo="ig" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4151393920374910634" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="StyleKey" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1070475926800" resolveInfo="StringLiteral" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="9122903797325336958" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="9122903797320402872" resolveInfo="IStyle" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4151393920374910722" nodeInfo="ig">
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="StyleKeyPack" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4151393920375014512" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="styleKey" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4151393920374910634" resolveInfo="StyleKey" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4151393920375014510" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8233876857994246075" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CellMenuPart_ApplySideTransforms" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellMenu" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="apply side transforms" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="8233876857994286197" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="side" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpdg.1215604970641" resolveInfo="Side" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3525058663444303551" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_Style" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Style" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1221059528506" resolveInfo="QueryFunction_StyleParameter" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6822301196700715228" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ConceptEditorHintDeclarationReference" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="EditorContextHints" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5944657839026714445" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="hint" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="5944657839003601246" resolveInfo="ConceptEditorHintDeclaration" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5774959771349728933" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4242538589859161874" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="EditorContextHints" />
    <property name="name" nameId="tpck.1169194664001" value="ExplicitHintsSpecification" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4242538589859162459" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="hints" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6822301196700715228" resolveInfo="ConceptEditorHintDeclarationReference" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4653693564098546479" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4653693564097968040" resolveInfo="ContextHintsSpecification" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5944657839000868711" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="EditorContextHints" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptEditorContextHints" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5944657839000877563" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="hints" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="5944657839003601246" resolveInfo="ConceptEditorHintDeclaration" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5944657839036545854" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5774959771349753394" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5944657839003601246" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="EditorContextHints" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptEditorHintDeclaration" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5944657839012629576" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="presentation" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="168363875802087287" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="showInUI" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5944657839003606229" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5774959771349753400" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6150987479542522273" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="EditorContextHints" />
    <property name="name" nameId="tpck.1169194664001" value="QueryHintsSpecification" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="query" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4653693564098547079" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4653693564097968040" resolveInfo="ContextHintsSpecification" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="4653693564097968040" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="EditorContextHints" />
    <property name="name" nameId="tpck.1169194664001" value="ContextHintsSpecification" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4653693564098486956" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4820515453818318288" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="EditorContextHints" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptEditorHintDeclarationReferenceExpression" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="concept editor hint/&lt;name&gt;/" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4820515453818318891" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="hint" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="5944657839003601246" resolveInfo="ConceptEditorHintDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7033942394256351208" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="EditorComponentDeclarationReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7033942394256351817" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <property name="role" nameId="tpce.1071599776563" value="editorComponent" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1078938745671" resolveInfo="EditorComponentDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3647146066980922272" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="SNode.select" />
    <property name="name" nameId="tpck.1169194664001" value="SelectInEditorOperation" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="select" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="select node in the editor" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tp25.1138411891628" resolveInfo="SNodeOperation" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1948540814633499358" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="editorContext" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1948540814635895774" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="cellSelector" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1948540814635886374" resolveInfo="AbstractCellSelector" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3604384757217586546" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="selectionStart" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2701921320705252232" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="selectionEnd" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4510086454767561658" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.3734116213129792499" resolveInfo="ScopeProvider" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1948540814635886374" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="SNode.select" />
    <property name="name" nameId="tpck.1169194664001" value="AbstractCellSelector" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2162403111526915125" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3547227755871693971" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="SNode.select" />
    <property name="name" nameId="tpck.1169194664001" value="PredefinedSelector" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1948540814635886374" resolveInfo="AbstractCellSelector" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="2162403111523065396" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="cellId" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="2162403111523060375" resolveInfo="PredefinedCellID" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2162403111523059536" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="SNode.select" />
    <property name="name" nameId="tpck.1169194664001" value="IdSelector" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1948540814635886374" resolveInfo="AbstractCellSelector" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="2162403111529391190" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="cellId" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="2162403111523060375" nodeInfo="ng">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="SNode.select" />
    <property name="name" nameId="tpck.1169194664001" value="PredefinedCellID" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="2162403111523060376" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="FIRST" />
      <property name="internalValue" nameId="tpce.1083923523171" value="first" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="2162403111523062256" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="LAST" />
      <property name="internalValue" nameId="tpce.1083923523171" value="last" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="2162403111523062252" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="FIRST_EDITABLE" />
      <property name="internalValue" nameId="tpce.1083923523171" value="firstEditable" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="2162403111523062249" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="LAST_EDITABLE" />
      <property name="internalValue" nameId="tpce.1083923523171" value="lastEditable" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4510086454722552739" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="SNode.select" />
    <property name="name" nameId="tpck.1169194664001" value="PropertyDeclarationCellSelector" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1948540814635886374" resolveInfo="AbstractCellSelector" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4510086454740628767" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <property name="role" nameId="tpce.1071599776563" value="propertyDeclaration" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1071489288299" resolveInfo="PropertyDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4510086454726375946" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="SNode.select" />
    <property name="name" nameId="tpck.1169194664001" value="PropertyExpressionCellSelector" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1948540814635886374" resolveInfo="AbstractCellSelector" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4510086454769912032" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="propertyDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4323500428121233431" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="name" nameId="tpck.1169194664001" value="EditorCellId" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4323500428126727727" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4323500428153895294" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4323500428136740385" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="SNode.select" />
    <property name="name" nameId="tpck.1169194664001" value="CellIdReferenceSelector" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1948540814635886374" resolveInfo="AbstractCellSelector" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4323500428136742952" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <property name="role" nameId="tpce.1071599776563" value="id" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4323500428121233431" resolveInfo="EditorCellId" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3383245079137382180" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="name" nameId="tpck.1169194664001" value="StyleClass" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="style" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3383245079137422296" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="dominates" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="2491174914159318432" resolveInfo="DominatesRecord" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="3383245079137422281" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="3383245079136928391" resolveInfo="IStyleSheetMember" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="9122903797325741811" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="9122903797320402872" resolveInfo="IStyle" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5163058412366247618" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1219418625346" resolveInfo="IStyleContainer" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5163058412366247981" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1212170275853" resolveInfo="IValidIdentifier" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="795210086017940429" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="name" nameId="tpck.1169194664001" value="ReadOnlyStyleClassItem" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="read-only" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1950447826686048995" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="name" nameId="tpck.1169194664001" value="UnapplyStyle" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="unapply" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1950447826686049051" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="target" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="9122903797312246523" resolveInfo="StyleReference" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="3383245079136928391" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="name" nameId="tpck.1169194664001" value="IStyleSheetMember" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1666929921461326726" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="9122903797320402872" resolveInfo="IStyle" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2984340427841566890" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1219418625346" resolveInfo="IStyleContainer" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="9122903797325337611" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1212170275853" resolveInfo="IValidIdentifier" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="9122903797336079902" nodeInfo="ig" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3383245079137422349" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="name" nameId="tpck.1169194664001" value="StyleClassReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3383245079137422350" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="styleClass" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="3383245079137382180" resolveInfo="StyleClass" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1950447826681509042" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="name" nameId="tpck.1169194664001" value="ApplyStyleClass" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="apply" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1950447826683828796" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="target" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="9122903797312246523" resolveInfo="StyleReference" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="9122903797276194520" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="name" nameId="tpck.1169194664001" value="StyleClassReferenceList" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="9122903797276195161" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="element" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="3383245079137422349" resolveInfo="StyleClassReference" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2491174914162137966" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="9122903797312246523" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="name" nameId="tpck.1169194664001" value="StyleReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="9122903797312247166" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="style" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="9122903797320402872" resolveInfo="IStyle" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="9122903797320402872" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="name" nameId="tpck.1169194664001" value="IStyle" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="9122903797336200704" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="name" nameId="tpck.1169194664001" value="ApplyStyleClassCondition" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="apply-if" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1950447826681509042" resolveInfo="ApplyStyleClass" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="9122903797336200706" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="query" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1223387125302" resolveInfo="QueryFunction_Boolean" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2491174914159318432" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet" />
    <property name="name" nameId="tpck.1169194664001" value="DominatesRecord" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="dominates over" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2491174914159330058" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="dominatesStyleClassList" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="9122903797276194520" resolveInfo="StyleClassReferenceList" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="1381004262292414836" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="CellModel" />
    <property name="name" nameId="tpck.1169194664001" value="ICellStyle" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1381004262292426837" nodeInfo="ig">
      <property name="role" nameId="tpce.1071599776563" value="parentStyleClass" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="3383245079136928391" resolveInfo="IStyleSheetMember" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1381004262292421018" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1219418625346" resolveInfo="IStyleContainer" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7656031417253359014" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.IndentLayout" />
    <property name="name" nameId="tpck.1169194664001" value="IndentLayoutWrapIndentFactorStyleClassItem" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="indent-layout-wrap-indent-factor" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186402475462" resolveInfo="StyleClassItem" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7656031417253368132" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="query" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1221057094638" resolveInfo="QueryFunction_Integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7656031417253359015" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1239805001815" resolveInfo="_FloatOrInteger_String" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7656031417253402694" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="QueryFunction.Style" />
    <property name="name" nameId="tpck.1169194664001" value="QueryFunction_Float" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="float function" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1221059528506" resolveInfo="QueryFunction_StyleParameter" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6855370243087411727" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="Stylesheet.IndentLayout" />
    <property name="name" nameId="tpck.1169194664001" value="IndentLayoutFillLinesStyleClassItem" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="indent-layout-fill-lines" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1186414536763" resolveInfo="BooleanStyleSheetItem" />
  </root>
</model>

