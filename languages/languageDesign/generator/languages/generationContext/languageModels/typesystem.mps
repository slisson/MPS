<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c895902f1(jetbrains.mps.lang.generator.generationContext.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpf3" ref="r:00000000-0000-4000-0000-011c895902f3(jetbrains.mps.lang.generator.generationContext.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpf8" ref="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" />
    <import index="tp2g" ref="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" />
    <import index="q383" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.generator.template(MPS.Core/jetbrains.mps.generator.template@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="88zw" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="tpf6" ref="r:00000000-0000-4000-0000-011c895902ee(jetbrains.mps.lang.generator.generationContext.constraints)" />
    <import index="tpfh" ref="r:00000000-0000-4000-0000-011c895902e1(jetbrains.mps.lang.generator.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785117" name="jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation" flags="ng" index="2c44tb" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175147569072" name="jetbrains.mps.lang.typesystem.structure.AbstractSubtypingRule" flags="ig" index="2sgdUx">
        <property id="1175607673137" name="isWeak" index="2RFo0w" />
        <child id="1175147624276" name="body" index="2sgrp5" />
      </concept>
      <concept id="1175147670730" name="jetbrains.mps.lang.typesystem.structure.SubtypingRule" flags="ig" index="2sgARr" />
      <concept id="1175517400280" name="jetbrains.mps.lang.typesystem.structure.AssertStatement" flags="nn" index="2Mj0R9">
        <child id="1175517761460" name="condition" index="2MkoU_" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1212056081426" name="jetbrains.mps.lang.typesystem.structure.AbstractInequationStatement" flags="ng" index="Ob1k8">
        <property id="1212056105818" name="inequationPriority" index="Ob790" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <property id="1195213689297" name="overrides" index="18ip37" />
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <property id="1206359757216" name="checkOnly" index="3wDh2S" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="linkRole" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="18kY7G" id="hHi$4jg">
    <property role="TrG5h" value="check_GenerationContextOp_Base" />
    <node concept="3clFbS" id="hHi$4jh" role="18ibNy">
      <node concept="3SKdUt" id="6pumIWoCG2T" role="3cqZAp">
        <node concept="3SKdUq" id="6pumIWoCG2U" role="3SKWNk">
          <property role="3SKdUp" value=" only applicable to 'genctx'" />
        </node>
      </node>
      <node concept="3cpWs8" id="hOYX4i5" role="3cqZAp">
        <node concept="3cpWsn" id="hOYX4i6" role="3cpWs9">
          <property role="TrG5h" value="contextType" />
          <node concept="3Tqbb2" id="hOYX4i7" role="1tU5fm" />
          <node concept="2OqwBi" id="hOYXb6L" role="33vP2m">
            <node concept="2OqwBi" id="hOYXao2" role="2Oq$k0">
              <node concept="1PxgMI" id="hOYXao3" role="2Oq$k0">
                <ref role="1PxNhF" to="tpee:hqOqwz4" resolve="DotExpression" />
                <node concept="2OqwBi" id="hOYXao4" role="1PxMeX">
                  <node concept="1YBJjd" id="hOYXao5" role="2Oq$k0">
                    <ref role="1YBMHb" node="hHi$4jO" resolve="op" />
                  </node>
                  <node concept="1mfA1w" id="hOYXao6" role="2OqNvi" />
                </node>
              </node>
              <node concept="3TrEf2" id="hOYXao7" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hqOq$gm" />
              </node>
            </node>
            <node concept="3JvlWi" id="hOYXble" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2Mj0R9" id="hHi$4jl" role="3cqZAp">
        <node concept="2OqwBi" id="hHi$4jm" role="2MkoU_">
          <node concept="37vLTw" id="3GM_nagTsur" role="2Oq$k0">
            <ref role="3cqZAo" node="hOYX4i6" resolve="contextType" />
          </node>
          <node concept="1mIQ4w" id="hHi$4jo" role="2OqNvi">
            <node concept="chp4Y" id="hHi$fas" role="cj9EA">
              <ref role="cht4Q" to="tpf3:hHiwH3x" resolve="GenerationContextType" />
            </node>
          </node>
        </node>
        <node concept="1YBJjd" id="hHi$4jq" role="2OEOjV">
          <ref role="1YBMHb" node="hHi$4jO" resolve="op" />
        </node>
        <node concept="Xl_RD" id="hHi$4jr" role="2MkJ7o">
          <property role="Xl_RC" value="operation is not applicable" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hHi$4jO" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:hHiwH3j" resolve="GenerationContextOp_Base" />
    </node>
  </node>
  <node concept="2sgARr" id="hHi$4jP">
    <property role="2RFo0w" value="true" />
    <property role="TrG5h" value="supertypesOf_GenerationContextType" />
    <node concept="3clFbS" id="hHi$4jQ" role="2sgrp5">
      <node concept="3cpWs6" id="hHi$4jR" role="3cqZAp">
        <node concept="2c44tf" id="hHi$4jS" role="3cqZAk">
          <node concept="3uibUv" id="hHi$4jT" role="2c44tc">
            <ref role="3uigEE" to="q383:~TemplateQueryContext" resolve="TemplateQueryContext" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hHi$4jU" role="1YuTPh">
      <property role="TrG5h" value="generationContextType" />
      <ref role="1YaFvo" to="tpf3:hHiwH3x" resolve="GenerationContextType" />
    </node>
  </node>
  <node concept="1YbPZF" id="hHi$4jV">
    <property role="18ip37" value="true" />
    <property role="TrG5h" value="typeof_GenerationContextOp_GetOutputByLabel" />
    <node concept="3clFbS" id="hHi$4jW" role="18ibNy">
      <node concept="1Z5TYs" id="hHi$4jX" role="3cqZAp">
        <node concept="mw_s8" id="hHi$4jY" role="1ZfhKB">
          <node concept="2c44tf" id="hHi$4jZ" role="mwGJk">
            <node concept="3Tqbb2" id="hHi$4k0" role="2c44tc">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              <node concept="2c44tb" id="hHi$4k1" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="hHi$4k2" role="2c44t1">
                  <node concept="2OqwBi" id="hHi$4k3" role="2Oq$k0">
                    <node concept="1YBJjd" id="hHi$4k4" role="2Oq$k0">
                      <ref role="1YBMHb" node="hHi$4ka" resolve="op" />
                    </node>
                    <node concept="3TrEf2" id="hHi$uCd" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf3:hHiwH3n" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="hHi$4k6" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hurZzxA" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hHi$4k7" role="1ZfhK$">
          <node concept="1Z2H0r" id="hHi$4k8" role="mwGJk">
            <node concept="1YBJjd" id="hHi$4k9" role="1Z2MuG">
              <ref role="1YBMHb" node="hHi$4ka" resolve="op" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hHi$4ka" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:hHiwH3m" resolve="GenerationContextOp_GetOutputByLabel" />
    </node>
  </node>
  <node concept="1YbPZF" id="hHi$4kb">
    <property role="18ip37" value="true" />
    <property role="TrG5h" value="typeof_GenerationContextOp_GetOutputByLabelAndInput" />
    <node concept="3clFbS" id="hHi$4kc" role="18ibNy">
      <node concept="1Z5TYs" id="hHi$4kd" role="3cqZAp">
        <node concept="mw_s8" id="hHi$4ke" role="1ZfhKB">
          <node concept="2c44tf" id="hHi$4kf" role="mwGJk">
            <node concept="3Tqbb2" id="hHi$4kg" role="2c44tc">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              <node concept="2c44tb" id="hHi$4kh" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="hHi$4ki" role="2c44t1">
                  <node concept="2OqwBi" id="hHi$4kj" role="2Oq$k0">
                    <node concept="1YBJjd" id="hHi$4kk" role="2Oq$k0">
                      <ref role="1YBMHb" node="hHi$4kD" resolve="op" />
                    </node>
                    <node concept="3TrEf2" id="hHi$Asu" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf3:hHiwH3s" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="hHi$4km" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hurZzxA" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hHi$4kn" role="1ZfhK$">
          <node concept="1Z2H0r" id="hHi$4ko" role="mwGJk">
            <node concept="1YBJjd" id="hHi$4kp" role="1Z2MuG">
              <ref role="1YBMHb" node="hHi$4kD" resolve="op" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZobV4" id="hHi$4kq" role="3cqZAp">
        <property role="Ob790" value="0" />
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="hHi$4kr" role="1ZfhK$">
          <node concept="1Z2H0r" id="hHi$4ks" role="mwGJk">
            <node concept="2OqwBi" id="hHi$4kt" role="1Z2MuG">
              <node concept="1YBJjd" id="hHi$4ku" role="2Oq$k0">
                <ref role="1YBMHb" node="hHi$4kD" resolve="op" />
              </node>
              <node concept="3TrEf2" id="hHi$Ba9" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:hHiwH3w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hHi$4kw" role="1ZfhKB">
          <node concept="2c44tf" id="hHi$4kx" role="mwGJk">
            <node concept="3Tqbb2" id="hHi$4ky" role="2c44tc">
              <node concept="2c44tb" id="hHi$4kz" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="hHi$4k$" role="2c44t1">
                  <node concept="2OqwBi" id="hHi$4k_" role="2Oq$k0">
                    <node concept="1YBJjd" id="hHi$4kA" role="2Oq$k0">
                      <ref role="1YBMHb" node="hHi$4kD" resolve="op" />
                    </node>
                    <node concept="3TrEf2" id="hHi$BQm" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf3:hHiwH3s" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="hHi$4kC" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hurTdLu" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hHi$4kD" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:hHiwH3r" resolve="GenerationContextOp_GetOutputByLabelAndInput" />
    </node>
  </node>
  <node concept="1YbPZF" id="hIfrNoi">
    <property role="TrG5h" value="typeof_GenerationContextOp_GetPrevInputByLabel" />
    <node concept="3clFbS" id="hIfrNoj" role="18ibNy">
      <node concept="1Z5TYs" id="hIfrPXo" role="3cqZAp">
        <node concept="mw_s8" id="hIfrPXp" role="1ZfhKB">
          <node concept="2c44tf" id="hIfrPXq" role="mwGJk">
            <node concept="3Tqbb2" id="hIfrPXr" role="2c44tc">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              <node concept="2c44tb" id="hIfrPXs" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="hIfrPXt" role="2c44t1">
                  <node concept="2OqwBi" id="hIfrPXu" role="2Oq$k0">
                    <node concept="1YBJjd" id="hIfrPXv" role="2Oq$k0">
                      <ref role="1YBMHb" node="hIfrNok" resolve="op" />
                    </node>
                    <node concept="3TrEf2" id="hIfrSEs" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf3:hIfr3z3" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="hIfrTTk" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hurTdLu" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hIfrPXy" role="1ZfhK$">
          <node concept="1Z2H0r" id="hIfrPXz" role="mwGJk">
            <node concept="1YBJjd" id="hIfrRRD" role="1Z2MuG">
              <ref role="1YBMHb" node="hIfrNok" resolve="op" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hIfrNok" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:hIfr3z2" resolve="GenerationContextOp_GetPrevInputByLabel" />
    </node>
  </node>
  <node concept="1YbPZF" id="hIfAndz">
    <property role="TrG5h" value="typeof_GenerationContextOp_GetCopiedOutputByInput" />
    <node concept="3clFbS" id="hIfAnd$" role="18ibNy">
      <node concept="3SKdUt" id="6pumIWoCFW7" role="3cqZAp">
        <node concept="3SKdUq" id="6pumIWoCFW8" role="3SKWNk">
          <property role="3SKdUp" value="type the same as input ?" />
        </node>
      </node>
      <node concept="1Z5TYs" id="hIfA$nJ" role="3cqZAp">
        <node concept="mw_s8" id="hIfAGh7" role="1ZfhKB">
          <node concept="1Z2H0r" id="hIfAGh8" role="mwGJk">
            <node concept="2OqwBi" id="hIfAH87" role="1Z2MuG">
              <node concept="1YBJjd" id="hIfAGKa" role="2Oq$k0">
                <ref role="1YBMHb" node="hIfAnd_" resolve="op" />
              </node>
              <node concept="3TrEf2" id="hIfAHwO" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:hIf_y3j" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hIfA$nM" role="1ZfhK$">
          <node concept="1Z2H0r" id="hIfAwE9" role="mwGJk">
            <node concept="1YBJjd" id="hIfAzqs" role="1Z2MuG">
              <ref role="1YBMHb" node="hIfAnd_" resolve="op" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hIfAnd_" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:hIf_y3d" resolve="GenerationContextOp_GetCopiedOutputByInput" />
    </node>
  </node>
  <node concept="1YbPZF" id="hLiDluE">
    <property role="TrG5h" value="typeof_GenerationContextOp_GetOutputListByLabelAndInput" />
    <node concept="3clFbS" id="hLiDluF" role="18ibNy">
      <node concept="1Z5TYs" id="hLiDt65" role="3cqZAp">
        <node concept="mw_s8" id="hLiDwJ3" role="1ZfhKB">
          <node concept="2c44tf" id="hLiDwJ4" role="mwGJk">
            <node concept="2I9FWS" id="hLiDzIw" role="2c44tc">
              <node concept="2c44tb" id="hLiDATS" role="lGtFl">
                <property role="2qtEX8" value="elementConcept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1145383075378/1145383142433" />
                <node concept="2OqwBi" id="hLiDC4W" role="2c44t1">
                  <node concept="2OqwBi" id="hLiDBxI" role="2Oq$k0">
                    <node concept="1YBJjd" id="hLiDBpq" role="2Oq$k0">
                      <ref role="1YBMHb" node="hLiDluG" resolve="op" />
                    </node>
                    <node concept="3TrEf2" id="hLiDC3H" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf3:hLiAAM5" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="hLiDLV6" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hurZzxA" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hLiDt68" role="1ZfhK$">
          <node concept="1Z2H0r" id="hLiDrrP" role="mwGJk">
            <node concept="1YBJjd" id="hLiDrKB" role="1Z2MuG">
              <ref role="1YBMHb" node="hLiDluG" resolve="op" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZobV4" id="hLiDP9a" role="3cqZAp">
        <property role="Ob790" value="0" />
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="hLiDP9b" role="1ZfhK$">
          <node concept="1Z2H0r" id="hLiDP9c" role="mwGJk">
            <node concept="2OqwBi" id="hLiDP9d" role="1Z2MuG">
              <node concept="1YBJjd" id="hLiDP9e" role="2Oq$k0">
                <ref role="1YBMHb" node="hLiDluG" resolve="op" />
              </node>
              <node concept="3TrEf2" id="hLiDP9f" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:hLiAAM8" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hLiDQ5_" role="1ZfhKB">
          <node concept="2c44tf" id="hLiDQ5A" role="mwGJk">
            <node concept="3Tqbb2" id="hLiDS7h" role="2c44tc">
              <node concept="2c44tb" id="hLiDVJd" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="hLiDWHl" role="2c44t1">
                  <node concept="2OqwBi" id="hLiDWn3" role="2Oq$k0">
                    <node concept="1YBJjd" id="hLiDWa6" role="2Oq$k0">
                      <ref role="1YBMHb" node="hLiDluG" resolve="op" />
                    </node>
                    <node concept="3TrEf2" id="hLiDWFQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf3:hLiAAM5" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="hLiDWWx" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hurTdLu" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hLiDluG" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:hLiAAM3" resolve="GenerationContextOp_GetOutputListByLabelAndInput" />
    </node>
  </node>
  <node concept="1YbPZF" id="hLmny9O">
    <property role="TrG5h" value="typeof_GenerationContextOp_GetOutputByLabelAndInputAndReferenceScope" />
    <node concept="3clFbS" id="hLmny9P" role="18ibNy">
      <node concept="1Z5TYs" id="hLmnyIg" role="3cqZAp">
        <node concept="mw_s8" id="hLmnyIh" role="1ZfhKB">
          <node concept="2c44tf" id="hLmnyIi" role="mwGJk">
            <node concept="3Tqbb2" id="hLmnyIj" role="2c44tc">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              <node concept="2c44tb" id="hLmnyIk" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="hLmnyIl" role="2c44t1">
                  <node concept="2OqwBi" id="hLmnyIm" role="2Oq$k0">
                    <node concept="1YBJjd" id="hLmnyIn" role="2Oq$k0">
                      <ref role="1YBMHb" node="hLmny9Q" resolve="op" />
                    </node>
                    <node concept="3TrEf2" id="hLmnLcu" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf3:hLmmeDJ" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="hLmnyIp" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hurZzxA" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hLmnyIq" role="1ZfhK$">
          <node concept="1Z2H0r" id="hLmnyIr" role="mwGJk">
            <node concept="1YBJjd" id="hLmn_Zu" role="1Z2MuG">
              <ref role="1YBMHb" node="hLmny9Q" resolve="op" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZobV4" id="hLmnyIt" role="3cqZAp">
        <property role="Ob790" value="0" />
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="hLmnyIu" role="1ZfhK$">
          <node concept="1Z2H0r" id="hLmnyIv" role="mwGJk">
            <node concept="2OqwBi" id="hLmnyIw" role="1Z2MuG">
              <node concept="1YBJjd" id="hLmnA0I" role="2Oq$k0">
                <ref role="1YBMHb" node="hLmny9Q" resolve="op" />
              </node>
              <node concept="3TrEf2" id="hLmnKnf" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:hLmmcvx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hLmnyIz" role="1ZfhKB">
          <node concept="2c44tf" id="hLmnyI$" role="mwGJk">
            <node concept="3Tqbb2" id="hLmnyI_" role="2c44tc">
              <node concept="2c44tb" id="hLmnyIA" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="hLmnyIB" role="2c44t1">
                  <node concept="2OqwBi" id="hLmnyIC" role="2Oq$k0">
                    <node concept="1YBJjd" id="hLmnyID" role="2Oq$k0">
                      <ref role="1YBMHb" node="hLmny9Q" resolve="op" />
                    </node>
                    <node concept="3TrEf2" id="hLmnLSm" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf3:hLmmeDJ" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="hLmnyIF" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hurTdLu" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hLmny9Q" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:hLmkIjl" resolve="GenerationContextOp_GetOutputByLabelAndInputAndReferenceScope" />
    </node>
  </node>
  <node concept="18kY7G" id="hLmpLtm">
    <property role="TrG5h" value="check_op_inside_refMacro" />
    <node concept="3clFbS" id="hLmpLtn" role="18ibNy">
      <node concept="2Mj0R9" id="hLmpTOL" role="3cqZAp">
        <node concept="2OqwBi" id="hLmpXdL" role="2MkoU_">
          <node concept="2OqwBi" id="hLmpUKE" role="2Oq$k0">
            <node concept="1YBJjd" id="hLmpUjL" role="2Oq$k0">
              <ref role="1YBMHb" node="hLmpN5Y" resolve="op" />
            </node>
            <node concept="2Xjw5R" id="hLmpVO_" role="2OqNvi">
              <node concept="1xMEDy" id="hLmpVOA" role="1xVPHs">
                <node concept="chp4Y" id="hLmpWKE" role="ri$Ld">
                  <ref role="cht4Q" to="tpf8:fPZhdom" resolve="ReferenceMacro" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3x8VRR" id="hLmpXHX" role="2OqNvi" />
        </node>
        <node concept="Xl_RD" id="hLmpY9T" role="2MkJ7o">
          <property role="Xl_RC" value="such an operation may be used only inside ref.macro" />
        </node>
        <node concept="1YBJjd" id="hLmquq1" role="2OEOjV">
          <ref role="1YBMHb" node="hLmpN5Y" resolve="op" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hLmpN5Y" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:hLmkIjl" resolve="GenerationContextOp_GetOutputByLabelAndInputAndReferenceScope" />
    </node>
  </node>
  <node concept="1YbPZF" id="hT2AuCi">
    <property role="TrG5h" value="typeof_GenerationContextOp_GetOriginalCopiedInputByOutput" />
    <node concept="3clFbS" id="hT2AuCj" role="18ibNy">
      <node concept="1Z5TYs" id="hT2ADo8" role="3cqZAp">
        <node concept="mw_s8" id="hT2ADoq" role="1ZfhK$">
          <node concept="1Z2H0r" id="hT2AzXB" role="mwGJk">
            <node concept="1YBJjd" id="hT2A$x3" role="1Z2MuG">
              <ref role="1YBMHb" node="hT2AuCk" resolve="op" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hT2B6P9" role="1ZfhKB">
          <node concept="2c44tf" id="hT2B6Pa" role="mwGJk">
            <node concept="3Tqbb2" id="hT2BazH" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hT2AuCk" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:hT2$i9n" resolve="GenerationContextOp_GetOriginalCopiedInputByOutput" />
    </node>
  </node>
  <node concept="1YbPZF" id="1D5gQ4cyHA9">
    <property role="TrG5h" value="typeof_GenerationContextOp_ShowMessageBase" />
    <node concept="3clFbS" id="1D5gQ4cyHAa" role="18ibNy">
      <node concept="3SKdUt" id="6pumIWoCFXX" role="3cqZAp">
        <node concept="3SKdUq" id="6pumIWoCFXY" role="3SKWNk">
          <property role="3SKdUp" value=" parameters: string, node" />
        </node>
      </node>
      <node concept="1Z5TYs" id="$lsh0EhD9c" role="3cqZAp">
        <node concept="mw_s8" id="$lsh0EhDby" role="1ZfhKB">
          <node concept="2c44tf" id="$lsh0EhDbu" role="mwGJk">
            <node concept="3cqZAl" id="$lsh0EhDc4" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="$lsh0EhD9f" role="1ZfhK$">
          <node concept="1Z2H0r" id="$lsh0EhCZM" role="mwGJk">
            <node concept="1YBJjd" id="$lsh0EhD0M" role="1Z2MuG">
              <ref role="1YBMHb" node="1D5gQ4cyHAb" resolve="op" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZobV4" id="1D5gQ4cyHAd" role="3cqZAp">
        <property role="Ob790" value="0" />
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="1D5gQ4cyHAe" role="1ZfhKB">
          <node concept="2c44tf" id="1D5gQ4cyHAf" role="mwGJk">
            <node concept="17QB3L" id="1D5gQ4cyHAg" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="1D5gQ4cyHAh" role="1ZfhK$">
          <node concept="1Z2H0r" id="1D5gQ4cyHAi" role="mwGJk">
            <node concept="2OqwBi" id="1D5gQ4cyHAj" role="1Z2MuG">
              <node concept="1YBJjd" id="1D5gQ4cyHAk" role="2Oq$k0">
                <ref role="1YBMHb" node="1D5gQ4cyHAb" resolve="op" />
              </node>
              <node concept="3TrEf2" id="1D5gQ4cyHAl" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:hIk5Spg" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZobV4" id="1D5gQ4cyHAm" role="3cqZAp">
        <property role="Ob790" value="0" />
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="1D5gQ4cyHAn" role="1ZfhKB">
          <node concept="2c44tf" id="1D5gQ4cyHAo" role="mwGJk">
            <node concept="3Tqbb2" id="1D5gQ4cyHAw" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="1D5gQ4cyHAq" role="1ZfhK$">
          <node concept="1Z2H0r" id="1D5gQ4cyHAr" role="mwGJk">
            <node concept="2OqwBi" id="1D5gQ4cyHAs" role="1Z2MuG">
              <node concept="1YBJjd" id="1D5gQ4cyHAt" role="2Oq$k0">
                <ref role="1YBMHb" node="1D5gQ4cyHAb" resolve="op" />
              </node>
              <node concept="3TrEf2" id="1D5gQ4cyHAv" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:hIk6f7o" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1D5gQ4cyHAb" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:hIk5Spb" resolve="GenerationContextOp_ShowMessageBase" />
    </node>
  </node>
  <node concept="1YbPZF" id="3YMQ4vloqSc">
    <property role="TrG5h" value="typeof_GenerationContextOp_PatternRef" />
    <node concept="3clFbS" id="3YMQ4vloqSd" role="18ibNy">
      <node concept="1Z5TYs" id="3YMQ4vloqSf" role="3cqZAp">
        <node concept="mw_s8" id="3YMQ4vloqSg" role="1ZfhKB">
          <node concept="1Z2H0r" id="3YMQ4vloqSh" role="mwGJk">
            <node concept="2OqwBi" id="3YMQ4vloqSi" role="1Z2MuG">
              <node concept="1YBJjd" id="3YMQ4vlorq5" role="2Oq$k0">
                <ref role="1YBMHb" node="3YMQ4vloqSe" resolve="generationContextOp_PatternRef" />
              </node>
              <node concept="3TrEf2" id="3YMQ4vlorq6" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:3YMQ4vlnXNl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="3YMQ4vloqSl" role="1ZfhK$">
          <node concept="1Z2H0r" id="3YMQ4vloqSm" role="mwGJk">
            <node concept="1YBJjd" id="3YMQ4vlorq4" role="1Z2MuG">
              <ref role="1YBMHb" node="3YMQ4vloqSe" resolve="generationContextOp_PatternRef" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3YMQ4vloqSe" role="1YuTPh">
      <property role="TrG5h" value="generationContextOp_PatternRef" />
      <ref role="1YaFvo" to="tpf3:3YMQ4vlnW8u" resolve="GenerationContextOp_NodePatternRef" />
    </node>
  </node>
  <node concept="1YbPZF" id="4w6U_Q4Q_q6">
    <property role="TrG5h" value="typeof_GenerationContextOp_ParameterRef" />
    <node concept="3clFbS" id="4w6U_Q4Q_q7" role="18ibNy">
      <node concept="1Z5TYs" id="4w6U_Q4Q_q9" role="3cqZAp">
        <node concept="mw_s8" id="4w6U_Q4Q_qf" role="1ZfhK$">
          <node concept="1Z2H0r" id="4w6U_Q4Q_qg" role="mwGJk">
            <node concept="1YBJjd" id="4w6U_Q4QA7T" role="1Z2MuG">
              <ref role="1YBMHb" node="4w6U_Q4Q_q8" resolve="generationContextOp_ParameterRef" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4w6U_Q4QA7W" role="1ZfhKB">
          <node concept="2OqwBi" id="4w6U_Q4QA83" role="mwGJk">
            <node concept="2OqwBi" id="4w6U_Q4QA7Y" role="2Oq$k0">
              <node concept="1YBJjd" id="4w6U_Q4QA7X" role="2Oq$k0">
                <ref role="1YBMHb" node="4w6U_Q4Q_q8" resolve="generationContextOp_ParameterRef" />
              </node>
              <node concept="3TrEf2" id="4w6U_Q4QA82" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:4w6U_Q4Qdka" />
              </node>
            </node>
            <node concept="3TrEf2" id="4w6U_Q4QA87" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf8:1$dcvTE2mFf" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4w6U_Q4Q_q8" role="1YuTPh">
      <property role="TrG5h" value="generationContextOp_ParameterRef" />
      <ref role="1YaFvo" to="tpf3:4w6U_Q4Qaba" resolve="GenerationContextOp_ParameterRef" />
    </node>
  </node>
  <node concept="1YbPZF" id="1xCtdgeQJgQ">
    <property role="TrG5h" value="typeof_GenerationContextOp_LinkPatternRef" />
    <node concept="3clFbS" id="1xCtdgeQJgR" role="18ibNy">
      <node concept="1Z5TYs" id="1xCtdgeQJgT" role="3cqZAp">
        <node concept="mw_s8" id="1xCtdgeQJgU" role="1ZfhKB">
          <node concept="1Z2H0r" id="1xCtdgeQJgV" role="mwGJk">
            <node concept="2OqwBi" id="1xCtdgeQJgW" role="1Z2MuG">
              <node concept="1YBJjd" id="1xCtdgeQJW8" role="2Oq$k0">
                <ref role="1YBMHb" node="1xCtdgeQJgS" resolve="generationContextOp_LinkPatternRef" />
              </node>
              <node concept="3TrEf2" id="1xCtdgeQP9s" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:1xCtdgeQstr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1xCtdgeQJgZ" role="1ZfhK$">
          <node concept="1Z2H0r" id="1xCtdgeQJh0" role="mwGJk">
            <node concept="1YBJjd" id="1xCtdgeQJW7" role="1Z2MuG">
              <ref role="1YBMHb" node="1xCtdgeQJgS" resolve="generationContextOp_LinkPatternRef" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1xCtdgeQJgS" role="1YuTPh">
      <property role="TrG5h" value="generationContextOp_LinkPatternRef" />
      <ref role="1YaFvo" to="tpf3:1xCtdgeQstn" resolve="GenerationContextOp_LinkPatternRef" />
    </node>
  </node>
  <node concept="1YbPZF" id="1xCtdgeQP9t">
    <property role="TrG5h" value="typeof_GenerationContextOp_PropertyPatternRef" />
    <node concept="3clFbS" id="1xCtdgeQP9u" role="18ibNy">
      <node concept="1Z5TYs" id="1xCtdgeQP9w" role="3cqZAp">
        <node concept="mw_s8" id="1xCtdgeQP9x" role="1ZfhKB">
          <node concept="1Z2H0r" id="1xCtdgeQP9y" role="mwGJk">
            <node concept="2OqwBi" id="1xCtdgeQP9z" role="1Z2MuG">
              <node concept="1YBJjd" id="1xCtdgeQP9E" role="2Oq$k0">
                <ref role="1YBMHb" node="1xCtdgeQP9v" resolve="generationContextOp_PropertyPatternRef" />
              </node>
              <node concept="3TrEf2" id="1xCtdgeQP9F" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:1xCtdgeQsts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1xCtdgeQP9A" role="1ZfhK$">
          <node concept="1Z2H0r" id="1xCtdgeQP9B" role="mwGJk">
            <node concept="1YBJjd" id="1xCtdgeQP9D" role="1Z2MuG">
              <ref role="1YBMHb" node="1xCtdgeQP9v" resolve="generationContextOp_PropertyPatternRef" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1xCtdgeQP9v" role="1YuTPh">
      <property role="TrG5h" value="generationContextOp_PropertyPatternRef" />
      <ref role="1YaFvo" to="tpf3:1xCtdgeQsto" resolve="GenerationContextOp_PropertyPatternRef" />
    </node>
  </node>
  <node concept="1YbPZF" id="4FXH7d67D4B">
    <property role="TrG5h" value="typeof_GenerationContextOp_DirtyNode" />
    <node concept="1YaCAy" id="4FXH7d67D4C" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:4FXH7d67CLT" resolve="GenerationContextOp_DirtyNode" />
    </node>
    <node concept="3clFbS" id="4FXH7d67D4D" role="18ibNy">
      <node concept="1Z5TYs" id="4FXH7d67D4K" role="3cqZAp">
        <node concept="mw_s8" id="4FXH7d67D4O" role="1ZfhKB">
          <node concept="2c44tf" id="4FXH7d67D4P" role="mwGJk">
            <node concept="10P_77" id="4FXH7d67D4R" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="4FXH7d67D4N" role="1ZfhK$">
          <node concept="1Z2H0r" id="4FXH7d67D4F" role="mwGJk">
            <node concept="1YBJjd" id="4FXH7d67D4H" role="1Z2MuG">
              <ref role="1YBMHb" node="4FXH7d67D4C" resolve="op" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZobV4" id="5ZxsyhuTXT4" role="3cqZAp">
        <property role="Ob790" value="0" />
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="5ZxsyhuTXT5" role="1ZfhK$">
          <node concept="1Z2H0r" id="5ZxsyhuTXT6" role="mwGJk">
            <node concept="2OqwBi" id="5ZxsyhuTXT7" role="1Z2MuG">
              <node concept="1YBJjd" id="5ZxsyhuTXT8" role="2Oq$k0">
                <ref role="1YBMHb" node="4FXH7d67D4C" resolve="op" />
              </node>
              <node concept="3TrEf2" id="5ZxsyhuTXT9" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:4FXH7d67CLU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="5ZxsyhuTXTa" role="1ZfhKB">
          <node concept="2c44tf" id="5ZxsyhuTXTb" role="mwGJk">
            <node concept="3Tqbb2" id="5ZxsyhuTXTc" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="2bdIC8aAwm5">
    <property role="TrG5h" value="typeof_GenerationContextOp_GenParameterRef" />
    <node concept="3clFbS" id="2bdIC8aAwm6" role="18ibNy">
      <node concept="3cpWs8" id="2bdIC8aACPV" role="3cqZAp">
        <node concept="3cpWsn" id="2bdIC8aACPW" role="3cpWs9">
          <property role="TrG5h" value="paramImport" />
          <node concept="3Tqbb2" id="2bdIC8aACPX" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:$79JWCfbYa" resolve="GeneratorParameterReference" />
          </node>
          <node concept="2OqwBi" id="2bdIC8aACPY" role="33vP2m">
            <node concept="1YBJjd" id="2bdIC8aACPZ" role="2Oq$k0">
              <ref role="1YBMHb" node="2bdIC8aAwm7" resolve="genParamRef" />
            </node>
            <node concept="3TrEf2" id="2bdIC8aACQ0" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf3:2bdIC8aAwm4" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="2bdIC8aACQ3" role="3cqZAp">
        <node concept="3clFbS" id="2bdIC8aACQ4" role="3clFbx">
          <node concept="3cpWs8" id="2bdIC8aACQr" role="3cqZAp">
            <node concept="3cpWsn" id="2bdIC8aACQs" role="3cpWs9">
              <property role="TrG5h" value="decl" />
              <node concept="3Tqbb2" id="2bdIC8aACQt" role="1tU5fm">
                <ref role="ehGHo" to="tpf8:$79JWCe2bk" resolve="IGeneratorParameter" />
              </node>
              <node concept="2OqwBi" id="2bdIC8aACQu" role="33vP2m">
                <node concept="37vLTw" id="3GM_nagT$xY" role="2Oq$k0">
                  <ref role="3cqZAo" node="2bdIC8aACPW" resolve="paramImport" />
                </node>
                <node concept="3TrEf2" id="2bdIC8aACQw" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:$79JWCfbYc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2bdIC8aACQy" role="3cqZAp">
            <node concept="3clFbS" id="2bdIC8aACQz" role="3clFbx">
              <node concept="1Z5TYs" id="2bdIC8aACQK" role="3cqZAp">
                <node concept="mw_s8" id="2bdIC8aACQN" role="1ZfhK$">
                  <node concept="1Z2H0r" id="2bdIC8aACQH" role="mwGJk">
                    <node concept="1YBJjd" id="2bdIC8aACQJ" role="1Z2MuG">
                      <ref role="1YBMHb" node="2bdIC8aAwm7" resolve="genParamRef" />
                    </node>
                  </node>
                </node>
                <node concept="mw_s8" id="3UMyGEUuf_b" role="1ZfhKB">
                  <node concept="2YIFZM" id="3UMyGEUuf_i" role="mwGJk">
                    <ref role="37wK5l" to="tp2g:hv18AMC" resolve="getTypeCoercedToClassifierType" />
                    <ref role="1Pybhc" to="tp2g:hv18zCR" resolve="ClassifierTypeUtil" />
                    <node concept="2OqwBi" id="3UMyGEUuf_p" role="37wK5m">
                      <node concept="2OqwBi" id="3UMyGEUuf_k" role="2Oq$k0">
                        <node concept="37vLTw" id="3GM_nagTsmH" role="2Oq$k0">
                          <ref role="3cqZAo" node="2bdIC8aACQs" resolve="decl" />
                        </node>
                        <node concept="3TrEf2" id="3UMyGEUuf_o" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpf8:$79JWCe2bl" />
                        </node>
                      </node>
                      <node concept="1$rogu" id="3UMyGEUuf_t" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2bdIC8aACQB" role="3clFbw">
              <node concept="37vLTw" id="3GM_nagTsSW" role="2Oq$k0">
                <ref role="3cqZAo" node="2bdIC8aACQs" resolve="decl" />
              </node>
              <node concept="3x8VRR" id="2bdIC8aACQF" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="2bdIC8aACQ8" role="3clFbw">
          <node concept="37vLTw" id="3GM_nagT$Iv" role="2Oq$k0">
            <ref role="3cqZAo" node="2bdIC8aACPW" resolve="paramImport" />
          </node>
          <node concept="3x8VRR" id="2bdIC8aACQc" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2bdIC8aAwm7" role="1YuTPh">
      <property role="TrG5h" value="genParamRef" />
      <ref role="1YaFvo" to="tpf3:2bdIC8aAwm3" resolve="GenerationContextOp_GenParameterRef" />
    </node>
  </node>
  <node concept="1YbPZF" id="2n6lsTIwnKI">
    <property role="TrG5h" value="typeof_GenerationContextOp_VarRef" />
    <node concept="3clFbS" id="2n6lsTIwnKJ" role="18ibNy">
      <node concept="1Z5TYs" id="2n6lsTIwnKP" role="3cqZAp">
        <node concept="mw_s8" id="2n6lsTIwnKT" role="1ZfhKB">
          <node concept="3K4zz7" id="2n6lsTIwoik" role="mwGJk">
            <node concept="2c44tf" id="2n6lsTIwoit" role="3K4GZi">
              <node concept="3uibUv" id="2n6lsTIwoiw" role="2c44tc">
                <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2OqwBi" id="2n6lsTIwnL5" role="3K4Cdx">
              <node concept="2OqwBi" id="2n6lsTIwnL0" role="2Oq$k0">
                <node concept="2OqwBi" id="2n6lsTIwnKV" role="2Oq$k0">
                  <node concept="1YBJjd" id="2n6lsTIwnKU" role="2Oq$k0">
                    <ref role="1YBMHb" node="2n6lsTIwnKK" resolve="varRef" />
                  </node>
                  <node concept="3TrEf2" id="2n6lsTIwnKZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf3:2n6lsTIwfRq" />
                  </node>
                </node>
                <node concept="3TrEf2" id="2n6lsTIwnL4" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:4mp7qFmD$jV" />
                </node>
              </node>
              <node concept="3x8VRR" id="2n6lsTIwoij" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="2n6lsTIwoio" role="3K4E3e">
              <node concept="2OqwBi" id="2n6lsTIwoip" role="2Oq$k0">
                <node concept="1YBJjd" id="2n6lsTIwoiq" role="2Oq$k0">
                  <ref role="1YBMHb" node="2n6lsTIwnKK" resolve="varRef" />
                </node>
                <node concept="3TrEf2" id="2n6lsTIwoir" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf3:2n6lsTIwfRq" />
                </node>
              </node>
              <node concept="3TrEf2" id="2n6lsTIwois" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:4mp7qFmD$jV" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="2n6lsTIwnKS" role="1ZfhK$">
          <node concept="1Z2H0r" id="2n6lsTIwnKM" role="mwGJk">
            <node concept="1YBJjd" id="2n6lsTIwnKO" role="1Z2MuG">
              <ref role="1YBMHb" node="2n6lsTIwnKK" resolve="varRef" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2n6lsTIwnKK" role="1YuTPh">
      <property role="TrG5h" value="varRef" />
      <ref role="1YaFvo" to="tpf3:2n6lsTIwfRo" resolve="GenerationContextOp_VarRef" />
    </node>
  </node>
  <node concept="1YbPZF" id="$lsh0EhB6o">
    <property role="TrG5h" value="typeof_GenerationContextOp_CreateUniqueName" />
    <node concept="3clFbS" id="$lsh0EhB6p" role="18ibNy">
      <node concept="1Z5TYs" id="$lsh0Ehwro" role="3cqZAp">
        <node concept="mw_s8" id="$lsh0Ehw_p" role="1ZfhKB">
          <node concept="2c44tf" id="$lsh0Ehw_l" role="mwGJk">
            <node concept="17QB3L" id="$lsh0Ehw_V" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="$lsh0Ehwrs" role="1ZfhK$">
          <node concept="1Z2H0r" id="$lsh0Ehwrt" role="mwGJk">
            <node concept="1YBJjd" id="$lsh0Ehwyp" role="1Z2MuG">
              <ref role="1YBMHb" node="$lsh0EhB6r" resolve="operation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="$lsh0EhB6r" role="1YuTPh">
      <property role="TrG5h" value="operation" />
      <ref role="1YaFvo" to="tpf3:hIpiZCf" resolve="GenerationContextOp_CreateUniqueName" />
    </node>
  </node>
  <node concept="1YbPZF" id="$lsh0EhBp7">
    <property role="TrG5h" value="typeof_GenerationContextOp_GetInputModel" />
    <node concept="3clFbS" id="$lsh0EhBp8" role="18ibNy">
      <node concept="1Z5TYs" id="$lsh0EhBqE" role="3cqZAp">
        <node concept="mw_s8" id="$lsh0EhBqF" role="1ZfhKB">
          <node concept="2c44tf" id="$lsh0EhBqG" role="mwGJk">
            <node concept="H_c77" id="$lsh0EhBy4" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="$lsh0EhBqI" role="1ZfhK$">
          <node concept="1Z2H0r" id="$lsh0EhBqJ" role="mwGJk">
            <node concept="1YBJjd" id="$lsh0EhBqK" role="1Z2MuG">
              <ref role="1YBMHb" node="$lsh0EhBpa" resolve="operation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="$lsh0EhBpa" role="1YuTPh">
      <property role="TrG5h" value="operation" />
      <ref role="1YaFvo" to="tpf3:hHr8y2F" resolve="GenerationContextOp_GetInputModel" />
    </node>
  </node>
  <node concept="1YbPZF" id="$lsh0EhByW">
    <property role="TrG5h" value="typeof_GenerationContextOp_GetInvocationContext" />
    <node concept="3clFbS" id="$lsh0EhByX" role="18ibNy">
      <node concept="1Z5TYs" id="$lsh0EhB$7" role="3cqZAp">
        <node concept="mw_s8" id="$lsh0EhB$8" role="1ZfhKB">
          <node concept="2c44tf" id="$lsh0EhB$9" role="mwGJk">
            <node concept="3uibUv" id="$lsh0EhBLZ" role="2c44tc">
              <ref role="3uigEE" to="cu2c:~IOperationContext" resolve="IOperationContext" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="$lsh0EhB$b" role="1ZfhK$">
          <node concept="1Z2H0r" id="$lsh0EhB$c" role="mwGJk">
            <node concept="1YBJjd" id="$lsh0EhB$d" role="1Z2MuG">
              <ref role="1YBMHb" node="$lsh0EhByZ" resolve="operation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="$lsh0EhByZ" role="1YuTPh">
      <property role="TrG5h" value="operation" />
      <ref role="1YaFvo" to="tpf3:hO2dfoG" resolve="GenerationContextOp_GetInvocationContext" />
    </node>
  </node>
  <node concept="1YbPZF" id="$lsh0EhBMC">
    <property role="TrG5h" value="typeof_GenerationContextOp_GetOriginalInputModel" />
    <node concept="3clFbS" id="$lsh0EhBMD" role="18ibNy">
      <node concept="1Z5TYs" id="$lsh0EhBWX" role="3cqZAp">
        <node concept="mw_s8" id="$lsh0EhBWY" role="1ZfhKB">
          <node concept="2c44tf" id="$lsh0EhBWZ" role="mwGJk">
            <node concept="H_c77" id="$lsh0EhBX0" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="$lsh0EhBX1" role="1ZfhK$">
          <node concept="1Z2H0r" id="$lsh0EhBX2" role="mwGJk">
            <node concept="1YBJjd" id="$lsh0EhBX3" role="1Z2MuG">
              <ref role="1YBMHb" node="$lsh0EhBMF" resolve="operation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="$lsh0EhBMF" role="1YuTPh">
      <property role="TrG5h" value="operation" />
      <ref role="1YaFvo" to="tpf3:hHst3br" resolve="GenerationContextOp_GetOriginalInputModel" />
    </node>
  </node>
  <node concept="1YbPZF" id="$lsh0EhCar">
    <property role="TrG5h" value="typeof_GenerationContextOp_GetOutputModel" />
    <node concept="3clFbS" id="$lsh0EhCas" role="18ibNy">
      <node concept="1Z5TYs" id="$lsh0EhCbJ" role="3cqZAp">
        <node concept="mw_s8" id="$lsh0EhCbK" role="1ZfhKB">
          <node concept="2c44tf" id="$lsh0EhCbL" role="mwGJk">
            <node concept="H_c77" id="$lsh0EhCbM" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="$lsh0EhCbN" role="1ZfhK$">
          <node concept="1Z2H0r" id="$lsh0EhCbO" role="mwGJk">
            <node concept="1YBJjd" id="$lsh0EhCbP" role="1Z2MuG">
              <ref role="1YBMHb" node="$lsh0EhCau" resolve="operation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="$lsh0EhCau" role="1YuTPh">
      <property role="TrG5h" value="operation" />
      <ref role="1YaFvo" to="tpf3:hHFEO4U" resolve="GenerationContextOp_GetOutputModel" />
    </node>
  </node>
  <node concept="1YbPZF" id="$lsh0EhCmA">
    <property role="TrG5h" value="typeof_GenerationContextOp_GetScope" />
    <node concept="3clFbS" id="$lsh0EhCmB" role="18ibNy">
      <node concept="1Z5TYs" id="$lsh0EhCnO" role="3cqZAp">
        <node concept="mw_s8" id="$lsh0EhCnP" role="1ZfhKB">
          <node concept="2c44tf" id="$lsh0EhCnQ" role="mwGJk">
            <node concept="3uibUv" id="6LpCX$U1tey" role="2c44tc">
              <ref role="3uigEE" to="88zw:~SearchScope" resolve="SearchScope" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="$lsh0EhCnS" role="1ZfhK$">
          <node concept="1Z2H0r" id="$lsh0EhCnT" role="mwGJk">
            <node concept="1YBJjd" id="$lsh0EhCnU" role="1Z2MuG">
              <ref role="1YBMHb" node="$lsh0EhCmD" resolve="operation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="$lsh0EhCmD" role="1YuTPh">
      <property role="TrG5h" value="operation" />
      <ref role="1YaFvo" to="tpf3:hHn_CBK" resolve="GenerationContextOp_GetScope" />
    </node>
  </node>
  <node concept="1YbPZF" id="$lsh0EhCzH">
    <property role="TrG5h" value="typeof_GenerationContextOp_GetTemplateNode" />
    <node concept="3clFbS" id="$lsh0EhCzI" role="18ibNy">
      <node concept="1Z5TYs" id="$lsh0EhC_d" role="3cqZAp">
        <node concept="mw_s8" id="$lsh0EhC_e" role="1ZfhKB">
          <node concept="2c44tf" id="$lsh0EhC_f" role="mwGJk">
            <node concept="3Tqbb2" id="$lsh0EhCEy" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="$lsh0EhC_h" role="1ZfhK$">
          <node concept="1Z2H0r" id="$lsh0EhC_i" role="mwGJk">
            <node concept="1YBJjd" id="$lsh0EhC_j" role="1Z2MuG">
              <ref role="1YBMHb" node="$lsh0EhCzK" resolve="operation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="$lsh0EhCzK" role="1YuTPh">
      <property role="TrG5h" value="operation" />
      <ref role="1YaFvo" to="tpf3:hHKSx_M" resolve="GenerationContextOp_GetTemplateNode" />
    </node>
  </node>
  <node concept="1YbPZF" id="$lsh0EhDke">
    <property role="TrG5h" value="typeof_GenerationContextOp_UserObjectAccessBase" />
    <node concept="3clFbS" id="$lsh0EhDkf" role="18ibNy">
      <node concept="1Z5TYs" id="$lsh0EhDAa" role="3cqZAp">
        <node concept="mw_s8" id="$lsh0EhDAb" role="1ZfhKB">
          <node concept="2c44tf" id="$lsh0EhDAc" role="mwGJk">
            <node concept="3uibUv" id="$lsh0EhDI3" role="2c44tc">
              <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="$lsh0EhDAe" role="1ZfhK$">
          <node concept="1Z2H0r" id="$lsh0EhDAf" role="mwGJk">
            <node concept="1YBJjd" id="$lsh0EhDJm" role="1Z2MuG">
              <ref role="1YBMHb" node="$lsh0EhDkh" resolve="op" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="$lsh0EhDkh" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:hIfTwd8" resolve="GenerationContextOp_UserObjectAccessBase" />
    </node>
  </node>
  <node concept="1YbPZF" id="7ITVRipFFr1">
    <property role="TrG5h" value="typeof_GenerationContextOp_GetExport" />
    <node concept="3clFbS" id="7ITVRipFFr2" role="18ibNy">
      <node concept="1Z5TYs" id="7ITVRipFF$7" role="3cqZAp">
        <node concept="mw_s8" id="7ITVRipFF_A" role="1ZfhKB">
          <node concept="2c44tf" id="7ITVRipFF_y" role="mwGJk">
            <node concept="3Tqbb2" id="7ITVRipFFAf" role="2c44tc">
              <node concept="2c44tb" id="7ITVRipFFB6" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="7ITVRipFGhq" role="2c44t1">
                  <node concept="2OqwBi" id="7ITVRipFFE_" role="2Oq$k0">
                    <node concept="1YBJjd" id="7ITVRipFFCa" role="2Oq$k0">
                      <ref role="1YBMHb" node="7ITVRipFFr4" resolve="op" />
                    </node>
                    <node concept="3TrEf2" id="1yjqjC7KFvR" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf3:rrptlDYMkC" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1yjqjC7KFNu" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:1yjqjC7KnP6" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7ITVRipFF$a" role="1ZfhK$">
          <node concept="1Z2H0r" id="7ITVRipFFxN" role="mwGJk">
            <node concept="1YBJjd" id="7ITVRipFFyq" role="1Z2MuG">
              <ref role="1YBMHb" node="7ITVRipFFr4" resolve="op" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7ITVRipFFr4" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:rrptlDYMkB" resolve="GenerationContextOp_GetExport" />
    </node>
  </node>
  <node concept="1YbPZF" id="6suuiWXKeFz">
    <property role="TrG5h" value="typeof_GenerationContextOp_ContextVarRef" />
    <node concept="3clFbS" id="6suuiWXKeF$" role="18ibNy">
      <node concept="3clFbJ" id="6suuiWXKEn3" role="3cqZAp">
        <node concept="3clFbS" id="6suuiWXKEn6" role="3clFbx">
          <node concept="3cpWs6" id="6suuiWXKFJI" role="3cqZAp" />
        </node>
        <node concept="3clFbC" id="6suuiWXKFy3" role="3clFbw">
          <node concept="10Nm6u" id="6suuiWXKFEd" role="3uHU7w" />
          <node concept="2OqwBi" id="6suuiWXKE_S" role="3uHU7B">
            <node concept="1YBJjd" id="6suuiWXKEyv" role="2Oq$k0">
              <ref role="1YBMHb" node="6suuiWXKeFA" resolve="cvRef" />
            </node>
            <node concept="3TrcHB" id="6suuiWXKFai" role="2OqNvi">
              <ref role="3TsBF5" to="tpf3:6suuiWXJvYy" resolve="contextVarName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="6suuiWXKu5G" role="3cqZAp">
        <node concept="3cpWsn" id="6suuiWXKu5J" role="3cpWs9">
          <property role="TrG5h" value="n" />
          <node concept="3Tqbb2" id="6suuiWXKu5E" role="1tU5fm" />
          <node concept="1YBJjd" id="6suuiWXKu6o" role="33vP2m">
            <ref role="1YBMHb" node="6suuiWXKeFA" resolve="cvRef" />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="6suuiWXKH29" role="3cqZAp">
        <node concept="3cpWsn" id="6suuiWXKH2c" role="3cpWs9">
          <property role="TrG5h" value="cvd" />
          <node concept="3Tqbb2" id="6suuiWXKH2d" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:6suuiWX_9yv" resolve="ContextVariableDeclaration" />
          </node>
          <node concept="10Nm6u" id="6suuiWXKHMB" role="33vP2m" />
        </node>
      </node>
      <node concept="2$JKZl" id="6suuiWXKp$4" role="3cqZAp">
        <node concept="3clFbS" id="6suuiWXKp$6" role="2LFqv$">
          <node concept="3clFbJ" id="6suuiWXKuk3" role="3cqZAp">
            <node concept="3clFbS" id="6suuiWXKuk6" role="3clFbx">
              <node concept="3clFbF" id="6suuiWXKHS7" role="3cqZAp">
                <node concept="37vLTI" id="6suuiWXKHVr" role="3clFbG">
                  <node concept="37vLTw" id="6suuiWXKHS5" role="37vLTJ">
                    <ref role="3cqZAo" node="6suuiWXKH2c" resolve="cvd" />
                  </node>
                  <node concept="2OqwBi" id="6suuiWXKFNN" role="37vLTx">
                    <node concept="2OqwBi" id="6suuiWXKFNO" role="2Oq$k0">
                      <node concept="1PxgMI" id="6suuiWXKFNP" role="2Oq$k0">
                        <ref role="1PxNhF" to="tpf8:6suuiWX$OMG" resolve="ContextVariableProvider" />
                        <node concept="37vLTw" id="6suuiWXKFNQ" role="1PxMeX">
                          <ref role="3cqZAo" node="6suuiWXKu5J" resolve="n" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="6suuiWXKFNR" role="2OqNvi">
                        <ref role="37wK5l" to="tpfh:6suuiWX_oN7" resolve="contextVariables" />
                      </node>
                    </node>
                    <node concept="1z4cxt" id="6suuiWXKFNS" role="2OqNvi">
                      <node concept="1bVj0M" id="6suuiWXKFNT" role="23t8la">
                        <node concept="3clFbS" id="6suuiWXKFNU" role="1bW5cS">
                          <node concept="3clFbF" id="6suuiWXKFNV" role="3cqZAp">
                            <node concept="2OqwBi" id="6suuiWXKFNW" role="3clFbG">
                              <node concept="2OqwBi" id="6suuiWXKFNX" role="2Oq$k0">
                                <node concept="1YBJjd" id="6suuiWXKFNY" role="2Oq$k0">
                                  <ref role="1YBMHb" node="6suuiWXKeFA" resolve="cvRef" />
                                </node>
                                <node concept="3TrcHB" id="6suuiWXKFNZ" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpf3:6suuiWXJvYy" resolve="contextVarName" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6suuiWXKFO0" role="2OqNvi">
                                <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                <node concept="2OqwBi" id="6suuiWXKFO1" role="37wK5m">
                                  <node concept="37vLTw" id="6suuiWXKFO2" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6suuiWXKFO4" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="6suuiWXKFO3" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6suuiWXKFO4" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="6suuiWXKFO5" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6suuiWXKuya" role="3clFbw">
              <node concept="37vLTw" id="6suuiWXKuw3" role="2Oq$k0">
                <ref role="3cqZAo" node="6suuiWXKu5J" resolve="n" />
              </node>
              <node concept="1mIQ4w" id="6suuiWXKuHA" role="2OqNvi">
                <node concept="chp4Y" id="6suuiWXKuK$" role="cj9EA">
                  <ref role="cht4Q" to="tpf8:6suuiWX$OMG" resolve="ContextVariableProvider" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6suuiWXKu9i" role="3cqZAp">
            <node concept="37vLTI" id="6suuiWXKuaa" role="3clFbG">
              <node concept="2YIFZM" id="6suuiWXKuh3" role="37vLTx">
                <ref role="37wK5l" to="tpf6:5ed9yo03G1i" resolve="parent" />
                <ref role="1Pybhc" to="tpf6:5ed9yo03G1c" resolve="TraverseUtil" />
                <node concept="37vLTw" id="6suuiWXKuhY" role="37wK5m">
                  <ref role="3cqZAo" node="6suuiWXKu5J" resolve="n" />
                </node>
              </node>
              <node concept="37vLTw" id="6suuiWXKu9h" role="37vLTJ">
                <ref role="3cqZAo" node="6suuiWXKu5J" resolve="n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="6suuiWXKLlq" role="2$JKZa">
          <node concept="3clFbC" id="6suuiWXKL$_" role="3uHU7w">
            <node concept="10Nm6u" id="6suuiWXKL_A" role="3uHU7w" />
            <node concept="37vLTw" id="6suuiWXKLxB" role="3uHU7B">
              <ref role="3cqZAo" node="6suuiWXKH2c" resolve="cvd" />
            </node>
          </node>
          <node concept="3y3z36" id="6suuiWXKu8p" role="3uHU7B">
            <node concept="37vLTw" id="6suuiWXKu71" role="3uHU7B">
              <ref role="3cqZAo" node="6suuiWXKu5J" resolve="n" />
            </node>
            <node concept="10Nm6u" id="6suuiWXKu8O" role="3uHU7w" />
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="6suuiWXKeZY" role="3cqZAp">
        <node concept="mw_s8" id="6suuiWXKLAF" role="1ZfhKB">
          <node concept="3K4zz7" id="6suuiWXKNuR" role="mwGJk">
            <node concept="2OqwBi" id="6suuiWXKNQ4" role="3K4GZi">
              <node concept="37vLTw" id="6suuiWXKNJj" role="2Oq$k0">
                <ref role="3cqZAo" node="6suuiWXKH2c" resolve="cvd" />
              </node>
              <node concept="3TrEf2" id="6suuiWXKNZD" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:6suuiWX_o3O" />
              </node>
            </node>
            <node concept="22lmx$" id="6suuiWXKObD" role="3K4Cdx">
              <node concept="3clFbC" id="6suuiWXKOLi" role="3uHU7w">
                <node concept="10Nm6u" id="6suuiWXKOPb" role="3uHU7w" />
                <node concept="2OqwBi" id="6suuiWXKOlm" role="3uHU7B">
                  <node concept="37vLTw" id="6suuiWXKOgl" role="2Oq$k0">
                    <ref role="3cqZAo" node="6suuiWXKH2c" resolve="cvd" />
                  </node>
                  <node concept="3TrEf2" id="6suuiWXKOxv" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:6suuiWX_o3O" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="6suuiWXKLCw" role="3uHU7B">
                <node concept="37vLTw" id="6suuiWXKLAD" role="3uHU7B">
                  <ref role="3cqZAo" node="6suuiWXKH2c" resolve="cvd" />
                </node>
                <node concept="10Nm6u" id="6suuiWXKLHV" role="3uHU7w" />
              </node>
            </node>
            <node concept="2c44tf" id="6suuiWXKNIn" role="3K4E3e">
              <node concept="3uibUv" id="6suuiWXKNIo" role="2c44tc">
                <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6suuiWXKf01" role="1ZfhK$">
          <node concept="1Z2H0r" id="6suuiWXKeX1" role="mwGJk">
            <node concept="1YBJjd" id="6suuiWXKeXC" role="1Z2MuG">
              <ref role="1YBMHb" node="6suuiWXKeFA" resolve="cvRef" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6suuiWXKeFA" role="1YuTPh">
      <property role="TrG5h" value="cvRef" />
      <ref role="1YaFvo" to="tpf3:6suuiWXJvTY" resolve="GenerationContextOp_ContextVarRef" />
    </node>
  </node>
  <node concept="1YbPZF" id="4RJ0ilaVVri">
    <property role="TrG5h" value="typeof_GenerationContextOp_RegisterLabel" />
    <node concept="3clFbS" id="4RJ0ilaVVrj" role="18ibNy">
      <node concept="1Z5TYs" id="4RJ0ilaVXXw" role="3cqZAp">
        <node concept="mw_s8" id="4RJ0ilaVXXz" role="1ZfhK$">
          <node concept="1Z2H0r" id="4RJ0ilaVX_Y" role="mwGJk">
            <node concept="1YBJjd" id="4RJ0ilaVXAq" role="1Z2MuG">
              <ref role="1YBMHb" node="4RJ0ilaVVrl" resolve="op" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4RJ0ilaVXZm" role="1ZfhKB">
          <node concept="2c44tf" id="4RJ0ilaVXZn" role="mwGJk">
            <node concept="3cqZAl" id="4RJ0ilaVXZo" role="2c44tc" />
          </node>
        </node>
      </node>
      <node concept="1ZobV4" id="4RJ0ilaVY0M" role="3cqZAp">
        <property role="Ob790" value="0" />
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="4RJ0ilaVY0Q" role="1ZfhK$">
          <node concept="1Z2H0r" id="4RJ0ilaVY0R" role="mwGJk">
            <node concept="2OqwBi" id="4RJ0ilaVY0S" role="1Z2MuG">
              <node concept="1YBJjd" id="4RJ0ilaVY0T" role="2Oq$k0">
                <ref role="1YBMHb" node="4RJ0ilaVVrl" resolve="op" />
              </node>
              <node concept="3TrEf2" id="4RJ0ilaW8pO" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:4RJ0ilaVRHI" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4RJ0ilaW9_a" role="1ZfhKB">
          <node concept="2c44tf" id="4RJ0ilaW9_b" role="mwGJk">
            <node concept="3Tqbb2" id="4RJ0ilaW9_c" role="2c44tc">
              <node concept="2c44tb" id="4RJ0ilaW9_d" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="4RJ0ilaW9_e" role="2c44t1">
                  <node concept="2OqwBi" id="4RJ0ilaW9_f" role="2Oq$k0">
                    <node concept="1YBJjd" id="4RJ0ilaW9_g" role="2Oq$k0">
                      <ref role="1YBMHb" node="4RJ0ilaVVrl" resolve="op" />
                    </node>
                    <node concept="3TrEf2" id="4RJ0ilaW9Qp" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf3:4RJ0ilaVRti" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="4RJ0ilaW9_i" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hurTdLu" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZobV4" id="4RJ0ilaW8rv" role="3cqZAp">
        <property role="Ob790" value="0" />
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="4RJ0ilaW8rz" role="1ZfhK$">
          <node concept="1Z2H0r" id="4RJ0ilaW8r$" role="mwGJk">
            <node concept="2OqwBi" id="4RJ0ilaW8r_" role="1Z2MuG">
              <node concept="1YBJjd" id="4RJ0ilaW8rA" role="2Oq$k0">
                <ref role="1YBMHb" node="4RJ0ilaVVrl" resolve="op" />
              </node>
              <node concept="3TrEf2" id="4RJ0ilaW8QN" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:4RJ0ilaVRHS" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4RJ0ilaW952" role="1ZfhKB">
          <node concept="2c44tf" id="4RJ0ilaW953" role="mwGJk">
            <node concept="3Tqbb2" id="4RJ0ilaW954" role="2c44tc">
              <node concept="2c44tb" id="4RJ0ilaW955" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="4RJ0ilaW956" role="2c44t1">
                  <node concept="2OqwBi" id="4RJ0ilaW957" role="2Oq$k0">
                    <node concept="1YBJjd" id="4RJ0ilaW958" role="2Oq$k0">
                      <ref role="1YBMHb" node="4RJ0ilaVVrl" resolve="op" />
                    </node>
                    <node concept="3TrEf2" id="4RJ0ilaW9kC" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf3:4RJ0ilaVRti" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="4RJ0ilaW9zh" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hurZzxA" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4RJ0ilaVVrl" role="1YuTPh">
      <property role="TrG5h" value="op" />
      <ref role="1YaFvo" to="tpf3:4RJ0ilaVNjd" resolve="GenerationContextOp_RegisterLabel" />
    </node>
  </node>
</model>

