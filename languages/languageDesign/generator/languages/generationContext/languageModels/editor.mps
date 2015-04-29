<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c895902f0(jetbrains.mps.lang.generator.generationContext.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpf3" ref="r:00000000-0000-4000-0000-011c895902f3(jetbrains.mps.lang.generator.generationContext.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpfj" ref="r:00000000-0000-4000-0000-011c895902e3(jetbrains.mps.lang.generator.editor)" />
    <import index="tpf8" ref="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1164914519156" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" flags="ng" index="UkePV">
        <reference id="1164914727930" name="replacementConcept" index="Ul1FP" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1073389446425" name="vertical" index="3EZMnw" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="hHix4Ey">
    <ref role="1XX52x" to="tpf3:hHiwH3r" resolve="GenerationContextOp_GetOutputByLabelAndInput" />
    <node concept="3EZMnI" id="hHix4Ez" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hHix4E$" role="3EZMnx">
        <property role="3F0ifm" value="get output" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      </node>
      <node concept="1iCGBv" id="hHix4E_" role="3EZMnx">
        <property role="1$x2rV" value="&lt;choose mapping label&gt;" />
        <ref role="1NtTu8" to="tpf3:hHiwH3s" />
        <ref role="1k5W1q" to="tpfj:hHcji$G" resolve="mappingLabelReference" />
        <node concept="1sVBvm" id="hHix4EA" role="1sWHZn">
          <node concept="3F0A7n" id="hHix4EB" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hHix4EC" role="3EZMnx">
        <property role="3F0ifm" value="for" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
        <node concept="VPM3Z" id="hIqvBvO" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="hPfyImp" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F1sOY" id="hHix4ED" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no input node&gt;" />
        <ref role="1NtTu8" to="tpf3:hHiwH3w" />
      </node>
      <node concept="3F0ifn" id="hPfyLX9" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="i0NoI0W" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hHix4EE">
    <ref role="1XX52x" to="tpf3:hHiwH3m" resolve="GenerationContextOp_GetOutputByLabel" />
    <node concept="3EZMnI" id="hHix4EF" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hHix4EG" role="3EZMnx">
        <property role="3F0ifm" value="get output" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      </node>
      <node concept="1iCGBv" id="hHixuZ6" role="3EZMnx">
        <property role="1$x2rV" value="&lt;choose mapping label&gt;" />
        <ref role="1NtTu8" to="tpf3:hHiwH3n" />
        <ref role="1k5W1q" to="tpfj:hHcji$G" resolve="mappingLabelReference" />
        <node concept="1sVBvm" id="hHixuZ7" role="1sWHZn">
          <node concept="3F0A7n" id="hHixxC$" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="i0Np5z9" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hHr8Uty">
    <ref role="1XX52x" to="tpf3:hHiwH3j" resolve="GenerationContextOp_Base" />
    <node concept="PMmxH" id="2wdLO7KhYdo" role="2wV5jI">
      <property role="1cu_pB" value="0" />
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      <node concept="3$7jql" id="2wdLO7KhYdp" role="3F10Kt">
        <property role="3$6WeP" value="0.0" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hIfryy2">
    <ref role="1XX52x" to="tpf3:hIfr3z2" resolve="GenerationContextOp_GetPrevInputByLabel" />
    <node concept="3EZMnI" id="hIfr$5V" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hIfr$5W" role="3EZMnx">
        <property role="3F0ifm" value="get prev input" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      </node>
      <node concept="1iCGBv" id="hIfr$5X" role="3EZMnx">
        <property role="1$x2rV" value="&lt;choose mapping label&gt;" />
        <ref role="1k5W1q" to="tpfj:hHcji$G" resolve="mappingLabelReference" />
        <ref role="1NtTu8" to="tpf3:hIfr3z3" />
        <node concept="1sVBvm" id="hIfr$5Y" role="1sWHZn">
          <node concept="3F0A7n" id="hIfr$5Z" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="i0Np7Ww" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hIfA2Ov">
    <ref role="1XX52x" to="tpf3:hIf_y3d" resolve="GenerationContextOp_GetCopiedOutputByInput" />
    <node concept="3EZMnI" id="hIfA3hk" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hIfA3hl" role="3EZMnx">
        <property role="3F0ifm" value="get copied output for" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      </node>
      <node concept="3F0ifn" id="hPfysra" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F1sOY" id="hIfA3hq" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no input node&gt;" />
        <ref role="1NtTu8" to="tpf3:hIf_y3j" />
      </node>
      <node concept="3F0ifn" id="hPfyi$x" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="i0Np2wK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hIfTT9Z">
    <ref role="1XX52x" to="tpf3:hIfTwd8" resolve="GenerationContextOp_UserObjectAccessBase" />
    <node concept="3EZMnI" id="hIfTU2b" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhYbO" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
        <node concept="OXEIz" id="2wdLO7KhYbP" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhYbQ" role="OY2wv">
            <ref role="Ul1FP" to="tpf3:hIfTwd8" resolve="GenerationContextOp_UserObjectAccessBase" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hIfWdTl" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
        <node concept="VPM3Z" id="hIqvHkp" role="3F10Kt" />
      </node>
      <node concept="3F1sOY" id="hIfWrDL" role="3EZMnx">
        <ref role="1NtTu8" to="tpf3:hIfWi7C" />
      </node>
      <node concept="3F0ifn" id="hIfWgy3" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      </node>
      <node concept="l2Vlx" id="i0Npa8E" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hIk6m4X">
    <ref role="1XX52x" to="tpf3:hIk5Spb" resolve="GenerationContextOp_ShowMessageBase" />
    <node concept="3EZMnI" id="hIk6na5" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhYd3" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
        <node concept="OXEIz" id="2wdLO7KhYd4" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhYd5" role="OY2wv">
            <ref role="Ul1FP" to="tpf3:hIk5Spb" resolve="GenerationContextOp_ShowMessageBase" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="hIk6uiJ" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no text&gt;" />
        <ref role="1NtTu8" to="tpf3:hIk5Spg" />
      </node>
      <node concept="3F0ifn" id="hIk6BuE" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
        <node concept="VPM3Z" id="hIqvkmr" role="3F10Kt" />
      </node>
      <node concept="3F1sOY" id="hIpmpMx" role="3EZMnx">
        <property role="1$x2rV" value="&lt;node&gt;" />
        <ref role="1NtTu8" to="tpf3:hIk6f7o" />
      </node>
      <node concept="l2Vlx" id="i0Np8L0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hIpkcfJ">
    <ref role="1XX52x" to="tpf3:hIpiZCf" resolve="GenerationContextOp_CreateUniqueName" />
    <node concept="3EZMnI" id="hIpkdir" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hIpkeNR" role="3EZMnx">
        <property role="3F0ifm" value="unique name from" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      </node>
      <node concept="3F0ifn" id="hT7KT6t" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F1sOY" id="hIpkPwh" role="3EZMnx">
        <property role="1$x2rV" value="no base name" />
        <ref role="1NtTu8" to="tpf3:hIpiZCg" />
      </node>
      <node concept="3F0ifn" id="hT7LNb3" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="hIprjHh" role="3EZMnx">
        <property role="3F0ifm" value="in context" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      </node>
      <node concept="3F0ifn" id="hT7KUy1" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F1sOY" id="hIprnvf" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no node&gt;" />
        <ref role="1NtTu8" to="tpf3:hIpr8Ix" />
      </node>
      <node concept="3F0ifn" id="hT7LPu2" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="i0NoL_e" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="hIqubGI">
    <property role="TrG5h" value="Styles" />
    <node concept="14StLt" id="hIqudHa" role="V601i">
      <property role="TrG5h" value="genContext_operation" />
      <node concept="VPxyj" id="hIqupcM" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="Vb9p2" id="hIquxOB" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
      <node concept="VechU" id="hQGAzUl" role="3F10Kt">
        <property role="Vb096" value="darkGray" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hLiAUqJ">
    <ref role="1XX52x" to="tpf3:hLiAAM3" resolve="GenerationContextOp_GetOutputListByLabelAndInput" />
    <node concept="3EZMnI" id="hLiAW7D" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hLiAW7E" role="3EZMnx">
        <property role="3F0ifm" value="get output list" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      </node>
      <node concept="1iCGBv" id="hLiCyKG" role="3EZMnx">
        <property role="1$x2rV" value="&lt;choose mapping label&gt;" />
        <ref role="1NtTu8" to="tpf3:hLiAAM5" />
        <ref role="1k5W1q" to="tpfj:hHcji$G" resolve="mappingLabelReference" />
        <node concept="1sVBvm" id="hLiCyKH" role="1sWHZn">
          <node concept="3F0A7n" id="hLiC$IH" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hLiAW7I" role="3EZMnx">
        <property role="3F0ifm" value="for" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
        <node concept="VPM3Z" id="hLiAW7J" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="hPfz9GG" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F1sOY" id="hLiCPPI" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no input node&gt;" />
        <ref role="1NtTu8" to="tpf3:hLiAAM8" />
      </node>
      <node concept="3F0ifn" id="hPfziq_" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="i0Np6xq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hLmmINi">
    <ref role="1XX52x" to="tpf3:hLmkIjl" resolve="GenerationContextOp_GetOutputByLabelAndInputAndReferenceScope" />
    <node concept="3EZMnI" id="hLmmKM5" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hLmmKM6" role="3EZMnx">
        <property role="3F0ifm" value="pick output" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      </node>
      <node concept="1iCGBv" id="hLmmKM7" role="3EZMnx">
        <property role="1$x2rV" value="&lt;choose mapping label&gt;" />
        <ref role="1k5W1q" to="tpfj:hHcji$G" resolve="mappingLabelReference" />
        <ref role="1NtTu8" to="tpf3:hLmmeDJ" />
        <node concept="1sVBvm" id="hLmmKM8" role="1sWHZn">
          <node concept="3F0A7n" id="hLmmKM9" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hLmmKMa" role="3EZMnx">
        <property role="3F0ifm" value="for" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
        <node concept="VPM3Z" id="hLmmKMb" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="hQGAfNc" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F1sOY" id="hLmmKMc" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no input node&gt;" />
        <ref role="1NtTu8" to="tpf3:hLmmcvx" />
      </node>
      <node concept="3F0ifn" id="hLmmMcf" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="i0Np4jy" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hT2_bcl">
    <ref role="1XX52x" to="tpf3:hT2$i9n" resolve="GenerationContextOp_GetOriginalCopiedInputByOutput" />
    <node concept="3EZMnI" id="hT2_fzT" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hT2_fzU" role="3EZMnx">
        <property role="3F0ifm" value="get original copied input for" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      </node>
      <node concept="3F0ifn" id="hT2_fzV" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F1sOY" id="hT2_fzW" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no input node&gt;" />
        <ref role="1NtTu8" to="tpf3:hT2$ycJ" />
      </node>
      <node concept="3F0ifn" id="hT2_fzX" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="i0Np3mf" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3YMQ4vlnXNm">
    <ref role="1XX52x" to="tpf3:3YMQ4vlnW8u" resolve="GenerationContextOp_NodePatternRef" />
    <node concept="1iCGBv" id="3YMQ4vlnXNo" role="2wV5jI">
      <ref role="1NtTu8" to="tpf3:3YMQ4vlnXNl" />
      <node concept="1sVBvm" id="3YMQ4vlnXNp" role="1sWHZn">
        <node concept="3F0A7n" id="3YMQ4vlnXNq" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="Vb9p2" id="3YMQ4vlnXNr" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
          <node concept="VechU" id="3YMQ4vlnXNs" role="3F10Kt">
            <property role="Vb096" value="DARK_GREEN" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4w6U_Q4Qdkb">
    <ref role="1XX52x" to="tpf3:4w6U_Q4Qaba" resolve="GenerationContextOp_ParameterRef" />
    <node concept="1iCGBv" id="4w6U_Q4Qdkd" role="2wV5jI">
      <ref role="1NtTu8" to="tpf3:4w6U_Q4Qdka" />
      <node concept="1sVBvm" id="4w6U_Q4Qdke" role="1sWHZn">
        <node concept="3F0A7n" id="4w6U_Q4Qdkg" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="Vb9p2" id="4w6U_Q4Qdkh" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
          <node concept="VechU" id="4w6U_Q4Qdki" role="3F10Kt">
            <property role="Vb096" value="DARK_GREEN" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1xCtdgeQstt">
    <ref role="1XX52x" to="tpf3:1xCtdgeQstn" resolve="GenerationContextOp_LinkPatternRef" />
    <node concept="1iCGBv" id="1xCtdgeQstv" role="2wV5jI">
      <ref role="1NtTu8" to="tpf3:1xCtdgeQstr" />
      <node concept="1sVBvm" id="1xCtdgeQstw" role="1sWHZn">
        <node concept="3F0A7n" id="1xCtdgeQstx" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="Vb9p2" id="1xCtdgeQsty" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
          <node concept="VechU" id="1xCtdgeQstz" role="3F10Kt">
            <property role="Vb096" value="DARK_GREEN" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1xCtdgeQst$">
    <ref role="1XX52x" to="tpf3:1xCtdgeQsto" resolve="GenerationContextOp_PropertyPatternRef" />
    <node concept="1iCGBv" id="1xCtdgeQstA" role="2wV5jI">
      <ref role="1NtTu8" to="tpf3:1xCtdgeQsts" />
      <node concept="1sVBvm" id="1xCtdgeQstB" role="1sWHZn">
        <node concept="3F0A7n" id="1xCtdgeQstC" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="Vb9p2" id="1xCtdgeQstD" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
          <node concept="VechU" id="1xCtdgeQstE" role="3F10Kt">
            <property role="Vb096" value="DARK_GREEN" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4FXH7d67CLX">
    <ref role="1XX52x" to="tpf3:4FXH7d67CLT" resolve="GenerationContextOp_DirtyNode" />
    <node concept="3EZMnI" id="4FXH7d67CLY" role="2wV5jI">
      <node concept="l2Vlx" id="4FXH7d67CLZ" role="2iSdaV" />
      <node concept="3F0ifn" id="4FXH7d67CM0" role="3EZMnx">
        <property role="3F0ifm" value="is dirty" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="4FXH7d67CM2" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F1sOY" id="4FXH7d67CM9" role="3EZMnx">
        <ref role="1NtTu8" to="tpf3:4FXH7d67CLU" />
      </node>
      <node concept="3F0ifn" id="4FXH7d67CM4" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2bdIC8aACSh">
    <ref role="1XX52x" to="tpf3:2bdIC8aAwm3" resolve="GenerationContextOp_GenParameterRef" />
    <node concept="3EZMnI" id="2bdIC8aACSj" role="2wV5jI">
      <node concept="1iCGBv" id="2bdIC8aACSm" role="3EZMnx">
        <ref role="1NtTu8" to="tpf3:2bdIC8aAwm4" />
        <node concept="Vb9p2" id="4sWLrFSC5RH" role="3F10Kt">
          <property role="Vbekb" value="ITALIC" />
        </node>
        <node concept="VechU" id="4sWLrFSC5RI" role="3F10Kt">
          <property role="Vb096" value="blue" />
        </node>
        <node concept="1sVBvm" id="2bdIC8aACSn" role="1sWHZn">
          <node concept="1HlG4h" id="2bdIC8aACSp" role="2wV5jI">
            <node concept="1HfYo3" id="2bdIC8aACSq" role="1HlULh">
              <node concept="3TQlhw" id="2bdIC8aACSr" role="1Hhtcw">
                <node concept="3clFbS" id="2bdIC8aACSs" role="2VODD2">
                  <node concept="3clFbF" id="2bdIC8aAEKE" role="3cqZAp">
                    <node concept="3K4zz7" id="2bdIC8aAEKR" role="3clFbG">
                      <node concept="2OqwBi" id="2bdIC8aAEL1" role="3K4E3e">
                        <node concept="2OqwBi" id="2bdIC8aAEKW" role="2Oq$k0">
                          <node concept="pncrf" id="2bdIC8aAEKV" role="2Oq$k0" />
                          <node concept="3TrEf2" id="2bdIC8aAEL0" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpf8:$79JWCfbYc" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="2bdIC8aAEL5" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2bdIC8aAEL6" role="3K4GZi">
                        <property role="Xl_RC" value="&lt;unknown&gt;" />
                      </node>
                      <node concept="2OqwBi" id="2bdIC8aAEKM" role="3K4Cdx">
                        <node concept="2OqwBi" id="2bdIC8aAEKG" role="2Oq$k0">
                          <node concept="pncrf" id="2bdIC8aAEKF" role="2Oq$k0" />
                          <node concept="3TrEf2" id="2bdIC8aAEKK" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpf8:$79JWCfbYc" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="2bdIC8aAEKQ" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2bdIC8aACSl" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2n6lsTIwfRr">
    <ref role="1XX52x" to="tpf3:2n6lsTIwfRo" resolve="GenerationContextOp_VarRef" />
    <node concept="1iCGBv" id="2n6lsTIwfRt" role="2wV5jI">
      <ref role="1NtTu8" to="tpf3:2n6lsTIwfRq" />
      <node concept="1sVBvm" id="2n6lsTIwfRu" role="1sWHZn">
        <node concept="3F0A7n" id="2n6lsTIwfRw" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="Vb9p2" id="2n6lsTIwfRx" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
          <node concept="VechU" id="2n6lsTIwfRy" role="3F10Kt">
            <property role="Vb096" value="DARK_GREEN" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="rrptlDYVOD">
    <ref role="1XX52x" to="tpf3:rrptlDYMkB" resolve="GenerationContextOp_GetExport" />
    <node concept="3EZMnI" id="1yjqjC7KErF" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="1yjqjC7KErG" role="3EZMnx">
        <property role="3F0ifm" value="getExported" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      </node>
      <node concept="3F0ifn" id="rrptlDYWBd" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="1iCGBv" id="1yjqjC7KErH" role="3EZMnx">
        <property role="1$x2rV" value="&lt;choose mapping label&gt;" />
        <ref role="1k5W1q" to="tpfj:hHcji$G" resolve="mappingLabelReference" />
        <ref role="1NtTu8" to="tpf3:rrptlDYMkC" />
        <node concept="1sVBvm" id="1yjqjC7KErI" role="1sWHZn">
          <node concept="3F0A7n" id="1yjqjC7KErJ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1yjqjC7KErK" role="3EZMnx">
        <property role="3F0ifm" value="for" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
        <node concept="VPM3Z" id="1yjqjC7KErL" role="3F10Kt" />
      </node>
      <node concept="3F1sOY" id="1yjqjC7KErM" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no input node&gt;" />
        <ref role="1NtTu8" to="tpf3:1yjqjC7KDUR" />
      </node>
      <node concept="3F0ifn" id="1yjqjC7KErN" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="1yjqjC7KErO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6suuiWXJvYV">
    <ref role="1XX52x" to="tpf3:6suuiWXJvTY" resolve="GenerationContextOp_ContextVarRef" />
    <node concept="3F0A7n" id="6suuiWXJwq7" role="2wV5jI">
      <ref role="1NtTu8" to="tpf3:6suuiWXJvYy" resolve="contextVarName" />
      <node concept="Vb9p2" id="6suuiWXJExA" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
      <node concept="VechU" id="6suuiWXJExB" role="3F10Kt">
        <property role="Vb096" value="DARK_MAGENTA" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4RJ0ilaVRw8">
    <ref role="1XX52x" to="tpf3:4RJ0ilaVNjd" resolve="GenerationContextOp_RegisterLabel" />
    <node concept="3EZMnI" id="4RJ0ilaVRzm" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="4RJ0ilaVRzn" role="3EZMnx">
        <property role="3F0ifm" value="label" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
      </node>
      <node concept="3F1sOY" id="4RJ0ilaVSfA" role="3EZMnx">
        <ref role="1NtTu8" to="tpf3:4RJ0ilaVRHI" />
      </node>
      <node concept="3F0ifn" id="4RJ0ilaVSfO" role="3EZMnx">
        <property role="3F0ifm" value="to" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
        <node concept="VPM3Z" id="4RJ0ilaVSl3" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="4RJ0ilaVSg5" role="3EZMnx">
        <ref role="1NtTu8" to="tpf3:4RJ0ilaVRHS" />
      </node>
      <node concept="3F0ifn" id="4RJ0ilaVSgn" role="3EZMnx">
        <property role="3F0ifm" value="as" />
        <ref role="1k5W1q" node="hIqudHa" resolve="genContext_operation" />
        <node concept="VPM3Z" id="4RJ0ilaVSi$" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="1iCGBv" id="4RJ0ilaVRzo" role="3EZMnx">
        <property role="1$x2rV" value="&lt;choose mapping label&gt;" />
        <ref role="1k5W1q" to="tpfj:hHcji$G" resolve="mappingLabelReference" />
        <ref role="1NtTu8" to="tpf3:4RJ0ilaVRti" />
        <node concept="1sVBvm" id="4RJ0ilaVRzp" role="1sWHZn">
          <node concept="3F0A7n" id="4RJ0ilaVRzq" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="4RJ0ilaVRzr" role="2iSdaV" />
    </node>
  </node>
</model>

