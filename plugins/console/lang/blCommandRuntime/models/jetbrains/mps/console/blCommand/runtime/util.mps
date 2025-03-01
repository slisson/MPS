<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b4d3e080-529f-482d-ad99-114342004f83(jetbrains.mps.console.blCommand.runtime.util)">
  <persistence version="9" />
  <languages>
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="-1" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="-1" />
    <use id="de1ad86d-6e50-4a02-b306-d4d17f64c375" name="jetbrains.mps.console.base" version="-1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="d4615e3b-d671-4ba9-af01-2b78369b0ba7" name="jetbrains.mps.lang.pattern" version="-1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="b2d5" ref="r:1a2b3027-99d2-4946-917b-f185130ac75d(jetbrains.mps.ide.findusages.findalgorithm.finders)" />
    <import index="qgo0" ref="r:de40a5a4-f08c-4c67-ac43-e1f5c384f7d6(jetbrains.mps.console.tool)" />
    <import index="88zw" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(java.util@java_stub)" />
    <import index="ec5l" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(jetbrains.mps.util@java_stub)" />
    <import index="vsqj" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(jetbrains.mps.project@java_stub)" />
    <import index="5fm0" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.ide.findusages.model(jetbrains.mps.ide.findusages.model@java_stub)" />
    <import index="pt5l" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.project(jetbrains.mps.ide.project@java_stub)" />
    <import index="b2mh" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.project(com.intellij.openapi.project@java_stub)" />
    <import index="iiw6" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.components(com.intellij.openapi.components@java_stub)" />
    <import index="luw9" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.findUsages(jetbrains.mps.findUsages@java_stub)" />
    <import index="g9ly" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.ide.findusages.view(jetbrains.mps.ide.findusages.view@java_stub)" />
    <import index="ff4b" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.progress(jetbrains.mps.progress@java_stub)" />
    <import index="t3eg" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.language(org.jetbrains.mps.openapi.language@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(java.lang@java_stub)" />
    <import index="tk08" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.findusages.view(jetbrains.mps.ide.findusages.view@java_stub)" />
    <import index="tpem" ref="r:00000000-0000-4000-0000-011c895902c2(jetbrains.mps.baseLanguage.dataFlow)" />
    <import index="as9o" ref="f:java_stub#3f233e7f-b8a6-46d2-a57f-795d56775243#org.jetbrains.annotations(org.jetbrains.annotations@java_stub)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" />
    <import index="eynw" ref="r:359b1d2b-77c4-46df-9bf2-b25cbea32254(jetbrains.mps.console.base.structure)" />
    <import index="fxg7" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(java.io@java_stub)" />
    <import index="810" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.ui(com.intellij.openapi.ui@java_stub)" />
    <import index="4xk" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.ide(com.intellij.ide@java_stub)" />
    <import index="tt4m" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt.datatransfer(java.awt.datatransfer@java_stub)" />
    <import index="dbrf" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(javax.swing@java_stub)" />
    <import index="oh9p" ref="r:ab572aa6-6e4f-43f3-8bc9-ad4a8ae29372(jetbrains.mps.console.actions)" />
    <import index="3xdn" ref="r:935ba0ee-7291-4caa-a807-d76e8fc69391(jetbrains.mps.console.blCommand.structure)" />
    <import index="ubyd" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.ide.findusages.model.scopes(jetbrains.mps.ide.findusages.model.scopes@java_stub)" />
    <import index="tp4s" ref="r:00000000-0000-4000-0000-011c89590360(jetbrains.mps.lang.plugin.behavior)" />
    <import index="tp4k" ref="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" />
    <import index="zyb2" ref="r:1754cb33-73c2-441d-96bc-93a7824726e7(jetbrains.mps.console.base.behavior)" />
    <import index="nx1" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.actionSystem(com.intellij.openapi.actionSystem@java_stub)" />
    <import index="pvwh" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.workbench.action(jetbrains.mps.workbench.action@java_stub)" />
    <import index="yla8" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.application(com.intellij.openapi.application@java_stub)" />
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167228628751" name="hasException" index="34fQS0" />
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
        <child id="1167227561449" name="exception" index="34bMjA" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="8758390115029295477" name="jetbrains.mps.lang.smodel.structure.SReferenceType" flags="in" index="2z4iKi" />
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="hpHLh7Fj1$">
    <property role="TrG5h" value="CommandUtil" />
    <node concept="2tJIrI" id="3k3Ji7Iobfo" role="jymVt" />
    <node concept="2YIFZL" id="hpHLh7Fj2X" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="TrG5h" value="nodes" />
      <node concept="A3Dl8" id="hpHLh7Fj3p" role="3clF45">
        <node concept="3Tqbb2" id="hpHLh7Fj3C" role="A3Ik2" />
      </node>
      <node concept="3clFbS" id="hpHLh7Fj2M" role="3clF47">
        <node concept="3cpWs6" id="3k3Ji7IuJEh" role="3cqZAp">
          <node concept="2OqwBi" id="5uXC5_7gwrc" role="3cqZAk">
            <node concept="1rXfSq" id="5uXC5_7gwrd" role="2Oq$k0">
              <ref role="37wK5l" node="DM6_$imnYd" resolve="models" />
              <node concept="37vLTw" id="5uXC5_7gwre" role="37wK5m">
                <ref role="3cqZAo" node="6XMuEGDXkmL" resolve="scope" />
              </node>
            </node>
            <node concept="3goQfb" id="5uXC5_7gwrf" role="2OqNvi">
              <node concept="1bVj0M" id="5uXC5_7gwrg" role="23t8la">
                <node concept="3clFbS" id="5uXC5_7gwrh" role="1bW5cS">
                  <node concept="3clFbF" id="5uXC5_7gwri" role="3cqZAp">
                    <node concept="2OqwBi" id="5uXC5_7gwrj" role="3clFbG">
                      <node concept="37vLTw" id="5uXC5_7gwrk" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uXC5_7gwrm" resolve="it" />
                      </node>
                      <node concept="2SmgA7" id="5uXC5_7gwrl" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5uXC5_7gwrm" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5uXC5_7gwrn" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hpHLh7Fj2L" role="1B3o_S" />
      <node concept="37vLTG" id="6XMuEGDXkmL" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="4CUSouB_dXW" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1El5OLsHeH_" role="jymVt" />
    <node concept="2YIFZL" id="1El5OLsHe1P" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="TrG5h" value="references" />
      <node concept="A3Dl8" id="1El5OLsHe1Q" role="3clF45">
        <node concept="2z4iKi" id="1El5OLsHob8" role="A3Ik2" />
      </node>
      <node concept="3clFbS" id="1El5OLsHe1S" role="3clF47">
        <node concept="3cpWs6" id="5X1VVpPDrTg" role="3cqZAp">
          <node concept="2OqwBi" id="1El5OLsHioO" role="3cqZAk">
            <node concept="1rXfSq" id="1El5OLsHhNm" role="2Oq$k0">
              <ref role="37wK5l" node="hpHLh7Fj2X" resolve="nodes" />
              <node concept="37vLTw" id="6XMuEGDXs7O" role="37wK5m">
                <ref role="3cqZAo" node="6XMuEGDXp_Y" resolve="scope" />
              </node>
            </node>
            <node concept="3goQfb" id="1El5OLsHkY4" role="2OqNvi">
              <node concept="1bVj0M" id="1El5OLsHkY5" role="23t8la">
                <node concept="3clFbS" id="1El5OLsHkY6" role="1bW5cS">
                  <node concept="3clFbF" id="1El5OLsHl6D" role="3cqZAp">
                    <node concept="2OqwBi" id="1El5OLsHlk5" role="3clFbG">
                      <node concept="37vLTw" id="1El5OLsHl6C" role="2Oq$k0">
                        <ref role="3cqZAo" node="1El5OLsHkY7" resolve="it" />
                      </node>
                      <node concept="2z74zc" id="1El5OLsHnkA" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1El5OLsHkY7" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1El5OLsHkY8" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1El5OLsHe2u" role="1B3o_S" />
      <node concept="37vLTG" id="6XMuEGDXp_Y" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="4CUSouB_eer" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="DM6_$imnlH" role="jymVt" />
    <node concept="2YIFZL" id="DM6_$imnYd" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="TrG5h" value="models" />
      <node concept="A3Dl8" id="DM6_$imnYe" role="3clF45">
        <node concept="H_c77" id="DM6_$imI6H" role="A3Ik2" />
      </node>
      <node concept="3clFbS" id="DM6_$imnYg" role="3clF47">
        <node concept="3clFbF" id="4CUSouB_dyC" role="3cqZAp">
          <node concept="10QFUN" id="4CUSouB_dVC" role="3clFbG">
            <node concept="2OqwBi" id="4CUSouB_dG2" role="10QFUP">
              <node concept="37vLTw" id="4CUSouB_dyB" role="2Oq$k0">
                <ref role="3cqZAo" node="6XMuEGDX4DE" resolve="scope" />
              </node>
              <node concept="liA8E" id="4CUSouB_dMK" role="2OqNvi">
                <ref role="37wK5l" to="88zw:~SearchScope.getModels():java.lang.Iterable" resolve="getModels" />
              </node>
            </node>
            <node concept="A3Dl8" id="4CUSouB_dVD" role="10QFUM">
              <node concept="H_c77" id="4CUSouB_dVE" role="A3Ik2" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="DM6_$imnYu" role="1B3o_S" />
      <node concept="37vLTG" id="6XMuEGDX4DE" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="4CUSouB_dgL" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="DM6_$ind9h" role="jymVt" />
    <node concept="2YIFZL" id="DM6_$ineY0" role="jymVt">
      <property role="TrG5h" value="modules" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="DM6_$ineY3" role="3clF47">
        <node concept="3clFbF" id="4CUSouB_bPV" role="3cqZAp">
          <node concept="2OqwBi" id="4CUSouB_bT5" role="3clFbG">
            <node concept="37vLTw" id="4CUSouB_bPU" role="2Oq$k0">
              <ref role="3cqZAo" node="DM6_$infPI" resolve="scope" />
            </node>
            <node concept="liA8E" id="4CUSouB_bZF" role="2OqNvi">
              <ref role="37wK5l" to="88zw:~SearchScope.getModules():java.lang.Iterable" resolve="getModules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="DM6_$inedA" role="1B3o_S" />
      <node concept="A3Dl8" id="DM6_$ineWB" role="3clF45">
        <node concept="3uibUv" id="DM6_$ineXO" role="A3Ik2">
          <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="DM6_$infPI" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="4CUSouB_bIe" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3J6h25QQbHf" role="jymVt" />
    <node concept="2YIFZL" id="6H$fNdLgK3S" role="jymVt">
      <property role="TrG5h" value="usages" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6H$fNdLgK3V" role="3clF47">
        <node concept="3cpWs6" id="4CUSouB_$IG" role="3cqZAp">
          <node concept="10QFUN" id="4CUSouB__vN" role="3cqZAk">
            <node concept="2OqwBi" id="6H$fNdLynDp" role="10QFUP">
              <node concept="2YIFZM" id="6H$fNdLynyS" role="2Oq$k0">
                <ref role="1Pybhc" to="luw9:~FindUsagesManager" resolve="FindUsagesManager" />
                <ref role="37wK5l" to="luw9:~FindUsagesManager.getInstance():jetbrains.mps.findUsages.FindUsagesManager" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="6H$fNdLyoU3" role="2OqNvi">
                <ref role="37wK5l" to="luw9:~FindUsagesManager.findUsages(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,org.jetbrains.mps.openapi.util.ProgressMonitor):java.util.Set" resolve="findUsages" />
                <node concept="37vLTw" id="6H$fNdLyp5G" role="37wK5m">
                  <ref role="3cqZAo" node="6H$fNdLgK7P" resolve="scope" />
                </node>
                <node concept="2YIFZM" id="6H$fNdLypH8" role="37wK5m">
                  <ref role="37wK5l" to="k7g3:~Collections.singleton(java.lang.Object):java.util.Set" resolve="singleton" />
                  <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
                  <node concept="37vLTw" id="6H$fNdLypUz" role="37wK5m">
                    <ref role="3cqZAo" node="6H$fNdLgK8B" resolve="node" />
                  </node>
                  <node concept="3Tqbb2" id="6H$fNdLyxET" role="3PaCim" />
                </node>
                <node concept="2ShNRf" id="6H$fNdLyqnR" role="37wK5m">
                  <node concept="1pGfFk" id="6H$fNdLyw9B" role="2ShVmc">
                    <ref role="37wK5l" to="ff4b:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="4CUSouB_BNC" role="10QFUM">
              <node concept="2z4iKi" id="4CUSouB_BNE" role="2hN53Y" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6H$fNdLgJYP" role="1B3o_S" />
      <node concept="3vKaQO" id="6H$fNdLgK3f" role="3clF45">
        <node concept="2z4iKi" id="6H$fNdLyylr" role="3O5elw" />
      </node>
      <node concept="37vLTG" id="6H$fNdLgK7P" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="4CUSouB_9J5" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="6H$fNdLgK8B" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6H$fNdLgK8P" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6H$fNdLyIEU" role="jymVt" />
    <node concept="2YIFZL" id="6H$fNdLyI$k" role="jymVt">
      <property role="TrG5h" value="instances" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6H$fNdLyI$l" role="3clF47">
        <node concept="3cpWs6" id="6H$fNdLyI$m" role="3cqZAp">
          <node concept="2OqwBi" id="6H$fNdLyI$n" role="3cqZAk">
            <node concept="2YIFZM" id="6H$fNdLyI$o" role="2Oq$k0">
              <ref role="37wK5l" to="luw9:~FindUsagesManager.getInstance():jetbrains.mps.findUsages.FindUsagesManager" resolve="getInstance" />
              <ref role="1Pybhc" to="luw9:~FindUsagesManager" resolve="FindUsagesManager" />
            </node>
            <node concept="liA8E" id="6H$fNdLyI$p" role="2OqNvi">
              <ref role="37wK5l" to="luw9:~FindUsagesManager.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor):java.util.Set" resolve="findInstances" />
              <node concept="37vLTw" id="6H$fNdLyI$q" role="37wK5m">
                <ref role="3cqZAo" node="6H$fNdLyI$z" resolve="scope" />
              </node>
              <node concept="2YIFZM" id="6H$fNdLyI$r" role="37wK5m">
                <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="k7g3:~Collections.singleton(java.lang.Object):java.util.Set" resolve="singleton" />
                <node concept="37vLTw" id="5Yox2dUVYIY" role="37wK5m">
                  <ref role="3cqZAo" node="6H$fNdLyI$_" resolve="concept" />
                </node>
              </node>
              <node concept="3clFbT" id="6H$fNdLz3C$" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="2ShNRf" id="6H$fNdLyI$u" role="37wK5m">
                <node concept="1pGfFk" id="6H$fNdLyI$v" role="2ShVmc">
                  <ref role="37wK5l" to="ff4b:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6H$fNdLyI$w" role="1B3o_S" />
      <node concept="3vKaQO" id="6H$fNdLyI$x" role="3clF45">
        <node concept="3Tqbb2" id="6H$fNdLyKQv" role="3O5elw" />
      </node>
      <node concept="37vLTG" id="6H$fNdLyI$z" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="4CUSouB_97L" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="6H$fNdLyI$_" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="5Yox2dUVZ2x" role="1tU5fm">
          <ref role="3uigEE" to="t3eg:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3J6h25QQc6K" role="jymVt" />
    <node concept="2YIFZL" id="YwfKjlX8gC" role="jymVt">
      <property role="TrG5h" value="show" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="YwfKjlWH82" role="3clF45" />
      <node concept="37vLTG" id="YwfKjlWH9m" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="YwfKjlWH9l" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="YwfKjlWH9y" role="3clF46">
        <property role="TrG5h" value="results" />
        <node concept="1ajhzC" id="1oFmEVz5uJq" role="1tU5fm">
          <node concept="3uibUv" id="1oFmEVz5vnA" role="1ajl9A">
            <ref role="3uigEE" to="5fm0:~SearchResults" resolve="SearchResults" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="YwfKjlWH8e" role="3clF47">
        <node concept="SfApY" id="6M9lfhDHQRu" role="3cqZAp">
          <node concept="3clFbS" id="6M9lfhDHQRw" role="SfCbr">
            <node concept="3clFbF" id="YwfKjlWHaA" role="3cqZAp">
              <node concept="2OqwBi" id="6M9lfhDGIIu" role="3clFbG">
                <node concept="2EnYce" id="7wtp0S5i5vV" role="2Oq$k0">
                  <node concept="2YIFZM" id="YwfKjlWHEt" role="2Oq$k0">
                    <ref role="37wK5l" to="pt5l:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
                    <ref role="1Pybhc" to="pt5l:~ProjectHelper" resolve="ProjectHelper" />
                    <node concept="37vLTw" id="YwfKjlWHEN" role="37wK5m">
                      <ref role="3cqZAo" node="YwfKjlWH9m" resolve="p" />
                    </node>
                  </node>
                  <node concept="liA8E" id="YwfKjlWKKQ" role="2OqNvi">
                    <ref role="37wK5l" to="iiw6:~ComponentManager.getComponent(java.lang.Class):java.lang.Object" resolve="getComponent" />
                    <node concept="3VsKOn" id="YwfKjlWLmT" role="37wK5m">
                      <ref role="3VsUkX" to="tk08:~UsagesViewTool" resolve="UsagesViewTool" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="YwfKjlX7TS" role="2OqNvi">
                  <ref role="37wK5l" to="tk08:~UsagesViewTool.show(jetbrains.mps.ide.findusages.model.SearchResults,java.lang.String):void" resolve="show" />
                  <node concept="2Sg_IR" id="1oFmEVz5w9u" role="37wK5m">
                    <node concept="37vLTw" id="1oFmEVz5w9v" role="2SgG2M">
                      <ref role="3cqZAo" node="YwfKjlWH9y" resolve="results" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6M9lfhDGpMO" role="37wK5m">
                    <property role="Xl_RC" value="No results to show" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="6M9lfhDHQRx" role="TEbGg">
            <node concept="3cpWsn" id="6M9lfhDHQRz" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="6M9lfhDHRy6" role="1tU5fm">
                <ref role="3uigEE" to="e2lb:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="6M9lfhDHQRB" role="TDEfX">
              <node concept="34ab3g" id="6M9lfhDHRXD" role="3cqZAp">
                <property role="35gtTG" value="warn" />
                <property role="34fQS0" value="true" />
                <node concept="Xl_RD" id="6M9lfhDHRXF" role="34bqiv">
                  <property role="Xl_RC" value="Exception in showing custom console result" />
                </node>
                <node concept="37vLTw" id="6M9lfhDHSTh" role="34bMjA">
                  <ref role="3cqZAo" node="6M9lfhDHQRz" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="YwfKjlWH6V" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6_TW7xVH9Oh" role="jymVt" />
    <node concept="2YIFZL" id="6_TW7xVHbRP" role="jymVt">
      <property role="TrG5h" value="printClosure" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6_TW7xVHbRS" role="3clF47">
        <node concept="3cpWs8" id="6_TW7xVvsk4" role="3cqZAp">
          <node concept="3cpWsn" id="6_TW7xVvsk5" role="3cpWs9">
            <property role="TrG5h" value="nodeWithClosure" />
            <node concept="3Tqbb2" id="6_TW7xVvsk6" role="1tU5fm">
              <ref role="ehGHo" to="eynw:XHjpmeKJb6" resolve="NodeWithClosure" />
            </node>
            <node concept="2ShNRf" id="6_TW7xVvsk7" role="33vP2m">
              <node concept="3zrR0B" id="6_TW7xVvsk8" role="2ShVmc">
                <node concept="3Tqbb2" id="6_TW7xVvsk9" role="3zrR0E">
                  <ref role="ehGHo" to="eynw:XHjpmeKJb6" resolve="NodeWithClosure" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6_TW7xVvska" role="3cqZAp">
          <node concept="37vLTI" id="6_TW7xVvskb" role="3clFbG">
            <node concept="2OqwBi" id="6_TW7xVvskc" role="37vLTJ">
              <node concept="37vLTw" id="6_TW7xVvskd" role="2Oq$k0">
                <ref role="3cqZAo" node="6_TW7xVvsk5" resolve="nodeWithClosure" />
              </node>
              <node concept="3TrcHB" id="6_TW7xVvske" role="2OqNvi">
                <ref role="3TsBF5" to="eynw:3ob4OZ0hWSE" resolve="text" />
              </node>
            </node>
            <node concept="37vLTw" id="6_TW7xVHrmy" role="37vLTx">
              <ref role="3cqZAo" node="6_TW7xVHprM" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6_TW7xVvskl" role="3cqZAp">
          <node concept="2OqwBi" id="6_TW7xVvskm" role="3clFbG">
            <node concept="2YIFZM" id="6_TW7xVvskn" role="2Oq$k0">
              <ref role="1Pybhc" to="oh9p:2ONldth5Ft3" resolve="ClosureHoldingNodeUtil" />
              <ref role="37wK5l" to="oh9p:2ONldth5FtA" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="6_TW7xVvsko" role="2OqNvi">
              <ref role="37wK5l" to="oh9p:2ONldth5FtR" resolve="register" />
              <node concept="37vLTw" id="6_TW7xVvskp" role="37wK5m">
                <ref role="3cqZAo" node="6_TW7xVvsk5" resolve="nodeWithClosure" />
              </node>
              <node concept="37vLTw" id="igjXyurl_9" role="37wK5m">
                <ref role="3cqZAo" node="6_TW7xVHjmt" resolve="closure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6_TW7xVvwFd" role="3cqZAp">
          <node concept="2OqwBi" id="6_TW7xVvrTs" role="3clFbG">
            <node concept="37vLTw" id="6_TW7xVHrRD" role="2Oq$k0">
              <ref role="3cqZAo" node="6_TW7xVHhd5" resolve="console" />
            </node>
            <node concept="liA8E" id="6_TW7xVvrTF" role="2OqNvi">
              <ref role="37wK5l" to="qgo0:7Jzw3XJWFQB" resolve="addNode" />
              <node concept="37vLTw" id="6_TW7xVvxSh" role="37wK5m">
                <ref role="3cqZAo" node="6_TW7xVvsk5" resolve="nodeWithClosure" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6_TW7xVHawb" role="1B3o_S" />
      <node concept="3cqZAl" id="6_TW7xVHbA9" role="3clF45" />
      <node concept="37vLTG" id="6_TW7xVHhd5" role="3clF46">
        <property role="TrG5h" value="console" />
        <node concept="3uibUv" id="6_TW7xVHhxi" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:5WpmwkrQPPk" resolve="ConsoleStream" />
        </node>
      </node>
      <node concept="37vLTG" id="6_TW7xVHjmt" role="3clF46">
        <property role="TrG5h" value="closure" />
        <node concept="1ajhzC" id="igjXyurl8w" role="1tU5fm">
          <node concept="3cqZAl" id="igjXyurlrQ" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="6_TW7xVHprM" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="6_TW7xVHpPs" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="32notsQa_C_" role="jymVt" />
    <node concept="2YIFZL" id="7OcVEq$r3o_" role="jymVt">
      <property role="TrG5h" value="printSequence" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="7OcVEq$r3oC" role="3clF47">
        <node concept="3clFbJ" id="7uW68YxsGKv" role="3cqZAp">
          <node concept="3clFbS" id="7uW68YxsGKy" role="3clFbx">
            <node concept="3clFbF" id="7uW68YxsIBY" role="3cqZAp">
              <node concept="2OqwBi" id="7uW68YxsIDc" role="3clFbG">
                <node concept="37vLTw" id="7uW68YxsIBX" role="2Oq$k0">
                  <ref role="3cqZAo" node="7OcVEq$sjIV" resolve="console" />
                </node>
                <node concept="liA8E" id="7uW68YxsIOi" role="2OqNvi">
                  <ref role="37wK5l" to="qgo0:5WpmwkrQPWC" resolve="addText" />
                  <node concept="Xl_RD" id="7uW68YxsIPy" role="37wK5m">
                    <property role="Xl_RC" value="empty sequence" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7uW68YxsIa$" role="3clFbw">
            <node concept="3cmrfG" id="7uW68YxsI_D" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="7uW68YxsHcp" role="3uHU7B">
              <ref role="3cqZAo" node="7OcVEq$ssJv" resolve="resultsCount" />
            </node>
          </node>
          <node concept="9aQIb" id="7uW68YxsJ1w" role="9aQIa">
            <node concept="3clFbS" id="7uW68YxsJ1x" role="9aQI4">
              <node concept="3clFbF" id="7uW68YxsJF4" role="3cqZAp">
                <node concept="2YIFZM" id="6_TW7xVHEl6" role="3clFbG">
                  <ref role="1Pybhc" node="hpHLh7Fj1$" resolve="CommandUtil" />
                  <ref role="37wK5l" node="6_TW7xVHbRP" resolve="printClosure" />
                  <node concept="37vLTw" id="7OcVEq$skpu" role="37wK5m">
                    <ref role="3cqZAo" node="7OcVEq$sjIV" resolve="console" />
                  </node>
                  <node concept="1bVj0M" id="igjXyur9Iz" role="37wK5m">
                    <node concept="3clFbS" id="igjXyur9I_" role="1bW5cS">
                      <node concept="3clFbF" id="6_TW7xVIkl9" role="3cqZAp">
                        <node concept="2YIFZM" id="6_TW7xVHMGx" role="3clFbG">
                          <ref role="37wK5l" node="YwfKjlX8gC" resolve="show" />
                          <ref role="1Pybhc" node="hpHLh7Fj1$" resolve="CommandUtil" />
                          <node concept="37vLTw" id="7OcVEq$spOW" role="37wK5m">
                            <ref role="3cqZAo" node="7OcVEq$so7u" resolve="project" />
                          </node>
                          <node concept="37vLTw" id="32notsQ90CP" role="37wK5m">
                            <ref role="3cqZAo" node="7OcVEq$sqLw" resolve="results" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs3" id="6_TW7xVKW7p" role="37wK5m">
                    <node concept="3cpWs3" id="6_TW7xVHOQ_" role="3uHU7B">
                      <node concept="Xl_RD" id="6_TW7xVKYUn" role="3uHU7w">
                        <property role="Xl_RC" value=" " />
                      </node>
                      <node concept="37vLTw" id="7OcVEq$stnI" role="3uHU7B">
                        <ref role="3cqZAo" node="7OcVEq$ssJv" resolve="resultsCount" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7OcVEq$swV5" role="3uHU7w">
                      <ref role="3cqZAo" node="7OcVEq$sv8h" resolve="resultDescription" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7OcVEq$r2Wm" role="1B3o_S" />
      <node concept="3cqZAl" id="7OcVEq$r3ov" role="3clF45" />
      <node concept="37vLTG" id="7OcVEq$sjIV" role="3clF46">
        <property role="TrG5h" value="console" />
        <node concept="3uibUv" id="7OcVEq$sjIU" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:5WpmwkrQPPk" resolve="ConsoleStream" />
        </node>
      </node>
      <node concept="37vLTG" id="7OcVEq$so7u" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7OcVEq$upcg" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7OcVEq$sqLw" role="3clF46">
        <property role="TrG5h" value="results" />
        <node concept="1ajhzC" id="32notsQ8ZpQ" role="1tU5fm">
          <node concept="3uibUv" id="32notsQ903A" role="1ajl9A">
            <ref role="3uigEE" to="5fm0:~SearchResults" resolve="SearchResults" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7OcVEq$ssJv" role="3clF46">
        <property role="TrG5h" value="resultsCount" />
        <node concept="10Oyi0" id="7OcVEq$st9G" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7OcVEq$sv8h" role="3clF46">
        <property role="TrG5h" value="resultDescription" />
        <node concept="17QB3L" id="7OcVEq$swc4" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="YwfKjlXcm7" role="jymVt" />
    <node concept="2YIFZL" id="YwfKjlXcuc" role="jymVt">
      <property role="TrG5h" value="nodesToResults" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="YwfKjlXcuf" role="3clF47">
        <node concept="3clFbF" id="1oFmEVz7H6Z" role="3cqZAp">
          <node concept="1bVj0M" id="1oFmEVz7H6V" role="3clFbG">
            <node concept="3clFbS" id="1oFmEVz7H6X" role="1bW5cS">
              <node concept="3cpWs8" id="YwfKjlXfxw" role="3cqZAp">
                <node concept="3cpWsn" id="YwfKjlXfxx" role="3cpWs9">
                  <property role="TrG5h" value="res" />
                  <node concept="3uibUv" id="YwfKjlXfxo" role="1tU5fm">
                    <ref role="3uigEE" to="5fm0:~SearchResults" resolve="SearchResults" />
                    <node concept="3Tqbb2" id="YwfKjlXfxr" role="11_B2D" />
                  </node>
                  <node concept="2ShNRf" id="YwfKjlXfxy" role="33vP2m">
                    <node concept="1pGfFk" id="YwfKjlXfxz" role="2ShVmc">
                      <ref role="37wK5l" to="5fm0:~SearchResults.&lt;init&gt;()" resolve="SearchResults" />
                      <node concept="3Tqbb2" id="YwfKjlXfx$" role="1pMfVU" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="YwfKjlXfEY" role="3cqZAp">
                <node concept="2OqwBi" id="YwfKjlXg2Q" role="3clFbG">
                  <node concept="2OqwBi" id="7k8t3EBnE2o" role="2Oq$k0">
                    <node concept="37vLTw" id="YwfKjlXfEX" role="2Oq$k0">
                      <ref role="3cqZAo" node="YwfKjlXcvI" resolve="nodes" />
                    </node>
                    <node concept="3zZkjj" id="7k8t3EBnEW9" role="2OqNvi">
                      <node concept="1bVj0M" id="7k8t3EBnEWb" role="23t8la">
                        <node concept="3clFbS" id="7k8t3EBnEWc" role="1bW5cS">
                          <node concept="3clFbF" id="7k8t3EBnF9c" role="3cqZAp">
                            <node concept="3y3z36" id="7k8t3EBnGjR" role="3clFbG">
                              <node concept="10Nm6u" id="7k8t3EBnGy7" role="3uHU7w" />
                              <node concept="2EnYce" id="7k8t3EBnFyZ" role="3uHU7B">
                                <node concept="37vLTw" id="1oFmEVz7Gke" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7k8t3EBnEWd" resolve="it" />
                                </node>
                                <node concept="liA8E" id="7k8t3EBnFQ2" role="2OqNvi">
                                  <ref role="37wK5l" to="ec5l:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                                  <node concept="37vLTw" id="1oFmEVz7GpZ" role="37wK5m">
                                    <ref role="3cqZAo" node="32notsQjaZB" resolve="repository" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="7k8t3EBnEWd" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="7k8t3EBnEWe" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2es0OD" id="YwfKjlXgR7" role="2OqNvi">
                    <node concept="1bVj0M" id="YwfKjlXgR9" role="23t8la">
                      <node concept="3clFbS" id="YwfKjlXgRa" role="1bW5cS">
                        <node concept="3clFbF" id="YwfKjlXgV_" role="3cqZAp">
                          <node concept="2OqwBi" id="YwfKjlXjON" role="3clFbG">
                            <node concept="2OqwBi" id="YwfKjlXhkH" role="2Oq$k0">
                              <node concept="37vLTw" id="1oFmEVz7Gnj" role="2Oq$k0">
                                <ref role="3cqZAo" node="YwfKjlXfxx" resolve="res" />
                              </node>
                              <node concept="liA8E" id="YwfKjlXiwi" role="2OqNvi">
                                <ref role="37wK5l" to="5fm0:~SearchResults.getSearchResults():java.util.List" resolve="getSearchResults" />
                              </node>
                            </node>
                            <node concept="liA8E" id="YwfKjlXqSs" role="2OqNvi">
                              <ref role="37wK5l" to="k7g3:~List.add(java.lang.Object):boolean" resolve="add" />
                              <node concept="2ShNRf" id="YwfKjlXr5f" role="37wK5m">
                                <node concept="1pGfFk" id="YwfKjlXzb3" role="2ShVmc">
                                  <ref role="37wK5l" to="5fm0:~SearchResult.&lt;init&gt;(java.lang.Object,java.lang.String)" resolve="SearchResult" />
                                  <node concept="3Tqbb2" id="YwfKjlXzzg" role="1pMfVU" />
                                  <node concept="2EnYce" id="7k8t3EBnfcj" role="37wK5m">
                                    <node concept="37vLTw" id="1oFmEVz7G7e" role="2Oq$k0">
                                      <ref role="3cqZAo" node="YwfKjlXgRb" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="32notsQjaHX" role="2OqNvi">
                                      <ref role="37wK5l" to="ec5l:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                                      <node concept="37vLTw" id="1oFmEVz7GbZ" role="37wK5m">
                                        <ref role="3cqZAo" node="32notsQjaZB" resolve="repository" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="YwfKjlX$eA" role="37wK5m">
                                    <property role="Xl_RC" value="usage" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="YwfKjlXgRb" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="YwfKjlXgRc" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="YwfKjlXcwI" role="3cqZAp">
                <node concept="37vLTw" id="1oFmEVz7Geg" role="3cqZAk">
                  <ref role="3cqZAo" node="YwfKjlXfxx" resolve="res" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="YwfKjlXcso" role="1B3o_S" />
      <node concept="37vLTG" id="YwfKjlXcvI" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="YwfKjlXcvG" role="1tU5fm">
          <node concept="3uibUv" id="32notsQj9QQ" role="A3Ik2">
            <ref role="3uigEE" to="ec5l:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="32notsQjaZB" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="32notsQjb2m" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="1ajhzC" id="1oFmEVz7I3N" role="3clF45">
        <node concept="3uibUv" id="1oFmEVz7I3O" role="1ajl9A">
          <ref role="3uigEE" to="5fm0:~SearchResults" resolve="SearchResults" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="YwfKjlXcCs" role="jymVt" />
    <node concept="2YIFZL" id="YwfKjlXcx9" role="jymVt">
      <property role="TrG5h" value="modelsToResults" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="YwfKjlXcxa" role="3clF47">
        <node concept="3clFbF" id="1oFmEVz7baq" role="3cqZAp">
          <node concept="1bVj0M" id="1oFmEVz7bam" role="3clFbG">
            <node concept="3clFbS" id="1oFmEVz7bao" role="1bW5cS">
              <node concept="3cpWs8" id="YwfKjlX_cy" role="3cqZAp">
                <node concept="3cpWsn" id="YwfKjlX_cz" role="3cpWs9">
                  <property role="TrG5h" value="res" />
                  <node concept="3uibUv" id="YwfKjlX_c$" role="1tU5fm">
                    <ref role="3uigEE" to="5fm0:~SearchResults" resolve="SearchResults" />
                    <node concept="H_c77" id="YwfKjlX_On" role="11_B2D" />
                  </node>
                  <node concept="2ShNRf" id="YwfKjlX_cA" role="33vP2m">
                    <node concept="1pGfFk" id="YwfKjlX_cB" role="2ShVmc">
                      <ref role="37wK5l" to="5fm0:~SearchResults.&lt;init&gt;()" resolve="SearchResults" />
                      <node concept="H_c77" id="YwfKjlX_Os" role="1pMfVU" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="YwfKjlX_cD" role="3cqZAp">
                <node concept="2OqwBi" id="YwfKjlX_cE" role="3clFbG">
                  <node concept="2OqwBi" id="7k8t3EBnrxf" role="2Oq$k0">
                    <node concept="37vLTw" id="YwfKjlX_cF" role="2Oq$k0">
                      <ref role="3cqZAo" node="YwfKjlXcxf" resolve="models" />
                    </node>
                    <node concept="3zZkjj" id="7k8t3EBnsr0" role="2OqNvi">
                      <node concept="1bVj0M" id="7k8t3EBnsr2" role="23t8la">
                        <node concept="3clFbS" id="7k8t3EBnsr3" role="1bW5cS">
                          <node concept="3clFbF" id="7k8t3EBnsC3" role="3cqZAp">
                            <node concept="3y3z36" id="7k8t3EBnu18" role="3clFbG">
                              <node concept="10Nm6u" id="7k8t3EBnufo" role="3uHU7w" />
                              <node concept="2EnYce" id="7k8t3EBnt9h" role="3uHU7B">
                                <node concept="37vLTw" id="7k8t3EBnsC2" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7k8t3EBnsr4" resolve="it" />
                                </node>
                                <node concept="liA8E" id="7k8t3EBntzJ" role="2OqNvi">
                                  <ref role="37wK5l" to="ec5l:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SModel" resolve="resolve" />
                                  <node concept="37vLTw" id="7k8t3EBntLR" role="37wK5m">
                                    <ref role="3cqZAo" node="32notsQj6NC" resolve="repository" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="7k8t3EBnsr4" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="7k8t3EBnsr5" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2es0OD" id="YwfKjlX_cG" role="2OqNvi">
                    <node concept="1bVj0M" id="YwfKjlX_cH" role="23t8la">
                      <node concept="3clFbS" id="YwfKjlX_cI" role="1bW5cS">
                        <node concept="3clFbF" id="YwfKjlX_cJ" role="3cqZAp">
                          <node concept="2OqwBi" id="YwfKjlX_cK" role="3clFbG">
                            <node concept="2OqwBi" id="YwfKjlX_cL" role="2Oq$k0">
                              <node concept="37vLTw" id="YwfKjlX_cM" role="2Oq$k0">
                                <ref role="3cqZAo" node="YwfKjlX_cz" resolve="res" />
                              </node>
                              <node concept="liA8E" id="YwfKjlX_cN" role="2OqNvi">
                                <ref role="37wK5l" to="5fm0:~SearchResults.getSearchResults():java.util.List" resolve="getSearchResults" />
                              </node>
                            </node>
                            <node concept="liA8E" id="YwfKjlX_cO" role="2OqNvi">
                              <ref role="37wK5l" to="k7g3:~List.add(java.lang.Object):boolean" resolve="add" />
                              <node concept="2ShNRf" id="YwfKjlX_cP" role="37wK5m">
                                <node concept="1pGfFk" id="YwfKjlX_cQ" role="2ShVmc">
                                  <ref role="37wK5l" to="5fm0:~SearchResult.&lt;init&gt;(java.lang.Object,java.lang.String)" resolve="SearchResult" />
                                  <node concept="H_c77" id="YwfKjlX_Ox" role="1pMfVU" />
                                  <node concept="2EnYce" id="7k8t3EBnfvA" role="37wK5m">
                                    <node concept="37vLTw" id="YwfKjlX_P2" role="2Oq$k0">
                                      <ref role="3cqZAo" node="YwfKjlX_cU" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="32notsQj6zb" role="2OqNvi">
                                      <ref role="37wK5l" to="ec5l:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SModel" resolve="resolve" />
                                      <node concept="37vLTw" id="32notsQj6S8" role="37wK5m">
                                        <ref role="3cqZAo" node="32notsQj6NC" resolve="repository" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="YwfKjlX_cT" role="37wK5m">
                                    <property role="Xl_RC" value="usage" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="YwfKjlX_cU" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="YwfKjlX_cV" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="YwfKjlX_cW" role="3cqZAp">
                <node concept="37vLTw" id="YwfKjlX_cX" role="3cqZAk">
                  <ref role="3cqZAo" node="YwfKjlX_cz" resolve="res" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="YwfKjlXcxd" role="1B3o_S" />
      <node concept="37vLTG" id="YwfKjlXcxf" role="3clF46">
        <property role="TrG5h" value="models" />
        <node concept="A3Dl8" id="YwfKjlXcxg" role="1tU5fm">
          <node concept="3uibUv" id="32notsQj5Tu" role="A3Ik2">
            <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="32notsQj6NC" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="32notsQj6PO" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="1ajhzC" id="1oFmEVz7bQt" role="3clF45">
        <node concept="3uibUv" id="1oFmEVz7bQu" role="1ajl9A">
          <ref role="3uigEE" to="5fm0:~SearchResults" resolve="SearchResults" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6H$fNdLyezF" role="jymVt" />
    <node concept="2YIFZL" id="YwfKjlXcyY" role="jymVt">
      <property role="TrG5h" value="modulesToResults" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="YwfKjlXcyZ" role="3clF47">
        <node concept="3clFbF" id="1oFmEVz7c7r" role="3cqZAp">
          <node concept="1bVj0M" id="1oFmEVz7c7s" role="3clFbG">
            <node concept="3clFbS" id="1oFmEVz7c7t" role="1bW5cS">
              <node concept="3cpWs8" id="YwfKjlX_eI" role="3cqZAp">
                <node concept="3cpWsn" id="YwfKjlX_eJ" role="3cpWs9">
                  <property role="TrG5h" value="res" />
                  <node concept="3uibUv" id="YwfKjlX_eK" role="1tU5fm">
                    <ref role="3uigEE" to="5fm0:~SearchResults" resolve="SearchResults" />
                    <node concept="3uibUv" id="YwfKjlXAR4" role="11_B2D">
                      <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="YwfKjlX_eM" role="33vP2m">
                    <node concept="1pGfFk" id="YwfKjlX_eN" role="2ShVmc">
                      <ref role="37wK5l" to="5fm0:~SearchResults.&lt;init&gt;()" resolve="SearchResults" />
                      <node concept="3uibUv" id="YwfKjlXAvs" role="1pMfVU">
                        <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="YwfKjlX_eP" role="3cqZAp">
                <node concept="2OqwBi" id="YwfKjlX_eQ" role="3clFbG">
                  <node concept="2OqwBi" id="7k8t3EBnGQf" role="2Oq$k0">
                    <node concept="37vLTw" id="YwfKjlX_eR" role="2Oq$k0">
                      <ref role="3cqZAo" node="YwfKjlXcz4" resolve="modules" />
                    </node>
                    <node concept="3zZkjj" id="7k8t3EBnHnf" role="2OqNvi">
                      <node concept="1bVj0M" id="7k8t3EBnHnh" role="23t8la">
                        <node concept="3clFbS" id="7k8t3EBnHni" role="1bW5cS">
                          <node concept="3clFbF" id="7k8t3EBnH$i" role="3cqZAp">
                            <node concept="3y3z36" id="7k8t3EBnIDD" role="3clFbG">
                              <node concept="10Nm6u" id="7k8t3EBnIRS" role="3uHU7w" />
                              <node concept="2EnYce" id="7k8t3EBnIck" role="3uHU7B">
                                <node concept="37vLTw" id="7k8t3EBnH$h" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7k8t3EBnHnj" resolve="it" />
                                </node>
                                <node concept="liA8E" id="7k8t3EBnHY5" role="2OqNvi">
                                  <ref role="37wK5l" to="88zw:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.module.SModule" resolve="resolve" />
                                  <node concept="37vLTw" id="7k8t3EBnIq$" role="37wK5m">
                                    <ref role="3cqZAo" node="32notsQj8n1" resolve="repository" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="7k8t3EBnHnj" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="7k8t3EBnHnk" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2es0OD" id="YwfKjlX_eS" role="2OqNvi">
                    <node concept="1bVj0M" id="YwfKjlX_eT" role="23t8la">
                      <node concept="3clFbS" id="YwfKjlX_eU" role="1bW5cS">
                        <node concept="3clFbF" id="YwfKjlX_eV" role="3cqZAp">
                          <node concept="2OqwBi" id="YwfKjlX_eW" role="3clFbG">
                            <node concept="2OqwBi" id="YwfKjlX_eX" role="2Oq$k0">
                              <node concept="37vLTw" id="YwfKjlX_eY" role="2Oq$k0">
                                <ref role="3cqZAo" node="YwfKjlX_eJ" resolve="res" />
                              </node>
                              <node concept="liA8E" id="YwfKjlX_eZ" role="2OqNvi">
                                <ref role="37wK5l" to="5fm0:~SearchResults.getSearchResults():java.util.List" resolve="getSearchResults" />
                              </node>
                            </node>
                            <node concept="liA8E" id="YwfKjlX_f0" role="2OqNvi">
                              <ref role="37wK5l" to="k7g3:~List.add(java.lang.Object):boolean" resolve="add" />
                              <node concept="2ShNRf" id="YwfKjlX_f1" role="37wK5m">
                                <node concept="1pGfFk" id="YwfKjlX_f2" role="2ShVmc">
                                  <ref role="37wK5l" to="5fm0:~SearchResult.&lt;init&gt;(java.lang.Object,java.lang.String)" resolve="SearchResult" />
                                  <node concept="2EnYce" id="7k8t3EBnfMN" role="37wK5m">
                                    <node concept="37vLTw" id="YwfKjlXAvn" role="2Oq$k0">
                                      <ref role="3cqZAo" node="YwfKjlX_f6" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="32notsQj831" role="2OqNvi">
                                      <ref role="37wK5l" to="88zw:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.module.SModule" resolve="resolve" />
                                      <node concept="37vLTw" id="32notsQj8sa" role="37wK5m">
                                        <ref role="3cqZAo" node="32notsQj8n1" resolve="repository" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="YwfKjlX_f5" role="37wK5m">
                                    <property role="Xl_RC" value="usage" />
                                  </node>
                                  <node concept="3uibUv" id="YwfKjlXBSf" role="1pMfVU">
                                    <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="YwfKjlX_f6" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="YwfKjlX_f7" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="YwfKjlX_f8" role="3cqZAp">
                <node concept="37vLTw" id="YwfKjlX_f9" role="3cqZAk">
                  <ref role="3cqZAo" node="YwfKjlX_eJ" resolve="res" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1oFmEVz7bYz" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="YwfKjlXcz2" role="1B3o_S" />
      <node concept="37vLTG" id="YwfKjlXcz4" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="A3Dl8" id="YwfKjlXcz5" role="1tU5fm">
          <node concept="3uibUv" id="32notsQj9s4" role="A3Ik2">
            <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="32notsQj8n1" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="32notsQj8pe" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="1ajhzC" id="1oFmEVz7dRK" role="3clF45">
        <node concept="3uibUv" id="1oFmEVz7dRL" role="1ajl9A">
          <ref role="3uigEE" to="5fm0:~SearchResults" resolve="SearchResults" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="32notsQs2vR" role="jymVt" />
    <node concept="2YIFZL" id="32notsQsTE3" role="jymVt">
      <property role="TrG5h" value="getNodeReference" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="32notsQs6Af" role="3clF47">
        <node concept="3clFbF" id="32notsQs6Ag" role="3cqZAp">
          <node concept="2EnYce" id="7k8t3EBn4p$" role="3clFbG">
            <node concept="2JrnkZ" id="32notsQs6Ai" role="2Oq$k0">
              <node concept="37vLTw" id="32notsQs6Aj" role="2JrQYb">
                <ref role="3cqZAo" node="32notsQs6An" resolve="aNode" />
              </node>
            </node>
            <node concept="liA8E" id="32notsQs6Ak" role="2OqNvi">
              <ref role="37wK5l" to="ec5l:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="32notsQs6An" role="3clF46">
        <property role="TrG5h" value="aNode" />
        <node concept="3Tqbb2" id="32notsQs6Ao" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="32notsQs6Am" role="3clF45">
        <ref role="3uigEE" to="ec5l:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="32notsQs6Al" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="32notsQsUA1" role="jymVt">
      <property role="TrG5h" value="getReferenceReference" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="32notsQs4tr" role="3clF47">
        <node concept="3clFbF" id="32notsQwvVq" role="3cqZAp">
          <node concept="2EnYce" id="7k8t3EBn4tn" role="3clFbG">
            <node concept="2EnYce" id="7k8t3EBn4r4" role="2Oq$k0">
              <node concept="37vLTw" id="32notsQwvVp" role="2Oq$k0">
                <ref role="3cqZAo" node="32notsQs5bf" resolve="aReference" />
              </node>
              <node concept="liA8E" id="32notsQww3H" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SReference.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
              </node>
            </node>
            <node concept="liA8E" id="32notsQwwlb" role="2OqNvi">
              <ref role="37wK5l" to="ec5l:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="32notsQs5bf" role="3clF46">
        <property role="TrG5h" value="aReference" />
        <node concept="2z4iKi" id="32notsQs9eA" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="32notsQwvTn" role="3clF45">
        <ref role="3uigEE" to="ec5l:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="32notsQs3JC" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="32notsQsVkE" role="jymVt">
      <property role="TrG5h" value="getModelReference" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="32notsQs7U0" role="3clF47">
        <node concept="3clFbF" id="32notsQs7U1" role="3cqZAp">
          <node concept="2EnYce" id="7k8t3EBn4vA" role="3clFbG">
            <node concept="2JrnkZ" id="32notsQs7U3" role="2Oq$k0">
              <node concept="37vLTw" id="32notsQsqi7" role="2JrQYb">
                <ref role="3cqZAo" node="32notsQs7U8" resolve="aModel" />
              </node>
            </node>
            <node concept="liA8E" id="32notsQs7U5" role="2OqNvi">
              <ref role="37wK5l" to="ec5l:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="32notsQs7U8" role="3clF46">
        <property role="TrG5h" value="aModel" />
        <node concept="H_c77" id="32notsQsq7S" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="32notsQss$q" role="3clF45">
        <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
      </node>
      <node concept="3Tm1VV" id="32notsQs7U6" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="32notsQsW4c" role="jymVt">
      <property role="TrG5h" value="getModuleReference" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="32notsQs8uB" role="3clF47">
        <node concept="3clFbF" id="32notsQs8uC" role="3cqZAp">
          <node concept="2EnYce" id="7k8t3EBn4N8" role="3clFbG">
            <node concept="37vLTw" id="32notsQs8uF" role="2Oq$k0">
              <ref role="3cqZAo" node="32notsQs8uJ" resolve="aModule" />
            </node>
            <node concept="liA8E" id="32notsQsxM6" role="2OqNvi">
              <ref role="37wK5l" to="88zw:~SModule.getModuleReference():org.jetbrains.mps.openapi.module.SModuleReference" resolve="getModuleReference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="32notsQs8uJ" role="3clF46">
        <property role="TrG5h" value="aModule" />
        <node concept="3uibUv" id="32notsQsqcM" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3uibUv" id="32notsQst6S" role="3clF45">
        <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="3Tm1VV" id="32notsQs8uH" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="22lVekVIiKw" role="jymVt" />
    <node concept="2YIFZL" id="22lVekVIkdS" role="jymVt">
      <property role="TrG5h" value="addNodeReference" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="22lVekVIkdV" role="3clF47">
        <node concept="3cpWs8" id="22lVekVIvjf" role="3cqZAp">
          <node concept="3cpWsn" id="22lVekVIvji" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="22lVekVIvjd" role="1tU5fm">
              <ref role="ehGHo" to="eynw:22lVekVIQ0c" resolve="NodeReferencePresentation" />
            </node>
            <node concept="2ShNRf" id="22lVekVLjuG" role="33vP2m">
              <node concept="3zrR0B" id="22lVekVLjuE" role="2ShVmc">
                <node concept="3Tqbb2" id="22lVekVLjuF" role="3zrR0E">
                  <ref role="ehGHo" to="eynw:22lVekVIQ0c" resolve="NodeReferencePresentation" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="22lVekVLjBa" role="3cqZAp">
          <node concept="2OqwBi" id="22lVekVLnyD" role="3clFbG">
            <node concept="2OqwBi" id="22lVekVLjSd" role="2Oq$k0">
              <node concept="37vLTw" id="22lVekVLjB9" role="2Oq$k0">
                <ref role="3cqZAo" node="22lVekVIvji" resolve="node" />
              </node>
              <node concept="3TrEf2" id="igjXyuTl5A" role="2OqNvi">
                <ref role="3Tt5mk" to="eynw:igjXyutfLJ" />
              </node>
            </node>
            <node concept="2oxUTD" id="22lVekVLonG" role="2OqNvi">
              <node concept="37vLTw" id="22lVekVLoqr" role="2oxUTC">
                <ref role="3cqZAo" node="22lVekVIk_Z" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="22lVekVIpBB" role="3cqZAp">
          <node concept="2OqwBi" id="22lVekVIpGb" role="3clFbG">
            <node concept="37vLTw" id="22lVekVIpBA" role="2Oq$k0">
              <ref role="3cqZAo" node="22lVekVIpqm" resolve="console" />
            </node>
            <node concept="liA8E" id="22lVekVIqnI" role="2OqNvi">
              <ref role="37wK5l" to="qgo0:7Jzw3XJWFQB" resolve="addNode" />
              <node concept="37vLTw" id="22lVekVLjz2" role="37wK5m">
                <ref role="3cqZAo" node="22lVekVIvji" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="22lVekVIj9d" role="1B3o_S" />
      <node concept="3cqZAl" id="22lVekVIkw1" role="3clF45" />
      <node concept="37vLTG" id="22lVekVIpqm" role="3clF46">
        <property role="TrG5h" value="console" />
        <node concept="3uibUv" id="22lVekVIpys" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:5WpmwkrQPPk" resolve="ConsoleStream" />
        </node>
      </node>
      <node concept="37vLTG" id="22lVekVIk_Z" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="22lVekVIk_Y" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4waomXVZt_0" role="jymVt" />
    <node concept="2YIFZL" id="2lR2lzqETRX" role="jymVt">
      <property role="TrG5h" value="registerAnalyzeStacktraceDialogClosure" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="2lR2lzqETS0" role="3clF47">
        <node concept="3cpWs8" id="5G2W3aW$Ty1" role="3cqZAp">
          <node concept="3cpWsn" id="5G2W3aW$Ty2" role="3cpWs9">
            <property role="TrG5h" value="writer" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="5G2W3aW$Ty3" role="1tU5fm">
              <ref role="3uigEE" to="fxg7:~StringWriter" resolve="StringWriter" />
            </node>
            <node concept="2ShNRf" id="5G2W3aW$Ty4" role="33vP2m">
              <node concept="1pGfFk" id="5G2W3aW$Ty5" role="2ShVmc">
                <ref role="37wK5l" to="fxg7:~StringWriter.&lt;init&gt;()" resolve="StringWriter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5G2W3aW$Ty6" role="3cqZAp">
          <node concept="2OqwBi" id="5G2W3aW$Ty7" role="3clFbG">
            <node concept="37vLTw" id="5G2W3aW$Ty8" role="2Oq$k0">
              <ref role="3cqZAo" node="2lR2lzqF7aT" resolve="exception" />
            </node>
            <node concept="liA8E" id="5G2W3aW$Ty9" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~Throwable.printStackTrace(java.io.PrintWriter):void" resolve="printStackTrace" />
              <node concept="2ShNRf" id="5G2W3aW$Tya" role="37wK5m">
                <node concept="1pGfFk" id="5G2W3aW$Tyb" role="2ShVmc">
                  <ref role="37wK5l" to="fxg7:~PrintWriter.&lt;init&gt;(java.io.Writer)" resolve="PrintWriter" />
                  <node concept="37vLTw" id="5G2W3aW$Tyc" role="37wK5m">
                    <ref role="3cqZAo" node="5G2W3aW$Ty2" resolve="writer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5G2W3aW$T7$" role="3cqZAp" />
        <node concept="3cpWs8" id="5G2W3aWBxdh" role="3cqZAp">
          <node concept="3cpWsn" id="5G2W3aWBxdk" role="3cpWs9">
            <property role="TrG5h" value="exceptionHolder" />
            <node concept="3Tqbb2" id="5G2W3aWBxdf" role="1tU5fm">
              <ref role="ehGHo" to="3xdn:5G2W3aW$Vsk" resolve="ExceptionHolder" />
            </node>
            <node concept="2ShNRf" id="5G2W3aWBxCa" role="33vP2m">
              <node concept="3zrR0B" id="5G2W3aWBxC8" role="2ShVmc">
                <node concept="3Tqbb2" id="5G2W3aWBxC9" role="3zrR0E">
                  <ref role="ehGHo" to="3xdn:5G2W3aW$Vsk" resolve="ExceptionHolder" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5G2W3aWBxZ7" role="3cqZAp">
          <node concept="2OqwBi" id="5G2W3aWBAqu" role="3clFbG">
            <node concept="2OqwBi" id="5G2W3aWByri" role="2Oq$k0">
              <node concept="37vLTw" id="5G2W3aWBxZ6" role="2Oq$k0">
                <ref role="3cqZAo" node="5G2W3aWBxdk" resolve="exceptionHolder" />
              </node>
              <node concept="3TrcHB" id="5G2W3aWB$ZB" role="2OqNvi">
                <ref role="3TsBF5" to="3xdn:5G2W3aWBbyD" resolve="stackTrace" />
              </node>
            </node>
            <node concept="tyxLq" id="5G2W3aWBCmH" role="2OqNvi">
              <node concept="2OqwBi" id="5G2W3aWBCz_" role="tz02z">
                <node concept="37vLTw" id="5G2W3aWBCo5" role="2Oq$k0">
                  <ref role="3cqZAo" node="5G2W3aW$Ty2" resolve="writer" />
                </node>
                <node concept="liA8E" id="5G2W3aWBE$r" role="2OqNvi">
                  <ref role="37wK5l" to="fxg7:~StringWriter.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5G2W3aWCkuq" role="3cqZAp">
          <node concept="2OqwBi" id="5G2W3aWCoZS" role="3clFbG">
            <node concept="2OqwBi" id="5G2W3aWCkXL" role="2Oq$k0">
              <node concept="37vLTw" id="5G2W3aWCkup" role="2Oq$k0">
                <ref role="3cqZAo" node="5G2W3aWBxdk" resolve="exceptionHolder" />
              </node>
              <node concept="3TrcHB" id="5G2W3aWCn_1" role="2OqNvi">
                <ref role="3TsBF5" to="eynw:3ob4OZ0hWSE" resolve="text" />
              </node>
            </node>
            <node concept="tyxLq" id="5G2W3aWCqZ1" role="2OqNvi">
              <node concept="2OqwBi" id="5G2W3aWCt2J" role="tz02z">
                <node concept="2OqwBi" id="5G2W3aWCr82" role="2Oq$k0">
                  <node concept="37vLTw" id="5G2W3aWCr0s" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lR2lzqF7aT" resolve="exception" />
                  </node>
                  <node concept="liA8E" id="5G2W3aWCsoP" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~Object.getClass():java.lang.Class" resolve="getClass" />
                  </node>
                </node>
                <node concept="liA8E" id="5G2W3aWCyWv" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~Class.getName():java.lang.String" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5G2W3aWBECf" role="3cqZAp">
          <node concept="2OqwBi" id="5G2W3aWBF2Y" role="3clFbG">
            <node concept="37vLTw" id="5G2W3aWBECe" role="2Oq$k0">
              <ref role="3cqZAo" node="2lR2lzqF4z1" resolve="console" />
            </node>
            <node concept="liA8E" id="5G2W3aWBG2_" role="2OqNvi">
              <ref role="37wK5l" to="qgo0:7Jzw3XJWFQB" resolve="addNode" />
              <node concept="37vLTw" id="5G2W3aWBGTA" role="37wK5m">
                <ref role="3cqZAo" node="5G2W3aWBxdk" resolve="exceptionHolder" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2lR2lzqETFH" role="1B3o_S" />
      <node concept="3cqZAl" id="2lR2lzqETRR" role="3clF45" />
      <node concept="37vLTG" id="2lR2lzqF31L" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2lR2lzqF31K" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2lR2lzqF4z1" role="3clF46">
        <property role="TrG5h" value="console" />
        <node concept="3uibUv" id="2lR2lzqF4VT" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:5WpmwkrQPPk" resolve="ConsoleStream" />
        </node>
      </node>
      <node concept="37vLTG" id="2lR2lzqF7aT" role="3clF46">
        <property role="TrG5h" value="exception" />
        <node concept="3uibUv" id="47G6Tek7_Im" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Throwable" resolve="Throwable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3J6h25QHCOt" role="jymVt" />
    <node concept="2YIFZL" id="3J6h25QHNxY" role="jymVt">
      <property role="TrG5h" value="createConsoleScope" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3J6h25QHDJy" role="3clF47">
        <node concept="3cpWs8" id="4CUSouB_4S_" role="3cqZAp">
          <node concept="3cpWsn" id="4CUSouB_4SA" role="3cpWs9">
            <property role="TrG5h" value="scope" />
            <node concept="3uibUv" id="4CUSouB_4SB" role="1tU5fm">
              <ref role="3uigEE" to="88zw:~SearchScope" resolve="SearchScope" />
            </node>
            <node concept="3K4zz7" id="3J6h25QKZn9" role="33vP2m">
              <node concept="2OqwBi" id="3lidccNIo1X" role="3K4E3e">
                <node concept="37vLTw" id="3lidccNIlf2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3J6h25QLs6x" resolve="context" />
                </node>
                <node concept="liA8E" id="3lidccNIocU" role="2OqNvi">
                  <ref role="37wK5l" to="qgo0:3lidccNHjWv" resolve="getDefaultSearchscope" />
                </node>
              </node>
              <node concept="37vLTw" id="3J6h25QMGug" role="3K4GZi">
                <ref role="3cqZAo" node="3J6h25QHEnX" resolve="baseScope" />
              </node>
              <node concept="3clFbC" id="3J6h25QKYwF" role="3K4Cdx">
                <node concept="10Nm6u" id="3J6h25QKYXW" role="3uHU7w" />
                <node concept="37vLTw" id="3J6h25QKYiS" role="3uHU7B">
                  <ref role="3cqZAo" node="3J6h25QHEnX" resolve="baseScope" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4CUSouB_65k" role="3cqZAp">
          <node concept="3K4zz7" id="4CUSouB_6Gq" role="3cqZAk">
            <node concept="37vLTw" id="4CUSouB_75f" role="3K4E3e">
              <ref role="3cqZAo" node="4CUSouB_4SA" resolve="scope" />
            </node>
            <node concept="37vLTw" id="4CUSouB_6gL" role="3K4Cdx">
              <ref role="3cqZAo" node="3J6h25QHEzC" resolve="includeReadOnly" />
            </node>
            <node concept="2ShNRf" id="4CUSouB_5lD" role="3K4GZi">
              <node concept="1pGfFk" id="4CUSouB_5FK" role="2ShVmc">
                <ref role="37wK5l" to="vsqj:~EditableFilteringScope.&lt;init&gt;(org.jetbrains.mps.openapi.module.SearchScope)" resolve="EditableFilteringScope" />
                <node concept="37vLTw" id="4CUSouB_5Ma" role="37wK5m">
                  <ref role="3cqZAo" node="4CUSouB_4SA" resolve="scope" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3J6h25QHEnX" role="3clF46">
        <property role="TrG5h" value="baseScope" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3J6h25QHEnW" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SearchScope" resolve="SearchScope" />
        </node>
        <node concept="2AHcQZ" id="3J6h25QKe4i" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="3J6h25QHEzC" role="3clF46">
        <property role="TrG5h" value="includeReadOnly" />
        <property role="3TUv4t" value="true" />
        <node concept="10P_77" id="3J6h25QPqmQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3J6h25QLs6x" role="3clF46">
        <property role="TrG5h" value="context" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3J6h25QLsiX" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
      <node concept="3uibUv" id="4CUSouB_4b5" role="3clF45">
        <ref role="3uigEE" to="88zw:~SearchScope" resolve="SearchScope" />
      </node>
      <node concept="3Tm1VV" id="3J6h25QHDnO" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="ntTX465uAL" role="jymVt" />
    <node concept="3Tm1VV" id="hpHLh7Fj1_" role="1B3o_S" />
  </node>
</model>

