<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:97aec248-a91c-439e-a7f1-5184e2da6816(jetbrains.mps.lang.dataFlow.pluginSolution.plugin)">
  <persistence version="9" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="-1" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="hxuy" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.lang.dataFlow.framework(MPS.Core/jetbrains.mps.lang.dataFlow.framework@java_stub)" />
    <import index="aplb" ref="r:a1d8bbbf-d4f0-431f-8dcd-a6badc777315(jetbrains.mps.lang.dataFlow)" />
    <import index="fxg7" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="cxih" ref="r:c6e01f98-6040-4dd0-a88b-62f17e77e610(jetbrains.mps.ide.dataFlow.presentation)" />
    <import index="flgp" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.lang.dataFlow.framework.instructions(MPS.Core/jetbrains.mps.lang.dataFlow.framework.instructions@java_stub)" />
    <import index="i0jt" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.lang.dataFlow.framework.analyzers(MPS.Core/jetbrains.mps.lang.dataFlow.framework.analyzers@java_stub)" />
    <import index="5xh9" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.actions(MPS.Platform/jetbrains.mps.ide.actions@java_stub)" />
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="810" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.ui(MPS.IDEA/com.intellij.openapi.ui@java_stub)" />
    <import index="dbrf" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(JDK/javax.swing@java_stub)" />
    <import index="nx1" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.actionSystem(MPS.IDEA/com.intellij.openapi.actionSystem@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
    </language>
  </registry>
  <node concept="sE7Ow" id="4KDfkUwM7Dx">
    <property role="TrG5h" value="PrintDFAResult" />
    <property role="2uzpH1" value="Print DFA" />
    <node concept="tnohg" id="4KDfkUwM7Dy" role="tncku">
      <node concept="3clFbS" id="4KDfkUwM7Dz" role="2VODD2">
        <node concept="3cpWs8" id="4KDfkUwM7D$" role="3cqZAp">
          <node concept="3cpWsn" id="4KDfkUwM7D_" role="3cpWs9">
            <property role="TrG5h" value="program" />
            <node concept="3uibUv" id="4KDfkUwM7DA" role="1tU5fm">
              <ref role="3uigEE" to="hxuy:~Program" resolve="Program" />
            </node>
            <node concept="2OqwBi" id="4KDfkUwM7DB" role="33vP2m">
              <node concept="liA8E" id="4KDfkUwM7DC" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIwhr" resolve="buildProgramFor" />
                <node concept="2OqwBi" id="4KDfkUwM7DD" role="37wK5m">
                  <node concept="3gHZIF" id="4KDfkUwM7DE" role="2OqNvi">
                    <ref role="2WH_rO" node="4KDfkUwM7DP" resolve="node" />
                  </node>
                  <node concept="2WthIp" id="4KDfkUwM7DF" role="2Oq$k0" />
                </node>
              </node>
              <node concept="2YIFZM" id="4KDfkUwM7DG" role="2Oq$k0">
                <ref role="37wK5l" to="aplb:3HJD4JbIwg9" resolve="getInstance" />
                <ref role="1Pybhc" to="aplb:3HJD4JbIwfM" resolve="DataFlowManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4KDfkUwM7DH" role="3cqZAp">
          <node concept="2OqwBi" id="4KDfkUwM7DI" role="3clFbG">
            <node concept="10M0yZ" id="4KDfkUwM7DJ" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4KDfkUwM7DK" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="2OqwBi" id="4KDfkUwM7DL" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagTyjS" role="2Oq$k0">
                  <ref role="3cqZAo" node="4KDfkUwM7D_" resolve="program" />
                </node>
                <node concept="liA8E" id="4KDfkUwM7DN" role="2OqNvi">
                  <ref role="37wK5l" to="hxuy:~Program.toString(boolean):java.lang.String" resolve="toString" />
                  <node concept="3clFbT" id="4KDfkUwM7DO" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="4KDfkUwM7DP" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm1VV" id="4KDfkUwM7DQ" role="1B3o_S" />
      <node concept="3Tqbb2" id="4KDfkUwM7DR" role="1tU5fm" />
      <node concept="1oajcY" id="4KDfkUwM7DS" role="1oa70y" />
    </node>
  </node>
  <node concept="tC5Ba" id="4KDfkUwM7DT">
    <property role="TrG5h" value="DFAActions" />
    <node concept="tT9cl" id="4KDfkUwM7DU" role="2f5YQi">
      <ref role="tU$_T" to="tprs:1GlxrIveqTo" resolve="DebugActions" />
      <ref role="2f8Tey" to="tprs:6f0maSpvK1s" resolve="dataFlow" />
    </node>
    <node concept="ftmFs" id="4KDfkUwM7DV" role="ftER_">
      <node concept="tCFHf" id="4KDfkUwM7DW" role="ftvYc">
        <ref role="tCJdB" node="4KDfkUwM7DX" resolve="ShowDFA" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="4KDfkUwM7DX">
    <property role="TrG5h" value="ShowDFA" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Show Data Flow Graph" />
    <node concept="tnohg" id="4KDfkUwM7DY" role="tncku">
      <node concept="3clFbS" id="4KDfkUwM7DZ" role="2VODD2">
        <node concept="3cpWs8" id="4KDfkUwM7E0" role="3cqZAp">
          <node concept="3cpWsn" id="4KDfkUwM7E1" role="3cpWs9">
            <property role="TrG5h" value="program" />
            <node concept="3uibUv" id="4KDfkUwM7E2" role="1tU5fm">
              <ref role="3uigEE" to="hxuy:~Program" resolve="Program" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1ekf28usyL2" role="3cqZAp">
          <node concept="3cpWsn" id="1ekf28usyL3" role="3cpWs9">
            <property role="TrG5h" value="graph" />
            <node concept="3uibUv" id="1ekf28usyL4" role="1tU5fm">
              <ref role="3uigEE" to="cxih:3HJD4JbIvSG" resolve="ControlFlowGraph" />
              <node concept="3uibUv" id="1ekf28usyL6" role="11_B2D">
                <ref role="3uigEE" to="cxih:3HJD4JbIvBj" resolve="InstructionWrapper" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KUoCipvzh5" role="3cqZAp">
          <node concept="2OqwBi" id="1KUoCipvzh6" role="3clFbG">
            <node concept="2YIFZM" id="1KUoCipvzh7" role="2Oq$k0">
              <ref role="37wK5l" to="cu2c:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
              <ref role="1Pybhc" to="cu2c:~ModelAccess" resolve="ModelAccess" />
            </node>
            <node concept="liA8E" id="1KUoCipvzh8" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~ModelCommandExecutor.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
              <node concept="1bVj0M" id="1KUoCipvzh9" role="37wK5m">
                <node concept="3clFbS" id="1KUoCipvzha" role="1bW5cS">
                  <node concept="3clFbF" id="1KUoCipvzhb" role="3cqZAp">
                    <node concept="37vLTI" id="1KUoCipvzhc" role="3clFbG">
                      <node concept="2OqwBi" id="1KUoCipvzhd" role="37vLTx">
                        <node concept="liA8E" id="1KUoCipvzhe" role="2OqNvi">
                          <ref role="37wK5l" to="aplb:3HJD4JbIwhr" resolve="buildProgramFor" />
                          <node concept="2OqwBi" id="1KUoCipvzhf" role="37wK5m">
                            <node concept="3gHZIF" id="1KUoCipvzhg" role="2OqNvi">
                              <ref role="2WH_rO" node="4KDfkUwM7El" resolve="node" />
                            </node>
                            <node concept="2WthIp" id="1KUoCipvzhh" role="2Oq$k0" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="1KUoCipvzhi" role="2Oq$k0">
                          <ref role="37wK5l" to="aplb:3HJD4JbIwg9" resolve="getInstance" />
                          <ref role="1Pybhc" to="aplb:3HJD4JbIwfM" resolve="DataFlowManager" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTzXG" role="37vLTJ">
                        <ref role="3cqZAo" node="4KDfkUwM7E1" resolve="program" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1KUoCipvzhk" role="3cqZAp">
                    <node concept="37vLTI" id="1KUoCipvzhl" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTAhy" role="37vLTJ">
                        <ref role="3cqZAo" node="1ekf28usyL3" resolve="graph" />
                      </node>
                      <node concept="2ShNRf" id="1KUoCipvzhn" role="37vLTx">
                        <node concept="1pGfFk" id="1KUoCipvzho" role="2ShVmc">
                          <ref role="37wK5l" to="cxih:3HJD4JbIvTM" resolve="ControlFlowGraph" />
                          <node concept="3uibUv" id="1KUoCipvzhp" role="1pMfVU">
                            <ref role="3uigEE" to="cxih:3HJD4JbIvBj" resolve="InstructionWrapper" />
                          </node>
                          <node concept="2ShNRf" id="1KUoCipvzhq" role="37wK5m">
                            <node concept="1pGfFk" id="1KUoCipvzhr" role="2ShVmc">
                              <ref role="37wK5l" to="cxih:3HJD4JbIwrl" resolve="ProgramWrapper" />
                              <node concept="37vLTw" id="3GM_nagTv07" role="37wK5m">
                                <ref role="3cqZAo" node="4KDfkUwM7E1" resolve="program" />
                              </node>
                            </node>
                          </node>
                          <node concept="2ShNRf" id="1KUoCipvzht" role="37wK5m">
                            <node concept="1pGfFk" id="1KUoCipvzhu" role="2ShVmc">
                              <ref role="37wK5l" to="cxih:3HJD4JbIvGV" resolve="GraphCreator" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ekf28usAWb" role="3cqZAp">
          <node concept="2OqwBi" id="1ekf28usAWv" role="3clFbG">
            <node concept="2ShNRf" id="4KDfkUwM7Ea" role="2Oq$k0">
              <node concept="1pGfFk" id="4KDfkUwM7Eb" role="2ShVmc">
                <ref role="37wK5l" to="cxih:3HJD4JbIwnh" resolve="ShowCFGDialog" />
                <node concept="37vLTw" id="3GM_nagT$2g" role="37wK5m">
                  <ref role="3cqZAo" node="1ekf28usyL3" resolve="graph" />
                </node>
                <node concept="2OqwBi" id="4KDfkUwM7Ed" role="37wK5m">
                  <node concept="2WthIp" id="4KDfkUwM7Ee" role="2Oq$k0" />
                  <node concept="1DTwFV" id="4KDfkUwM7Ef" role="2OqNvi">
                    <ref role="2WH_rO" node="4KDfkUwM7Ej" resolve="context" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4KDfkUwM7Eg" role="37wK5m">
                  <node concept="2WthIp" id="4KDfkUwM7Eh" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7ex9EVq1qzF" role="2OqNvi">
                    <ref role="2WH_rO" node="7ex9EVq1qz$" resolve="project" />
                  </node>
                </node>
                <node concept="Xl_RD" id="4sNt2MbMjht" role="37wK5m">
                  <property role="Xl_RC" value="Data Flow Graph" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1ekf28usAW_" role="2OqNvi">
              <ref role="37wK5l" to="810:~DialogWrapper.show():void" resolve="show" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="4KDfkUwM7Ej" role="1NuT2Z">
      <property role="TrG5h" value="context" />
      <ref role="1DUlNI" to="5xh9:~MPSCommonDataKeys.OPERATION_CONTEXT" resolve="OPERATION_CONTEXT" />
      <node concept="1oajcY" id="4KDfkUwM7Ek" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="4KDfkUwM7El" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm1VV" id="4KDfkUwM7Em" role="1B3o_S" />
      <node concept="3Tqbb2" id="4KDfkUwM7En" role="1tU5fm" />
      <node concept="1oajcY" id="4KDfkUwM7Eo" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7ex9EVq1qz$" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="nx1:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7ex9EVq1qz_" role="1oa70y" />
    </node>
  </node>
  <node concept="sE7Ow" id="4KDfkUwM7Er">
    <property role="TrG5h" value="PrintReachingDefinintionsInformation" />
    <property role="2uzpH1" value="Print DFA Reaching Definitions Information" />
    <node concept="tnohg" id="4KDfkUwM7Es" role="tncku">
      <node concept="3clFbS" id="4KDfkUwM7Et" role="2VODD2">
        <node concept="3cpWs8" id="4KDfkUwM7Eu" role="3cqZAp">
          <node concept="3cpWsn" id="4KDfkUwM7Ev" role="3cpWs9">
            <property role="TrG5h" value="program" />
            <node concept="3uibUv" id="4KDfkUwM7Ew" role="1tU5fm">
              <ref role="3uigEE" to="hxuy:~Program" resolve="Program" />
            </node>
            <node concept="2OqwBi" id="4KDfkUwM7Ex" role="33vP2m">
              <node concept="liA8E" id="4KDfkUwM7Ey" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIwhr" resolve="buildProgramFor" />
                <node concept="2OqwBi" id="4KDfkUwM7Ez" role="37wK5m">
                  <node concept="3gHZIF" id="4KDfkUwM7E$" role="2OqNvi">
                    <ref role="2WH_rO" node="4KDfkUwM7ES" resolve="node" />
                  </node>
                  <node concept="2WthIp" id="4KDfkUwM7E_" role="2Oq$k0" />
                </node>
              </node>
              <node concept="2YIFZM" id="4KDfkUwM7EA" role="2Oq$k0">
                <ref role="37wK5l" to="aplb:3HJD4JbIwg9" resolve="getInstance" />
                <ref role="1Pybhc" to="aplb:3HJD4JbIwfM" resolve="DataFlowManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4KDfkUwM7EB" role="3cqZAp">
          <node concept="3cpWsn" id="4KDfkUwM7EC" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4KDfkUwM7ED" role="1tU5fm">
              <ref role="3uigEE" to="hxuy:~AnalysisResult" resolve="AnalysisResult" />
              <node concept="2hMVRd" id="4KDfkUwM7EE" role="11_B2D">
                <node concept="3uibUv" id="4KDfkUwM7EF" role="2hN53Y">
                  <ref role="3uigEE" to="flgp:~WriteInstruction" resolve="WriteInstruction" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4KDfkUwM7EG" role="33vP2m">
              <node concept="liA8E" id="4KDfkUwM7EH" role="2OqNvi">
                <ref role="37wK5l" to="hxuy:~Program.analyze(jetbrains.mps.lang.dataFlow.framework.DataFlowAnalyzer):jetbrains.mps.lang.dataFlow.framework.AnalysisResult" resolve="analyze" />
                <node concept="2ShNRf" id="4KDfkUwM7EI" role="37wK5m">
                  <node concept="1pGfFk" id="4KDfkUwM7EJ" role="2ShVmc">
                    <ref role="37wK5l" to="i0jt:~ReachingDefinitionsAnalyzer.&lt;init&gt;()" resolve="ReachingDefinitionsAnalyzer" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagTvGA" role="2Oq$k0">
                <ref role="3cqZAo" node="4KDfkUwM7Ev" resolve="program" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4KDfkUwM7EL" role="3cqZAp">
          <node concept="2OqwBi" id="4KDfkUwM7EM" role="3clFbG">
            <node concept="10M0yZ" id="4KDfkUwM7EN" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4KDfkUwM7EO" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="2OqwBi" id="4KDfkUwM7EP" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagTvjf" role="2Oq$k0">
                  <ref role="3cqZAo" node="4KDfkUwM7EC" resolve="result" />
                </node>
                <node concept="liA8E" id="4KDfkUwM7ER" role="2OqNvi">
                  <ref role="37wK5l" to="hxuy:~AnalysisResult.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="4KDfkUwM7ES" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm1VV" id="4KDfkUwM7ET" role="1B3o_S" />
      <node concept="3Tqbb2" id="4KDfkUwM7EU" role="1tU5fm" />
      <node concept="1oajcY" id="4KDfkUwM7EV" role="1oa70y" />
    </node>
  </node>
  <node concept="sE7Ow" id="4KDfkUwM7EW">
    <property role="TrG5h" value="PrintInitializationInformation" />
    <property role="2uzpH1" value="Print DFA Initialization Information" />
    <node concept="tnohg" id="4KDfkUwM7EX" role="tncku">
      <node concept="3clFbS" id="4KDfkUwM7EY" role="2VODD2">
        <node concept="3cpWs8" id="4KDfkUwM7EZ" role="3cqZAp">
          <node concept="3cpWsn" id="4KDfkUwM7F0" role="3cpWs9">
            <property role="TrG5h" value="program" />
            <node concept="3uibUv" id="4KDfkUwM7F1" role="1tU5fm">
              <ref role="3uigEE" to="hxuy:~Program" resolve="Program" />
            </node>
            <node concept="2OqwBi" id="4KDfkUwM7F2" role="33vP2m">
              <node concept="liA8E" id="4KDfkUwM7F3" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIwhr" resolve="buildProgramFor" />
                <node concept="2OqwBi" id="4KDfkUwM7F4" role="37wK5m">
                  <node concept="3gHZIF" id="4KDfkUwM7F5" role="2OqNvi">
                    <ref role="2WH_rO" node="4KDfkUwM7Fo" resolve="node" />
                  </node>
                  <node concept="2WthIp" id="4KDfkUwM7F6" role="2Oq$k0" />
                </node>
              </node>
              <node concept="2YIFZM" id="4KDfkUwM7F7" role="2Oq$k0">
                <ref role="37wK5l" to="aplb:3HJD4JbIwg9" resolve="getInstance" />
                <ref role="1Pybhc" to="aplb:3HJD4JbIwfM" resolve="DataFlowManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4KDfkUwM7F8" role="3cqZAp">
          <node concept="3cpWsn" id="4KDfkUwM7F9" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4KDfkUwM7Fa" role="1tU5fm">
              <ref role="3uigEE" to="hxuy:~AnalysisResult" resolve="AnalysisResult" />
              <node concept="3uibUv" id="4KDfkUwM7Fb" role="11_B2D">
                <ref role="3uigEE" to="hxuy:~VarSet" resolve="VarSet" />
              </node>
            </node>
            <node concept="2OqwBi" id="4KDfkUwM7Fc" role="33vP2m">
              <node concept="liA8E" id="4KDfkUwM7Fd" role="2OqNvi">
                <ref role="37wK5l" to="hxuy:~Program.analyze(jetbrains.mps.lang.dataFlow.framework.DataFlowAnalyzer):jetbrains.mps.lang.dataFlow.framework.AnalysisResult" resolve="analyze" />
                <node concept="2ShNRf" id="4KDfkUwM7Fe" role="37wK5m">
                  <node concept="1pGfFk" id="4KDfkUwM7Ff" role="2ShVmc">
                    <ref role="37wK5l" to="i0jt:~InitializedVariablesAnalyzer.&lt;init&gt;()" resolve="InitializedVariablesAnalyzer" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagT_OO" role="2Oq$k0">
                <ref role="3cqZAo" node="4KDfkUwM7F0" resolve="program" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4KDfkUwM7Fh" role="3cqZAp">
          <node concept="2OqwBi" id="4KDfkUwM7Fi" role="3clFbG">
            <node concept="10M0yZ" id="4KDfkUwM7Fj" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4KDfkUwM7Fk" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="2OqwBi" id="4KDfkUwM7Fl" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagTA31" role="2Oq$k0">
                  <ref role="3cqZAo" node="4KDfkUwM7F9" resolve="result" />
                </node>
                <node concept="liA8E" id="4KDfkUwM7Fn" role="2OqNvi">
                  <ref role="37wK5l" to="hxuy:~AnalysisResult.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="4KDfkUwM7Fo" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm1VV" id="4KDfkUwM7Fp" role="1B3o_S" />
      <node concept="3Tqbb2" id="4KDfkUwM7Fq" role="1tU5fm" />
      <node concept="1oajcY" id="4KDfkUwM7Fr" role="1oa70y" />
    </node>
  </node>
  <node concept="tC5Ba" id="4KDfkUwM7Go">
    <property role="TrG5h" value="DataFlowInternal" />
    <node concept="ftmFs" id="4KDfkUwM7Gp" role="ftER_">
      <node concept="tCFHf" id="4KDfkUwM7Gq" role="ftvYc">
        <ref role="tCJdB" node="4KDfkUwM7Dx" resolve="PrintDFAResult" />
      </node>
      <node concept="tCFHf" id="4KDfkUwM7Gr" role="ftvYc">
        <ref role="tCJdB" node="4KDfkUwM7EW" resolve="PrintInitializationInformation" />
      </node>
      <node concept="tCFHf" id="4KDfkUwM7Gs" role="ftvYc">
        <ref role="tCJdB" node="4KDfkUwM7Er" resolve="PrintReachingDefinintionsInformation" />
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="6dAEaqvagLC" />
</model>

