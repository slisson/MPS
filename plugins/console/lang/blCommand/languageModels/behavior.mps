<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:11d950c0-cabb-4b20-860f-4f2898171c08(jetbrains.mps.console.blCommand.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zyb2" ref="r:1754cb33-73c2-441d-96bc-93a7824726e7(jetbrains.mps.console.base.behavior)" />
    <import index="3xdn" ref="r:935ba0ee-7291-4caa-a807-d76e8fc69391(jetbrains.mps.console.blCommand.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" />
    <import index="pt5l" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.project(MPS.Platform/jetbrains.mps.ide.project@java_stub)" />
    <import index="vsqj" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" />
    <import index="4xk" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.ide(MPS.IDEA/com.intellij.ide@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="tt4m" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt.datatransfer(JDK/java.awt.datatransfer@java_stub)" />
    <import index="b2mh" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.project(MPS.IDEA/com.intellij.openapi.project@java_stub)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="810" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.ui(MPS.IDEA/com.intellij.openapi.ui@java_stub)" />
    <import index="eynw" ref="r:359b1d2b-77c4-46df-9bf2-b25cbea32254(jetbrains.mps.console.base.structure)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5">
        <reference id="5299096511375896640" name="superConcept" index="3eA5LN" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
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
      <concept id="1172420572800" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3THzug">
        <reference id="1180481110358" name="conceptDeclaraton" index="3qa414" />
      </concept>
      <concept id="1172424058054" name="jetbrains.mps.lang.smodel.structure.ConceptRefExpression" flags="nn" index="3TUQnm">
        <reference id="1172424100906" name="conceptDeclaration" index="3TV0OU" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="13h7C7" id="2lR2lzqth1R">
    <ref role="13h7C2" to="3xdn:4Jke6BA4ffD" resolve="BLCommand" />
    <node concept="13hLZK" id="2lR2lzqth4f" role="13h7CW">
      <node concept="3clFbS" id="2lR2lzqth4g" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2lR2lzqthc1" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getExpectedRetType" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
      <node concept="3Tm1VV" id="2lR2lzqthc2" role="1B3o_S" />
      <node concept="3clFbS" id="2lR2lzqthc5" role="3clF47">
        <node concept="3cpWs6" id="2lR2lzqtjT2" role="3cqZAp">
          <node concept="2c44tf" id="2lR2lzqtjTs" role="3cqZAk">
            <node concept="3cqZAl" id="2lR2lzqtjU6" role="2c44tc" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="2lR2lzqthc6" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2lR2lzqthc7" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getBody" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:i2fhZ_m" resolve="getBody" />
      <node concept="3Tm1VV" id="2lR2lzqthc8" role="1B3o_S" />
      <node concept="3clFbS" id="2lR2lzqthcb" role="3clF47">
        <node concept="3cpWs6" id="2lR2lzqtjXu" role="3cqZAp">
          <node concept="2OqwBi" id="2lR2lzqtk84" role="3cqZAk">
            <node concept="13iPFW" id="2lR2lzqtjYi" role="2Oq$k0" />
            <node concept="3TrEf2" id="2lR2lzqtmtj" role="2OqNvi">
              <ref role="3Tt5mk" to="3xdn:1yfzJNJreD_" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="2lR2lzqthcc" role="3clF45">
        <ref role="ehGHo" to="tpee:fzclF80" resolve="StatementList" />
      </node>
    </node>
    <node concept="13i0hz" id="2lR2lzqthcd" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getThrowableTypes" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:5op8ooRkkc7" resolve="getThrowableTypes" />
      <node concept="3Tm1VV" id="2lR2lzqthce" role="1B3o_S" />
      <node concept="3clFbS" id="2lR2lzqthch" role="3clF47">
        <node concept="3cpWs8" id="2lR2lzqtCR9" role="3cqZAp">
          <node concept="3cpWsn" id="2lR2lzqtCRc" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2I9FWS" id="2lR2lzqtCR7" role="1tU5fm">
              <ref role="2I9WkF" to="tpee:fz3vP1H" resolve="Type" />
            </node>
            <node concept="2ShNRf" id="2lR2lzqtCSF" role="33vP2m">
              <node concept="2T8Vx0" id="2lR2lzqtDsB" role="2ShVmc">
                <node concept="2I9FWS" id="2lR2lzqtDsD" role="2T96Bj">
                  <ref role="2I9WkF" to="tpee:fz3vP1H" resolve="Type" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2lR2lzqtDt_" role="3cqZAp">
          <node concept="2OqwBi" id="2lR2lzqtEgc" role="3clFbG">
            <node concept="37vLTw" id="2lR2lzqtDt$" role="2Oq$k0">
              <ref role="3cqZAo" node="2lR2lzqtCRc" resolve="result" />
            </node>
            <node concept="TSZUe" id="2lR2lzqtLzD" role="2OqNvi">
              <node concept="2c44tf" id="2lR2lzqtLB5" role="25WWJ7">
                <node concept="3uibUv" id="2lR2lzqtLHg" role="2c44tc">
                  <ref role="3uigEE" to="e2lb:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2lR2lzqtmw1" role="3cqZAp">
          <node concept="37vLTw" id="2lR2lzqtLN_" role="3cqZAk">
            <ref role="3cqZAo" node="2lR2lzqtCRc" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2lR2lzqthci" role="3clF45">
        <ref role="2I9WkF" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="64VftqEeonj" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getShortHelp" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" to="zyb2:qgIopNa9Hb" resolve="getShortHelp" />
      <node concept="3Tm1VV" id="64VftqEeonk" role="1B3o_S" />
      <node concept="3clFbS" id="64VftqEeonn" role="3clF47">
        <node concept="3clFbF" id="64VftqEeopH" role="3cqZAp">
          <node concept="Xl_RD" id="64VftqEeopG" role="3clFbG">
            <property role="Xl_RC" value="execute a statement list" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="64VftqEeono" role="3clF45" />
    </node>
    <node concept="13i0hz" id="64VftqEeosT" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getDisplayString" />
      <ref role="13i0hy" to="zyb2:64VftqEenfn" resolve="getShortDisplayString" />
      <node concept="3clFbS" id="64VftqEeosW" role="3clF47">
        <node concept="3clFbF" id="64VftqEeoCg" role="3cqZAp">
          <node concept="Xl_RD" id="64VftqEeoCf" role="3clFbG">
            <property role="Xl_RC" value="{ &lt;statements&gt; }" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="64VftqEeovs" role="3clF45" />
      <node concept="3Tm1VV" id="64VftqEeovt" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="5G2W3aWAPT8">
    <property role="3GE5qa" value="response" />
    <ref role="13h7C2" to="3xdn:5G2W3aW$Vsk" resolve="ExceptionHolder" />
    <node concept="13hLZK" id="5G2W3aWAPVw" role="13h7CW">
      <node concept="3clFbS" id="5G2W3aWAPVx" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5G2W3aWAQ0q" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="execute" />
      <ref role="13i0hy" to="zyb2:7oNS25df64x" resolve="execute" />
      <node concept="3Tm1VV" id="5G2W3aWAQ0t" role="1B3o_S" />
      <node concept="3clFbS" id="5G2W3aWAQ0w" role="3clF47">
        <node concept="3cpWs8" id="3EnpNH2zGjd" role="3cqZAp">
          <node concept="3cpWsn" id="3EnpNH2zGje" role="3cpWs9">
            <property role="TrG5h" value="contents" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="2lR2lzqyOOa" role="1tU5fm">
              <ref role="3uigEE" to="tt4m:~StringSelection" resolve="StringSelection" />
            </node>
            <node concept="2ShNRf" id="3EnpNH2zGjg" role="33vP2m">
              <node concept="1pGfFk" id="3EnpNH2zGjh" role="2ShVmc">
                <ref role="37wK5l" to="tt4m:~StringSelection.&lt;init&gt;(java.lang.String)" resolve="StringSelection" />
                <node concept="2OqwBi" id="5G2W3aWBmRR" role="37wK5m">
                  <node concept="13iPFW" id="5G2W3aWBmHn" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5G2W3aWBpek" role="2OqNvi">
                    <ref role="3TsBF5" to="3xdn:5G2W3aWBbyD" resolve="stackTrace" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3EnpNH2zGjl" role="3cqZAp">
          <node concept="2OqwBi" id="2lR2lzqySdw" role="3clFbG">
            <node concept="2YIFZM" id="2lR2lzqyRFR" role="2Oq$k0">
              <ref role="37wK5l" to="4xk:~CopyPasteManagerEx.getInstanceEx():com.intellij.ide.CopyPasteManagerEx" resolve="getInstanceEx" />
              <ref role="1Pybhc" to="4xk:~CopyPasteManagerEx" resolve="CopyPasteManagerEx" />
            </node>
            <node concept="liA8E" id="2lR2lzqyTqf" role="2OqNvi">
              <ref role="37wK5l" to="4xk:~CopyPasteManagerEx.setContents(java.awt.datatransfer.Transferable):void" resolve="setContents" />
              <node concept="37vLTw" id="2lR2lzqyTIS" role="37wK5m">
                <ref role="3cqZAo" node="3EnpNH2zGje" resolve="contents" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3EnpNH2zGjt" role="3cqZAp">
          <node concept="3cpWsn" id="3EnpNH2zGju" role="3cpWs9">
            <property role="TrG5h" value="dialog" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5G2W3aWBq0Q" role="1tU5fm">
              <ref role="3uigEE" to="tprs:3EnpNH2zGjG" resolve="AnalyzeStacktraceDialog" />
            </node>
            <node concept="2ShNRf" id="3EnpNH2zGjw" role="33vP2m">
              <node concept="1pGfFk" id="3EnpNH2zGjx" role="2ShVmc">
                <ref role="37wK5l" to="tprs:3EnpNH2zGjR" resolve="AnalyzeStacktraceDialog" />
                <node concept="37vLTw" id="5G2W3aWBqvO" role="37wK5m">
                  <ref role="3cqZAo" node="5G2W3aWAQ0x" resolve="project" />
                </node>
                <node concept="2ShNRf" id="2lR2lzqz44D" role="37wK5m">
                  <node concept="1pGfFk" id="2lR2lzqz956" role="2ShVmc">
                    <ref role="37wK5l" to="vsqj:~ProjectOperationContext.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="ProjectOperationContext" />
                    <node concept="2YIFZM" id="5G2W3aWBqMv" role="37wK5m">
                      <ref role="37wK5l" to="pt5l:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project):jetbrains.mps.project.Project" resolve="toMPSProject" />
                      <ref role="1Pybhc" to="pt5l:~ProjectHelper" resolve="ProjectHelper" />
                      <node concept="37vLTw" id="5G2W3aWBqPx" role="37wK5m">
                        <ref role="3cqZAo" node="5G2W3aWAQ0x" resolve="project" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3EnpNH2zGjC" role="3cqZAp">
          <node concept="2OqwBi" id="3EnpNH2zGjD" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTsDu" role="2Oq$k0">
              <ref role="3cqZAo" node="3EnpNH2zGju" resolve="dialog" />
            </node>
            <node concept="liA8E" id="3EnpNH2zGjF" role="2OqNvi">
              <ref role="37wK5l" to="810:~DialogWrapper.show():void" resolve="show" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5G2W3aWAQ0x" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="5G2W3aWBbyv" role="1tU5fm">
          <ref role="3uigEE" to="b2mh:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="5G2W3aWAQ0z" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5G2W3aWAQ0$" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="canExecute" />
      <ref role="13i0hy" to="zyb2:2QdC0h7dh1h" resolve="canExecute" />
      <node concept="3Tm1VV" id="5G2W3aWAQ0_" role="1B3o_S" />
      <node concept="3clFbS" id="5G2W3aWAQ0C" role="3clF47">
        <node concept="3clFbF" id="5G2W3aWBbyL" role="3cqZAp">
          <node concept="3y3z36" id="5G2W3aWBfIR" role="3clFbG">
            <node concept="10Nm6u" id="5G2W3aWBfLw" role="3uHU7w" />
            <node concept="2OqwBi" id="5G2W3aWBbIF" role="3uHU7B">
              <node concept="13iPFW" id="5G2W3aWBbyI" role="2Oq$k0" />
              <node concept="3TrcHB" id="5G2W3aWBe3o" role="2OqNvi">
                <ref role="3TsBF5" to="3xdn:5G2W3aWBbyD" resolve="stackTrace" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5G2W3aWAQ0D" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3J6h25QXCBO">
    <property role="3GE5qa" value="expression.query" />
    <ref role="13h7C2" to="3xdn:7mV0m3L$trF" resolve="UsagesExpression" />
    <node concept="13i0hz" id="3J6h25QXOd7" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getSupportedParameters" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3J6h25QXCDW" resolve="getSupportedParameters" />
      <node concept="3Tm1VV" id="3J6h25QXOd8" role="1B3o_S" />
      <node concept="3clFbS" id="3J6h25QXOd9" role="3clF47">
        <node concept="3cpWs6" id="30Cvt28KrLy" role="3cqZAp">
          <node concept="2ShNRf" id="30Cvt28KrLz" role="3cqZAk">
            <node concept="Tc6Ow" id="30Cvt28KrL$" role="2ShVmc">
              <node concept="3THzug" id="30Cvt28KrL_" role="HW$YZ">
                <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
              </node>
              <node concept="3TUQnm" id="30Cvt28KrLA" role="HW$Y0">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eOJ" resolve="QueryParameterScope" />
              </node>
              <node concept="3TUQnm" id="30Cvt28KrLB" role="HW$Y0">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eM6" resolve="QueryParameterIncludeReadOnly" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="3J6h25QXOdk" role="3clF45">
        <node concept="3THzug" id="3J6h25QXOdl" role="A3Ik2">
          <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1fzYukMh_aw" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getHelpPage" />
      <ref role="13i0hy" to="zyb2:64VftqEen2L" resolve="getHelpPage" />
      <node concept="3Tm1VV" id="1fzYukMh_ax" role="1B3o_S" />
      <node concept="3clFbS" id="1fzYukMh_b8" role="3clF47">
        <node concept="3cpWs6" id="1fzYukMfugt" role="3cqZAp">
          <node concept="3cpWs3" id="1fzYukMfwtb" role="3cqZAk">
            <node concept="2OqwBi" id="1fzYukMfulT" role="3uHU7B">
              <node concept="13iAh5" id="1fzYukMfuh4" role="2Oq$k0" />
              <node concept="2qgKlT" id="1fzYukMfuDd" role="2OqNvi">
                <ref role="37wK5l" to="zyb2:64VftqEen2L" resolve="getHelpPage" />
              </node>
            </node>
            <node concept="Xl_RD" id="1fzYukMfoqu" role="3uHU7w">
              <property role="Xl_RC" value="\nImplementation of this command uses the IDE indexes to speed up execution" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1fzYukMh_b9" role="3clF45" />
    </node>
    <node concept="13i0hz" id="25MaZwhhmBN" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getDisplayString" />
      <ref role="13i0hy" to="zyb2:5YxQmqOFZEf" resolve="getDisplayString" />
      <node concept="3Tm1VV" id="25MaZwhhmBO" role="1B3o_S" />
      <node concept="3clFbS" id="25MaZwhhmCc" role="3clF47">
        <node concept="3clFbF" id="25MaZwhhmCh" role="3cqZAp">
          <node concept="3cpWs3" id="25MaZwhhn2z" role="3clFbG">
            <node concept="Xl_RD" id="25MaZwhhn62" role="3uHU7w">
              <property role="Xl_RC" value="(node)" />
            </node>
            <node concept="2OqwBi" id="25MaZwhhmCe" role="3uHU7B">
              <node concept="13iAh5" id="25MaZwhhmCf" role="2Oq$k0" />
              <node concept="2qgKlT" id="25MaZwhhmCg" role="2OqNvi">
                <ref role="37wK5l" to="zyb2:5YxQmqOFZEf" resolve="getDisplayString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="25MaZwhhmCd" role="3clF45" />
    </node>
    <node concept="13hLZK" id="3J6h25QXCBP" role="13h7CW">
      <node concept="3clFbS" id="3J6h25QXCBQ" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3J6h25QXEXM">
    <property role="3GE5qa" value="expression.query" />
    <ref role="13h7C2" to="3xdn:3J6h25Q2UNX" resolve="QueryExpression" />
    <node concept="13i0hz" id="3J6h25QXCDW" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getSupportedParameters" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="3J6h25QXCDX" role="1B3o_S" />
      <node concept="A3Dl8" id="3J6h25QXEXe" role="3clF45">
        <node concept="3THzug" id="3J6h25QXEXj" role="A3Ik2">
          <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
        </node>
      </node>
      <node concept="3clFbS" id="3J6h25QXCDZ" role="3clF47" />
    </node>
    <node concept="13i0hz" id="3E_u19H2bAc" role="13h7CS">
      <property role="TrG5h" value="legalAsStatement" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" to="tpek:1653mnvAgqK" resolve="legalAsStatement" />
      <node concept="3clFbS" id="3E_u19H2bAf" role="3clF47">
        <node concept="3clFbF" id="3E_u19H2bA$" role="3cqZAp">
          <node concept="3clFbT" id="3E_u19H2bAz" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3E_u19H2bAv" role="3clF45" />
      <node concept="3Tm1VV" id="3E_u19H2bAw" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="1fzYukMfwCt" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getHelpPage" />
      <ref role="13i0hy" to="zyb2:64VftqEen2L" resolve="getHelpPage" />
      <node concept="3Tm1VV" id="1fzYukMfwCu" role="1B3o_S" />
      <node concept="3clFbS" id="1fzYukMfwCz" role="3clF47">
        <node concept="3cpWs8" id="1fzYukMfy3y" role="3cqZAp">
          <node concept="3cpWsn" id="1fzYukMfy3_" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="17QB3L" id="1fzYukMfy3w" role="1tU5fm" />
            <node concept="Xl_RD" id="1fzYukMfymt" role="33vP2m">
              <property role="Xl_RC" value="Supported parameters:\n" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1fzYukMfNst" role="3cqZAp">
          <node concept="3clFbS" id="1fzYukMfNsu" role="3clFbx">
            <node concept="3clFbF" id="1fzYukMfNsv" role="3cqZAp">
              <node concept="d57v9" id="1fzYukMfNsw" role="3clFbG">
                <node concept="37vLTw" id="6ZYkX9dOCcW" role="37vLTJ">
                  <ref role="3cqZAo" node="1fzYukMfy3_" resolve="result" />
                </node>
                <node concept="Xl_RD" id="1fzYukMfNsx" role="37vLTx">
                  <property role="Xl_RC" value="scope  (default = project)   specifies the boundaries of the lookup operation\n" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1fzYukMfNsz" role="3clFbw">
            <node concept="3JPx81" id="1fzYukMfNs_" role="2OqNvi">
              <node concept="3TUQnm" id="1fzYukMfNsA" role="25WWJ7">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eOJ" resolve="QueryParameterScope" />
              </node>
            </node>
            <node concept="2OqwBi" id="1fzYukMhea3" role="2Oq$k0">
              <node concept="13iPFW" id="1fzYukMhe4P" role="2Oq$k0" />
              <node concept="2qgKlT" id="1fzYukMheu3" role="2OqNvi">
                <ref role="37wK5l" node="3J6h25QXCDW" resolve="getSupportedParameters" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1fzYukMfwEy" role="3cqZAp">
          <node concept="3clFbS" id="1fzYukMfwEz" role="3clFbx">
            <node concept="3clFbF" id="1fzYukMfMQL" role="3cqZAp">
              <node concept="d57v9" id="1fzYukMfMQM" role="3clFbG">
                <node concept="37vLTw" id="6ZYkX9dOCpg" role="37vLTJ">
                  <ref role="3cqZAo" node="1fzYukMfy3_" resolve="result" />
                </node>
                <node concept="Xl_RD" id="1fzYukMfMQN" role="37vLTx">
                  <property role="Xl_RC" value="r/o+   (default = false)     also search in read-only models\n" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1fzYukMfwSx" role="3clFbw">
            <node concept="3JPx81" id="1fzYukMfxGN" role="2OqNvi">
              <node concept="3TUQnm" id="1fzYukMfxT9" role="25WWJ7">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eM6" resolve="QueryParameterIncludeReadOnly" />
              </node>
            </node>
            <node concept="2OqwBi" id="1fzYukMheAP" role="2Oq$k0">
              <node concept="13iPFW" id="1fzYukMhexB" role="2Oq$k0" />
              <node concept="2qgKlT" id="1fzYukMheUP" role="2OqNvi">
                <ref role="37wK5l" node="3J6h25QXCDW" resolve="getSupportedParameters" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1fzYukMfRSW" role="9aQIa">
            <node concept="3clFbS" id="1fzYukMfRSX" role="9aQI4">
              <node concept="3clFbF" id="1fzYukMfRXN" role="3cqZAp">
                <node concept="d57v9" id="1fzYukMfS6t" role="3clFbG">
                  <node concept="37vLTw" id="6ZYkX9dOhV9" role="37vLTJ">
                    <ref role="3cqZAo" node="1fzYukMfy3_" resolve="result" />
                  </node>
                  <node concept="Xl_RD" id="1fzYukMfS$B" role="37vLTx">
                    <property role="Xl_RC" value="Note: read-only models are included in the search scope\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1fzYukMfK8H" role="3cqZAp">
          <node concept="37vLTw" id="6ZYkX9dOCpj" role="3cqZAk">
            <ref role="3cqZAo" node="1fzYukMfy3_" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1fzYukMfwC$" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5YxQmqOFrIW" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getDisplayString" />
      <ref role="13i0hy" to="zyb2:5YxQmqOFZEf" resolve="getDisplayString" />
      <node concept="3Tm1VV" id="5YxQmqOFrIX" role="1B3o_S" />
      <node concept="3clFbS" id="5YxQmqOFrJn" role="3clF47">
        <node concept="3cpWs8" id="5YxQmqOFz5t" role="3cqZAp">
          <node concept="3cpWsn" id="5YxQmqOFz5u" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="17QB3L" id="5YxQmqOFz5s" role="1tU5fm" />
            <node concept="2OqwBi" id="5YxQmqOFz5v" role="33vP2m">
              <node concept="2qgKlT" id="5YxQmqOFz5w" role="2OqNvi">
                <ref role="37wK5l" to="zyb2:64VftqEenfn" resolve="getShortDisplayString" />
              </node>
              <node concept="13iAh5" id="5YxQmqOFz5x" role="2Oq$k0">
                <ref role="3eA5LN" to="3xdn:64VftqErqMg" resolve="ConsoleExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YxQmqOFzFj" role="3cqZAp">
          <node concept="3clFbS" id="5YxQmqOFzFl" role="3clFbx">
            <node concept="3cpWs6" id="5YxQmqOF_1u" role="3cqZAp">
              <node concept="37vLTw" id="5YxQmqOF_ar" role="3cqZAk">
                <ref role="3cqZAo" node="5YxQmqOFz5u" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5YxQmqOF$8x" role="3clFbw">
            <node concept="1v1jN8" id="5YxQmqOF_0x" role="2OqNvi" />
            <node concept="2OqwBi" id="5YxQmqOFRRW" role="2Oq$k0">
              <node concept="13iPFW" id="5YxQmqOFRON" role="2Oq$k0" />
              <node concept="2qgKlT" id="5YxQmqOFSz_" role="2OqNvi">
                <ref role="37wK5l" node="3J6h25QXCDW" resolve="getSupportedParameters" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5YxQmqOF_ji" role="9aQIa">
            <node concept="3clFbS" id="5YxQmqOF_zl" role="9aQI4">
              <node concept="3cpWs6" id="5YxQmqOF_zk" role="3cqZAp">
                <node concept="3cpWs3" id="5YxQmqOFuLy" role="3cqZAk">
                  <node concept="37vLTw" id="5YxQmqOFz5y" role="3uHU7B">
                    <ref role="3cqZAo" node="5YxQmqOFz5u" resolve="result" />
                  </node>
                  <node concept="Xl_RD" id="5YxQmqOFuO9" role="3uHU7w">
                    <property role="Xl_RC" value="&lt;parameters&gt;" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5YxQmqOGhPA" role="3clF45" />
    </node>
    <node concept="13hLZK" id="3J6h25QXEXN" role="13h7CW">
      <node concept="3clFbS" id="3J6h25QXEXO" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3J6h25QXEYw">
    <property role="3GE5qa" value="expression.query" />
    <ref role="13h7C2" to="3xdn:2sF4xi8qX2e" resolve="NodesExpression" />
    <node concept="13hLZK" id="3J6h25QXEYx" role="13h7CW">
      <node concept="3clFbS" id="3J6h25QXEYy" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3J6h25QXEYz" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getSupportedParameters" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3J6h25QXCDW" resolve="getSupportedParameters" />
      <node concept="3Tm1VV" id="3J6h25QXEY$" role="1B3o_S" />
      <node concept="3clFbS" id="3J6h25QXEYC" role="3clF47">
        <node concept="3cpWs6" id="4c815Y1hI8U" role="3cqZAp">
          <node concept="2ShNRf" id="4c815Y1hI8V" role="3cqZAk">
            <node concept="Tc6Ow" id="4c815Y1hI8W" role="2ShVmc">
              <node concept="3THzug" id="4c815Y1hI8X" role="HW$YZ">
                <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
              </node>
              <node concept="3TUQnm" id="4c815Y1hI8Y" role="HW$Y0">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eOJ" resolve="QueryParameterScope" />
              </node>
              <node concept="3TUQnm" id="4c815Y1hI8Z" role="HW$Y0">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eM6" resolve="QueryParameterIncludeReadOnly" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="3J6h25QXEYD" role="3clF45">
        <node concept="3THzug" id="3J6h25QXEYE" role="A3Ik2">
          <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3J6h25QXHz5">
    <property role="3GE5qa" value="expression.query" />
    <ref role="13h7C2" to="3xdn:5X1VVpPN29y" resolve="ModulesExpression" />
    <node concept="13i0hz" id="3J6h25QXHzP" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getSupportedParameters" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3J6h25QXCDW" resolve="getSupportedParameters" />
      <node concept="3Tm1VV" id="3J6h25QXHzQ" role="1B3o_S" />
      <node concept="3clFbS" id="3J6h25QXHzR" role="3clF47">
        <node concept="3cpWs6" id="4c815Y1hFhh" role="3cqZAp">
          <node concept="2ShNRf" id="4c815Y1hFhi" role="3cqZAk">
            <node concept="Tc6Ow" id="4c815Y1hFhj" role="2ShVmc">
              <node concept="3THzug" id="4c815Y1hFhk" role="HW$YZ">
                <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
              </node>
              <node concept="3TUQnm" id="4c815Y1hFhl" role="HW$Y0">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eOJ" resolve="QueryParameterScope" />
              </node>
              <node concept="3TUQnm" id="4c815Y1hFhm" role="HW$Y0">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eM6" resolve="QueryParameterIncludeReadOnly" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="3J6h25QXH$2" role="3clF45">
        <node concept="3THzug" id="3J6h25QXH$3" role="A3Ik2">
          <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="3J6h25QXHz6" role="13h7CW">
      <node concept="3clFbS" id="3J6h25QXHz7" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3J6h25QXJct">
    <property role="3GE5qa" value="expression.query" />
    <ref role="13h7C2" to="3xdn:5X1VVpPJEGH" resolve="ModelsExpression" />
    <node concept="13i0hz" id="3J6h25QXJdd" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getSupportedParameters" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3J6h25QXCDW" resolve="getSupportedParameters" />
      <node concept="3Tm1VV" id="3J6h25QXJde" role="1B3o_S" />
      <node concept="3clFbS" id="3J6h25QXJdf" role="3clF47">
        <node concept="3cpWs6" id="4c815Y1hwEC" role="3cqZAp">
          <node concept="2ShNRf" id="4c815Y1hywy" role="3cqZAk">
            <node concept="Tc6Ow" id="4c815Y1hzFz" role="2ShVmc">
              <node concept="3THzug" id="4c815Y1h_U6" role="HW$YZ">
                <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
              </node>
              <node concept="3TUQnm" id="3J6h25QXJdn" role="HW$Y0">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eOJ" resolve="QueryParameterScope" />
              </node>
              <node concept="3TUQnm" id="3J6h25QXJdp" role="HW$Y0">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eM6" resolve="QueryParameterIncludeReadOnly" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="3J6h25QXJdq" role="3clF45">
        <node concept="3THzug" id="3J6h25QXJdr" role="A3Ik2">
          <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="3J6h25QXJcu" role="13h7CW">
      <node concept="3clFbS" id="3J6h25QXJcv" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3J6h25QXKQk">
    <property role="3GE5qa" value="expression.query" />
    <ref role="13h7C2" to="3xdn:6H$fNdLyE4d" resolve="InstancesExpression" />
    <node concept="13i0hz" id="3J6h25QXKR4" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getSupportedParameters" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3J6h25QXCDW" resolve="getSupportedParameters" />
      <node concept="3Tm1VV" id="3J6h25QXKR5" role="1B3o_S" />
      <node concept="3clFbS" id="3J6h25QXKR6" role="3clF47">
        <node concept="3cpWs6" id="30Cvt28KorI" role="3cqZAp">
          <node concept="2ShNRf" id="30Cvt28KorJ" role="3cqZAk">
            <node concept="Tc6Ow" id="30Cvt28KorK" role="2ShVmc">
              <node concept="3THzug" id="30Cvt28KorL" role="HW$YZ">
                <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
              </node>
              <node concept="3TUQnm" id="30Cvt28KorM" role="HW$Y0">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eOJ" resolve="QueryParameterScope" />
              </node>
              <node concept="3TUQnm" id="30Cvt28KorN" role="HW$Y0">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eM6" resolve="QueryParameterIncludeReadOnly" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="3J6h25QXKRh" role="3clF45">
        <node concept="3THzug" id="3J6h25QXKRi" role="A3Ik2">
          <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1fzYukMh_ns" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getHelpPage" />
      <ref role="13i0hy" to="zyb2:64VftqEen2L" resolve="getHelpPage" />
      <node concept="3Tm1VV" id="1fzYukMh_nt" role="1B3o_S" />
      <node concept="3clFbS" id="1fzYukMh_nu" role="3clF47">
        <node concept="3cpWs6" id="1fzYukMh_nv" role="3cqZAp">
          <node concept="3cpWs3" id="1fzYukMh_nw" role="3cqZAk">
            <node concept="2OqwBi" id="1fzYukMh_nx" role="3uHU7B">
              <node concept="13iAh5" id="1fzYukMh_ny" role="2Oq$k0" />
              <node concept="2qgKlT" id="1fzYukMh_nz" role="2OqNvi">
                <ref role="37wK5l" to="zyb2:64VftqEen2L" resolve="getHelpPage" />
              </node>
            </node>
            <node concept="Xl_RD" id="1fzYukMh_n$" role="3uHU7w">
              <property role="Xl_RC" value="\nImplementation of this command uses the IDE indexes to speed up execution" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1fzYukMh_n_" role="3clF45" />
    </node>
    <node concept="13i0hz" id="25MaZwhhw1Z" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getDisplayString" />
      <ref role="13i0hy" to="zyb2:5YxQmqOFZEf" resolve="getDisplayString" />
      <node concept="3Tm1VV" id="25MaZwhhw20" role="1B3o_S" />
      <node concept="3clFbS" id="25MaZwhhw2o" role="3clF47">
        <node concept="3clFbF" id="25MaZwhhw2t" role="3cqZAp">
          <node concept="3cpWs3" id="25MaZwhhwwc" role="3clFbG">
            <node concept="Xl_RD" id="25MaZwhhwzz" role="3uHU7w">
              <property role="Xl_RC" value="(concept)" />
            </node>
            <node concept="2OqwBi" id="25MaZwhhw2q" role="3uHU7B">
              <node concept="13iAh5" id="25MaZwhhw2r" role="2Oq$k0" />
              <node concept="2qgKlT" id="25MaZwhhw2s" role="2OqNvi">
                <ref role="37wK5l" to="zyb2:5YxQmqOFZEf" resolve="getDisplayString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="25MaZwhhw2p" role="3clF45" />
    </node>
    <node concept="13hLZK" id="3J6h25QXKQl" role="13h7CW">
      <node concept="3clFbS" id="3J6h25QXKQm" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3J6h25QXMz2">
    <property role="3GE5qa" value="expression.query" />
    <ref role="13h7C2" to="3xdn:5uXC5_72l2X" resolve="ReferencesExpression" />
    <node concept="13i0hz" id="3J6h25QXMzM" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getSupportedParameters" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3J6h25QXCDW" resolve="getSupportedParameters" />
      <node concept="3Tm1VV" id="3J6h25QXMzN" role="1B3o_S" />
      <node concept="3clFbS" id="3J6h25QXMzO" role="3clF47">
        <node concept="3cpWs6" id="4c815Y1hLXz" role="3cqZAp">
          <node concept="2ShNRf" id="4c815Y1hLX$" role="3cqZAk">
            <node concept="Tc6Ow" id="4c815Y1hLX_" role="2ShVmc">
              <node concept="3THzug" id="4c815Y1hLXA" role="HW$YZ">
                <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
              </node>
              <node concept="3TUQnm" id="4c815Y1hLXB" role="HW$Y0">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eOJ" resolve="QueryParameterScope" />
              </node>
              <node concept="3TUQnm" id="4c815Y1hLXC" role="HW$Y0">
                <ref role="3TV0OU" to="3xdn:3J6h25Q6eM6" resolve="QueryParameterIncludeReadOnly" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="3J6h25QXMzZ" role="3clF45">
        <node concept="3THzug" id="3J6h25QXM$0" role="A3Ik2">
          <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="3J6h25QXMz3" role="13h7CW">
      <node concept="3clFbS" id="3J6h25QXMz4" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6kp4dbAb8Gj">
    <property role="3GE5qa" value="expression.query" />
    <ref role="13h7C2" to="3xdn:DM6_$iqV$8" resolve="ProjectExpression" />
    <node concept="13hLZK" id="6kp4dbAb8Gk" role="13h7CW">
      <node concept="3clFbS" id="6kp4dbAb8Gl" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6kp4dbAb8H4" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getSupportedParameters" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3J6h25QXCDW" resolve="getSupportedParameters" />
      <node concept="3Tm1VV" id="6kp4dbAb8H5" role="1B3o_S" />
      <node concept="3clFbS" id="6kp4dbAb8H9" role="3clF47">
        <node concept="3clFbF" id="3E_u19H2d$m" role="3cqZAp">
          <node concept="10Nm6u" id="3E_u19H2d$l" role="3clFbG" />
        </node>
      </node>
      <node concept="A3Dl8" id="6kp4dbAb8Ha" role="3clF45">
        <node concept="3THzug" id="6kp4dbAb8Hb" role="A3Ik2">
          <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3E_u19H2QLn">
    <property role="3GE5qa" value="expression" />
    <ref role="13h7C2" to="3xdn:7mV0m3L$tuv" resolve="ShowExpression" />
    <node concept="13i0hz" id="3E_u19H2QLq" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="legalAsStatement" />
      <ref role="13i0hy" to="tpek:1653mnvAgqK" resolve="legalAsStatement" />
      <node concept="3clFbS" id="3E_u19H2QLt" role="3clF47">
        <node concept="3clFbF" id="3E_u19H2QLB" role="3cqZAp">
          <node concept="3clFbT" id="3E_u19H2QLA" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3E_u19H2QLy" role="3clF45" />
      <node concept="3Tm1VV" id="3E_u19H2QLz" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="64VftqErvLH" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getShortHelp" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" to="zyb2:qgIopNa9Hb" resolve="getShortHelp" />
      <node concept="3Tm1VV" id="64VftqErvLI" role="1B3o_S" />
      <node concept="3clFbS" id="64VftqErvLL" role="3clF47">
        <node concept="3clFbF" id="64VftqErxUy" role="3cqZAp">
          <node concept="Xl_RD" id="64VftqErxUx" role="3clFbG">
            <property role="Xl_RC" value="show sequence of nodes/references/models/modules in the Usages View panel" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="64VftqErvLM" role="3clF45" />
    </node>
    <node concept="13hLZK" id="3E_u19H2QLo" role="13h7CW">
      <node concept="3clFbS" id="3E_u19H2QLp" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3E_u19H2SYz">
    <property role="3GE5qa" value="expression.print" />
    <ref role="13h7C2" to="3xdn:6M9lfhDDWgw" resolve="AbstractPrintExpression" />
    <node concept="13i0hz" id="3E_u19H2SYA" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="legalAsStatement" />
      <ref role="13i0hy" to="tpek:1653mnvAgqK" resolve="legalAsStatement" />
      <node concept="3clFbS" id="3E_u19H2SYD" role="3clF47">
        <node concept="3clFbF" id="3E_u19H2SYN" role="3cqZAp">
          <node concept="3clFbT" id="3E_u19H2SYM" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3E_u19H2SYI" role="3clF45" />
      <node concept="3Tm1VV" id="3E_u19H2SYJ" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="3E_u19H2SY$" role="13h7CW">
      <node concept="3clFbS" id="3E_u19H2SY_" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="64VftqEr$5E">
    <property role="3GE5qa" value="expression.print" />
    <ref role="13h7C2" to="3xdn:6_TW7xVaDdR" resolve="PrintExpression" />
    <node concept="13hLZK" id="64VftqEr$5F" role="13h7CW">
      <node concept="3clFbS" id="64VftqEr$5G" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="64VftqEr$5H" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getShortHelp" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" to="zyb2:qgIopNa9Hb" resolve="getShortHelp" />
      <node concept="3Tm1VV" id="64VftqEr$5I" role="1B3o_S" />
      <node concept="3clFbS" id="64VftqEr$5L" role="3clF47">
        <node concept="3clFbF" id="64VftqErBiU" role="3cqZAp">
          <node concept="Xl_RD" id="64VftqErBiT" role="3clFbG">
            <property role="Xl_RC" value="print into the console window" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="64VftqEr$5M" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="64VftqEeoGE">
    <ref role="13h7C2" to="3xdn:6D0CP__oaBp" resolve="BLExpression" />
    <node concept="13hLZK" id="64VftqEeoGF" role="13h7CW">
      <node concept="3clFbS" id="64VftqEeoGG" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="64VftqEeoGH" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getShortHelp" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" to="zyb2:qgIopNa9Hb" resolve="getShortHelp" />
      <node concept="3Tm1VV" id="64VftqEeoGI" role="1B3o_S" />
      <node concept="3clFbS" id="64VftqEeoGL" role="3clF47">
        <node concept="3clFbF" id="64VftqEeoGS" role="3cqZAp">
          <node concept="Xl_RD" id="64VftqEeoGR" role="3clFbG">
            <property role="Xl_RC" value="evaluate an expression and print its result" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="64VftqEeoGM" role="3clF45" />
    </node>
    <node concept="13i0hz" id="64VftqEepAv" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getDisplayString" />
      <ref role="13i0hy" to="zyb2:64VftqEenfn" resolve="getShortDisplayString" />
      <node concept="3clFbS" id="64VftqEepAy" role="3clF47">
        <node concept="3clFbF" id="64VftqEepAM" role="3cqZAp">
          <node concept="Xl_RD" id="64VftqEepAL" role="3clFbG">
            <property role="Xl_RC" value="&lt;expression&gt;" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="64VftqEepAH" role="3clF45" />
      <node concept="3Tm1VV" id="64VftqEepAI" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="64VftqErqME">
    <property role="3GE5qa" value="expression" />
    <ref role="13h7C2" to="3xdn:64VftqErqMg" resolve="ConsoleExpression" />
    <node concept="13hLZK" id="64VftqErqMF" role="13h7CW">
      <node concept="3clFbS" id="64VftqErqMG" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="64VftqErqMP" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getKind" />
      <ref role="13i0hy" to="zyb2:64VftqEenf4" resolve="getKind" />
      <node concept="3Tm1VV" id="64VftqErqMQ" role="1B3o_S" />
      <node concept="3clFbS" id="64VftqErqMT" role="3clF47">
        <node concept="3clFbF" id="64VftqErqN0" role="3cqZAp">
          <node concept="Xl_RD" id="64VftqErqMZ" role="3clFbG">
            <property role="Xl_RC" value="expression" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="64VftqErqMU" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="59iQg8ryQMU">
    <property role="3GE5qa" value="expression" />
    <ref role="13h7C2" to="3xdn:59iQg8ryQK3" resolve="ConsoleOperation" />
    <node concept="13hLZK" id="59iQg8ryQMV" role="13h7CW">
      <node concept="3clFbS" id="59iQg8ryQMW" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="59iQg8ryZpf" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getKind" />
      <ref role="13i0hy" to="zyb2:64VftqEenf4" resolve="getKind" />
      <node concept="3Tm1VV" id="59iQg8ryZpg" role="1B3o_S" />
      <node concept="3clFbS" id="59iQg8ryZpj" role="3clF47">
        <node concept="3clFbF" id="59iQg8ryZpq" role="3cqZAp">
          <node concept="Xl_RD" id="59iQg8ryZpp" role="3clFbG">
            <property role="Xl_RC" value="operation" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="59iQg8ryZpk" role="3clF45" />
    </node>
  </node>
</model>

