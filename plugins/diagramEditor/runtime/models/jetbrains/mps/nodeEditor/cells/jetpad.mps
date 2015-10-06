<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:18b1829d-108a-465e-a7a8-862d91582bc3(jetbrains.mps.nodeEditor.cells.jetpad)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
  </languages>
  <imports>
    <import index="475o" ref="r:2170b42c-b000-4bd7-a2c2-c5cf5fe74d08(jetbrains.mps.ide.tooltips)" />
    <import index="sn11" ref="r:836426ab-a6f4-4fa3-9a9c-34c02ed6ab5d(jetbrains.mps.ide.icons)" />
    <import index="8n5u" ref="r:05147575-afa1-4d0f-b2e0-f20b32ad3e33(jetbrains.mps.lang.editor.diagram.runtime.jetpad.views)" />
    <import index="p9ez" ref="r:7e753a2c-1063-48ee-910b-7561db818f48(jetbrains.mps.lang.editor.diagram.runtime.jetpad.palette)" />
    <import index="jqfx" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.projectional.view()" />
    <import index="g88e" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.geometry()" />
    <import index="eh3q" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.text()" />
    <import index="lgza" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.model.property()" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor()" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel()" />
    <import index="ur71" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.projectional.view.awt()" />
    <import index="lwvz" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.selection()" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project()" />
    <import index="zdnc" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.projectional.diagram.view()" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util()" />
    <import index="4rj2" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.values()" />
    <import index="sm7x" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.mapper()" />
    <import index="zce0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.smodel.action()" />
    <import index="mgas" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.projectional.diagram.base()" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors()" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells()" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module()" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing()" />
    <import index="v7xa" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.event()" />
    <import index="kpve" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.message()" />
    <import index="kcid" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellLayout()" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor()" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event()" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations()" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util()" />
    <import index="x7mh" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.model.event()" />
    <import index="6lvu" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellMenu()" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells()" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt()" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model()" />
    <import index="dwmc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.uiDesigner.core()" />
    <import index="xnls" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.icons()" />
    <import index="e29j" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.projectional.diagram.view.block()" />
    <import index="chl9" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.base()" />
    <import index="qoc8" ref="67b3c41d-58b3-4756-b971-30bf8a9d63e6/java:jetbrains.jetpad.model.collections.list()" />
    <import index="epaj" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.selection()" />
    <import index="mkps" ref="r:5bf72784-5b6b-4f6b-be0c-06a9e6006826(jetbrains.mps.lang.editor.diagram.runtime.jetpad.palette.ui)" />
    <import index="nlpl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.commands(MPS.Editor/)" />
    <import index="pjrh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter(MPS.Core/)" />
    <import index="4snq" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.layoutModel(MPS.Editor/)" implicit="true" />
    <import index="22ra" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.update(MPS.Editor/)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1201370618622" name="jetbrains.mps.baseLanguage.structure.Property" flags="ig" index="2RhdJD">
        <property id="1201371481316" name="propertyName" index="2RkwnN" />
        <child id="1201371521209" name="type" index="2RkE6I" />
        <child id="1201372378714" name="propertyImplementation" index="2RnVtd" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1201372606839" name="jetbrains.mps.baseLanguage.structure.DefaultPropertyImplementation" flags="ng" index="2RoN1w">
        <child id="1202065356069" name="defaultGetAccessor" index="3wFrgM" />
        <child id="1202078082794" name="defaultSetAccessor" index="3xrYvX" />
      </concept>
      <concept id="1201385106094" name="jetbrains.mps.baseLanguage.structure.PropertyReference" flags="nn" index="2S8uIT">
        <reference id="1201385237847" name="property" index="2S8YL0" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="5862977038373003187" name="jetbrains.mps.baseLanguage.structure.LocalPropertyReference" flags="nn" index="338YkY">
        <reference id="5862977038373003188" name="property" index="338YkT" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
        <child id="1160998916832" name="message" index="1gVpfI" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903862077" name="jetbrains.mps.baseLanguage.structure.LowerBoundType" flags="in" index="3qUtgH">
        <child id="1171903869531" name="bound" index="3qUvdb" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="7024111702304501416" name="jetbrains.mps.baseLanguage.structure.OrAssignmentExpression" flags="nn" index="3vZ8r8" />
      <concept id="1202065242027" name="jetbrains.mps.baseLanguage.structure.DefaultGetAccessor" flags="ng" index="3wEZqW" />
      <concept id="1202077725299" name="jetbrains.mps.baseLanguage.structure.DefaultSetAccessor" flags="ng" index="3xqBd$">
        <child id="1202077744034" name="visibility" index="3xqFEP" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1172420572800" name="jetbrains.mps.lang.smodel.structure.ConceptNodeType" flags="in" index="3THzug" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
    </language>
  </registry>
  <node concept="312cEu" id="5stQbxMM_mL">
    <property role="TrG5h" value="JetpadUtils" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="Wx3nA" id="BSIQ$y$9m$" role="jymVt">
      <property role="TrG5h" value="SOURCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="BSIQ$y$9m_" role="1tU5fm">
        <ref role="3uigEE" to="jqfx:~ViewPropertySpec" resolve="ViewPropertySpec" />
        <node concept="3Tqbb2" id="BSIQ$y$x$Z" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="BSIQ$y$9mE" role="33vP2m">
        <node concept="1pGfFk" id="BSIQ$y$9mF" role="2ShVmc">
          <ref role="37wK5l" to="jqfx:~ViewPropertySpec.&lt;init&gt;(java.lang.String)" resolve="ViewPropertySpec" />
          <node concept="Xl_RD" id="BSIQ$y$9mC" role="37wK5m">
            <property role="Xl_RC" value="inputPort" />
          </node>
          <node concept="3Tqbb2" id="BSIQ$y$xXp" role="1pMfVU" />
        </node>
      </node>
      <node concept="3Tm1VV" id="BSIQ$y$aaR" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="6e64XHXvkE7" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6e64XHXvkE8" role="1B3o_S" />
      <node concept="3uibUv" id="6e64XHXvkE9" role="1tU5fm">
        <ref role="3uigEE" to="jqfx:~ViewPropertySpec" resolve="ViewPropertySpec" />
        <node concept="3uibUv" id="ObbTRzKASN" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="6e64XHXvkEb" role="33vP2m">
        <node concept="1pGfFk" id="6e64XHXvkEc" role="2ShVmc">
          <ref role="37wK5l" to="jqfx:~ViewPropertySpec.&lt;init&gt;(java.lang.String)" resolve="ViewPropertySpec" />
          <node concept="Xl_RD" id="6e64XHXvkEd" role="37wK5m">
            <property role="Xl_RC" value="id" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="4wVpOa3fRTD" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="CONNECTABLE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4wVpOa3fQuY" role="1B3o_S" />
      <node concept="3uibUv" id="4wVpOa3fR9g" role="1tU5fm">
        <ref role="3uigEE" to="jqfx:~ViewPropertySpec" resolve="ViewPropertySpec" />
        <node concept="3uibUv" id="4wVpOa3fRsz" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="2ShNRf" id="4wVpOa3fS_K" role="33vP2m">
        <node concept="1pGfFk" id="4wVpOa3fS_I" role="2ShVmc">
          <ref role="37wK5l" to="jqfx:~ViewPropertySpec.&lt;init&gt;(java.lang.String)" resolve="ViewPropertySpec" />
          <node concept="3uibUv" id="4wVpOa3fS_J" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
          <node concept="Xl_RD" id="4wVpOa3fTnj" role="37wK5m">
            <property role="Xl_RC" value="connectable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="tdMhUugQRz" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="CONNECTION_SOURCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="tdMhUugQR$" role="1B3o_S" />
      <node concept="3uibUv" id="tdMhUugQR_" role="1tU5fm">
        <ref role="3uigEE" to="jqfx:~ViewPropertySpec" resolve="ViewPropertySpec" />
        <node concept="3uibUv" id="tdMhUugQRA" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="2ShNRf" id="tdMhUugQRB" role="33vP2m">
        <node concept="1pGfFk" id="tdMhUugQRC" role="2ShVmc">
          <ref role="37wK5l" to="jqfx:~ViewPropertySpec.&lt;init&gt;(java.lang.String)" resolve="ViewPropertySpec" />
          <node concept="3uibUv" id="tdMhUugQRD" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
          <node concept="Xl_RD" id="tdMhUugQRE" role="37wK5m">
            <property role="Xl_RC" value="connectionSource" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1o1N$5ksfpr" role="jymVt" />
    <node concept="3Tm1VV" id="5stQbxMM_mN" role="1B3o_S" />
    <node concept="3UR2Jj" id="5stQbxMM_n0" role="lGtFl">
      <node concept="TZ5HA" id="5stQbxMM_n4" role="TZ5H$">
        <node concept="1dT_AC" id="5stQbxMM_n5" role="1dT_Ay">
          <property role="1dT_AB" value="User: shatalin" />
        </node>
      </node>
      <node concept="TZ5HA" id="5stQbxMM_n6" role="TZ5H$">
        <node concept="1dT_AC" id="5stQbxMM_n7" role="1dT_Ay">
          <property role="1dT_AB" value="Date: 7/23/13" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5stQbxMM_mO" role="jymVt">
      <property role="TrG5h" value="toAwtColor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5stQbxMM_mP" role="3clF46">
        <property role="TrG5h" value="color" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5stQbxMM_mQ" role="1tU5fm">
          <ref role="3uigEE" to="4rj2:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3clFbS" id="5stQbxMM_mR" role="3clF47">
        <node concept="3cpWs6" id="5stQbxMM_mS" role="3cqZAp">
          <node concept="2ShNRf" id="5stQbxMM_yq" role="3cqZAk">
            <node concept="1pGfFk" id="5stQbxMM_yr" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
              <node concept="2OqwBi" id="5stQbxMM_yv" role="37wK5m">
                <node concept="37vLTw" id="5stQbxMM_yu" role="2Oq$k0">
                  <ref role="3cqZAo" node="5stQbxMM_mP" resolve="color" />
                </node>
                <node concept="liA8E" id="5stQbxMM_yw" role="2OqNvi">
                  <ref role="37wK5l" to="4rj2:~Color.getRed():int" resolve="getRed" />
                </node>
              </node>
              <node concept="2OqwBi" id="5stQbxMM_yz" role="37wK5m">
                <node concept="37vLTw" id="5stQbxMM_yy" role="2Oq$k0">
                  <ref role="3cqZAo" node="5stQbxMM_mP" resolve="color" />
                </node>
                <node concept="liA8E" id="5stQbxMM_y$" role="2OqNvi">
                  <ref role="37wK5l" to="4rj2:~Color.getGreen():int" resolve="getGreen" />
                </node>
              </node>
              <node concept="2OqwBi" id="5stQbxMM_yB" role="37wK5m">
                <node concept="37vLTw" id="5stQbxMM_yA" role="2Oq$k0">
                  <ref role="3cqZAo" node="5stQbxMM_mP" resolve="color" />
                </node>
                <node concept="liA8E" id="5stQbxMM_yC" role="2OqNvi">
                  <ref role="37wK5l" to="4rj2:~Color.getBlue():int" resolve="getBlue" />
                </node>
              </node>
              <node concept="2OqwBi" id="5stQbxMM_yF" role="37wK5m">
                <node concept="37vLTw" id="5stQbxMM_yE" role="2Oq$k0">
                  <ref role="3cqZAo" node="5stQbxMM_mP" resolve="color" />
                </node>
                <node concept="liA8E" id="5stQbxMM_yG" role="2OqNvi">
                  <ref role="37wK5l" to="4rj2:~Color.getAlpha():int" resolve="getAlpha" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5stQbxMM_mY" role="1B3o_S" />
      <node concept="3uibUv" id="5stQbxMM_mZ" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="2YIFZL" id="2MsskGRUnfa" role="jymVt">
      <property role="TrG5h" value="getAllChildren" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="2MsskGRUnfd" role="3clF47">
        <node concept="3cpWs8" id="2MsskGRUtrF" role="3cqZAp">
          <node concept="3cpWsn" id="2MsskGRUtrI" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="2MsskGRUtrB" role="1tU5fm">
              <node concept="3uibUv" id="2MsskGRUtzr" role="_ZDj9">
                <ref role="3uigEE" to="jqfx:~View" resolve="View" />
              </node>
            </node>
            <node concept="2ShNRf" id="2MsskGRUvfb" role="33vP2m">
              <node concept="2Jqq0_" id="2MsskGRUvld" role="2ShVmc">
                <node concept="3uibUv" id="2MsskGRUvlf" role="HW$YZ">
                  <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2MsskGRUnBD" role="3cqZAp">
          <node concept="3cpWsn" id="2MsskGRUnBG" role="3cpWs9">
            <property role="TrG5h" value="viewQueue" />
            <node concept="3O6Q9H" id="2MsskGRUnBB" role="1tU5fm">
              <node concept="3uibUv" id="2MsskGRUnJ1" role="3O5elw">
                <ref role="3uigEE" to="jqfx:~View" resolve="View" />
              </node>
            </node>
            <node concept="2ShNRf" id="2MsskGRUnUQ" role="33vP2m">
              <node concept="2Jqq0_" id="2MsskGRUnUK" role="2ShVmc">
                <node concept="3uibUv" id="2MsskGRUnUL" role="HW$YZ">
                  <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2MsskGRUo52" role="3cqZAp">
          <node concept="2OqwBi" id="2MsskGRUosF" role="3clFbG">
            <node concept="37vLTw" id="2MsskGRUo51" role="2Oq$k0">
              <ref role="3cqZAo" node="2MsskGRUnBG" resolve="viewQueue" />
            </node>
            <node concept="2Ke9KJ" id="2MsskGRUuUH" role="2OqNvi">
              <node concept="37vLTw" id="2MsskGRUv1S" role="25WWJ7">
                <ref role="3cqZAo" node="2MsskGRUnny" resolve="view" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="2MsskGRUvAj" role="3cqZAp">
          <node concept="3clFbS" id="2MsskGRUvAl" role="2LFqv$">
            <node concept="3cpWs8" id="2MsskGRUHJX" role="3cqZAp">
              <node concept="3cpWsn" id="2MsskGRUHJY" role="3cpWs9">
                <property role="TrG5h" value="currentView" />
                <node concept="3uibUv" id="2MsskGRUHJN" role="1tU5fm">
                  <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                </node>
                <node concept="2OqwBi" id="2MsskGRUHJZ" role="33vP2m">
                  <node concept="37vLTw" id="2MsskGRV9w$" role="2Oq$k0">
                    <ref role="3cqZAo" node="2MsskGRUnBG" resolve="viewQueue" />
                  </node>
                  <node concept="2Kt2Hk" id="2MsskGRUHK1" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2MsskGRV8o7" role="3cqZAp">
              <node concept="3clFbS" id="2MsskGRV8oa" role="3clFbx">
                <node concept="3N13vt" id="2MsskGRV9wt" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="2MsskGRV8Jg" role="3clFbw">
                <node concept="10Nm6u" id="2MsskGRV8JK" role="3uHU7w" />
                <node concept="37vLTw" id="2MsskGRV8$p" role="3uHU7B">
                  <ref role="3cqZAo" node="2MsskGRUHJY" resolve="currentView" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2MsskGRUyND" role="3cqZAp">
              <node concept="2OqwBi" id="2MsskGRUz2w" role="3clFbG">
                <node concept="37vLTw" id="2MsskGRUyNC" role="2Oq$k0">
                  <ref role="3cqZAo" node="2MsskGRUtrI" resolve="result" />
                </node>
                <node concept="TSZUe" id="2MsskGRU_W5" role="2OqNvi">
                  <node concept="37vLTw" id="2MsskGRUHK2" role="25WWJ7">
                    <ref role="3cqZAo" node="2MsskGRUHJY" resolve="currentView" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2MsskGRUKMq" role="3cqZAp">
              <node concept="2OqwBi" id="2MsskGRUL3b" role="3clFbG">
                <node concept="37vLTw" id="2MsskGRUKP4" role="2Oq$k0">
                  <ref role="3cqZAo" node="2MsskGRUnBG" resolve="viewQueue" />
                </node>
                <node concept="X8dFx" id="2MsskGRUP6e" role="2OqNvi">
                  <node concept="2OqwBi" id="2MsskGRUPbo" role="25WWJ7">
                    <node concept="37vLTw" id="2MsskGRUPbp" role="2Oq$k0">
                      <ref role="3cqZAo" node="2MsskGRUHJY" resolve="currentView" />
                    </node>
                    <node concept="liA8E" id="2MsskGRUPbq" role="2OqNvi">
                      <ref role="37wK5l" to="jqfx:~View.children():jetbrains.jetpad.model.collections.list.ObservableList" resolve="children" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2MsskGRUw0O" role="2$JKZa">
            <node concept="37vLTw" id="2MsskGRUvDk" role="2Oq$k0">
              <ref role="3cqZAo" node="2MsskGRUnBG" resolve="viewQueue" />
            </node>
            <node concept="3GX2aA" id="2MsskGRUyHN" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="2MsskGRVa4H" role="3cqZAp">
          <node concept="37vLTw" id="2MsskGRVa4G" role="3clFbG">
            <ref role="3cqZAo" node="2MsskGRUtrI" resolve="result" />
          </node>
        </node>
        <node concept="3clFbH" id="2MsskGRUIIW" role="3cqZAp" />
        <node concept="3clFbH" id="2MsskGRUnJU" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="2MsskGRUlpJ" role="1B3o_S" />
      <node concept="A3Dl8" id="2MsskGRVaAf" role="3clF45">
        <node concept="3uibUv" id="2MsskGRVaAh" role="A3Ik2">
          <ref role="3uigEE" to="jqfx:~View" resolve="View" />
        </node>
      </node>
      <node concept="37vLTG" id="2MsskGRUnny" role="3clF46">
        <property role="TrG5h" value="view" />
        <node concept="3uibUv" id="2MsskGRUnnx" role="1tU5fm">
          <ref role="3uigEE" to="jqfx:~View" resolve="View" />
        </node>
        <node concept="2AHcQZ" id="2MsskGRUyIa" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5xniKJ5D5Sh">
    <property role="TrG5h" value="ConnectorCell" />
    <property role="1sVAO0" value="true" />
    <node concept="3uibUv" id="2eSMEaVEgOM" role="1zkMxy">
      <ref role="3uigEE" node="4EnhxLZX04P" resolve="AbstractJetpadCell" />
    </node>
    <node concept="3clFbW" id="5xniKJ5Df63" role="jymVt">
      <node concept="37vLTG" id="5xniKJ5DgtI" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5xniKJ5DgtJ" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="5xniKJ5DgtK" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5xniKJ5DgtL" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3cqZAl" id="5xniKJ5Df65" role="3clF45" />
      <node concept="3Tm1VV" id="5xniKJ5Df66" role="1B3o_S" />
      <node concept="3clFbS" id="5xniKJ5Df67" role="3clF47">
        <node concept="XkiVB" id="5xniKJ5DgPV" role="3cqZAp">
          <ref role="37wK5l" node="4EnhxLZX43r" resolve="AbstractJetpadCell" />
          <node concept="37vLTw" id="5xniKJ5DiAh" role="37wK5m">
            <ref role="3cqZAo" node="5xniKJ5DgtI" resolve="editorContext" />
          </node>
          <node concept="37vLTw" id="5xniKJ5DiAi" role="37wK5m">
            <ref role="3cqZAo" node="5xniKJ5DgtK" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4EnhxM0BkwE" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createMapper" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4EnhxM0BkwF" role="1B3o_S" />
      <node concept="3uibUv" id="4EnhxM0BkwG" role="3clF45">
        <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
        <node concept="3Tqbb2" id="4EnhxM0BkwH" role="11_B2D" />
        <node concept="3uibUv" id="4EnhxM0BkwK" role="11_B2D">
          <ref role="3uigEE" to="zdnc:~PolyLineConnection" resolve="PolyLineConnection" />
        </node>
      </node>
      <node concept="3clFbS" id="4EnhxM0BkwL" role="3clF47" />
    </node>
    <node concept="3clFb_" id="4f6Z7yOPal5" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createDecorationMapper" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4f6Z7yOPal6" role="1B3o_S" />
      <node concept="3uibUv" id="4f6Z7yOPal7" role="3clF45">
        <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
        <node concept="3Tqbb2" id="4f6Z7yOPal8" role="11_B2D" />
        <node concept="3uibUv" id="1gT9jIxM584" role="11_B2D">
          <ref role="3uigEE" to="8n5u:3HZBsOQgHPK" resolve="ConnectorDecoratorView" />
        </node>
      </node>
      <node concept="3clFbS" id="4f6Z7yOPala" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="5xniKJ5D5Si" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7efWZtHWeDk">
    <property role="TrG5h" value="DiagramCell" />
    <property role="1sVAO0" value="true" />
    <node concept="312cEg" id="2kUb22mGMmp" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myRootMapper" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2kUb22mGFOn" role="1B3o_S" />
      <node concept="3uibUv" id="ya5FdpO_Mw" role="1tU5fm">
        <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
        <node concept="3Tqbb2" id="ya5FdpOJue" role="11_B2D" />
        <node concept="3uibUv" id="ya5FdpOT0w" role="11_B2D">
          <ref role="3uigEE" to="jqfx:~ViewContainer" resolve="ViewContainer" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4f6Z7yOiMgL" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myDecorationRootMapper" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4f6Z7yOiMgM" role="1B3o_S" />
      <node concept="3uibUv" id="4f6Z7yOiMgN" role="1tU5fm">
        <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
        <node concept="3Tqbb2" id="4f6Z7yOiMgO" role="11_B2D" />
        <node concept="3uibUv" id="4f6Z7yOiMgP" role="11_B2D">
          <ref role="3uigEE" to="jqfx:~ViewContainer" resolve="ViewContainer" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7efWZtHWXHe" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myComponent" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3SEuJlHhA2Q" role="1tU5fm">
        <ref role="3uigEE" to="ur71:~ViewContainerComponent" resolve="ViewContainerComponent" />
      </node>
      <node concept="3Tm6S6" id="7efWZtHWXHg" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6w0WfK8Snx0" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="mySubstituteEditorVisible" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6w0WfK8Snx1" role="1B3o_S" />
      <node concept="10P_77" id="6w0WfK8Snx2" role="1tU5fm" />
      <node concept="3clFbT" id="6w0WfK8Snx3" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="65G2vMdnUSf" role="jymVt">
      <property role="TrG5h" value="myPatternEditorX" />
      <node concept="3Tm6S6" id="65G2vMdnUSg" role="1B3o_S" />
      <node concept="10Oyi0" id="65G2vMdnXzO" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="65G2vMdo2f7" role="jymVt">
      <property role="TrG5h" value="myPatternEditorY" />
      <node concept="3Tm6S6" id="65G2vMdo2f8" role="1B3o_S" />
      <node concept="10Oyi0" id="65G2vMdo2f9" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2nFrfBfKDYZ" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myBlocks" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="2nFrfBfKn5G" role="1B3o_S" />
      <node concept="3uibUv" id="2nFrfBfKyZJ" role="1tU5fm">
        <ref role="3uigEE" to="qoc8:~ObservableList" resolve="ObservableList" />
        <node concept="3Tqbb2" id="2nFrfBfKzmH" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="2nFrfBfLK8w" role="33vP2m">
        <node concept="1pGfFk" id="8T_u1Jfhm2" role="2ShVmc">
          <ref role="37wK5l" to="qoc8:~ObservableArrayList.&lt;init&gt;()" resolve="ObservableArrayList" />
          <node concept="3Tqbb2" id="8T_u1JfivI" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2nFrfBfLpFr" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myConnectors" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="2nFrfBfLpFs" role="1B3o_S" />
      <node concept="3uibUv" id="2nFrfBfLpFt" role="1tU5fm">
        <ref role="3uigEE" to="qoc8:~ObservableList" resolve="ObservableList" />
        <node concept="3Tqbb2" id="2nFrfBfLpFu" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="2nFrfBfMfpz" role="33vP2m">
        <node concept="1pGfFk" id="2nFrfBfMlGH" role="2ShVmc">
          <ref role="37wK5l" to="qoc8:~ObservableArrayList.&lt;init&gt;()" resolve="ObservableArrayList" />
          <node concept="3Tqbb2" id="2nFrfBfMlGI" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4MoyDPO_YC2" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myIsShowingDragFeedBack" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="4MoyDPO_YC3" role="1B3o_S" />
      <node concept="3uibUv" id="4MoyDPO_YC4" role="1tU5fm">
        <ref role="3uigEE" to="lgza:~Property" resolve="Property" />
        <node concept="3uibUv" id="4MoyDPOBlgB" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="2ShNRf" id="4MoyDPO_YC6" role="33vP2m">
        <node concept="1pGfFk" id="4MoyDPO_YC7" role="2ShVmc">
          <ref role="37wK5l" to="lgza:~ValueProperty.&lt;init&gt;(java.lang.Object)" resolve="ValueProperty" />
          <node concept="3uibUv" id="4MoyDPOBu5S" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
          <node concept="3clFbT" id="4MoyDPOBGCe" role="37wK5m">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4MoyDPOBWgu" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myDragConnection" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="4MoyDPOBHJG" role="1B3o_S" />
      <node concept="3uibUv" id="4MoyDPOBVmY" role="1tU5fm">
        <ref role="3uigEE" to="zdnc:~PolyLineConnection" resolve="PolyLineConnection" />
      </node>
      <node concept="2ShNRf" id="4MoyDPOC7os" role="33vP2m">
        <node concept="1pGfFk" id="4MoyDPOC8a8" role="2ShVmc">
          <ref role="37wK5l" to="zdnc:~PolyLineConnection.&lt;init&gt;()" resolve="PolyLineConnection" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="zxzBEOoC0x" role="jymVt">
      <property role="TrG5h" value="myHandlingTrait" />
      <node concept="3Tm6S6" id="zxzBEOoC0v" role="1B3o_S" />
      <node concept="3uibUv" id="zxzBEOoC0w" role="1tU5fm">
        <ref role="3uigEE" to="jqfx:~ViewTrait" resolve="ViewTrait" />
      </node>
    </node>
    <node concept="312cEg" id="zxzBEOpuj0" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myPalettePanel" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="zxzBEOphsc" role="1B3o_S" />
      <node concept="3uibUv" id="5CLWtH_OdFW" role="1tU5fm">
        <ref role="3uigEE" to="mkps:38g0FihPg2W" resolve="DiagramPalette" />
      </node>
    </node>
    <node concept="312cEg" id="zxzBEPqnec" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myPanel" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="zxzBEPq8Pe" role="1B3o_S" />
      <node concept="3uibUv" id="zxzBEPqmkY" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
    </node>
    <node concept="312cEg" id="67VADAJoCpC" role="jymVt">
      <property role="TrG5h" value="myRegistration" />
      <node concept="3Tmbuc" id="6YormRhGScs" role="1B3o_S" />
      <node concept="3uibUv" id="5pJ3qUjxJff" role="1tU5fm">
        <ref role="3uigEE" to="chl9:~Registration" resolve="Registration" />
      </node>
    </node>
    <node concept="312cEg" id="6YormRhFyDH" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myTraitProperty" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="6YormRhGRhZ" role="1B3o_S" />
      <node concept="3uibUv" id="6YormRhFxUJ" role="1tU5fm">
        <ref role="3uigEE" to="lgza:~Property" resolve="Property" />
        <node concept="3uibUv" id="6YormRhFyDn" role="11_B2D">
          <ref role="3uigEE" to="jqfx:~ViewTrait" resolve="ViewTrait" />
        </node>
      </node>
      <node concept="2ShNRf" id="6YormRhFEHD" role="33vP2m">
        <node concept="1pGfFk" id="6YormRhG5X5" role="2ShVmc">
          <ref role="37wK5l" to="lgza:~ValueProperty.&lt;init&gt;(java.lang.Object)" resolve="ValueProperty" />
          <node concept="10Nm6u" id="6YormRhG6FY" role="37wK5m" />
          <node concept="3uibUv" id="6YormRhG8f5" role="1pMfVU">
            <ref role="3uigEE" to="jqfx:~ViewTrait" resolve="ViewTrait" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="_veeLID9fe" role="jymVt" />
    <node concept="3clFbW" id="7efWZtHWBcj" role="jymVt">
      <node concept="37vLTG" id="7efWZtHWJ1i" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="7efWZtHWJ1j" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="7efWZtHWJ1k" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="7efWZtHWJ1l" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3cqZAl" id="7efWZtHWBcl" role="3clF45" />
      <node concept="3Tm1VV" id="7efWZtHWBcm" role="1B3o_S" />
      <node concept="3clFbS" id="7efWZtHWBcn" role="3clF47">
        <node concept="XkiVB" id="7efWZtHWGy5" role="3cqZAp">
          <ref role="37wK5l" node="4EnhxLZX43r" resolve="AbstractJetpadCell" />
          <node concept="37vLTw" id="7efWZtHWJ2m" role="37wK5m">
            <ref role="3cqZAo" node="7efWZtHWJ1i" resolve="editorContext" />
          </node>
          <node concept="37vLTw" id="7efWZtHWJ3Z" role="37wK5m">
            <ref role="3cqZAo" node="7efWZtHWJ1k" resolve="node" />
          </node>
        </node>
        <node concept="3clFbF" id="6YormRhGT3K" role="3cqZAp">
          <node concept="2OqwBi" id="6YormRhGU2g" role="3clFbG">
            <node concept="37vLTw" id="6YormRhGT3J" role="2Oq$k0">
              <ref role="3cqZAo" node="6YormRhFyDH" resolve="myTraitProperty" />
            </node>
            <node concept="liA8E" id="6YormRhGYa_" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="1rXfSq" id="6YormRhGYuA" role="37wK5m">
                <ref role="37wK5l" node="6w0WfK8UBYI" resolve="getEventHandlingTrait" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7efWZtHXzWi" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getComponent" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="7efWZtHXzWj" role="1B3o_S" />
      <node concept="3uibUv" id="7efWZtHXzWl" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="7efWZtHXzWo" role="3clF47">
        <node concept="3clFbJ" id="zxzBEPAGUi" role="3cqZAp">
          <node concept="3clFbS" id="zxzBEPAGUj" role="3clFbx">
            <node concept="3cpWs8" id="2_vgca26uCN" role="3cqZAp">
              <node concept="3cpWsn" id="2_vgca26uCQ" role="3cpWs9">
                <property role="TrG5h" value="columnCount" />
                <node concept="10Oyi0" id="2_vgca26uCL" role="1tU5fm" />
                <node concept="3K4zz7" id="2_vgca26xK$" role="33vP2m">
                  <node concept="3cmrfG" id="2_vgca26yuU" role="3K4E3e">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="3cmrfG" id="2_vgca26y_o" role="3K4GZi">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="3clFbC" id="2_vgca26xkO" role="3K4Cdx">
                    <node concept="10Nm6u" id="2_vgca26xyE" role="3uHU7w" />
                    <node concept="37vLTw" id="2_vgca26vUP" role="3uHU7B">
                      <ref role="3cqZAo" node="zxzBEOpuj0" resolve="myPalettePanel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="zxzBEPAWeK" role="3cqZAp">
              <node concept="37vLTI" id="zxzBEPAXvB" role="3clFbG">
                <node concept="2ShNRf" id="zxzBEPAYJy" role="37vLTx">
                  <node concept="1pGfFk" id="zxzBEPAZPt" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                  </node>
                </node>
                <node concept="37vLTw" id="zxzBEPAWeJ" role="37vLTJ">
                  <ref role="3cqZAo" node="zxzBEPqnec" resolve="myPanel" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="44VJT_ZGEnz" role="3cqZAp">
              <node concept="2OqwBi" id="44VJT_ZGFgo" role="3clFbG">
                <node concept="37vLTw" id="44VJT_ZGEny" role="2Oq$k0">
                  <ref role="3cqZAo" node="zxzBEPqnec" resolve="myPanel" />
                </node>
                <node concept="liA8E" id="44VJT_ZGIOg" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager):void" resolve="setLayout" />
                  <node concept="2ShNRf" id="ThuXSmF4fs" role="37wK5m">
                    <node concept="1pGfFk" id="ThuXSmLf52" role="2ShVmc">
                      <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="ThuXSmLg0J" role="3cqZAp">
              <node concept="3cpWsn" id="ThuXSmLg0K" role="3cpWs9">
                <property role="TrG5h" value="gridBagConstraints" />
                <node concept="3uibUv" id="ThuXSmLg0L" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
                </node>
                <node concept="2ShNRf" id="ThuXSmLgrg" role="33vP2m">
                  <node concept="1pGfFk" id="ThuXSmLhaw" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~GridBagConstraints.&lt;init&gt;()" resolve="GridBagConstraints" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ThuXSmLIWa" role="3cqZAp">
              <node concept="37vLTI" id="ThuXSmLKGX" role="3clFbG">
                <node concept="3cmrfG" id="ThuXSmLKMV" role="37vLTx">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="ThuXSmLJER" role="37vLTJ">
                  <node concept="37vLTw" id="ThuXSmLIW9" role="2Oq$k0">
                    <ref role="3cqZAo" node="ThuXSmLg0K" resolve="gridBagConstraints" />
                  </node>
                  <node concept="2OwXpG" id="ThuXSmLK6U" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridheight" resolve="gridheight" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ThuXSmLL7I" role="3cqZAp">
              <node concept="37vLTI" id="ThuXSmLL7J" role="3clFbG">
                <node concept="37vLTw" id="ThuXSmLN85" role="37vLTx">
                  <ref role="3cqZAo" node="2_vgca26uCQ" resolve="columnCount" />
                </node>
                <node concept="2OqwBi" id="ThuXSmLL7L" role="37vLTJ">
                  <node concept="37vLTw" id="ThuXSmLL7M" role="2Oq$k0">
                    <ref role="3cqZAo" node="ThuXSmLg0K" resolve="gridBagConstraints" />
                  </node>
                  <node concept="2OwXpG" id="ThuXSmLMys" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridwidth" resolve="gridwidth" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ThuXSmLhDI" role="3cqZAp">
              <node concept="37vLTI" id="ThuXSmLj0Q" role="3clFbG">
                <node concept="3cmrfG" id="ThuXSmLj6O" role="37vLTx">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="ThuXSmLhUQ" role="37vLTJ">
                  <node concept="37vLTw" id="ThuXSmLhDH" role="2Oq$k0">
                    <ref role="3cqZAo" node="ThuXSmLg0K" resolve="gridBagConstraints" />
                  </node>
                  <node concept="2OwXpG" id="ThuXSmLijG" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ThuXSmLjyA" role="3cqZAp">
              <node concept="37vLTI" id="ThuXSmLjyB" role="3clFbG">
                <node concept="2OqwBi" id="ThuXSmLjyD" role="37vLTJ">
                  <node concept="37vLTw" id="ThuXSmLjyE" role="2Oq$k0">
                    <ref role="3cqZAo" node="ThuXSmLg0K" resolve="gridBagConstraints" />
                  </node>
                  <node concept="2OwXpG" id="ThuXSmL$yV" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
                  </node>
                </node>
                <node concept="3cmrfG" id="ThuXSmLkKM" role="37vLTx">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ThuXSmLlcn" role="3cqZAp">
              <node concept="37vLTI" id="ThuXSmLlco" role="3clFbG">
                <node concept="2OqwBi" id="ThuXSmLlcp" role="37vLTJ">
                  <node concept="37vLTw" id="ThuXSmLlcq" role="2Oq$k0">
                    <ref role="3cqZAo" node="ThuXSmLg0K" resolve="gridBagConstraints" />
                  </node>
                  <node concept="2OwXpG" id="ThuXSmLlZT" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.fill" resolve="fill" />
                  </node>
                </node>
                <node concept="10M0yZ" id="ThuXSmLmxo" role="37vLTx">
                  <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
                  <ref role="3cqZAo" to="z60i:~GridBagConstraints.BOTH" resolve="BOTH" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ThuXSmLnoJ" role="3cqZAp">
              <node concept="37vLTI" id="ThuXSmLnoK" role="3clFbG">
                <node concept="2OqwBi" id="ThuXSmLnoL" role="37vLTJ">
                  <node concept="37vLTw" id="ThuXSmLnoM" role="2Oq$k0">
                    <ref role="3cqZAo" node="ThuXSmLg0K" resolve="gridBagConstraints" />
                  </node>
                  <node concept="2OwXpG" id="ThuXSmLo5q" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.anchor" resolve="anchor" />
                  </node>
                </node>
                <node concept="10M0yZ" id="ThuXSmLnoO" role="37vLTx">
                  <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
                  <ref role="3cqZAo" to="z60i:~GridBagConstraints.NORTHEAST" resolve="NORTHEAST" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5JruEV1mzYu" role="3cqZAp">
              <node concept="3clFbS" id="5JruEV1mzYx" role="3clFbx">
                <node concept="3clFbF" id="zxzBEO_JZW" role="3cqZAp">
                  <node concept="2OqwBi" id="zxzBEO_Kjc" role="3clFbG">
                    <node concept="37vLTw" id="zxzBEPreBx" role="2Oq$k0">
                      <ref role="3cqZAo" node="zxzBEPqnec" resolve="myPanel" />
                    </node>
                    <node concept="liA8E" id="zxzBEO_NgX" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
                      <node concept="37vLTw" id="5JruEV1mDS$" role="37wK5m">
                        <ref role="3cqZAo" node="zxzBEOpuj0" resolve="myPalettePanel" />
                      </node>
                      <node concept="37vLTw" id="ThuXSmLxGo" role="37wK5m">
                        <ref role="3cqZAo" node="ThuXSmLg0K" resolve="gridBagConstraints" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5JruEV1mAbW" role="3clFbw">
                <node concept="10Nm6u" id="5JruEV1mAl0" role="3uHU7w" />
                <node concept="37vLTw" id="5JruEV1m$ZD" role="3uHU7B">
                  <ref role="3cqZAo" node="zxzBEOpuj0" resolve="myPalettePanel" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ThuXSmLNHU" role="3cqZAp">
              <node concept="37vLTI" id="ThuXSmLNHV" role="3clFbG">
                <node concept="2OqwBi" id="ThuXSmLNHX" role="37vLTJ">
                  <node concept="37vLTw" id="ThuXSmLNHY" role="2Oq$k0">
                    <ref role="3cqZAo" node="ThuXSmLg0K" resolve="gridBagConstraints" />
                  </node>
                  <node concept="2OwXpG" id="ThuXSmLNHZ" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
                  </node>
                </node>
                <node concept="3cpWsd" id="ThuXSmLQ3y" role="37vLTx">
                  <node concept="3cmrfG" id="ThuXSmLQ6x" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="ThuXSmLPjW" role="3uHU7B">
                    <ref role="3cqZAo" node="2_vgca26uCQ" resolve="columnCount" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="zxzBEO_Pzq" role="3cqZAp">
              <node concept="2OqwBi" id="zxzBEO_QhT" role="3clFbG">
                <node concept="37vLTw" id="zxzBEPr1LK" role="2Oq$k0">
                  <ref role="3cqZAo" node="zxzBEPqnec" resolve="myPanel" />
                </node>
                <node concept="liA8E" id="zxzBEO_T1v" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                  <node concept="1rXfSq" id="zxzBEPCFbJ" role="37wK5m">
                    <ref role="37wK5l" node="zxzBEP_q32" resolve="getContainerComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="zxzBEPAV2M" role="3clFbw">
            <node concept="10Nm6u" id="zxzBEPAVaM" role="3uHU7w" />
            <node concept="37vLTw" id="zxzBEPARzq" role="3uHU7B">
              <ref role="3cqZAo" node="zxzBEPqnec" resolve="myPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zxzBEPBITS" role="3cqZAp">
          <node concept="37vLTw" id="zxzBEPBIWV" role="3clFbG">
            <ref role="3cqZAo" node="zxzBEPqnec" resolve="myPanel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="zxzBEP_q32" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getContainerComponent" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="zxzBEP_q35" role="3clF47">
        <node concept="3clFbJ" id="ya5FdpDJLb" role="3cqZAp">
          <node concept="3clFbS" id="ya5FdpDJLe" role="3clFbx">
            <node concept="3clFbF" id="ya5FdpEOGf" role="3cqZAp">
              <node concept="37vLTI" id="ya5FdpEP0S" role="3clFbG">
                <node concept="2ShNRf" id="ya5FdpEPm5" role="37vLTx">
                  <node concept="1pGfFk" id="ya5FdpFld1" role="2ShVmc">
                    <ref role="37wK5l" to="ur71:~ViewContainerComponent.&lt;init&gt;()" resolve="ViewContainerComponent" />
                  </node>
                </node>
                <node concept="37vLTw" id="ya5FdpEOGe" role="37vLTJ">
                  <ref role="3cqZAo" node="7efWZtHWXHe" resolve="myComponent" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ya5Fdq2go5" role="3cqZAp">
              <node concept="2OqwBi" id="ya5Fdq2n86" role="3clFbG">
                <node concept="1rXfSq" id="ya5Fdq2go4" role="2Oq$k0">
                  <ref role="37wK5l" node="2kUb22mGw4l" resolve="getRootMapper" />
                </node>
                <node concept="liA8E" id="ya5Fdq2raP" role="2OqNvi">
                  <ref role="37wK5l" to="sm7x:~Mapper.attachRoot():void" resolve="attachRoot" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ya5FdpFu$x" role="3cqZAp">
              <node concept="2OqwBi" id="ya5FdpF_nH" role="3clFbG">
                <node concept="37vLTw" id="ya5FdpFu$w" role="2Oq$k0">
                  <ref role="3cqZAo" node="7efWZtHWXHe" resolve="myComponent" />
                </node>
                <node concept="liA8E" id="ya5FdpFGtk" role="2OqNvi">
                  <ref role="37wK5l" to="ur71:~ViewContainerComponent.container(jetbrains.jetpad.projectional.view.ViewContainer):void" resolve="container" />
                  <node concept="2OqwBi" id="ya5FdpFPZ_" role="37wK5m">
                    <node concept="1rXfSq" id="ya5FdpFPJh" role="2Oq$k0">
                      <ref role="37wK5l" node="2kUb22mGw4l" resolve="getRootMapper" />
                    </node>
                    <node concept="liA8E" id="ya5FdpFQYb" role="2OqNvi">
                      <ref role="37wK5l" to="sm7x:~Mapper.getTarget():java.lang.Object" resolve="getTarget" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4f6Z7yOzVR6" role="3cqZAp">
              <node concept="2OqwBi" id="4f6Z7yO$6uY" role="3clFbG">
                <node concept="1rXfSq" id="4f6Z7yOzVR5" role="2Oq$k0">
                  <ref role="37wK5l" node="4f6Z7yOiy$H" resolve="getDecorationRootMapper" />
                </node>
                <node concept="liA8E" id="4f6Z7yO$82c" role="2OqNvi">
                  <ref role="37wK5l" to="sm7x:~Mapper.attachRoot():void" resolve="attachRoot" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="22hly_jF7ra" role="3cqZAp">
              <node concept="2OqwBi" id="22hly_jF8Sj" role="3clFbG">
                <node concept="37vLTw" id="22hly_jF7r9" role="2Oq$k0">
                  <ref role="3cqZAo" node="7efWZtHWXHe" resolve="myComponent" />
                </node>
                <node concept="liA8E" id="22hly_jFcnl" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.addFocusListener(java.awt.event.FocusListener):void" resolve="addFocusListener" />
                  <node concept="2ShNRf" id="22hly_jFcvk" role="37wK5m">
                    <node concept="YeOm9" id="22hly_jFAJn" role="2ShVmc">
                      <node concept="1Y3b0j" id="22hly_jFAJq" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="hyam:~FocusListener" resolve="FocusListener" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="2tJIrI" id="22hly_jGMgZ" role="jymVt" />
                        <node concept="3clFb_" id="22hly_jGMoD" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="focusGained" />
                          <property role="DiZV1" value="false" />
                          <property role="IEkAT" value="false" />
                          <node concept="3Tm1VV" id="22hly_jGMoE" role="1B3o_S" />
                          <node concept="3cqZAl" id="22hly_jGMoG" role="3clF45" />
                          <node concept="37vLTG" id="22hly_jGMoH" role="3clF46">
                            <property role="TrG5h" value="event" />
                            <node concept="3uibUv" id="22hly_jGMoI" role="1tU5fm">
                              <ref role="3uigEE" to="hyam:~FocusEvent" resolve="FocusEvent" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="22hly_jGMoK" role="3clF47" />
                        </node>
                        <node concept="3Tm1VV" id="22hly_jFAJr" role="1B3o_S" />
                        <node concept="3clFb_" id="22hly_jFAJ$" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="focusLost" />
                          <property role="DiZV1" value="false" />
                          <property role="IEkAT" value="false" />
                          <node concept="3Tm1VV" id="22hly_jFAJ_" role="1B3o_S" />
                          <node concept="3cqZAl" id="22hly_jFAJB" role="3clF45" />
                          <node concept="37vLTG" id="22hly_jFAJC" role="3clF46">
                            <property role="TrG5h" value="focusEvent" />
                            <node concept="3uibUv" id="22hly_jFAJD" role="1tU5fm">
                              <ref role="3uigEE" to="hyam:~FocusEvent" resolve="FocusEvent" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="22hly_jFAJE" role="3clF47">
                            <node concept="3clFbF" id="22hly_jGLhd" role="3cqZAp">
                              <node concept="1rXfSq" id="22hly_jGLhc" role="3clFbG">
                                <ref role="37wK5l" node="6w0WfK8S4Ev" resolve="hidePatternEditor" />
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
          <node concept="3clFbC" id="ya5FdpE1z0" role="3clFbw">
            <node concept="10Nm6u" id="ya5FdpE4PU" role="3uHU7w" />
            <node concept="37vLTw" id="ya5FdpDUCC" role="3uHU7B">
              <ref role="3cqZAo" node="7efWZtHWXHe" resolve="myComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="75sA8i0i3X6" role="3cqZAp">
          <node concept="37vLTw" id="75sA8i0i49b" role="3cqZAk">
            <ref role="3cqZAo" node="7efWZtHWXHe" resolve="myComponent" />
          </node>
        </node>
        <node concept="3clFbH" id="zxzBEPAD2u" role="3cqZAp" />
      </node>
      <node concept="3Tm6S6" id="zxzBEP_b_s" role="1B3o_S" />
      <node concept="3uibUv" id="zxzBEP_nVw" role="3clF45">
        <ref role="3uigEE" to="ur71:~ViewContainerComponent" resolve="ViewContainerComponent" />
      </node>
    </node>
    <node concept="3clFb_" id="75sA8i0jmW$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="relayoutImpl" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tmbuc" id="75sA8i0jmW_" role="1B3o_S" />
      <node concept="3cqZAl" id="75sA8i0jmWB" role="3clF45" />
      <node concept="3clFbS" id="75sA8i0jmWC" role="3clF47">
        <node concept="3clFbF" id="75sA8i0jmWF" role="3cqZAp">
          <node concept="3nyPlj" id="75sA8i0jmWE" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.relayoutImpl():void" resolve="relayoutImpl" />
          </node>
        </node>
        <node concept="3clFbF" id="7qVWkIme0Zm" role="3cqZAp">
          <node concept="2OqwBi" id="7qVWkIme1Tz" role="3clFbG">
            <node concept="2OqwBi" id="7qVWkIme1nf" role="2Oq$k0">
              <node concept="1rXfSq" id="7qVWkIme0Zk" role="2Oq$k0">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getLayoutModel():jetbrains.mps.nodeEditor.layoutModel.LayoutModel" resolve="getLayoutModel" />
              </node>
              <node concept="liA8E" id="7qVWkIme1Pu" role="2OqNvi">
                <ref role="37wK5l" to="4snq:~LayoutModel.getContentBox():jetbrains.mps.nodeEditor.layoutModel.LayoutBox" resolve="getContentBox" />
              </node>
            </node>
            <node concept="liA8E" id="7qVWkIme262" role="2OqNvi">
              <ref role="37wK5l" to="4snq:~LayoutBox.setSize(int,int):void" resolve="setSize" />
              <node concept="2OqwBi" id="7qVWkIme3db" role="37wK5m">
                <node concept="1rXfSq" id="7qVWkIme2Vr" role="2Oq$k0">
                  <ref role="37wK5l" node="7efWZtHXzWi" resolve="getComponent" />
                </node>
                <node concept="liA8E" id="7qVWkIme4qL" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getWidth():int" resolve="getWidth" />
                </node>
              </node>
              <node concept="2OqwBi" id="7qVWkIme5Tf" role="37wK5m">
                <node concept="1rXfSq" id="7qVWkIme5kV" role="2Oq$k0">
                  <ref role="37wK5l" node="7efWZtHXzWi" resolve="getComponent" />
                </node>
                <node concept="liA8E" id="7qVWkIme7s_" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getHeight():int" resolve="getHeight" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="75sA8i0jmWD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="75sA8i0iQBz" role="jymVt">
      <property role="TrG5h" value="onAdd" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="75sA8i0iQB$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="75sA8i0iQB_" role="3clF47">
        <node concept="3clFbF" id="75sA8i0iQBA" role="3cqZAp">
          <node concept="3nyPlj" id="75sA8i0iQBB" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.onAdd():void" resolve="onAdd" />
          </node>
        </node>
        <node concept="3clFbF" id="75sA8i0iQBC" role="3cqZAp">
          <node concept="2OqwBi" id="75sA8i0iQBD" role="3clFbG">
            <node concept="2OqwBi" id="75sA8i0iQBE" role="2Oq$k0">
              <node concept="1rXfSq" id="75sA8i0iQBF" role="2Oq$k0">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditor():jetbrains.mps.nodeEditor.EditorComponent" resolve="getEditor" />
              </node>
              <node concept="liA8E" id="75sA8i0iQBG" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getCellTracker():jetbrains.mps.nodeEditor.CellTracker" resolve="getCellTracker" />
              </node>
            </node>
            <node concept="liA8E" id="75sA8i0iQBH" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~CellTracker.addComponentCell(jetbrains.mps.nodeEditor.EditorCell_WithComponent):void" resolve="addComponentCell" />
              <node concept="Xjq3P" id="75sA8i0iQBI" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="75sA8i0iQBJ" role="1B3o_S" />
      <node concept="3cqZAl" id="75sA8i0iQBK" role="3clF45" />
    </node>
    <node concept="3clFb_" id="75sA8i0iQBL" role="jymVt">
      <property role="TrG5h" value="onRemove" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="75sA8i0iQBM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="75sA8i0iQBN" role="3clF47">
        <node concept="3clFbF" id="75sA8i0iQBO" role="3cqZAp">
          <node concept="2OqwBi" id="75sA8i0iQBP" role="3clFbG">
            <node concept="2OqwBi" id="75sA8i0iQBQ" role="2Oq$k0">
              <node concept="1rXfSq" id="75sA8i0iQBR" role="2Oq$k0">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditor():jetbrains.mps.nodeEditor.EditorComponent" resolve="getEditor" />
              </node>
              <node concept="liA8E" id="75sA8i0iQBS" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getCellTracker():jetbrains.mps.nodeEditor.CellTracker" resolve="getCellTracker" />
              </node>
            </node>
            <node concept="liA8E" id="75sA8i0iQBT" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~CellTracker.removeComponentCell(jetbrains.mps.nodeEditor.EditorCell_WithComponent):void" resolve="removeComponentCell" />
              <node concept="Xjq3P" id="75sA8i0iQBU" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="75sA8i0iQBV" role="3cqZAp">
          <node concept="3nyPlj" id="75sA8i0iQBW" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.onRemove():void" resolve="onRemove" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="75sA8i0iQBX" role="1B3o_S" />
      <node concept="3cqZAl" id="75sA8i0iQBY" role="3clF45" />
    </node>
    <node concept="3clFb_" id="75sA8i0iU_X" role="jymVt">
      <property role="TrG5h" value="setX" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="75sA8i0iU_Y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="75sA8i0iU_Z" role="3clF46">
        <property role="TrG5h" value="x" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="75sA8i0iUA0" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="75sA8i0iUA1" role="3clF47">
        <node concept="3clFbF" id="75sA8i0iUA2" role="3cqZAp">
          <node concept="2OqwBi" id="75sA8i0iUA3" role="3clFbG">
            <node concept="1rXfSq" id="75sA8i0llQQ" role="2Oq$k0">
              <ref role="37wK5l" node="7efWZtHXzWi" resolve="getComponent" />
            </node>
            <node concept="liA8E" id="75sA8i0iUA5" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setLocation(int,int):void" resolve="setLocation" />
              <node concept="37vLTw" id="75sA8i0iUA6" role="37wK5m">
                <ref role="3cqZAo" node="75sA8i0iU_Z" resolve="x" />
              </node>
              <node concept="2OqwBi" id="75sA8i0iUA7" role="37wK5m">
                <node concept="1rXfSq" id="ya5FdpG1ma" role="2Oq$k0">
                  <ref role="37wK5l" node="7efWZtHXzWi" resolve="getComponent" />
                </node>
                <node concept="liA8E" id="75sA8i0iUA9" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getY():int" resolve="getY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="75sA8i0iUAa" role="3cqZAp">
          <node concept="3nyPlj" id="75sA8i0iUAb" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.setX(int):void" resolve="setX" />
            <node concept="37vLTw" id="75sA8i0iUAc" role="37wK5m">
              <ref role="3cqZAo" node="75sA8i0iU_Z" resolve="x" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="75sA8i0iUAd" role="1B3o_S" />
      <node concept="3cqZAl" id="75sA8i0iUAe" role="3clF45" />
    </node>
    <node concept="3clFb_" id="75sA8i0iUAf" role="jymVt">
      <property role="TrG5h" value="setY" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="75sA8i0iUAg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="75sA8i0iUAh" role="3clF46">
        <property role="TrG5h" value="y" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="75sA8i0iUAi" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="75sA8i0iUAj" role="3clF47">
        <node concept="3clFbF" id="75sA8i0iUAk" role="3cqZAp">
          <node concept="2OqwBi" id="75sA8i0iUAl" role="3clFbG">
            <node concept="1rXfSq" id="75sA8i0lmpg" role="2Oq$k0">
              <ref role="37wK5l" node="7efWZtHXzWi" resolve="getComponent" />
            </node>
            <node concept="liA8E" id="75sA8i0iUAn" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setLocation(int,int):void" resolve="setLocation" />
              <node concept="2OqwBi" id="75sA8i0iUAo" role="37wK5m">
                <node concept="1rXfSq" id="ya5FdpGavT" role="2Oq$k0">
                  <ref role="37wK5l" node="7efWZtHXzWi" resolve="getComponent" />
                </node>
                <node concept="liA8E" id="75sA8i0iUAq" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getX():int" resolve="getX" />
                </node>
              </node>
              <node concept="37vLTw" id="75sA8i0iUAr" role="37wK5m">
                <ref role="3cqZAo" node="75sA8i0iUAh" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="75sA8i0iUAs" role="3cqZAp">
          <node concept="3nyPlj" id="75sA8i0iUAt" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.setY(int):void" resolve="setY" />
            <node concept="37vLTw" id="75sA8i0iUAu" role="37wK5m">
              <ref role="3cqZAo" node="75sA8i0iUAh" resolve="y" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="75sA8i0iUAv" role="1B3o_S" />
      <node concept="3cqZAl" id="75sA8i0iUAw" role="3clF45" />
    </node>
    <node concept="3clFb_" id="75sA8i0iUAx" role="jymVt">
      <property role="TrG5h" value="moveTo" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="75sA8i0iUAy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="75sA8i0iUAz" role="3clF46">
        <property role="TrG5h" value="x" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="75sA8i0iUA$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="75sA8i0iUA_" role="3clF46">
        <property role="TrG5h" value="y" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="75sA8i0iUAA" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="75sA8i0iUAB" role="3clF47">
        <node concept="3clFbF" id="75sA8i0iUAC" role="3cqZAp">
          <node concept="3nyPlj" id="75sA8i0iUAD" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.moveTo(int,int):void" resolve="moveTo" />
            <node concept="37vLTw" id="75sA8i0iUAE" role="37wK5m">
              <ref role="3cqZAo" node="75sA8i0iUAz" resolve="x" />
            </node>
            <node concept="37vLTw" id="75sA8i0iUAF" role="37wK5m">
              <ref role="3cqZAo" node="75sA8i0iUA_" resolve="y" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="75sA8i0iUAG" role="3cqZAp">
          <node concept="2OqwBi" id="75sA8i0iUAH" role="3clFbG">
            <node concept="1rXfSq" id="75sA8i0lmVE" role="2Oq$k0">
              <ref role="37wK5l" node="7efWZtHXzWi" resolve="getComponent" />
            </node>
            <node concept="liA8E" id="75sA8i0iUAJ" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setLocation(int,int):void" resolve="setLocation" />
              <node concept="2OqwBi" id="7qVWkIme9ki" role="37wK5m">
                <node concept="2OqwBi" id="7qVWkIme8Mi" role="2Oq$k0">
                  <node concept="1rXfSq" id="7qVWkIme8rG" role="2Oq$k0">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getLayoutModel():jetbrains.mps.nodeEditor.layoutModel.LayoutModel" resolve="getLayoutModel" />
                  </node>
                  <node concept="liA8E" id="7qVWkIme9fL" role="2OqNvi">
                    <ref role="37wK5l" to="4snq:~LayoutModel.getContentBox():jetbrains.mps.nodeEditor.layoutModel.LayoutBox" resolve="getContentBox" />
                  </node>
                </node>
                <node concept="liA8E" id="7qVWkIme9st" role="2OqNvi">
                  <ref role="37wK5l" to="4snq:~LayoutBox.getX():int" resolve="getX" />
                </node>
              </node>
              <node concept="2OqwBi" id="7qVWkImebcy" role="37wK5m">
                <node concept="2OqwBi" id="7qVWkImeaDZ" role="2Oq$k0">
                  <node concept="1rXfSq" id="7qVWkImeaiW" role="2Oq$k0">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getLayoutModel():jetbrains.mps.nodeEditor.layoutModel.LayoutModel" resolve="getLayoutModel" />
                  </node>
                  <node concept="liA8E" id="7qVWkImeaQ2" role="2OqNvi">
                    <ref role="37wK5l" to="4snq:~LayoutModel.getContentBox():jetbrains.mps.nodeEditor.layoutModel.LayoutBox" resolve="getContentBox" />
                  </node>
                </node>
                <node concept="liA8E" id="7qVWkImeblf" role="2OqNvi">
                  <ref role="37wK5l" to="4snq:~LayoutBox.getY():int" resolve="getY" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="75sA8i0iUAM" role="1B3o_S" />
      <node concept="3cqZAl" id="75sA8i0iUAN" role="3clF45" />
    </node>
    <node concept="3clFb_" id="67VADAJlURJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setPatternEditorX" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="67VADAJlURM" role="3clF47">
        <node concept="3clFbF" id="67VADAJmaG8" role="3cqZAp">
          <node concept="37vLTI" id="67VADAJmdkx" role="3clFbG">
            <node concept="37vLTw" id="67VADAJmdpJ" role="37vLTx">
              <ref role="3cqZAo" node="67VADAJm40h" resolve="x" />
            </node>
            <node concept="37vLTw" id="67VADAJmaG7" role="37vLTJ">
              <ref role="3cqZAo" node="65G2vMdnUSf" resolve="myPatternEditorX" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="67VADAJlTY_" role="3clF45" />
      <node concept="37vLTG" id="67VADAJm40h" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="67VADAJm40g" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="67VADAJme_G" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setPatternEditorY" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="67VADAJme_H" role="3clF47">
        <node concept="3clFbF" id="67VADAJme_I" role="3cqZAp">
          <node concept="37vLTI" id="67VADAJme_J" role="3clFbG">
            <node concept="37vLTw" id="67VADAJme_K" role="37vLTx">
              <ref role="3cqZAo" node="67VADAJme_O" resolve="y" />
            </node>
            <node concept="37vLTw" id="67VADAJmA5I" role="37vLTJ">
              <ref role="3cqZAo" node="65G2vMdo2f7" resolve="myPatternEditorY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="67VADAJme_N" role="3clF45" />
      <node concept="37vLTG" id="67VADAJme_O" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="67VADAJme_P" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="67VADAJnm8W" role="jymVt">
      <property role="TrG5h" value="setExternalTrait" />
      <node concept="3Tm1VV" id="5JruEV1ueK$" role="1B3o_S" />
      <node concept="3cqZAl" id="67VADAJnm8Y" role="3clF45" />
      <node concept="3clFbS" id="67VADAJnm90" role="3clF47">
        <node concept="3clFbF" id="67VADAJpiko" role="3cqZAp">
          <node concept="2EnYce" id="4xxxKX9TJFE" role="3clFbG">
            <node concept="37vLTw" id="67VADAJpikn" role="2Oq$k0">
              <ref role="3cqZAo" node="67VADAJoCpC" resolve="myRegistration" />
            </node>
            <node concept="liA8E" id="67VADAJpjw4" role="2OqNvi">
              <ref role="37wK5l" to="chl9:~Registration.remove():void" resolve="remove" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="67VADAJoUp0" role="3cqZAp">
          <node concept="3clFbS" id="67VADAJoUp1" role="3clFbx">
            <node concept="3clFbF" id="6YormRhGBcI" role="3cqZAp">
              <node concept="2OqwBi" id="6YormRhGCl2" role="3clFbG">
                <node concept="37vLTw" id="6YormRhGBcH" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YormRhFyDH" resolve="myTraitProperty" />
                </node>
                <node concept="liA8E" id="6YormRhGDZA" role="2OqNvi">
                  <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
                  <node concept="1rXfSq" id="6YormRhGESP" role="37wK5m">
                    <ref role="37wK5l" node="6w0WfK8UBYI" resolve="getEventHandlingTrait" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="67VADAJoUw0" role="3clFbw">
            <node concept="10Nm6u" id="67VADAJoUzn" role="3uHU7w" />
            <node concept="37vLTw" id="67VADAJoUse" role="3uHU7B">
              <ref role="3cqZAo" node="67VADAJo6PX" resolve="trait" />
            </node>
          </node>
          <node concept="9aQIb" id="67VADAJpi8S" role="9aQIa">
            <node concept="3clFbS" id="67VADAJpi8T" role="9aQI4">
              <node concept="3clFbF" id="6YormRhGFRE" role="3cqZAp">
                <node concept="2OqwBi" id="6YormRhGFRF" role="3clFbG">
                  <node concept="37vLTw" id="6YormRhGFRG" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YormRhFyDH" resolve="myTraitProperty" />
                  </node>
                  <node concept="liA8E" id="6YormRhGFRH" role="2OqNvi">
                    <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
                    <node concept="37vLTw" id="6YormRhGI0h" role="37wK5m">
                      <ref role="3cqZAo" node="67VADAJo6PX" resolve="trait" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="67VADAJo6PX" role="3clF46">
        <property role="TrG5h" value="trait" />
        <node concept="3uibUv" id="67VADAJo6PW" role="1tU5fm">
          <ref role="3uigEE" to="jqfx:~ViewTrait" resolve="ViewTrait" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="75sA8i0iUAO" role="jymVt">
      <property role="TrG5h" value="isDrawBorder" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="75sA8i0iUAP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="75sA8i0iUAQ" role="3clF47">
        <node concept="3cpWs6" id="75sA8i0iUAR" role="3cqZAp">
          <node concept="3clFbT" id="75sA8i0iUAS" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="75sA8i0iUAT" role="1B3o_S" />
      <node concept="10P_77" id="75sA8i0iUAU" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5JruEV1md16" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setPalette" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5JruEV1md19" role="3clF47">
        <node concept="3clFbF" id="5JruEV1mw63" role="3cqZAp">
          <node concept="37vLTI" id="5JruEV1mx4X" role="3clFbG">
            <node concept="37vLTw" id="5JruEV1mxaE" role="37vLTx">
              <ref role="3cqZAo" node="5JruEV1mn9_" resolve="palette" />
            </node>
            <node concept="37vLTw" id="5JruEV1mw62" role="37vLTJ">
              <ref role="3cqZAo" node="zxzBEOpuj0" resolve="myPalettePanel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5JruEV1m2Wj" role="1B3o_S" />
      <node concept="3cqZAl" id="5JruEV1mb3W" role="3clF45" />
      <node concept="37vLTG" id="5JruEV1mn9_" role="3clF46">
        <property role="TrG5h" value="palette" />
        <node concept="3uibUv" id="5JruEV1mn9$" role="1tU5fm">
          <ref role="3uigEE" to="mkps:38g0FihPg2W" resolve="DiagramPalette" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="67VADAJBfD6" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createPaletteBlockSubstituteInfoPartExts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="67VADAJBfD9" role="3clF47" />
      <node concept="3Tmbuc" id="67VADAJB4uJ" role="1B3o_S" />
      <node concept="10Q1$e" id="67VADAJDqYn" role="3clF45">
        <node concept="3uibUv" id="67VADAJBeJQ" role="10Q1$1">
          <ref role="3uigEE" to="6lvu:~SubstituteInfoPartExt" resolve="SubstituteInfoPartExt" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="67VADAJCvgM" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createPaletteConnectorSubstituteInfoPartExts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="67VADAJCvgN" role="3clF47" />
      <node concept="3Tmbuc" id="67VADAJCvgO" role="1B3o_S" />
      <node concept="10Q1$e" id="67VADAJDzt9" role="3clF45">
        <node concept="3uibUv" id="67VADAJCvgP" role="10Q1$1">
          <ref role="3uigEE" to="6lvu:~SubstituteInfoPartExt" resolve="SubstituteInfoPartExt" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6w0WfK8UBYI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getEventHandlingTrait" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6w0WfK8UBYL" role="3clF47">
        <node concept="3clFbJ" id="67VADAJogjX" role="3cqZAp">
          <node concept="3clFbS" id="67VADAJogk0" role="3clFbx">
            <node concept="3clFbF" id="zxzBEOoC2H" role="3cqZAp">
              <node concept="37vLTI" id="zxzBEOoC2I" role="3clFbG">
                <node concept="2OqwBi" id="zxzBEOoC2J" role="37vLTJ">
                  <node concept="Xjq3P" id="zxzBEOoC2K" role="2Oq$k0" />
                  <node concept="2OwXpG" id="zxzBEOoC2L" role="2OqNvi">
                    <ref role="2Oxat5" node="zxzBEOoC0x" resolve="myHandlingTrait" />
                  </node>
                </node>
                <node concept="2OqwBi" id="zxzBEOoC2M" role="37vLTx">
                  <node concept="2OqwBi" id="tdMhUufz2e" role="2Oq$k0">
                    <node concept="2OqwBi" id="tdMhUuffIz" role="2Oq$k0">
                      <node concept="2OqwBi" id="zxzBEOoC2N" role="2Oq$k0">
                        <node concept="2OqwBi" id="zxzBEOoC2O" role="2Oq$k0">
                          <node concept="2OqwBi" id="zxzBEOoC2P" role="2Oq$k0">
                            <node concept="2ShNRf" id="zxzBEOoC2Q" role="2Oq$k0">
                              <node concept="1pGfFk" id="zxzBEOoC2R" role="2ShVmc">
                                <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.&lt;init&gt;()" resolve="ViewTraitBuilder" />
                              </node>
                            </node>
                            <node concept="liA8E" id="zxzBEOoC2S" role="2OqNvi">
                              <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.on(jetbrains.jetpad.projectional.view.ViewEventSpec,jetbrains.jetpad.projectional.view.ViewEventHandler):jetbrains.jetpad.projectional.view.ViewTraitBuilder" resolve="on" />
                              <node concept="10M0yZ" id="zxzBEOoC2T" role="37wK5m">
                                <ref role="1PxDUh" to="jqfx:~ViewEvents" resolve="ViewEvents" />
                                <ref role="3cqZAo" to="jqfx:~ViewEvents.MOUSE_PRESSED" resolve="MOUSE_PRESSED" />
                              </node>
                              <node concept="1bVj0M" id="zxzBEOoC2U" role="37wK5m">
                                <node concept="37vLTG" id="zxzBEOoC2V" role="1bW2Oz">
                                  <property role="TrG5h" value="view" />
                                  <node concept="3uibUv" id="zxzBEOoC2W" role="1tU5fm">
                                    <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="zxzBEOoC2X" role="1bW2Oz">
                                  <property role="TrG5h" value="event" />
                                  <node concept="3uibUv" id="zxzBEOoC2Y" role="1tU5fm">
                                    <ref role="3uigEE" to="v7xa:~MouseEvent" resolve="MouseEvent" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="zxzBEOoC2Z" role="1bW5cS">
                                  <node concept="3clFbJ" id="3wCUwlC7Qcj" role="3cqZAp">
                                    <node concept="3clFbS" id="3wCUwlC7Qck" role="3clFbx">
                                      <node concept="3cpWs6" id="3wCUwlC8tih" role="3cqZAp" />
                                    </node>
                                    <node concept="3y3z36" id="3wCUwlC8sq3" role="3clFbw">
                                      <node concept="2OqwBi" id="3wCUwlC8sq6" role="3uHU7B">
                                        <node concept="37vLTw" id="3wCUwlC8sq7" role="2Oq$k0">
                                          <ref role="3cqZAo" node="zxzBEOoC2V" resolve="view" />
                                        </node>
                                        <node concept="liA8E" id="3wCUwlC8sq8" role="2OqNvi">
                                          <ref role="37wK5l" to="jqfx:~View.viewAt(jetbrains.jetpad.geometry.Vector):jetbrains.jetpad.projectional.view.View" resolve="viewAt" />
                                          <node concept="2OqwBi" id="3wCUwlC8sq9" role="37wK5m">
                                            <node concept="37vLTw" id="3wCUwlC8sqa" role="2Oq$k0">
                                              <ref role="3cqZAo" node="zxzBEOoC2X" resolve="event" />
                                            </node>
                                            <node concept="liA8E" id="3wCUwlC8sqb" role="2OqNvi">
                                              <ref role="37wK5l" to="v7xa:~MouseEvent.location():jetbrains.jetpad.geometry.Vector" resolve="location" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="3wCUwlC8sq5" role="3uHU7w">
                                        <ref role="3cqZAo" node="zxzBEOoC2V" resolve="view" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="3wCUwlC7LMs" role="3cqZAp">
                                    <node concept="3clFbS" id="3wCUwlC7LMv" role="3clFbx">
                                      <node concept="3clFbF" id="3wCUwlC7WUG" role="3cqZAp">
                                        <node concept="2OqwBi" id="zxzBEOoC3c" role="3clFbG">
                                          <node concept="2OqwBi" id="zxzBEOoC3d" role="2Oq$k0">
                                            <node concept="2OqwBi" id="zxzBEOoC3e" role="2Oq$k0">
                                              <node concept="37vLTw" id="zxzBEOoC3f" role="2Oq$k0">
                                                <ref role="3cqZAo" node="zxzBEOoC2V" resolve="view" />
                                              </node>
                                              <node concept="liA8E" id="zxzBEOoC3g" role="2OqNvi">
                                                <ref role="37wK5l" to="jqfx:~View.container():jetbrains.jetpad.projectional.view.ViewContainer" resolve="container" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="zxzBEOoC3h" role="2OqNvi">
                                              <ref role="37wK5l" to="jqfx:~ViewContainer.focusedView():jetbrains.jetpad.model.property.Property" resolve="focusedView" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="zxzBEOoC3i" role="2OqNvi">
                                            <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
                                            <node concept="37vLTw" id="zxzBEOoC3j" role="37wK5m">
                                              <ref role="3cqZAo" node="zxzBEOoC2V" resolve="view" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3fqX7Q" id="3wCUwlC7OYH" role="3clFbw">
                                      <node concept="2OqwBi" id="3wCUwlC7Pxe" role="3fr31v">
                                        <node concept="2OqwBi" id="3wCUwlC7Pxf" role="2Oq$k0">
                                          <node concept="37vLTw" id="3wCUwlC7Pxg" role="2Oq$k0">
                                            <ref role="3cqZAo" node="zxzBEOoC2V" resolve="view" />
                                          </node>
                                          <node concept="liA8E" id="3wCUwlC7Pxh" role="2OqNvi">
                                            <ref role="37wK5l" to="jqfx:~View.focused():jetbrains.jetpad.model.property.ReadableProperty" resolve="focused" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="3wCUwlC7Pxi" role="2OqNvi">
                                          <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="9aQIb" id="6YormRhSvTW" role="9aQIa">
                                      <node concept="3clFbS" id="6YormRhSvTX" role="9aQI4">
                                        <node concept="3clFbF" id="zxzBEOoC32" role="3cqZAp">
                                          <node concept="1rXfSq" id="zxzBEOoC33" role="3clFbG">
                                            <ref role="37wK5l" node="6w0WfK8S4Ev" resolve="hidePatternEditor" />
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="zxzBEOoC3B" role="3cqZAp">
                                          <node concept="1rXfSq" id="zxzBEOoC3C" role="3clFbG">
                                            <ref role="37wK5l" node="6w0WfK8S4E2" resolve="createNewDiagramElement" />
                                            <node concept="2OqwBi" id="zxzBEOoC3D" role="37wK5m">
                                              <node concept="37vLTw" id="zxzBEOoC3E" role="2Oq$k0">
                                                <ref role="3cqZAo" node="zxzBEOoC2X" resolve="event" />
                                              </node>
                                              <node concept="liA8E" id="zxzBEOoC3F" role="2OqNvi">
                                                <ref role="37wK5l" to="v7xa:~MouseEvent.x():int" resolve="x" />
                                              </node>
                                            </node>
                                            <node concept="2OqwBi" id="zxzBEOoC3G" role="37wK5m">
                                              <node concept="37vLTw" id="zxzBEOoC3H" role="2Oq$k0">
                                                <ref role="3cqZAo" node="zxzBEOoC2X" resolve="event" />
                                              </node>
                                              <node concept="liA8E" id="zxzBEOoC3I" role="2OqNvi">
                                                <ref role="37wK5l" to="v7xa:~MouseEvent.y():int" resolve="y" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="zxzBEOoC3J" role="3cqZAp">
                                    <node concept="2OqwBi" id="zxzBEOoC3K" role="3clFbG">
                                      <node concept="37vLTw" id="zxzBEOoC3L" role="2Oq$k0">
                                        <ref role="3cqZAo" node="zxzBEOoC2X" resolve="event" />
                                      </node>
                                      <node concept="liA8E" id="zxzBEOoC3M" role="2OqNvi">
                                        <ref role="37wK5l" to="v7xa:~Event.consume():void" resolve="consume" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="zxzBEOoC3N" role="2OqNvi">
                            <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.on(jetbrains.jetpad.projectional.view.ViewEventSpec,jetbrains.jetpad.projectional.view.ViewEventHandler):jetbrains.jetpad.projectional.view.ViewTraitBuilder" resolve="on" />
                            <node concept="10M0yZ" id="zxzBEOoC3O" role="37wK5m">
                              <ref role="3cqZAo" to="jqfx:~ViewEvents.KEY_PRESSED" resolve="KEY_PRESSED" />
                              <ref role="1PxDUh" to="jqfx:~ViewEvents" resolve="ViewEvents" />
                            </node>
                            <node concept="1bVj0M" id="zxzBEOoC3P" role="37wK5m">
                              <node concept="37vLTG" id="zxzBEOoC3Q" role="1bW2Oz">
                                <property role="TrG5h" value="view" />
                                <node concept="3uibUv" id="zxzBEOoC3R" role="1tU5fm">
                                  <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                                </node>
                              </node>
                              <node concept="37vLTG" id="zxzBEOoC3S" role="1bW2Oz">
                                <property role="TrG5h" value="event" />
                                <node concept="3uibUv" id="zxzBEOoC3T" role="1tU5fm">
                                  <ref role="3uigEE" to="v7xa:~KeyEvent" resolve="KeyEvent" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="zxzBEOoC3U" role="1bW5cS">
                                <node concept="3clFbJ" id="zxzBEOoC3V" role="3cqZAp">
                                  <node concept="3clFbS" id="zxzBEOoC3W" role="3clFbx">
                                    <node concept="3clFbF" id="zxzBEOoC3X" role="3cqZAp">
                                      <node concept="2OqwBi" id="zxzBEOoC3Y" role="3clFbG">
                                        <node concept="1rXfSq" id="zxzBEOoC3Z" role="2Oq$k0">
                                          <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditor():jetbrains.mps.nodeEditor.EditorComponent" resolve="getEditor" />
                                        </node>
                                        <node concept="liA8E" id="zxzBEOoC40" role="2OqNvi">
                                          <ref role="37wK5l" to="exr9:~EditorComponent.processKeyPressed(java.awt.event.KeyEvent):void" resolve="processKeyPressed" />
                                          <node concept="1rXfSq" id="zxzBEOoC41" role="37wK5m">
                                            <ref role="37wK5l" node="6w0WfK8WjZj" resolve="getAWTKeyEvent" />
                                            <node concept="37vLTw" id="zxzBEOoC42" role="37wK5m">
                                              <ref role="3cqZAo" node="zxzBEOoC3S" resolve="event" />
                                            </node>
                                            <node concept="3clFbT" id="zxzBEOoC43" role="37wK5m">
                                              <property role="3clFbU" value="false" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="zxzBEOoC44" role="3cqZAp">
                                      <node concept="2OqwBi" id="zxzBEOoC45" role="3clFbG">
                                        <node concept="37vLTw" id="zxzBEOoC46" role="2Oq$k0">
                                          <ref role="3cqZAo" node="zxzBEOoC3S" resolve="event" />
                                        </node>
                                        <node concept="liA8E" id="zxzBEOoC47" role="2OqNvi">
                                          <ref role="37wK5l" to="v7xa:~Event.consume():void" resolve="consume" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs6" id="zxzBEOoC48" role="3cqZAp" />
                                  </node>
                                  <node concept="37vLTw" id="zxzBEOoC49" role="3clFbw">
                                    <ref role="3cqZAo" node="6w0WfK8Snx0" resolve="mySubstituteEditorVisible" />
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="zxzBEOoC4b" role="3cqZAp">
                                  <node concept="3clFbS" id="zxzBEOoC4c" role="3clFbx">
                                    <node concept="3clFbF" id="2fBTGxbsI3" role="3cqZAp">
                                      <node concept="2YIFZM" id="2fBTGxbsI4" role="3clFbG">
                                        <ref role="1Pybhc" to="epaj:~SelectionUtil" resolve="SelectionUtil" />
                                        <ref role="37wK5l" to="epaj:~SelectionUtil.selectCell(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,java.lang.String):void" resolve="selectCell" />
                                        <node concept="1rXfSq" id="2fBTGxbsI5" role="37wK5m">
                                          <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                                        </node>
                                        <node concept="1rXfSq" id="2fBTGxbsI6" role="37wK5m">
                                          <ref role="37wK5l" to="g51k:~EditorCell_Basic.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
                                        </node>
                                        <node concept="1rXfSq" id="2fBTGxbsI7" role="37wK5m">
                                          <ref role="37wK5l" to="g51k:~EditorCell_Basic.getCellId():java.lang.String" resolve="getCellId" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="zxzBEOoC4m" role="3cqZAp">
                                      <node concept="2OqwBi" id="zxzBEOoC4n" role="3clFbG">
                                        <node concept="37vLTw" id="zxzBEOoC4o" role="2Oq$k0">
                                          <ref role="3cqZAo" node="zxzBEOoC3S" resolve="event" />
                                        </node>
                                        <node concept="liA8E" id="zxzBEOoC4p" role="2OqNvi">
                                          <ref role="37wK5l" to="v7xa:~Event.consume():void" resolve="consume" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbC" id="zxzBEOoC4q" role="3clFbw">
                                    <node concept="Rm8GO" id="zxzBEOoC4r" role="3uHU7w">
                                      <ref role="Rm8GQ" to="v7xa:~Key.ESCAPE" resolve="ESCAPE" />
                                      <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
                                    </node>
                                    <node concept="2OqwBi" id="zxzBEOoC4s" role="3uHU7B">
                                      <node concept="37vLTw" id="zxzBEOoC4t" role="2Oq$k0">
                                        <ref role="3cqZAo" node="zxzBEOoC3S" resolve="event" />
                                      </node>
                                      <node concept="liA8E" id="zxzBEOoC4u" role="2OqNvi">
                                        <ref role="37wK5l" to="v7xa:~KeyEvent.key():jetbrains.jetpad.event.Key" resolve="key" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="zxzBEOoC4v" role="2OqNvi">
                          <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.on(jetbrains.jetpad.projectional.view.ViewEventSpec,jetbrains.jetpad.projectional.view.ViewEventHandler):jetbrains.jetpad.projectional.view.ViewTraitBuilder" resolve="on" />
                          <node concept="10M0yZ" id="zxzBEOoC4w" role="37wK5m">
                            <ref role="3cqZAo" to="jqfx:~ViewEvents.KEY_TYPED" resolve="KEY_TYPED" />
                            <ref role="1PxDUh" to="jqfx:~ViewEvents" resolve="ViewEvents" />
                          </node>
                          <node concept="1bVj0M" id="zxzBEOoC4x" role="37wK5m">
                            <node concept="37vLTG" id="zxzBEOoC4y" role="1bW2Oz">
                              <property role="TrG5h" value="view" />
                              <node concept="3uibUv" id="zxzBEOoC4z" role="1tU5fm">
                                <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                              </node>
                            </node>
                            <node concept="37vLTG" id="zxzBEOoC4$" role="1bW2Oz">
                              <property role="TrG5h" value="event" />
                              <node concept="3uibUv" id="zxzBEOoC4_" role="1tU5fm">
                                <ref role="3uigEE" to="v7xa:~KeyEvent" resolve="KeyEvent" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="zxzBEOoC4A" role="1bW5cS">
                              <node concept="3clFbJ" id="zxzBEOoC4B" role="3cqZAp">
                                <node concept="3clFbS" id="zxzBEOoC4C" role="3clFbx">
                                  <node concept="3cpWs6" id="zxzBEOoC4D" role="3cqZAp" />
                                </node>
                                <node concept="3fqX7Q" id="zxzBEOoC4E" role="3clFbw">
                                  <node concept="37vLTw" id="zxzBEOoC4F" role="3fr31v">
                                    <ref role="3cqZAo" node="6w0WfK8Snx0" resolve="mySubstituteEditorVisible" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="zxzBEOoC4G" role="3cqZAp">
                                <node concept="2OqwBi" id="zxzBEOoC4H" role="3clFbG">
                                  <node concept="1rXfSq" id="zxzBEOoC4I" role="2Oq$k0">
                                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditor():jetbrains.mps.nodeEditor.EditorComponent" resolve="getEditor" />
                                  </node>
                                  <node concept="liA8E" id="zxzBEOoC4J" role="2OqNvi">
                                    <ref role="37wK5l" to="exr9:~EditorComponent.processKeyTyped(java.awt.event.KeyEvent):void" resolve="processKeyTyped" />
                                    <node concept="1rXfSq" id="zxzBEOoC4K" role="37wK5m">
                                      <ref role="37wK5l" node="6w0WfK8WjZj" resolve="getAWTKeyEvent" />
                                      <node concept="37vLTw" id="zxzBEOoC4L" role="37wK5m">
                                        <ref role="3cqZAo" node="zxzBEOoC4$" resolve="event" />
                                      </node>
                                      <node concept="3clFbT" id="zxzBEOoC4M" role="37wK5m">
                                        <property role="3clFbU" value="false" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="zxzBEOoC4N" role="3cqZAp">
                                <node concept="2OqwBi" id="zxzBEOoC4O" role="3clFbG">
                                  <node concept="37vLTw" id="zxzBEOoC4P" role="2Oq$k0">
                                    <ref role="3cqZAo" node="zxzBEOoC4$" resolve="event" />
                                  </node>
                                  <node concept="liA8E" id="zxzBEOoC4Q" role="2OqNvi">
                                    <ref role="37wK5l" to="v7xa:~Event.consume():void" resolve="consume" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="BSIQ$yxft_" role="2OqNvi">
                        <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.on(jetbrains.jetpad.projectional.view.ViewEventSpec,jetbrains.jetpad.projectional.view.ViewEventHandler):jetbrains.jetpad.projectional.view.ViewTraitBuilder" resolve="on" />
                        <node concept="10M0yZ" id="BSIQ$yxgix" role="37wK5m">
                          <ref role="3cqZAo" to="jqfx:~ViewEvents.MOUSE_DRAGGED" resolve="MOUSE_DRAGGED" />
                          <ref role="1PxDUh" to="jqfx:~ViewEvents" resolve="ViewEvents" />
                        </node>
                        <node concept="2ShNRf" id="BSIQ$yxftB" role="37wK5m">
                          <node concept="YeOm9" id="BSIQ$yxftC" role="2ShVmc">
                            <node concept="1Y3b0j" id="BSIQ$yxftD" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <property role="1sVAO0" value="false" />
                              <property role="1EXbeo" value="false" />
                              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                              <ref role="1Y3XeK" to="jqfx:~ViewEventHandler" resolve="ViewEventHandler" />
                              <node concept="3Tm1VV" id="BSIQ$yxftE" role="1B3o_S" />
                              <node concept="3clFb_" id="BSIQ$yxftF" role="jymVt">
                                <property role="TrG5h" value="handle" />
                                <property role="DiZV1" value="false" />
                                <property role="od$2w" value="false" />
                                <node concept="2AHcQZ" id="BSIQ$yxftG" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                </node>
                                <node concept="37vLTG" id="BSIQ$yxftH" role="3clF46">
                                  <property role="TrG5h" value="view" />
                                  <property role="3TUv4t" value="false" />
                                  <node concept="3uibUv" id="BSIQ$yxftI" role="1tU5fm">
                                    <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="BSIQ$yxftJ" role="3clF46">
                                  <property role="TrG5h" value="event" />
                                  <property role="3TUv4t" value="false" />
                                  <node concept="3uibUv" id="BSIQ$yxftK" role="1tU5fm">
                                    <ref role="3uigEE" to="v7xa:~MouseEvent" resolve="MouseEvent" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="BSIQ$yxftL" role="3clF47">
                                  <node concept="3clFbJ" id="tdMhUuoloG" role="3cqZAp">
                                    <node concept="3fqX7Q" id="tdMhUuozQp" role="3clFbw">
                                      <node concept="1rXfSq" id="tdMhUuoms2" role="3fr31v">
                                        <ref role="37wK5l" node="63$PQ33zKZe" resolve="hasConnectionDragFeedback" />
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="tdMhUuorZm" role="3clFbx">
                                      <node concept="3cpWs8" id="tdMhUuiq2H" role="3cqZAp">
                                        <node concept="3cpWsn" id="tdMhUuiq2I" role="3cpWs9">
                                          <property role="TrG5h" value="sourceView" />
                                          <node concept="3uibUv" id="tdMhUuiq2J" role="1tU5fm">
                                            <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                                          </node>
                                          <node concept="2OqwBi" id="tdMhUuiqni" role="33vP2m">
                                            <node concept="37vLTw" id="tdMhUuiqnj" role="2Oq$k0">
                                              <ref role="3cqZAo" node="BSIQ$yxftH" resolve="view" />
                                            </node>
                                            <node concept="liA8E" id="tdMhUuiqnk" role="2OqNvi">
                                              <ref role="37wK5l" to="jqfx:~View.viewAt(jetbrains.jetpad.geometry.Vector):jetbrains.jetpad.projectional.view.View" resolve="viewAt" />
                                              <node concept="2OqwBi" id="tdMhUuiqnl" role="37wK5m">
                                                <node concept="37vLTw" id="tdMhUuiqZ7" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="BSIQ$yxftJ" resolve="event" />
                                                </node>
                                                <node concept="liA8E" id="tdMhUuiqnn" role="2OqNvi">
                                                  <ref role="37wK5l" to="v7xa:~MouseEvent.location():jetbrains.jetpad.geometry.Vector" resolve="location" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbJ" id="tdMhUufWKh" role="3cqZAp">
                                        <node concept="3clFbS" id="tdMhUufWKk" role="3clFbx">
                                          <node concept="3cpWs6" id="tdMhUuipm1" role="3cqZAp" />
                                        </node>
                                        <node concept="22lmx$" id="tdMhUuplfr" role="3clFbw">
                                          <node concept="3clFbC" id="tdMhUupmu6" role="3uHU7B">
                                            <node concept="10Nm6u" id="tdMhUupmDl" role="3uHU7w" />
                                            <node concept="37vLTw" id="tdMhUupm89" role="3uHU7B">
                                              <ref role="3cqZAo" node="tdMhUuiq2I" resolve="sourceView" />
                                            </node>
                                          </node>
                                          <node concept="3fqX7Q" id="tdMhUuhhAd" role="3uHU7w">
                                            <node concept="2EnYce" id="tdMhUukWrI" role="3fr31v">
                                              <node concept="2OqwBi" id="tdMhUuin30" role="2Oq$k0">
                                                <node concept="2OqwBi" id="tdMhUufX6$" role="2Oq$k0">
                                                  <node concept="37vLTw" id="tdMhUuirf1" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="tdMhUuiq2I" resolve="sourceView" />
                                                  </node>
                                                  <node concept="liA8E" id="tdMhUuhbP4" role="2OqNvi">
                                                    <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                                                    <node concept="10M0yZ" id="tdMhUuhgd8" role="37wK5m">
                                                      <ref role="3cqZAo" node="tdMhUugQRz" resolve="CONNECTION_SOURCE" />
                                                      <ref role="1PxDUh" node="5stQbxMM_mL" resolve="JetpadUtils" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="tdMhUuip2k" role="2OqNvi">
                                                  <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="tdMhUukXTQ" role="2OqNvi">
                                                <ref role="37wK5l" to="wyt6:~Boolean.booleanValue():boolean" resolve="booleanValue" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbF" id="63$PQ33Jiek" role="3cqZAp">
                                        <node concept="1rXfSq" id="tdMhUuivE5" role="3clFbG">
                                          <ref role="37wK5l" node="63$PQ33$hNW" resolve="showConnectionDragFeedback" />
                                          <node concept="37vLTw" id="tdMhUuoyqd" role="37wK5m">
                                            <ref role="3cqZAo" node="tdMhUuiq2I" resolve="sourceView" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="tdMhUuiDgR" role="3cqZAp">
                                    <node concept="1rXfSq" id="tdMhUuiDgQ" role="3clFbG">
                                      <ref role="37wK5l" node="63$PQ33_AXI" resolve="updateConnectionDragFeedback" />
                                      <node concept="2OqwBi" id="tdMhUuiECo" role="37wK5m">
                                        <node concept="37vLTw" id="tdMhUuiEl9" role="2Oq$k0">
                                          <ref role="3cqZAo" node="BSIQ$yxftJ" resolve="event" />
                                        </node>
                                        <node concept="liA8E" id="tdMhUuiEWD" role="2OqNvi">
                                          <ref role="37wK5l" to="v7xa:~MouseEvent.location():jetbrains.jetpad.geometry.Vector" resolve="location" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="44VJT_ZHUV7" role="3cqZAp">
                                    <node concept="1rXfSq" id="44VJT_ZHUV6" role="3clFbG">
                                      <ref role="37wK5l" to="g51k:~EditorCell_Collection.requestRelayout():void" resolve="requestRelayout" />
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="44VJT_ZHWm8" role="3cqZAp">
                                    <node concept="2OqwBi" id="44VJT_ZHX92" role="3clFbG">
                                      <node concept="1rXfSq" id="44VJT_ZHWm7" role="2Oq$k0">
                                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditor():jetbrains.mps.nodeEditor.EditorComponent" resolve="getEditor" />
                                      </node>
                                      <node concept="liA8E" id="44VJT_ZI2MW" role="2OqNvi">
                                        <ref role="37wK5l" to="exr9:~EditorComponent.relayout():void" resolve="relayout" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3Tm1VV" id="BSIQ$yxfut" role="1B3o_S" />
                                <node concept="3cqZAl" id="BSIQ$yxfuu" role="3clF45" />
                              </node>
                              <node concept="3uibUv" id="BSIQ$yxIGH" role="2Ghqu4">
                                <ref role="3uigEE" to="v7xa:~MouseEvent" resolve="MouseEvent" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="BSIQ$yxfuw" role="2OqNvi">
                      <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.on(jetbrains.jetpad.projectional.view.ViewEventSpec,jetbrains.jetpad.projectional.view.ViewEventHandler):jetbrains.jetpad.projectional.view.ViewTraitBuilder" resolve="on" />
                      <node concept="10M0yZ" id="BSIQ$yxgiy" role="37wK5m">
                        <ref role="3cqZAo" to="jqfx:~ViewEvents.MOUSE_RELEASED" resolve="MOUSE_RELEASED" />
                        <ref role="1PxDUh" to="jqfx:~ViewEvents" resolve="ViewEvents" />
                      </node>
                      <node concept="2ShNRf" id="BSIQ$yxfuy" role="37wK5m">
                        <node concept="YeOm9" id="BSIQ$yxfuz" role="2ShVmc">
                          <node concept="1Y3b0j" id="BSIQ$yxfu$" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <property role="1sVAO0" value="false" />
                            <property role="1EXbeo" value="false" />
                            <ref role="1Y3XeK" to="jqfx:~ViewEventHandler" resolve="ViewEventHandler" />
                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                            <node concept="3Tm1VV" id="BSIQ$yxfu_" role="1B3o_S" />
                            <node concept="3clFb_" id="BSIQ$yxfuA" role="jymVt">
                              <property role="TrG5h" value="handle" />
                              <property role="DiZV1" value="false" />
                              <property role="od$2w" value="false" />
                              <node concept="2AHcQZ" id="BSIQ$yxfuB" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                              <node concept="37vLTG" id="BSIQ$yxfuC" role="3clF46">
                                <property role="TrG5h" value="view" />
                                <property role="3TUv4t" value="false" />
                                <node concept="3uibUv" id="BSIQ$yxfuD" role="1tU5fm">
                                  <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                                </node>
                              </node>
                              <node concept="37vLTG" id="BSIQ$yxfuE" role="3clF46">
                                <property role="TrG5h" value="event" />
                                <property role="3TUv4t" value="false" />
                                <node concept="3uibUv" id="BSIQ$yxfuF" role="1tU5fm">
                                  <ref role="3uigEE" to="v7xa:~MouseEvent" resolve="MouseEvent" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="BSIQ$yxfuG" role="3clF47">
                                <node concept="3clFbJ" id="tdMhUuiGFr" role="3cqZAp">
                                  <node concept="3clFbS" id="tdMhUuiGFu" role="3clFbx">
                                    <node concept="3cpWs6" id="tdMhUujgL2" role="3cqZAp" />
                                  </node>
                                  <node concept="3fqX7Q" id="63$PQ33Kefu" role="3clFbw">
                                    <node concept="1rXfSq" id="tdMhUuiIUY" role="3fr31v">
                                      <ref role="37wK5l" node="63$PQ33zKZe" resolve="hasConnectionDragFeedback" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="tdMhUuiL4W" role="3cqZAp">
                                  <node concept="1rXfSq" id="tdMhUuiL4X" role="3clFbG">
                                    <ref role="37wK5l" node="63$PQ33_AXI" resolve="updateConnectionDragFeedback" />
                                    <node concept="2OqwBi" id="tdMhUuiL4Y" role="37wK5m">
                                      <node concept="37vLTw" id="tdMhUuiL4Z" role="2Oq$k0">
                                        <ref role="3cqZAo" node="BSIQ$yxfuE" resolve="event" />
                                      </node>
                                      <node concept="liA8E" id="tdMhUuiL50" role="2OqNvi">
                                        <ref role="37wK5l" to="v7xa:~MouseEvent.location():jetbrains.jetpad.geometry.Vector" resolve="location" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="tdMhUuiZO5" role="3cqZAp">
                                  <node concept="1rXfSq" id="tdMhUuiZO4" role="3clFbG">
                                    <ref role="37wK5l" node="6w0WfK8S4E2" resolve="createNewDiagramElement" />
                                    <node concept="2OqwBi" id="4wVpOa1ZyyD" role="37wK5m">
                                      <node concept="2OqwBi" id="4wVpOa1ZwN1" role="2Oq$k0">
                                        <node concept="37vLTw" id="4wVpOa1ZwLv" role="2Oq$k0">
                                          <ref role="3cqZAo" node="BSIQ$yxfuE" resolve="event" />
                                        </node>
                                        <node concept="liA8E" id="4wVpOa1Zxo9" role="2OqNvi">
                                          <ref role="37wK5l" to="v7xa:~MouseEvent.location():jetbrains.jetpad.geometry.Vector" resolve="location" />
                                        </node>
                                      </node>
                                      <node concept="2OwXpG" id="4wVpOa1Zz4v" role="2OqNvi">
                                        <ref role="2Oxat5" to="g88e:~Vector.x" resolve="x" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="4wVpOa1ZBAz" role="37wK5m">
                                      <node concept="2OqwBi" id="4wVpOa1Z$Do" role="2Oq$k0">
                                        <node concept="37vLTw" id="4wVpOa1Z$_q" role="2Oq$k0">
                                          <ref role="3cqZAo" node="BSIQ$yxfuE" resolve="event" />
                                        </node>
                                        <node concept="liA8E" id="4wVpOa1ZA_E" role="2OqNvi">
                                          <ref role="37wK5l" to="v7xa:~MouseEvent.location():jetbrains.jetpad.geometry.Vector" resolve="location" />
                                        </node>
                                      </node>
                                      <node concept="2OwXpG" id="4wVpOa1ZCnI" role="2OqNvi">
                                        <ref role="2Oxat5" to="g88e:~Vector.y" resolve="y" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3Tm1VV" id="BSIQ$yxfvu" role="1B3o_S" />
                              <node concept="3cqZAl" id="BSIQ$yxfvv" role="3clF45" />
                            </node>
                            <node concept="3uibUv" id="BSIQ$yxfvw" role="2Ghqu4">
                              <ref role="3uigEE" to="v7xa:~MouseEvent" resolve="MouseEvent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="zxzBEOoC4R" role="2OqNvi">
                    <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.build():jetbrains.jetpad.projectional.view.ViewTrait" resolve="build" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="67VADAJoiU$" role="3clFbw">
            <node concept="10Nm6u" id="67VADAJojGM" role="3uHU7w" />
            <node concept="37vLTw" id="67VADAJohbN" role="3uHU7B">
              <ref role="3cqZAo" node="zxzBEOoC0x" resolve="myHandlingTrait" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6w0WfK8UI9y" role="3cqZAp">
          <node concept="2OqwBi" id="zxzBEOoC4S" role="3clFbG">
            <node concept="Xjq3P" id="zxzBEOoC4T" role="2Oq$k0" />
            <node concept="2OwXpG" id="zxzBEOoC4U" role="2OqNvi">
              <ref role="2Oxat5" node="zxzBEOoC0x" resolve="myHandlingTrait" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6w0WfK8Uns6" role="1B3o_S" />
      <node concept="3uibUv" id="6w0WfK8Uzbd" role="3clF45">
        <ref role="3uigEE" to="jqfx:~ViewTrait" resolve="ViewTrait" />
      </node>
    </node>
    <node concept="3clFb_" id="6w0WfK8S4E2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createNewDiagramElement" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="6w0WfK8S4E3" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="6w0WfK8S4E4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6w0WfK8S4E5" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="6w0WfK8S4E6" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6w0WfK8S4E7" role="3clF47">
        <node concept="3clFbF" id="6w0WfK8VYOA" role="3cqZAp">
          <node concept="37vLTI" id="6w0WfK8W0GJ" role="3clFbG">
            <node concept="37vLTw" id="6w0WfK8W0Vo" role="37vLTx">
              <ref role="3cqZAo" node="6w0WfK8S4E3" resolve="x" />
            </node>
            <node concept="37vLTw" id="6w0WfK8VYO_" role="37vLTJ">
              <ref role="3cqZAo" node="65G2vMdnUSf" resolve="myPatternEditorX" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6w0WfK8W2cA" role="3cqZAp">
          <node concept="37vLTI" id="6w0WfK8W45x" role="3clFbG">
            <node concept="37vLTw" id="6w0WfK8W4ka" role="37vLTx">
              <ref role="3cqZAo" node="6w0WfK8S4E5" resolve="y" />
            </node>
            <node concept="37vLTw" id="6w0WfK8W2c_" role="37vLTJ">
              <ref role="3cqZAo" node="65G2vMdo2f7" resolve="myPatternEditorY" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6vVklhsexeO" role="3cqZAp">
          <node concept="3clFbS" id="6vVklhsexeR" role="3clFbx">
            <node concept="3cpWs6" id="6vVklhseHke" role="3cqZAp" />
          </node>
          <node concept="1rXfSq" id="6vVklhseBau" role="3clFbw">
            <ref role="37wK5l" node="6vVklhsbvM0" resolve="trySubstituteImmediately" />
          </node>
        </node>
        <node concept="3clFbF" id="6w0WfK8S4Ei" role="3cqZAp">
          <node concept="2OqwBi" id="6w0WfK8S4Ej" role="3clFbG">
            <node concept="1rXfSq" id="6w0WfK8SQx4" role="2Oq$k0">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditor():jetbrains.mps.nodeEditor.EditorComponent" resolve="getEditor" />
            </node>
            <node concept="liA8E" id="6w0WfK8S4Eq" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.activateNodeSubstituteChooser(jetbrains.mps.openapi.editor.cells.EditorCell,boolean):boolean" resolve="activateNodeSubstituteChooser" />
              <node concept="Xjq3P" id="6w0WfK8SRV1" role="37wK5m" />
              <node concept="3clFbT" id="6w0WfK8S4Es" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ObbTRzFEDL" role="1B3o_S" />
      <node concept="3cqZAl" id="6w0WfK8S4Eu" role="3clF45" />
    </node>
    <node concept="3clFb_" id="6vVklhsbvM0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="trySubstituteImmediately" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6vVklhsbvM3" role="3clF47">
        <node concept="3cpWs8" id="6vVklhsc74A" role="3cqZAp">
          <node concept="3cpWsn" id="6vVklhsc74B" role="3cpWs9">
            <property role="TrG5h" value="matchingActions" />
            <node concept="3uibUv" id="6vVklhsc74C" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6vVklhsc74D" role="11_B2D">
                <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
              </node>
            </node>
            <node concept="2OqwBi" id="6vVklhsc74E" role="33vP2m">
              <node concept="1rXfSq" id="6vVklhsc74F" role="2Oq$k0">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getSubstituteInfo():jetbrains.mps.openapi.editor.cells.SubstituteInfo" resolve="getSubstituteInfo" />
              </node>
              <node concept="liA8E" id="6vVklhsc74G" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~SubstituteInfo.getMatchingActions(java.lang.String,boolean):java.util.List" resolve="getMatchingActions" />
                <node concept="Xl_RD" id="6vVklhsc74H" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="3clFbT" id="6vVklhsc74I" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7DqC30tQbK1" role="3cqZAp">
          <node concept="3clFbS" id="7DqC30tQbK4" role="3clFbx">
            <node concept="3clFbF" id="7DqC30tRYP8" role="3cqZAp">
              <node concept="1rXfSq" id="7DqC30tRYP7" role="3clFbG">
                <ref role="37wK5l" node="63$PQ33Ahg3" resolve="hideConnectionDragFeedback" />
              </node>
            </node>
            <node concept="3cpWs6" id="7DqC30tQJkU" role="3cqZAp">
              <node concept="3clFbT" id="7DqC30tQSmy" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7DqC30tQIS1" role="3clFbw">
            <node concept="3cmrfG" id="7DqC30tQJ6R" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="7DqC30tQvne" role="3uHU7B">
              <node concept="37vLTw" id="7DqC30tQp07" role="2Oq$k0">
                <ref role="3cqZAo" node="6vVklhsc74B" resolve="matchingActions" />
              </node>
              <node concept="liA8E" id="7DqC30tQAib" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6vVklhsc9h9" role="3cqZAp">
          <node concept="3clFbS" id="6vVklhsc9hc" role="3clFbx">
            <node concept="3cpWs6" id="6vVklhscBsM" role="3cqZAp">
              <node concept="3clFbT" id="6vVklhscKE6" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="7DqC30tR60P" role="3clFbw">
            <node concept="2OqwBi" id="7DqC30tR60S" role="3uHU7B">
              <node concept="37vLTw" id="7DqC30tR60T" role="2Oq$k0">
                <ref role="3cqZAo" node="6vVklhsc74B" resolve="matchingActions" />
              </node>
              <node concept="liA8E" id="7DqC30tR60U" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
            <node concept="3cmrfG" id="7DqC30tR60R" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6vVklhsc74L" role="3cqZAp">
          <node concept="3cpWsn" id="6vVklhsc74M" role="3cpWs9">
            <property role="TrG5h" value="theAction" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6vVklhsc74N" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
            </node>
            <node concept="2OqwBi" id="6vVklhsc74O" role="33vP2m">
              <node concept="37vLTw" id="6vVklhsc74P" role="2Oq$k0">
                <ref role="3cqZAo" node="6vVklhsc74B" resolve="matchingActions" />
              </node>
              <node concept="liA8E" id="6vVklhsc74Q" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cmrfG" id="6vVklhsc74R" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6vVklhsc74S" role="3cqZAp">
          <node concept="3cpWsn" id="6vVklhsc74T" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <property role="3TUv4t" value="true" />
            <node concept="10Q1$e" id="6vVklhsc74U" role="1tU5fm">
              <node concept="10P_77" id="6vVklhsc74V" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="6vVklhsc74W" role="33vP2m">
              <node concept="3g6Rrh" id="6vVklhsc74X" role="2ShVmc">
                <node concept="10P_77" id="6vVklhsc74Y" role="3g7fb8" />
                <node concept="3clFbT" id="6vVklhsc74Z" role="3g7hyw">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6vVklhsc750" role="3cqZAp">
          <node concept="2OqwBi" id="6vVklhsc751" role="3clFbG">
            <node concept="2OqwBi" id="6vVklhsc752" role="2Oq$k0">
              <node concept="2OqwBi" id="6vVklhsc753" role="2Oq$k0">
                <node concept="1rXfSq" id="6vVklhsc754" role="2Oq$k0">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                </node>
                <node concept="liA8E" id="6vVklhsc755" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                </node>
              </node>
              <node concept="liA8E" id="6vVklhsc756" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="6vVklhsc757" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
              <node concept="2ShNRf" id="6vVklhsc758" role="37wK5m">
                <node concept="YeOm9" id="6vVklhsc759" role="2ShVmc">
                  <node concept="1Y3b0j" id="6vVklhsc75a" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="6vVklhsc75b" role="1B3o_S" />
                    <node concept="3clFb_" id="6vVklhsc75c" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <property role="IEkAT" value="false" />
                      <node concept="3Tm1VV" id="6vVklhsc75d" role="1B3o_S" />
                      <node concept="3cqZAl" id="6vVklhsc75e" role="3clF45" />
                      <node concept="3clFbS" id="6vVklhsc75f" role="3clF47">
                        <node concept="3clFbF" id="6vVklhsc75g" role="3cqZAp">
                          <node concept="37vLTI" id="6vVklhsc75h" role="3clFbG">
                            <node concept="AH0OO" id="6vVklhsc75i" role="37vLTJ">
                              <node concept="3cmrfG" id="6vVklhsc75j" role="AHEQo">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="6vVklhsc75k" role="AHHXb">
                                <ref role="3cqZAo" node="6vVklhsc74T" resolve="result" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6vVklhsc75l" role="37vLTx">
                              <node concept="37vLTw" id="6vVklhsc75m" role="2Oq$k0">
                                <ref role="3cqZAo" node="6vVklhsc74M" resolve="theAction" />
                              </node>
                              <node concept="liA8E" id="6vVklhsc75n" role="2OqNvi">
                                <ref role="37wK5l" to="f4zo:~SubstituteAction.canSubstitute(java.lang.String):boolean" resolve="canSubstitute" />
                                <node concept="Xl_RD" id="6vVklhsc75o" role="37wK5m">
                                  <property role="Xl_RC" value="" />
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
          </node>
        </node>
        <node concept="3clFbJ" id="6vVklhsc75p" role="3cqZAp">
          <node concept="3clFbS" id="6vVklhsc75q" role="3clFbx">
            <node concept="3cpWs6" id="6vVklhsdAp$" role="3cqZAp">
              <node concept="3clFbT" id="6vVklhsdKfd" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6vVklhsdwAy" role="3clFbw">
            <node concept="AH0OO" id="6vVklhsdwA$" role="3fr31v">
              <node concept="3cmrfG" id="6vVklhsdwA_" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6vVklhsdwAA" role="AHHXb">
                <ref role="3cqZAo" node="6vVklhsc74T" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Sn_YmlEnr6" role="3cqZAp">
          <node concept="2OqwBi" id="5Sn_YmlExKT" role="3clFbG">
            <node concept="2OqwBi" id="5Sn_YmlEwxZ" role="2Oq$k0">
              <node concept="2OqwBi" id="5Sn_YmlEqK3" role="2Oq$k0">
                <node concept="1rXfSq" id="5Sn_YmlEnr4" role="2Oq$k0">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                </node>
                <node concept="liA8E" id="5Sn_YmlEwsV" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                </node>
              </node>
              <node concept="liA8E" id="5Sn_YmlExIH" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="5Sn_YmlEyXg" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable):void" resolve="executeCommand" />
              <node concept="2ShNRf" id="5Sn_YmlEz6n" role="37wK5m">
                <node concept="YeOm9" id="5Sn_YmlEBhf" role="2ShVmc">
                  <node concept="1Y3b0j" id="5Sn_YmlEBhi" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="nlpl:~EditorCommand" resolve="EditorCommand" />
                    <ref role="37wK5l" to="nlpl:~EditorCommand.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext)" resolve="EditorCommand" />
                    <node concept="3Tm1VV" id="5Sn_YmlEBhj" role="1B3o_S" />
                    <node concept="3clFb_" id="5Sn_YmlEBhk" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="doExecute" />
                      <property role="DiZV1" value="false" />
                      <property role="IEkAT" value="false" />
                      <node concept="3Tmbuc" id="5Sn_YmlEBhl" role="1B3o_S" />
                      <node concept="3cqZAl" id="5Sn_YmlEBhn" role="3clF45" />
                      <node concept="3clFbS" id="5Sn_YmlEBho" role="3clF47">
                        <node concept="3clFbF" id="6vVklhsc75r" role="3cqZAp">
                          <node concept="2OqwBi" id="6vVklhsc75s" role="3clFbG">
                            <node concept="37vLTw" id="6vVklhsc75t" role="2Oq$k0">
                              <ref role="3cqZAo" node="6vVklhsc74M" resolve="theAction" />
                            </node>
                            <node concept="liA8E" id="6vVklhsc75u" role="2OqNvi">
                              <ref role="37wK5l" to="f4zo:~SubstituteAction.substitute(jetbrains.mps.openapi.editor.EditorContext,java.lang.String):org.jetbrains.mps.openapi.model.SNode" resolve="substitute" />
                              <node concept="1rXfSq" id="6vVklhsc75v" role="37wK5m">
                                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                              </node>
                              <node concept="Xl_RD" id="6vVklhsc75w" role="37wK5m">
                                <property role="Xl_RC" value="" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1rXfSq" id="5Sn_YmlER6I" role="37wK5m">
                      <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7WVujHHoU7n" role="3cqZAp">
          <node concept="1rXfSq" id="7WVujHHoU7m" role="3clFbG">
            <ref role="37wK5l" node="63$PQ33Ahg3" resolve="hideConnectionDragFeedback" />
          </node>
        </node>
        <node concept="3cpWs6" id="6vVklhsc75x" role="3cqZAp">
          <node concept="3clFbT" id="6vVklhselDn" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6vVklhsbkI$" role="1B3o_S" />
      <node concept="10P_77" id="6vVklhsbvoQ" role="3clF45" />
    </node>
    <node concept="3clFb_" id="6w0WfK8S4Ev" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hidePatternEditor" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="22hly_jIBF2" role="1B3o_S" />
      <node concept="3clFbS" id="6w0WfK8S4Ew" role="3clF47">
        <node concept="3clFbF" id="6w0WfK8S4E_" role="3cqZAp">
          <node concept="2OqwBi" id="6w0WfK8S4EA" role="3clFbG">
            <node concept="2OqwBi" id="6w0WfK8S4EB" role="2Oq$k0">
              <node concept="1rXfSq" id="6w0WfK8SPcs" role="2Oq$k0">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditor():jetbrains.mps.nodeEditor.EditorComponent" resolve="getEditor" />
              </node>
              <node concept="liA8E" id="6w0WfK8S4EI" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getNodeSubstituteChooser():jetbrains.mps.nodeEditor.cellMenu.NodeSubstituteChooser" resolve="getNodeSubstituteChooser" />
              </node>
            </node>
            <node concept="liA8E" id="6w0WfK8S4EJ" role="2OqNvi">
              <ref role="37wK5l" to="6lvu:~NodeSubstituteChooser.setVisible(boolean):void" resolve="setVisible" />
              <node concept="3clFbT" id="6w0WfK8S4EK" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6w0WfK8S4EM" role="3clF45" />
    </node>
    <node concept="3clFb_" id="zxzBEO0unW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createNewDiagramNodeActions" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="zxzBEO0unX" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3Tqbb2" id="zxzBEO0unY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="zxzBEO0unZ" role="3clF46">
        <property role="TrG5h" value="childNodeConcept" />
        <node concept="3THzug" id="zxzBEO0uo0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="zxzBEO0uo1" role="3clF46">
        <property role="TrG5h" value="containingLink" />
        <node concept="3Tqbb2" id="zxzBEO0uo2" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="zxzBEO0uo3" role="3clF46">
        <property role="TrG5h" value="setNodePositionCallback" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="zxzBEO0uo4" role="1tU5fm">
          <node concept="3Tqbb2" id="zxzBEO0uo5" role="1ajw0F" />
          <node concept="10Oyi0" id="zxzBEO0uo6" role="1ajw0F" />
          <node concept="10Oyi0" id="zxzBEO0uo7" role="1ajw0F" />
          <node concept="3cqZAl" id="zxzBEO0uo8" role="1ajl9A" />
        </node>
      </node>
      <node concept="3clFbS" id="zxzBEO0uo9" role="3clF47">
        <node concept="3cpWs6" id="zxzBEO0uoa" role="3cqZAp">
          <node concept="1bVj0M" id="zxzBEO0uob" role="3cqZAk">
            <node concept="37vLTG" id="zxzBEO0uoc" role="1bW2Oz">
              <property role="TrG5h" value="cellContext" />
              <node concept="3uibUv" id="zxzBEO0uod" role="1tU5fm">
                <ref role="3uigEE" to="6lvu:~CellContext" resolve="CellContext" />
              </node>
            </node>
            <node concept="37vLTG" id="zxzBEO0uoe" role="1bW2Oz">
              <property role="TrG5h" value="editorContext" />
              <node concept="3uibUv" id="zxzBEO0uof" role="1tU5fm">
                <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
              </node>
            </node>
            <node concept="3clFbS" id="zxzBEO0uog" role="1bW5cS">
              <node concept="3cpWs8" id="zxzBEO0uoh" role="3cqZAp">
                <node concept="3cpWsn" id="zxzBEO0uoi" role="3cpWs9">
                  <property role="TrG5h" value="result" />
                  <node concept="3uibUv" id="zxzBEO0uoj" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="zxzBEO0uok" role="11_B2D">
                      <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="zxzBEO0uol" role="33vP2m">
                    <node concept="1pGfFk" id="zxzBEO0uom" role="2ShVmc">
                      <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                      <node concept="3uibUv" id="zxzBEO0uon" role="1pMfVU">
                        <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="zxzBEO0uoo" role="3cqZAp">
                <node concept="2GrKxI" id="zxzBEO0uop" role="2Gsz3X">
                  <property role="TrG5h" value="action" />
                </node>
                <node concept="3clFbS" id="zxzBEO0uoq" role="2LFqv$">
                  <node concept="3clFbF" id="zxzBEO0uor" role="3cqZAp">
                    <node concept="2OqwBi" id="zxzBEO0uos" role="3clFbG">
                      <node concept="37vLTw" id="zxzBEO0uot" role="2Oq$k0">
                        <ref role="3cqZAo" node="zxzBEO0uoi" resolve="result" />
                      </node>
                      <node concept="liA8E" id="zxzBEO0uou" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="2ShNRf" id="hLC1hu_CxP" role="37wK5m">
                          <node concept="YeOm9" id="hLC1hu_CxR" role="2ShVmc">
                            <node concept="1Y3b0j" id="hLC1hu_CxS" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="1Y3XeK" node="zxzBEO4rCA" resolve="DiagramCell.DiagramSubstituteActionWraper" />
                              <ref role="37wK5l" node="zxzBEO5Vc5" resolve="DiagramCell.DiagramSubstituteActionWraper" />
                              <node concept="3clFb_" id="zxzBEO0uov" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="canSubstitute" />
                                <property role="DiZV1" value="false" />
                                <property role="IEkAT" value="false" />
                                <node concept="3Tm1VV" id="zxzBEO0uow" role="1B3o_S" />
                                <node concept="10P_77" id="zxzBEO0uox" role="3clF45" />
                                <node concept="37vLTG" id="zxzBEO0uoy" role="3clF46">
                                  <property role="TrG5h" value="string" />
                                  <node concept="17QB3L" id="zxzBEO0uoz" role="1tU5fm" />
                                </node>
                                <node concept="3clFbS" id="zxzBEO0uo$" role="3clF47">
                                  <node concept="3cpWs6" id="zxzBEO0uo_" role="3cqZAp">
                                    <node concept="1Wc70l" id="zxzBEO0uoA" role="3cqZAk">
                                      <node concept="3fqX7Q" id="zxzBEO0uoB" role="3uHU7B">
                                        <node concept="1rXfSq" id="zxzBEO0uoC" role="3fr31v">
                                          <ref role="37wK5l" node="63$PQ33zKZe" resolve="hasConnectionDragFeedback" />
                                        </node>
                                      </node>
                                      <node concept="3nyPlj" id="zxzBEO0uoD" role="3uHU7w">
                                        <ref role="37wK5l" to="zce0:~NodeSubstituteActionWrapper.canSubstitute(java.lang.String):boolean" resolve="canSubstitute" />
                                        <node concept="37vLTw" id="zxzBEO0uoE" role="37wK5m">
                                          <ref role="3cqZAo" node="zxzBEO0uoy" resolve="string" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="zxzBEO0uoF" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                </node>
                              </node>
                              <node concept="3clFb_" id="zxzBEO0uoG" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="substitute" />
                                <property role="DiZV1" value="false" />
                                <property role="IEkAT" value="false" />
                                <node concept="3Tm1VV" id="zxzBEO0uoH" role="1B3o_S" />
                                <node concept="3uibUv" id="zxzBEO0uoI" role="3clF45">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                                <node concept="37vLTG" id="zxzBEO0uoJ" role="3clF46">
                                  <property role="TrG5h" value="context" />
                                  <node concept="3uibUv" id="zxzBEO0uoK" role="1tU5fm">
                                    <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                                  </node>
                                  <node concept="2AHcQZ" id="zxzBEO0uoL" role="2AJF6D">
                                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="zxzBEO0uoM" role="3clF46">
                                  <property role="TrG5h" value="string" />
                                  <node concept="17QB3L" id="zxzBEO0uoN" role="1tU5fm" />
                                </node>
                                <node concept="3clFbS" id="zxzBEO0uoO" role="3clF47">
                                  <node concept="3cpWs8" id="zxzBEO0uoP" role="3cqZAp">
                                    <node concept="3cpWsn" id="zxzBEO0uoQ" role="3cpWs9">
                                      <property role="TrG5h" value="result" />
                                      <property role="3TUv4t" value="false" />
                                      <node concept="3nyPlj" id="zxzBEO0uoR" role="33vP2m">
                                        <ref role="37wK5l" to="zce0:~NodeSubstituteActionWrapper.substitute(jetbrains.mps.openapi.editor.EditorContext,java.lang.String):org.jetbrains.mps.openapi.model.SNode" resolve="substitute" />
                                        <node concept="37vLTw" id="zxzBEO0uoS" role="37wK5m">
                                          <ref role="3cqZAo" node="zxzBEO0uoJ" resolve="context" />
                                        </node>
                                        <node concept="37vLTw" id="zxzBEO0uoT" role="37wK5m">
                                          <ref role="3cqZAo" node="zxzBEO0uoM" resolve="string" />
                                        </node>
                                      </node>
                                      <node concept="3Tqbb2" id="zxzBEO0uoU" role="1tU5fm" />
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="zxzBEO0uoV" role="3cqZAp">
                                    <node concept="2OqwBi" id="zxzBEO0uoW" role="3clFbG">
                                      <node concept="37vLTw" id="zxzBEO0uoX" role="2Oq$k0">
                                        <ref role="3cqZAo" node="zxzBEO0uo3" resolve="setNodePositionCallback" />
                                      </node>
                                      <node concept="1Bd96e" id="zxzBEO0uoY" role="2OqNvi">
                                        <node concept="37vLTw" id="zxzBEO0uoZ" role="1BdPVh">
                                          <ref role="3cqZAo" node="zxzBEO0uoQ" resolve="result" />
                                        </node>
                                        <node concept="37vLTw" id="zxzBEO0Qag" role="1BdPVh">
                                          <ref role="3cqZAo" node="65G2vMdnUSf" resolve="myPatternEditorX" />
                                        </node>
                                        <node concept="37vLTw" id="zxzBEO0Rer" role="1BdPVh">
                                          <ref role="3cqZAo" node="65G2vMdo2f7" resolve="myPatternEditorY" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="zxzBEO0up2" role="3cqZAp">
                                    <node concept="37vLTw" id="zxzBEO0up3" role="3cqZAk">
                                      <ref role="3cqZAo" node="zxzBEO0uoQ" resolve="result" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="zxzBEO0up4" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                </node>
                              </node>
                              <node concept="3Tm1VV" id="hLC1hu_Cyi" role="1B3o_S" />
                              <node concept="2GrUjf" id="hLC1hu_HoX" role="37wK5m">
                                <ref role="2Gs0qQ" node="zxzBEO0uop" resolve="action" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="zxzBEO0up5" role="2GsD0m">
                  <ref role="1Pybhc" to="zce0:~ModelActions" resolve="ModelActions" />
                  <ref role="37wK5l" to="zce0:~ModelActions.createChildNodeSubstituteActions(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.action.IChildNodeSetter,jetbrains.mps.smodel.IOperationContext):java.util.List" resolve="createChildNodeSubstituteActions" />
                  <node concept="37vLTw" id="zxzBEO0up6" role="37wK5m">
                    <ref role="3cqZAo" node="zxzBEO0unX" resolve="container" />
                  </node>
                  <node concept="10Nm6u" id="zxzBEO0up7" role="37wK5m" />
                  <node concept="37vLTw" id="zxzBEO0up8" role="37wK5m">
                    <ref role="3cqZAo" node="zxzBEO0unZ" resolve="childNodeConcept" />
                  </node>
                  <node concept="2ShNRf" id="zxzBEO0up9" role="37wK5m">
                    <node concept="1pGfFk" id="zxzBEO0upa" role="2ShVmc">
                      <ref role="37wK5l" to="zce0:~DefaultChildNodeSetter.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="DefaultChildNodeSetter" />
                      <node concept="37vLTw" id="zxzBEO0upb" role="37wK5m">
                        <ref role="3cqZAo" node="zxzBEO0uo1" resolve="containingLink" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="zxzBEO0upc" role="37wK5m">
                    <node concept="37vLTw" id="zxzBEO0upd" role="2Oq$k0">
                      <ref role="3cqZAo" node="zxzBEO0uoe" resolve="editorContext" />
                    </node>
                    <node concept="liA8E" id="zxzBEO0upe" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolve="getOperationContext" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="zxzBEO0upf" role="3cqZAp">
                <node concept="37vLTw" id="zxzBEO0upg" role="3cqZAk">
                  <ref role="3cqZAo" node="zxzBEO0uoi" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="zxzBEO0uph" role="1B3o_S" />
      <node concept="3uibUv" id="zxzBEO0upi" role="3clF45">
        <ref role="3uigEE" to="6lvu:~SubstituteInfoPartExt" resolve="SubstituteInfoPartExt" />
      </node>
    </node>
    <node concept="3clFb_" id="zxzBEO0upj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createNewDiagramConnectorActions" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="zxzBEO0upk" role="3clF46">
        <property role="TrG5h" value="container" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="zxzBEO0upl" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="zxzBEO0upm" role="3clF46">
        <property role="TrG5h" value="childNodeConcept" />
        <property role="3TUv4t" value="true" />
        <node concept="3THzug" id="zxzBEO0upn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="zxzBEO0upo" role="3clF46">
        <property role="TrG5h" value="containingLink" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="zxzBEO0upp" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="zxzBEO0upq" role="3clF46">
        <property role="TrG5h" value="canCreateConnector" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="zxzBEO0upr" role="1tU5fm">
          <node concept="3Tqbb2" id="zxzBEO0ups" role="1ajw0F" />
          <node concept="3uibUv" id="zxzBEO0upt" role="1ajw0F">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3Tqbb2" id="zxzBEO0upu" role="1ajw0F" />
          <node concept="3uibUv" id="zxzBEO0upv" role="1ajw0F">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="10P_77" id="zxzBEO0upw" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="zxzBEO0upx" role="3clF46">
        <property role="TrG5h" value="setConnectorCallback" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="zxzBEO0upy" role="1tU5fm">
          <node concept="3Tqbb2" id="zxzBEO0upz" role="1ajw0F" />
          <node concept="3Tqbb2" id="zxzBEO0up$" role="1ajw0F" />
          <node concept="3uibUv" id="zxzBEO0up_" role="1ajw0F">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3Tqbb2" id="zxzBEO0upA" role="1ajw0F" />
          <node concept="3uibUv" id="zxzBEO0upB" role="1ajw0F">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3cqZAl" id="zxzBEO0upC" role="1ajl9A" />
        </node>
      </node>
      <node concept="3clFbS" id="zxzBEO0upD" role="3clF47">
        <node concept="3SKdUt" id="zxzBEO0upE" role="3cqZAp">
          <node concept="3SKdUq" id="zxzBEO0upF" role="3SKWNk">
            <property role="3SKdUp" value="TMP solution: manually creating instance of connection instead of using" />
          </node>
        </node>
        <node concept="3SKdUt" id="zxzBEO0upG" role="3cqZAp">
          <node concept="3SKdUq" id="zxzBEO0upH" role="3SKWNk">
            <property role="3SKdUp" value="ModelActions.createChildNodeSubstituteActions() because of mbeddr reqirements:" />
          </node>
        </node>
        <node concept="3SKdUt" id="zxzBEO0upI" role="3cqZAp">
          <node concept="3SKdUq" id="zxzBEO0upJ" role="3SKWNk">
            <property role="3SKdUp" value="hiding text-specific connection substitute actions from the diagram" />
          </node>
        </node>
        <node concept="3cpWs6" id="zxzBEO0upK" role="3cqZAp">
          <node concept="1bVj0M" id="zxzBEO0upL" role="3cqZAk">
            <node concept="37vLTG" id="zxzBEO0upM" role="1bW2Oz">
              <property role="TrG5h" value="cellContext" />
              <node concept="3uibUv" id="zxzBEO0upN" role="1tU5fm">
                <ref role="3uigEE" to="6lvu:~CellContext" resolve="CellContext" />
              </node>
            </node>
            <node concept="37vLTG" id="zxzBEO0upO" role="1bW2Oz">
              <property role="TrG5h" value="editorContext" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="zxzBEO0upP" role="1tU5fm">
                <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
              </node>
            </node>
            <node concept="3clFbS" id="zxzBEO0upQ" role="1bW5cS">
              <node concept="3cpWs8" id="zxzBEOGNwe" role="3cqZAp">
                <node concept="3cpWsn" id="zxzBEOGNwf" role="3cpWs9">
                  <property role="TrG5h" value="action" />
                  <node concept="3uibUv" id="zxzBEOGNwd" role="1tU5fm">
                    <ref role="3uigEE" to="zce0:~AbstractNodeSubstituteAction" resolve="AbstractNodeSubstituteAction" />
                  </node>
                  <node concept="2ShNRf" id="zxzBEOGNwg" role="33vP2m">
                    <node concept="YeOm9" id="zxzBEOGNwh" role="2ShVmc">
                      <node concept="1Y3b0j" id="zxzBEOGNwi" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="zce0:~AbstractNodeSubstituteAction" resolve="AbstractNodeSubstituteAction" />
                        <ref role="37wK5l" to="zce0:~AbstractNodeSubstituteAction.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.Object,org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractNodeSubstituteAction" />
                        <node concept="3Tm1VV" id="zxzBEOGNwj" role="1B3o_S" />
                        <node concept="37vLTw" id="zxzBEOGNwk" role="37wK5m">
                          <ref role="3cqZAo" node="zxzBEO0upm" resolve="childNodeConcept" />
                        </node>
                        <node concept="37vLTw" id="zxzBEOGNwl" role="37wK5m">
                          <ref role="3cqZAo" node="zxzBEO0upm" resolve="childNodeConcept" />
                        </node>
                        <node concept="37vLTw" id="zxzBEOGNwm" role="37wK5m">
                          <ref role="3cqZAo" node="zxzBEO0upk" resolve="container" />
                        </node>
                        <node concept="3clFb_" id="zxzBEOGNwn" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="canSubstitute" />
                          <property role="DiZV1" value="false" />
                          <property role="IEkAT" value="false" />
                          <node concept="3Tm1VV" id="zxzBEOGNwo" role="1B3o_S" />
                          <node concept="10P_77" id="zxzBEOGNwp" role="3clF45" />
                          <node concept="37vLTG" id="zxzBEOGNwq" role="3clF46">
                            <property role="TrG5h" value="string" />
                            <node concept="17QB3L" id="zxzBEOGNwr" role="1tU5fm" />
                          </node>
                          <node concept="3clFbS" id="zxzBEOGNws" role="3clF47">
                            <node concept="3clFbJ" id="zxzBEOGNwt" role="3cqZAp">
                              <node concept="3clFbS" id="zxzBEOGNwu" role="3clFbx">
                                <node concept="3cpWs6" id="zxzBEOGNwv" role="3cqZAp">
                                  <node concept="3clFbT" id="zxzBEOGNww" role="3cqZAk">
                                    <property role="3clFbU" value="false" />
                                  </node>
                                </node>
                              </node>
                              <node concept="22lmx$" id="zxzBEOGNwx" role="3clFbw">
                                <node concept="3fqX7Q" id="zxzBEOGNwy" role="3uHU7w">
                                  <node concept="3nyPlj" id="zxzBEOGNwz" role="3fr31v">
                                    <ref role="37wK5l" to="zce0:~AbstractNodeSubstituteAction.canSubstitute(java.lang.String):boolean" resolve="canSubstitute" />
                                    <node concept="37vLTw" id="zxzBEOGNw$" role="37wK5m">
                                      <ref role="3cqZAo" node="zxzBEOGNwq" resolve="string" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3fqX7Q" id="zxzBEOGNw_" role="3uHU7B">
                                  <node concept="1rXfSq" id="zxzBEOGNwA" role="3fr31v">
                                    <ref role="37wK5l" node="63$PQ33zKZe" resolve="hasConnectionDragFeedback" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="zxzBEOGNwB" role="3cqZAp" />
                            <node concept="3cpWs8" id="zxzBEOGNwC" role="3cqZAp">
                              <node concept="3cpWsn" id="zxzBEOGNwD" role="3cpWs9">
                                <property role="TrG5h" value="connectionInfo" />
                                <node concept="3uibUv" id="zxzBEOGNwE" role="1tU5fm">
                                  <ref role="3uigEE" node="4wVpOa2uEoK" resolve="DiagramCell.ConnectionInfo" />
                                </node>
                                <node concept="1rXfSq" id="TRRVveQ7tx" role="33vP2m">
                                  <ref role="37wK5l" node="TRRVveP1zg" resolve="getConnectionInfo" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="zxzBEOGNwH" role="3cqZAp">
                              <node concept="1Wc70l" id="zxzBEOGNwI" role="3cqZAk">
                                <node concept="2OqwBi" id="zxzBEOGNwJ" role="3uHU7w">
                                  <node concept="37vLTw" id="zxzBEOGNwK" role="2Oq$k0">
                                    <ref role="3cqZAo" node="zxzBEO0upq" resolve="canCreateConnector" />
                                  </node>
                                  <node concept="1Bd96e" id="zxzBEOGNwL" role="2OqNvi">
                                    <node concept="2OqwBi" id="zxzBEOGNwM" role="1BdPVh">
                                      <node concept="37vLTw" id="zxzBEOGNwN" role="2Oq$k0">
                                        <ref role="3cqZAo" node="zxzBEOGNwD" resolve="connectionInfo" />
                                      </node>
                                      <node concept="2S8uIT" id="zxzBEOGNwO" role="2OqNvi">
                                        <ref role="2S8YL0" node="4wVpOa2ITzW" resolve="fromNode" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="zxzBEOGNwP" role="1BdPVh">
                                      <node concept="37vLTw" id="zxzBEOGNwQ" role="2Oq$k0">
                                        <ref role="3cqZAo" node="zxzBEOGNwD" resolve="connectionInfo" />
                                      </node>
                                      <node concept="2S8uIT" id="zxzBEOGNwR" role="2OqNvi">
                                        <ref role="2S8YL0" node="4wVpOa2Jpxw" resolve="fromId" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="zxzBEOGNwS" role="1BdPVh">
                                      <node concept="37vLTw" id="zxzBEOGNwT" role="2Oq$k0">
                                        <ref role="3cqZAo" node="zxzBEOGNwD" resolve="connectionInfo" />
                                      </node>
                                      <node concept="2S8uIT" id="7rXYwOkHWRd" role="2OqNvi">
                                        <ref role="2S8YL0" node="4wVpOa2JVpa" resolve="toNode" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="zxzBEOGNwV" role="1BdPVh">
                                      <node concept="37vLTw" id="zxzBEOGNwW" role="2Oq$k0">
                                        <ref role="3cqZAo" node="zxzBEOGNwD" resolve="connectionInfo" />
                                      </node>
                                      <node concept="2S8uIT" id="7rXYwOkI5td" role="2OqNvi">
                                        <ref role="2S8YL0" node="4wVpOa2Kt6S" resolve="toId" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="zxzBEOGNwY" role="3uHU7B">
                                  <node concept="37vLTw" id="zxzBEOGNwZ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="zxzBEOGNwD" resolve="connectionInfo" />
                                  </node>
                                  <node concept="liA8E" id="zxzBEOGNx0" role="2OqNvi">
                                    <ref role="37wK5l" node="4wVpOa2QzYK" resolve="isValid" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="zxzBEOGNx1" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="3clFb_" id="zxzBEOGNx2" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="doSubstitute" />
                          <property role="DiZV1" value="false" />
                          <property role="IEkAT" value="false" />
                          <node concept="3Tmbuc" id="zxzBEOGNx3" role="1B3o_S" />
                          <node concept="3uibUv" id="zxzBEOGNx4" role="3clF45">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="37vLTG" id="zxzBEOGNx5" role="3clF46">
                            <property role="TrG5h" value="context" />
                            <node concept="3uibUv" id="zxzBEOGNx6" role="1tU5fm">
                              <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                            </node>
                            <node concept="2AHcQZ" id="zxzBEOGNx7" role="2AJF6D">
                              <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                            </node>
                          </node>
                          <node concept="37vLTG" id="zxzBEOGNx8" role="3clF46">
                            <property role="TrG5h" value="string" />
                            <node concept="17QB3L" id="zxzBEOGNx9" role="1tU5fm" />
                          </node>
                          <node concept="3clFbS" id="zxzBEOGNxa" role="3clF47">
                            <node concept="3cpWs8" id="zxzBEOGNxb" role="3cqZAp">
                              <node concept="3cpWsn" id="zxzBEOGNxc" role="3cpWs9">
                                <property role="TrG5h" value="result" />
                                <node concept="3uibUv" id="zxzBEOGNxd" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                                <node concept="2YIFZM" id="zxzBEOGNxe" role="33vP2m">
                                  <ref role="37wK5l" to="zce0:~NodeFactoryManager.createNode(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SModel):org.jetbrains.mps.openapi.model.SNode" resolve="createNode" />
                                  <ref role="1Pybhc" to="zce0:~NodeFactoryManager" resolve="NodeFactoryManager" />
                                  <node concept="37vLTw" id="zxzBEOGNxf" role="37wK5m">
                                    <ref role="3cqZAo" node="zxzBEO0upm" resolve="childNodeConcept" />
                                  </node>
                                  <node concept="10Nm6u" id="zxzBEOGNxg" role="37wK5m" />
                                  <node concept="37vLTw" id="zxzBEOGNxh" role="37wK5m">
                                    <ref role="3cqZAo" node="zxzBEO0upk" resolve="container" />
                                  </node>
                                  <node concept="2OqwBi" id="zxzBEOGNxi" role="37wK5m">
                                    <node concept="37vLTw" id="zxzBEOGNxj" role="2Oq$k0">
                                      <ref role="3cqZAo" node="zxzBEO0upk" resolve="container" />
                                    </node>
                                    <node concept="I4A8Y" id="zxzBEOGNxk" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="zxzBEOGNxl" role="3cqZAp">
                              <node concept="2OqwBi" id="zxzBEOGNxm" role="3clFbG">
                                <node concept="2OqwBi" id="zxzBEOGNxn" role="2Oq$k0">
                                  <node concept="37vLTw" id="zxzBEOGNxo" role="2Oq$k0">
                                    <ref role="3cqZAo" node="zxzBEO0upk" resolve="container" />
                                  </node>
                                  <node concept="32TBzR" id="zxzBEOGNxp" role="2OqNvi">
                                    <node concept="1aIX9F" id="zxzBEOGNxq" role="1xVPHs">
                                      <node concept="25Kdxt" id="zxzBEOGNxr" role="1aIX9E">
                                        <node concept="2YIFZM" id="_dGddVRjjt" role="25KhWn">
                                          <ref role="37wK5l" to="pjrh:~MetaAdapterByDeclaration.getContainmentLink(org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.language.SContainmentLink" resolve="getContainmentLink" />
                                          <ref role="1Pybhc" to="pjrh:~MetaAdapterByDeclaration" resolve="MetaAdapterByDeclaration" />
                                          <node concept="37vLTw" id="_dGddVRjyW" role="37wK5m">
                                            <ref role="3cqZAo" node="zxzBEO0upo" resolve="containingLink" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="TSZUe" id="zxzBEOGNxt" role="2OqNvi">
                                  <node concept="37vLTw" id="zxzBEOGNxu" role="25WWJ7">
                                    <ref role="3cqZAo" node="zxzBEOGNxc" resolve="result" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="zxzBEOGNxv" role="3cqZAp">
                              <node concept="3cpWsn" id="zxzBEOGNxw" role="3cpWs9">
                                <property role="TrG5h" value="connectionInfo" />
                                <node concept="3uibUv" id="zxzBEOGNxx" role="1tU5fm">
                                  <ref role="3uigEE" node="4wVpOa2uEoK" resolve="DiagramCell.ConnectionInfo" />
                                </node>
                                <node concept="1rXfSq" id="TRRVvePQRE" role="33vP2m">
                                  <ref role="37wK5l" node="TRRVveP1zg" resolve="getConnectionInfo" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="zxzBEOGNx$" role="3cqZAp">
                              <node concept="2OqwBi" id="zxzBEOGNx_" role="3clFbG">
                                <node concept="37vLTw" id="zxzBEOGNxA" role="2Oq$k0">
                                  <ref role="3cqZAo" node="zxzBEO0upx" resolve="setConnectorCallback" />
                                </node>
                                <node concept="1Bd96e" id="zxzBEOGNxB" role="2OqNvi">
                                  <node concept="37vLTw" id="zxzBEOGNxC" role="1BdPVh">
                                    <ref role="3cqZAo" node="zxzBEOGNxc" resolve="result" />
                                  </node>
                                  <node concept="2OqwBi" id="zxzBEOGNxD" role="1BdPVh">
                                    <node concept="37vLTw" id="zxzBEOGNxE" role="2Oq$k0">
                                      <ref role="3cqZAo" node="zxzBEOGNxw" resolve="connectionInfo" />
                                    </node>
                                    <node concept="2S8uIT" id="zxzBEOGNxF" role="2OqNvi">
                                      <ref role="2S8YL0" node="4wVpOa2ITzW" resolve="fromNode" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="zxzBEOGNxG" role="1BdPVh">
                                    <node concept="37vLTw" id="zxzBEOGNxH" role="2Oq$k0">
                                      <ref role="3cqZAo" node="zxzBEOGNxw" resolve="connectionInfo" />
                                    </node>
                                    <node concept="2S8uIT" id="zxzBEOGNxI" role="2OqNvi">
                                      <ref role="2S8YL0" node="4wVpOa2Jpxw" resolve="fromId" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="zxzBEOGNxJ" role="1BdPVh">
                                    <node concept="37vLTw" id="zxzBEOGNxK" role="2Oq$k0">
                                      <ref role="3cqZAo" node="zxzBEOGNxw" resolve="connectionInfo" />
                                    </node>
                                    <node concept="2S8uIT" id="zxzBEOGNxL" role="2OqNvi">
                                      <ref role="2S8YL0" node="4wVpOa2JVpa" resolve="toNode" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="zxzBEOGNxM" role="1BdPVh">
                                    <node concept="37vLTw" id="zxzBEOGNxN" role="2Oq$k0">
                                      <ref role="3cqZAo" node="zxzBEOGNxw" resolve="connectionInfo" />
                                    </node>
                                    <node concept="2S8uIT" id="zxzBEOGNxO" role="2OqNvi">
                                      <ref role="2S8YL0" node="4wVpOa2Kt6S" resolve="toId" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="zxzBEOGNxP" role="3cqZAp">
                              <node concept="37vLTw" id="zxzBEOGNxQ" role="3cqZAk">
                                <ref role="3cqZAo" node="zxzBEOGNxc" resolve="result" />
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="zxzBEOGNxR" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="zxzBEO0upR" role="3cqZAp">
                <node concept="2YIFZM" id="zxzBEO0upS" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object):java.util.List" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="TRRVvfc248" role="37wK5m">
                    <node concept="1pGfFk" id="TRRVvfcbfe" role="2ShVmc">
                      <ref role="37wK5l" node="zxzBEO5Vc5" resolve="DiagramCell.DiagramSubstituteActionWraper" />
                      <node concept="37vLTw" id="TRRVvfcjLH" role="37wK5m">
                        <ref role="3cqZAo" node="zxzBEOGNwf" resolve="action" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="zxzBEO0uq2" role="3PaCim">
                    <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="zxzBEO0uq3" role="1B3o_S" />
      <node concept="3uibUv" id="zxzBEO0uq4" role="3clF45">
        <ref role="3uigEE" to="6lvu:~SubstituteInfoPartExt" resolve="SubstituteInfoPartExt" />
      </node>
    </node>
    <node concept="2tJIrI" id="zxzBEOwxBB" role="jymVt" />
    <node concept="3clFb_" id="TRRVveP1zg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConnectionInfo" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3NXJmdrxJWO" role="1B3o_S" />
      <node concept="3clFbS" id="TRRVveP1zj" role="3clF47">
        <node concept="3cpWs6" id="TRRVvePiKE" role="3cqZAp">
          <node concept="2ShNRf" id="TRRVvePr4N" role="3cqZAk">
            <node concept="1pGfFk" id="TRRVveP$43" role="2ShVmc">
              <ref role="37wK5l" node="4wVpOa2uTXc" resolve="DiagramCell.ConnectionInfo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="TRRVvePauj" role="3clF45">
        <ref role="3uigEE" node="4wVpOa2uEoK" resolve="DiagramCell.ConnectionInfo" />
      </node>
    </node>
    <node concept="2tJIrI" id="zxzBEOwGtA" role="jymVt" />
    <node concept="3clFb_" id="65G2vMdn1iu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createSubstitutePatternEditor" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="65G2vMdn1iv" role="1B3o_S" />
      <node concept="3uibUv" id="65G2vMdn1ix" role="3clF45">
        <ref role="3uigEE" to="6lvu:~NodeSubstitutePatternEditor" resolve="NodeSubstitutePatternEditor" />
      </node>
      <node concept="3clFbS" id="65G2vMdn1iA" role="3clF47">
        <node concept="3clFbF" id="65G2vMdneC1" role="3cqZAp">
          <node concept="2ShNRf" id="65G2vMdneBZ" role="3clFbG">
            <node concept="YeOm9" id="65G2vMdnf_w" role="2ShVmc">
              <node concept="1Y3b0j" id="65G2vMdnf_z" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="6lvu:~NodeSubstitutePatternEditor" resolve="NodeSubstitutePatternEditor" />
                <ref role="37wK5l" to="6lvu:~NodeSubstitutePatternEditor.&lt;init&gt;()" resolve="NodeSubstitutePatternEditor" />
                <node concept="3Tm1VV" id="65G2vMdnf_$" role="1B3o_S" />
                <node concept="3clFb_" id="65G2vMdng1s" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="activate" />
                  <property role="DiZV1" value="false" />
                  <property role="IEkAT" value="false" />
                  <node concept="3Tm1VV" id="65G2vMdng1t" role="1B3o_S" />
                  <node concept="3cqZAl" id="65G2vMdng1v" role="3clF45" />
                  <node concept="37vLTG" id="65G2vMdng1w" role="3clF46">
                    <property role="TrG5h" value="window" />
                    <node concept="3uibUv" id="65G2vMdng1x" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Window" resolve="Window" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="65G2vMdng1y" role="3clF46">
                    <property role="TrG5h" value="point" />
                    <node concept="3uibUv" id="65G2vMdng1z" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="65G2vMdng1$" role="3clF46">
                    <property role="TrG5h" value="dimension" />
                    <node concept="3uibUv" id="65G2vMdng1_" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="4NuqkK$ph8T" role="3clF46">
                    <property role="TrG5h" value="show" />
                    <node concept="10P_77" id="4NuqkK$pjoS" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="65G2vMdng1B" role="3clF47">
                    <node concept="3cpWs8" id="65G2vMdngZA" role="3cqZAp">
                      <node concept="3cpWsn" id="65G2vMdngZB" role="3cpWs9">
                        <property role="TrG5h" value="actualDimension" />
                        <node concept="3uibUv" id="65G2vMdngZC" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                        </node>
                        <node concept="2ShNRf" id="65G2vMdnhIt" role="33vP2m">
                          <node concept="1pGfFk" id="65G2vMdnhIs" role="2ShVmc">
                            <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                            <node concept="3cmrfG" id="65G2vMdnieO" role="37wK5m">
                              <property role="3cmrfH" value="100" />
                            </node>
                            <node concept="3cmrfG" id="65G2vMdnkit" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="65G2vMdnkmt" role="3cqZAp">
                      <node concept="2OqwBi" id="65G2vMdnkxf" role="3clFbG">
                        <node concept="37vLTw" id="65G2vMdnkms" role="2Oq$k0">
                          <ref role="3cqZAo" node="65G2vMdng1y" resolve="point" />
                        </node>
                        <node concept="liA8E" id="65G2vMdnlFg" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Point.translate(int,int):void" resolve="translate" />
                          <node concept="3cpWs3" id="22hly_jCIjr" role="37wK5m">
                            <node concept="37vLTw" id="22hly_jCIjw" role="3uHU7B">
                              <ref role="3cqZAo" node="65G2vMdnUSf" resolve="myPatternEditorX" />
                            </node>
                            <node concept="2OqwBi" id="22hly_jCIjt" role="3uHU7w">
                              <node concept="1rXfSq" id="22hly_jCIju" role="2Oq$k0">
                                <ref role="37wK5l" node="zxzBEP_q32" resolve="getContainerComponent" />
                              </node>
                              <node concept="liA8E" id="22hly_jCIjv" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JComponent.getX():int" resolve="getX" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs3" id="22hly_jCGTj" role="37wK5m">
                            <node concept="37vLTw" id="22hly_jCGTo" role="3uHU7B">
                              <ref role="3cqZAo" node="65G2vMdo2f7" resolve="myPatternEditorY" />
                            </node>
                            <node concept="2OqwBi" id="22hly_jCGTl" role="3uHU7w">
                              <node concept="1rXfSq" id="22hly_jCGTm" role="2Oq$k0">
                                <ref role="37wK5l" node="zxzBEP_q32" resolve="getContainerComponent" />
                              </node>
                              <node concept="liA8E" id="22hly_jCGTn" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JComponent.getY():int" resolve="getY" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="65G2vMdng1H" role="3cqZAp">
                      <node concept="3nyPlj" id="65G2vMdng1G" role="3clFbG">
                        <ref role="37wK5l" to="6lvu:~NodeSubstitutePatternEditor.activate(java.awt.Window,java.awt.Point,java.awt.Dimension,boolean):void" resolve="activate" />
                        <node concept="37vLTw" id="65G2vMdng1D" role="37wK5m">
                          <ref role="3cqZAo" node="65G2vMdng1w" resolve="window" />
                        </node>
                        <node concept="37vLTw" id="65G2vMdng1E" role="37wK5m">
                          <ref role="3cqZAo" node="65G2vMdng1y" resolve="point" />
                        </node>
                        <node concept="37vLTw" id="65G2vMdnlKj" role="37wK5m">
                          <ref role="3cqZAo" node="65G2vMdngZB" resolve="actualDimension" />
                        </node>
                        <node concept="37vLTw" id="4NuqkK$pjJW" role="37wK5m">
                          <ref role="3cqZAo" node="4NuqkK$ph8T" resolve="show" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6w0WfK8Y9Ms" role="3cqZAp">
                      <node concept="37vLTI" id="6w0WfK8YaMK" role="3clFbG">
                        <node concept="3clFbT" id="6w0WfK8Yb2e" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="37vLTw" id="6w0WfK8Y9Mr" role="37vLTJ">
                          <ref role="3cqZAo" node="6w0WfK8Snx0" resolve="mySubstituteEditorVisible" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="65G2vMdng1C" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3clFb_" id="6w0WfK8Y8jQ" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="done" />
                  <property role="DiZV1" value="false" />
                  <property role="IEkAT" value="false" />
                  <node concept="3Tm1VV" id="6w0WfK8Y8jR" role="1B3o_S" />
                  <node concept="3cqZAl" id="6w0WfK8Y8jT" role="3clF45" />
                  <node concept="3clFbS" id="6w0WfK8Y8jV" role="3clF47">
                    <node concept="3clFbF" id="6w0WfK8Y8jY" role="3cqZAp">
                      <node concept="3nyPlj" id="6w0WfK8Y8jX" role="3clFbG">
                        <ref role="37wK5l" to="6lvu:~NodeSubstitutePatternEditor.done():void" resolve="done" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="63$PQ33I8ZD" role="3cqZAp">
                      <node concept="1rXfSq" id="63$PQ33I8ZC" role="3clFbG">
                        <ref role="37wK5l" node="63$PQ33Ahg3" resolve="hideConnectionDragFeedback" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="6w0WfK8YbBR" role="3cqZAp">
                      <node concept="37vLTI" id="6w0WfK8YbBS" role="3clFbG">
                        <node concept="3clFbT" id="6w0WfK8YbBT" role="37vLTx" />
                        <node concept="37vLTw" id="6w0WfK8YbBU" role="37vLTJ">
                          <ref role="3cqZAo" node="6w0WfK8Snx0" resolve="mySubstituteEditorVisible" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="6w0WfK8Y8jW" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="65G2vMdn1iB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6w0WfK8WjZj" role="jymVt">
      <property role="TrG5h" value="getAWTKeyEvent" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="6w0WfK8WjZk" role="3clF47">
        <node concept="3SKdUt" id="6w0WfK8WjZl" role="3cqZAp">
          <node concept="3SKdUq" id="6w0WfK8WjZm" role="3SKWNk">
            <property role="3SKdUp" value="TODO: better integration with MPS substitute editor is required here" />
          </node>
        </node>
        <node concept="3cpWs8" id="6w0WfK8WjZn" role="3cqZAp">
          <node concept="3cpWsn" id="6w0WfK8WjZo" role="3cpWs9">
            <property role="TrG5h" value="id" />
            <node concept="10Oyi0" id="6w0WfK8WjZp" role="1tU5fm" />
            <node concept="3K4zz7" id="6w0WfK8WjZq" role="33vP2m">
              <node concept="10M0yZ" id="6w0WfK8WjZr" role="3K4E3e">
                <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                <ref role="3cqZAo" to="hyam:~KeyEvent.KEY_TYPED" resolve="KEY_TYPED" />
              </node>
              <node concept="10M0yZ" id="6w0WfK8WjZs" role="3K4GZi">
                <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                <ref role="3cqZAo" to="hyam:~KeyEvent.KEY_PRESSED" resolve="KEY_PRESSED" />
              </node>
              <node concept="37vLTw" id="6w0WfK8WjZt" role="3K4Cdx">
                <ref role="3cqZAo" node="6w0WfK8Wk1L" resolve="isTyped" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6w0WfK8WjZu" role="3cqZAp">
          <node concept="3cpWsn" id="6w0WfK8WjZv" role="3cpWs9">
            <property role="TrG5h" value="when" />
            <node concept="3cpWsb" id="6w0WfK8WjZw" role="1tU5fm" />
            <node concept="2YIFZM" id="6w0WfK8WjZx" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6w0WfK8WjZy" role="3cqZAp">
          <node concept="3cpWsn" id="6w0WfK8WjZz" role="3cpWs9">
            <property role="TrG5h" value="modifiers" />
            <node concept="10Oyi0" id="6w0WfK8WjZ$" role="1tU5fm" />
            <node concept="3cmrfG" id="6w0WfK8WjZ_" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6w0WfK8WjZA" role="3cqZAp">
          <node concept="3clFbS" id="6w0WfK8WjZB" role="3clFbx">
            <node concept="3clFbF" id="6w0WfK8WjZC" role="3cqZAp">
              <node concept="3vZ8r8" id="6w0WfK8WjZD" role="3clFbG">
                <node concept="10M0yZ" id="6w0WfK8WjZE" role="37vLTx">
                  <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                  <ref role="3cqZAo" to="hyam:~InputEvent.ALT_MASK" resolve="ALT_MASK" />
                </node>
                <node concept="37vLTw" id="6w0WfK8WjZF" role="37vLTJ">
                  <ref role="3cqZAo" node="6w0WfK8WjZz" resolve="modifiers" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6w0WfK8WjZG" role="3clFbw">
            <node concept="37vLTw" id="6w0WfK8WjZH" role="2Oq$k0">
              <ref role="3cqZAo" node="6w0WfK8Wk1J" resolve="jetPadKeyEvent" />
            </node>
            <node concept="liA8E" id="6w0WfK8WjZI" role="2OqNvi">
              <ref role="37wK5l" to="v7xa:~KeyEvent.has(jetbrains.jetpad.event.ModifierKey):boolean" resolve="has" />
              <node concept="Rm8GO" id="6w0WfK8WjZJ" role="37wK5m">
                <ref role="1Px2BO" to="v7xa:~ModifierKey" resolve="ModifierKey" />
                <ref role="Rm8GQ" to="v7xa:~ModifierKey.ALT" resolve="ALT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6w0WfK8WjZK" role="3cqZAp">
          <node concept="3clFbS" id="6w0WfK8WjZL" role="3clFbx">
            <node concept="3clFbF" id="6w0WfK8WjZM" role="3cqZAp">
              <node concept="3vZ8r8" id="6w0WfK8WjZN" role="3clFbG">
                <node concept="10M0yZ" id="6w0WfK8WjZO" role="37vLTx">
                  <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                  <ref role="3cqZAo" to="hyam:~InputEvent.CTRL_MASK" resolve="CTRL_MASK" />
                </node>
                <node concept="37vLTw" id="6w0WfK8WjZP" role="37vLTJ">
                  <ref role="3cqZAo" node="6w0WfK8WjZz" resolve="modifiers" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6w0WfK8WjZQ" role="3clFbw">
            <node concept="37vLTw" id="6w0WfK8WjZR" role="2Oq$k0">
              <ref role="3cqZAo" node="6w0WfK8Wk1J" resolve="jetPadKeyEvent" />
            </node>
            <node concept="liA8E" id="6w0WfK8WjZS" role="2OqNvi">
              <ref role="37wK5l" to="v7xa:~KeyEvent.has(jetbrains.jetpad.event.ModifierKey):boolean" resolve="has" />
              <node concept="Rm8GO" id="6w0WfK8WjZT" role="37wK5m">
                <ref role="1Px2BO" to="v7xa:~ModifierKey" resolve="ModifierKey" />
                <ref role="Rm8GQ" to="v7xa:~ModifierKey.CONTROL" resolve="CONTROL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6w0WfK8WjZU" role="3cqZAp">
          <node concept="3clFbS" id="6w0WfK8WjZV" role="3clFbx">
            <node concept="3clFbF" id="6w0WfK8WjZW" role="3cqZAp">
              <node concept="3vZ8r8" id="6w0WfK8WjZX" role="3clFbG">
                <node concept="10M0yZ" id="6w0WfK8WjZY" role="37vLTx">
                  <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                  <ref role="3cqZAo" to="hyam:~InputEvent.META_MASK" resolve="META_MASK" />
                </node>
                <node concept="37vLTw" id="6w0WfK8WjZZ" role="37vLTJ">
                  <ref role="3cqZAo" node="6w0WfK8WjZz" resolve="modifiers" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6w0WfK8Wk00" role="3clFbw">
            <node concept="37vLTw" id="6w0WfK8Wk01" role="2Oq$k0">
              <ref role="3cqZAo" node="6w0WfK8Wk1J" resolve="jetPadKeyEvent" />
            </node>
            <node concept="liA8E" id="6w0WfK8Wk02" role="2OqNvi">
              <ref role="37wK5l" to="v7xa:~KeyEvent.has(jetbrains.jetpad.event.ModifierKey):boolean" resolve="has" />
              <node concept="Rm8GO" id="6w0WfK8Wk03" role="37wK5m">
                <ref role="1Px2BO" to="v7xa:~ModifierKey" resolve="ModifierKey" />
                <ref role="Rm8GQ" to="v7xa:~ModifierKey.META" resolve="META" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6w0WfK8Wk04" role="3cqZAp">
          <node concept="3clFbS" id="6w0WfK8Wk05" role="3clFbx">
            <node concept="3clFbF" id="6w0WfK8Wk06" role="3cqZAp">
              <node concept="3vZ8r8" id="6w0WfK8Wk07" role="3clFbG">
                <node concept="10M0yZ" id="6w0WfK8Wk08" role="37vLTx">
                  <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                  <ref role="3cqZAo" to="hyam:~InputEvent.SHIFT_MASK" resolve="SHIFT_MASK" />
                </node>
                <node concept="37vLTw" id="6w0WfK8Wk09" role="37vLTJ">
                  <ref role="3cqZAo" node="6w0WfK8WjZz" resolve="modifiers" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6w0WfK8Wk0a" role="3clFbw">
            <node concept="37vLTw" id="6w0WfK8Wk0b" role="2Oq$k0">
              <ref role="3cqZAo" node="6w0WfK8Wk1J" resolve="jetPadKeyEvent" />
            </node>
            <node concept="liA8E" id="6w0WfK8Wk0c" role="2OqNvi">
              <ref role="37wK5l" to="v7xa:~KeyEvent.has(jetbrains.jetpad.event.ModifierKey):boolean" resolve="has" />
              <node concept="Rm8GO" id="6w0WfK8Wk0d" role="37wK5m">
                <ref role="1Px2BO" to="v7xa:~ModifierKey" resolve="ModifierKey" />
                <ref role="Rm8GQ" to="v7xa:~ModifierKey.SHIFT" resolve="SHIFT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6w0WfK8Wk0e" role="3cqZAp">
          <node concept="3cpWsn" id="6w0WfK8Wk0f" role="3cpWs9">
            <property role="TrG5h" value="keyCode" />
            <node concept="10Oyi0" id="6w0WfK8Wk0g" role="1tU5fm" />
          </node>
        </node>
        <node concept="3KaCP$" id="6w0WfK8Wk0h" role="3cqZAp">
          <node concept="3KbdKl" id="6w0WfK8Wk0i" role="3KbHQx">
            <node concept="3clFbS" id="6w0WfK8Wk0j" role="3Kbo56">
              <node concept="3clFbF" id="6w0WfK8Wk0k" role="3cqZAp">
                <node concept="37vLTI" id="6w0WfK8Wk0l" role="3clFbG">
                  <node concept="37vLTw" id="6w0WfK8Wk0m" role="37vLTJ">
                    <ref role="3cqZAo" node="6w0WfK8Wk0f" resolve="keyCode" />
                  </node>
                  <node concept="10M0yZ" id="6w0WfK8Wk0n" role="37vLTx">
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ESCAPE" resolve="VK_ESCAPE" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6w0WfK8Wk0o" role="3cqZAp" />
            </node>
            <node concept="Rm8GO" id="6w0WfK8Wk0p" role="3Kbmr1">
              <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
              <ref role="Rm8GQ" to="v7xa:~Key.ESCAPE" resolve="ESCAPE" />
            </node>
          </node>
          <node concept="3KbdKl" id="6w0WfK8Wk0q" role="3KbHQx">
            <node concept="Rm8GO" id="6w0WfK8Wk0r" role="3Kbmr1">
              <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
              <ref role="Rm8GQ" to="v7xa:~Key.SPACE" resolve="SPACE" />
            </node>
            <node concept="3clFbS" id="6w0WfK8Wk0s" role="3Kbo56">
              <node concept="3clFbF" id="6w0WfK8Wk0t" role="3cqZAp">
                <node concept="37vLTI" id="6w0WfK8Wk0u" role="3clFbG">
                  <node concept="37vLTw" id="6w0WfK8Wk0v" role="37vLTJ">
                    <ref role="3cqZAo" node="6w0WfK8Wk0f" resolve="keyCode" />
                  </node>
                  <node concept="10M0yZ" id="6w0WfK8Wk0w" role="37vLTx">
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_SPACE" resolve="VK_SPACE" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6w0WfK8Wk0x" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="6w0WfK8Wk0y" role="3KbHQx">
            <node concept="Rm8GO" id="6w0WfK8Wk0z" role="3Kbmr1">
              <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
              <ref role="Rm8GQ" to="v7xa:~Key.BACKSPACE" resolve="BACKSPACE" />
            </node>
            <node concept="3clFbS" id="6w0WfK8Wk0$" role="3Kbo56">
              <node concept="3clFbF" id="6w0WfK8Wk0_" role="3cqZAp">
                <node concept="37vLTI" id="6w0WfK8Wk0A" role="3clFbG">
                  <node concept="37vLTw" id="6w0WfK8Wk0B" role="37vLTJ">
                    <ref role="3cqZAo" node="6w0WfK8Wk0f" resolve="keyCode" />
                  </node>
                  <node concept="10M0yZ" id="6w0WfK8Wk0C" role="37vLTx">
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_BACK_SPACE" resolve="VK_BACK_SPACE" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6w0WfK8Wk0D" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="6w0WfK8Wk0E" role="3KbHQx">
            <node concept="Rm8GO" id="6w0WfK8Wk0F" role="3Kbmr1">
              <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
              <ref role="Rm8GQ" to="v7xa:~Key.DELETE" resolve="DELETE" />
            </node>
            <node concept="3clFbS" id="6w0WfK8Wk0G" role="3Kbo56">
              <node concept="3clFbF" id="6w0WfK8Wk0H" role="3cqZAp">
                <node concept="37vLTI" id="6w0WfK8Wk0I" role="3clFbG">
                  <node concept="37vLTw" id="6w0WfK8Wk0J" role="37vLTJ">
                    <ref role="3cqZAo" node="6w0WfK8Wk0f" resolve="keyCode" />
                  </node>
                  <node concept="10M0yZ" id="6w0WfK8Wk0K" role="37vLTx">
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_DELETE" resolve="VK_DELETE" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6w0WfK8Wk0L" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="6w0WfK8Wk0M" role="3KbHQx">
            <node concept="Rm8GO" id="6w0WfK8Wk0N" role="3Kbmr1">
              <ref role="Rm8GQ" to="v7xa:~Key.LEFT" resolve="LEFT" />
              <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
            </node>
            <node concept="3clFbS" id="6w0WfK8Wk0O" role="3Kbo56">
              <node concept="3clFbF" id="6w0WfK8Wk0P" role="3cqZAp">
                <node concept="37vLTI" id="6w0WfK8Wk0Q" role="3clFbG">
                  <node concept="37vLTw" id="6w0WfK8Wk0R" role="37vLTJ">
                    <ref role="3cqZAo" node="6w0WfK8Wk0f" resolve="keyCode" />
                  </node>
                  <node concept="10M0yZ" id="6w0WfK8Wk0S" role="37vLTx">
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_LEFT" resolve="VK_LEFT" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6w0WfK8Wk0T" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="6w0WfK8Wk0U" role="3KbHQx">
            <node concept="Rm8GO" id="6w0WfK8Wk0V" role="3Kbmr1">
              <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
              <ref role="Rm8GQ" to="v7xa:~Key.RIGHT" resolve="RIGHT" />
            </node>
            <node concept="3clFbS" id="6w0WfK8Wk0W" role="3Kbo56">
              <node concept="3clFbF" id="6w0WfK8Wk0X" role="3cqZAp">
                <node concept="37vLTI" id="6w0WfK8Wk0Y" role="3clFbG">
                  <node concept="37vLTw" id="6w0WfK8Wk0Z" role="37vLTJ">
                    <ref role="3cqZAo" node="6w0WfK8Wk0f" resolve="keyCode" />
                  </node>
                  <node concept="10M0yZ" id="6w0WfK8Wk10" role="37vLTx">
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_RIGHT" resolve="VK_RIGHT" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6w0WfK8Wk11" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="6w0WfK8Wk12" role="3KbHQx">
            <node concept="Rm8GO" id="6w0WfK8Wk13" role="3Kbmr1">
              <ref role="Rm8GQ" to="v7xa:~Key.UP" resolve="UP" />
              <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
            </node>
            <node concept="3clFbS" id="6w0WfK8Wk14" role="3Kbo56">
              <node concept="3clFbF" id="6w0WfK8Wk15" role="3cqZAp">
                <node concept="37vLTI" id="6w0WfK8Wk16" role="3clFbG">
                  <node concept="37vLTw" id="6w0WfK8Wk17" role="37vLTJ">
                    <ref role="3cqZAo" node="6w0WfK8Wk0f" resolve="keyCode" />
                  </node>
                  <node concept="10M0yZ" id="6w0WfK8Wk18" role="37vLTx">
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_UP" resolve="VK_UP" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6w0WfK8Wk19" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="6w0WfK8Wk1a" role="3KbHQx">
            <node concept="Rm8GO" id="6w0WfK8Wk1b" role="3Kbmr1">
              <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
              <ref role="Rm8GQ" to="v7xa:~Key.DOWN" resolve="DOWN" />
            </node>
            <node concept="3clFbS" id="6w0WfK8Wk1c" role="3Kbo56">
              <node concept="3clFbF" id="6w0WfK8Wk1d" role="3cqZAp">
                <node concept="37vLTI" id="6w0WfK8Wk1e" role="3clFbG">
                  <node concept="37vLTw" id="6w0WfK8Wk1f" role="37vLTJ">
                    <ref role="3cqZAo" node="6w0WfK8Wk0f" resolve="keyCode" />
                  </node>
                  <node concept="10M0yZ" id="6w0WfK8Wk1g" role="37vLTx">
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_DOWN" resolve="VK_DOWN" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6w0WfK8Wk1h" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="6w0WfK8Wk1i" role="3KbHQx">
            <node concept="Rm8GO" id="6w0WfK8Wk1j" role="3Kbmr1">
              <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
              <ref role="Rm8GQ" to="v7xa:~Key.ENTER" resolve="ENTER" />
            </node>
            <node concept="3clFbS" id="6w0WfK8Wk1k" role="3Kbo56">
              <node concept="3clFbF" id="6w0WfK8Wk1l" role="3cqZAp">
                <node concept="37vLTI" id="6w0WfK8Wk1m" role="3clFbG">
                  <node concept="37vLTw" id="6w0WfK8Wk1n" role="37vLTJ">
                    <ref role="3cqZAo" node="6w0WfK8Wk0f" resolve="keyCode" />
                  </node>
                  <node concept="10M0yZ" id="6w0WfK8Wk1o" role="37vLTx">
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ENTER" resolve="VK_ENTER" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6w0WfK8Wk1p" role="3cqZAp" />
            </node>
          </node>
          <node concept="2OqwBi" id="6w0WfK8Wk1q" role="3KbGdf">
            <node concept="37vLTw" id="6w0WfK8Wk1r" role="2Oq$k0">
              <ref role="3cqZAo" node="6w0WfK8Wk1J" resolve="jetPadKeyEvent" />
            </node>
            <node concept="liA8E" id="6w0WfK8Wk1s" role="2OqNvi">
              <ref role="37wK5l" to="v7xa:~KeyEvent.key():jetbrains.jetpad.event.Key" resolve="key" />
            </node>
          </node>
          <node concept="3clFbS" id="6w0WfK8Wk1t" role="3Kb1Dw">
            <node concept="3clFbF" id="6w0WfK8Wk1u" role="3cqZAp">
              <node concept="37vLTI" id="6w0WfK8Wk1v" role="3clFbG">
                <node concept="3cmrfG" id="6w0WfK8Wk1w" role="37vLTx">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="6w0WfK8Wk1x" role="37vLTJ">
                  <ref role="3cqZAo" node="6w0WfK8Wk0f" resolve="keyCode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6w0WfK8Wk1y" role="3cqZAp">
          <node concept="2ShNRf" id="6w0WfK8Wk1z" role="3cqZAk">
            <node concept="1pGfFk" id="6w0WfK8Wk1$" role="2ShVmc">
              <ref role="37wK5l" to="hyam:~KeyEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,char)" resolve="KeyEvent" />
              <node concept="1rXfSq" id="6w0WfK8X4dT" role="37wK5m">
                <ref role="37wK5l" node="7efWZtHXzWi" resolve="getComponent" />
              </node>
              <node concept="37vLTw" id="6w0WfK8Wk1C" role="37wK5m">
                <ref role="3cqZAo" node="6w0WfK8WjZo" resolve="id" />
              </node>
              <node concept="37vLTw" id="6w0WfK8Wk1D" role="37wK5m">
                <ref role="3cqZAo" node="6w0WfK8WjZv" resolve="when" />
              </node>
              <node concept="37vLTw" id="6w0WfK8Wk1E" role="37wK5m">
                <ref role="3cqZAo" node="6w0WfK8WjZz" resolve="modifiers" />
              </node>
              <node concept="37vLTw" id="6w0WfK8Wk1F" role="37wK5m">
                <ref role="3cqZAo" node="6w0WfK8Wk0f" resolve="keyCode" />
              </node>
              <node concept="2OqwBi" id="6w0WfK8Wk1G" role="37wK5m">
                <node concept="37vLTw" id="6w0WfK8Wk1H" role="2Oq$k0">
                  <ref role="3cqZAo" node="6w0WfK8Wk1J" resolve="jetPadKeyEvent" />
                </node>
                <node concept="liA8E" id="6w0WfK8Wk1I" role="2OqNvi">
                  <ref role="37wK5l" to="v7xa:~KeyEvent.keyChar():char" resolve="keyChar" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6w0WfK8Wk1J" role="3clF46">
        <property role="TrG5h" value="jetPadKeyEvent" />
        <node concept="3uibUv" id="6w0WfK8Wk1K" role="1tU5fm">
          <ref role="3uigEE" to="v7xa:~KeyEvent" resolve="KeyEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="6w0WfK8Wk1L" role="3clF46">
        <property role="TrG5h" value="isTyped" />
        <node concept="10P_77" id="6w0WfK8Wk1M" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6w0WfK8Wk1N" role="3clF45">
        <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
      </node>
      <node concept="3Tm6S6" id="6w0WfK8Wk1O" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="2kUb22mGw4l" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRootMapper" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="2kUb22mGw4o" role="3clF47">
        <node concept="3clFbJ" id="2kUb22mGSzi" role="3cqZAp">
          <node concept="3clFbS" id="2kUb22mGSzj" role="3clFbx">
            <node concept="3clFbF" id="ya5FdpN9nA" role="3cqZAp">
              <node concept="37vLTI" id="ya5FdpNiFS" role="3clFbG">
                <node concept="2ShNRf" id="ya5FdpNj0s" role="37vLTx">
                  <node concept="YeOm9" id="ya5FdpNsH$" role="2ShVmc">
                    <node concept="1Y3b0j" id="ya5FdpNsHB" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="sm7x:~Mapper" resolve="Mapper" />
                      <ref role="37wK5l" to="sm7x:~Mapper.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Mapper" />
                      <node concept="3Tm1VV" id="ya5FdpNsHC" role="1B3o_S" />
                      <node concept="3Tqbb2" id="ya5FdpNLh4" role="2Ghqu4" />
                      <node concept="3uibUv" id="ya5FdpNUwx" role="2Ghqu4">
                        <ref role="3uigEE" to="jqfx:~ViewContainer" resolve="ViewContainer" />
                      </node>
                      <node concept="3clFb_" id="ya5FdpOfwt" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="registerSynchronizers" />
                        <property role="DiZV1" value="false" />
                        <property role="IEkAT" value="false" />
                        <node concept="3Tmbuc" id="ya5FdpOfwu" role="1B3o_S" />
                        <node concept="3cqZAl" id="ya5FdpOfww" role="3clF45" />
                        <node concept="37vLTG" id="ya5FdpOfwx" role="3clF46">
                          <property role="TrG5h" value="configuration" />
                          <node concept="3uibUv" id="ya5FdpOfwy" role="1tU5fm">
                            <ref role="3uigEE" to="sm7x:~Mapper$SynchronizersConfiguration" resolve="Mapper.SynchronizersConfiguration" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="ya5FdpOfwA" role="3clF47">
                          <node concept="3clFbF" id="ya5FdpOfwE" role="3cqZAp">
                            <node concept="3nyPlj" id="ya5FdpOfwD" role="3clFbG">
                              <ref role="37wK5l" to="sm7x:~Mapper.registerSynchronizers(jetbrains.jetpad.mapper.Mapper$SynchronizersConfiguration):void" resolve="registerSynchronizers" />
                              <node concept="37vLTw" id="ya5FdpOfwC" role="37wK5m">
                                <ref role="3cqZAo" node="ya5FdpOfwx" resolve="configuration" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="ya5FdpPe6a" role="3cqZAp" />
                          <node concept="3clFbF" id="ya5FdpPeg4" role="3cqZAp">
                            <node concept="2OqwBi" id="ya5FdpPkLo" role="3clFbG">
                              <node concept="37vLTw" id="ya5FdpPeg3" role="2Oq$k0">
                                <ref role="3cqZAo" node="ya5FdpOfwx" resolve="configuration" />
                              </node>
                              <node concept="liA8E" id="ya5FdpPJHd" role="2OqNvi">
                                <ref role="37wK5l" to="sm7x:~Mapper$SynchronizersConfiguration.add(jetbrains.jetpad.mapper.Synchronizer):void" resolve="add" />
                                <node concept="2YIFZM" id="ya5FdpPSZZ" role="37wK5m">
                                  <ref role="37wK5l" to="sm7x:~Synchronizers.forConstantRole(jetbrains.jetpad.mapper.Mapper,java.lang.Object,java.util.List,jetbrains.jetpad.mapper.MapperFactory):jetbrains.jetpad.mapper.RoleSynchronizer" resolve="forConstantRole" />
                                  <ref role="1Pybhc" to="sm7x:~Synchronizers" resolve="Synchronizers" />
                                  <node concept="Xjq3P" id="ya5FdpQdqr" role="37wK5m" />
                                  <node concept="1rXfSq" id="ya5FdpQoSj" role="37wK5m">
                                    <ref role="37wK5l" to="sm7x:~Mapper.getSource():java.lang.Object" resolve="getSource" />
                                  </node>
                                  <node concept="2OqwBi" id="7o2MO5ZoKH1" role="37wK5m">
                                    <node concept="2OqwBi" id="ya5FdpQXDD" role="2Oq$k0">
                                      <node concept="1rXfSq" id="ya5FdpQHr6" role="2Oq$k0">
                                        <ref role="37wK5l" to="sm7x:~Mapper.getTarget():java.lang.Object" resolve="getTarget" />
                                      </node>
                                      <node concept="liA8E" id="7o2MO5ZoAiN" role="2OqNvi">
                                        <ref role="37wK5l" to="jqfx:~ViewContainer.contentRoot():jetbrains.jetpad.projectional.view.View" resolve="contentRoot" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7o2MO5ZoMS5" role="2OqNvi">
                                      <ref role="37wK5l" to="jqfx:~View.children():jetbrains.jetpad.model.collections.list.ObservableList" resolve="children" />
                                    </node>
                                  </node>
                                  <node concept="Xjq3P" id="ya5FdpW9jI" role="37wK5m">
                                    <ref role="1HBi2w" node="7efWZtHWeDk" resolve="DiagramCell" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6YormRhHdGs" role="3cqZAp">
                            <node concept="2OqwBi" id="6YormRhHgH0" role="3clFbG">
                              <node concept="37vLTw" id="6YormRhHdGr" role="2Oq$k0">
                                <ref role="3cqZAo" node="ya5FdpOfwx" resolve="configuration" />
                              </node>
                              <node concept="liA8E" id="6YormRhHjuK" role="2OqNvi">
                                <ref role="37wK5l" to="sm7x:~Mapper$SynchronizersConfiguration.add(jetbrains.jetpad.mapper.Synchronizer):void" resolve="add" />
                                <node concept="2YIFZM" id="6YormRhHkA4" role="37wK5m">
                                  <ref role="37wK5l" to="sm7x:~Synchronizers.forProperty(jetbrains.jetpad.model.property.ReadableProperty,jetbrains.jetpad.model.property.WritableProperty):jetbrains.jetpad.mapper.Synchronizer" resolve="forProperty" />
                                  <ref role="1Pybhc" to="sm7x:~Synchronizers" resolve="Synchronizers" />
                                  <node concept="37vLTw" id="6YormRhHlyQ" role="37wK5m">
                                    <ref role="3cqZAo" node="6YormRhFyDH" resolve="myTraitProperty" />
                                  </node>
                                  <node concept="2ShNRf" id="6YormRhHmo8" role="37wK5m">
                                    <node concept="YeOm9" id="6YormRhHo9A" role="2ShVmc">
                                      <node concept="1Y3b0j" id="6YormRhHo9D" role="YeSDq">
                                        <property role="2bfB8j" value="true" />
                                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                        <ref role="1Y3XeK" to="lgza:~WritableProperty" resolve="WritableProperty" />
                                        <node concept="3Tm1VV" id="6YormRhHo9E" role="1B3o_S" />
                                        <node concept="3clFb_" id="6YormRhHo9F" role="jymVt">
                                          <property role="1EzhhJ" value="false" />
                                          <property role="TrG5h" value="set" />
                                          <property role="DiZV1" value="false" />
                                          <property role="IEkAT" value="false" />
                                          <node concept="3Tm1VV" id="6YormRhHo9G" role="1B3o_S" />
                                          <node concept="3cqZAl" id="6YormRhHo9I" role="3clF45" />
                                          <node concept="37vLTG" id="6YormRhHo9J" role="3clF46">
                                            <property role="TrG5h" value="trait" />
                                            <node concept="3uibUv" id="6YormRhHqsI" role="1tU5fm">
                                              <ref role="3uigEE" to="jqfx:~ViewTrait" resolve="ViewTrait" />
                                            </node>
                                          </node>
                                          <node concept="3clFbS" id="6YormRhHo9L" role="3clF47">
                                            <node concept="3clFbF" id="6YormRhHr2j" role="3cqZAp">
                                              <node concept="37vLTI" id="6YormRhHsM5" role="3clFbG">
                                                <node concept="37vLTw" id="6YormRhHsWU" role="37vLTJ">
                                                  <ref role="3cqZAo" node="67VADAJoCpC" resolve="myRegistration" />
                                                </node>
                                                <node concept="2OqwBi" id="6YormRhHre4" role="37vLTx">
                                                  <node concept="2OqwBi" id="6YormRhM2K5" role="2Oq$k0">
                                                    <node concept="liA8E" id="6YormRhM2WF" role="2OqNvi">
                                                      <ref role="37wK5l" to="jqfx:~ViewContainer.root():jetbrains.jetpad.projectional.view.View" resolve="root" />
                                                    </node>
                                                    <node concept="1rXfSq" id="6YormRhN4Zx" role="2Oq$k0">
                                                      <ref role="37wK5l" to="sm7x:~Mapper.getTarget():java.lang.Object" resolve="getTarget" />
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="6YormRhHsss" role="2OqNvi">
                                                    <ref role="37wK5l" to="jqfx:~View.addTrait(jetbrains.jetpad.projectional.view.ViewTrait):jetbrains.jetpad.base.Registration" resolve="addTrait" />
                                                    <node concept="37vLTw" id="6YormRhHsyH" role="37wK5m">
                                                      <ref role="3cqZAo" node="6YormRhHo9J" resolve="trait" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3uibUv" id="6YormRhHpA$" role="2Ghqu4">
                                          <ref role="3uigEE" to="jqfx:~ViewTrait" resolve="ViewTrait" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="6YormRhN021" role="3cqZAp" />
                        </node>
                        <node concept="2AHcQZ" id="ya5FdpOfwB" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="ya5FdpOgmH" role="37wK5m">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
                      </node>
                      <node concept="1rXfSq" id="1iiFLkj6eHp" role="37wK5m">
                        <ref role="37wK5l" node="I0mWogDyMf" resolve="createViewContainer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="ya5FdpN9n_" role="37vLTJ">
                  <ref role="3cqZAo" node="2kUb22mGMmp" resolve="myRootMapper" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2kUb22mGWjK" role="3clFbw">
            <node concept="10Nm6u" id="2kUb22mGWRa" role="3uHU7w" />
            <node concept="37vLTw" id="2kUb22mGSBy" role="3uHU7B">
              <ref role="3cqZAo" node="2kUb22mGMmp" resolve="myRootMapper" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2kUb22mIMcy" role="3cqZAp">
          <node concept="37vLTw" id="2kUb22mIMcx" role="3clFbG">
            <ref role="3cqZAo" node="2kUb22mGMmp" resolve="myRootMapper" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2kUb22mGkH4" role="1B3o_S" />
      <node concept="3uibUv" id="ya5FdpWuln" role="3clF45">
        <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
        <node concept="3Tqbb2" id="ya5FdpWIjn" role="11_B2D" />
        <node concept="3uibUv" id="ya5FdpXeoi" role="11_B2D">
          <ref role="3uigEE" to="jqfx:~ViewContainer" resolve="ViewContainer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4f6Z7yOgyPY" role="jymVt" />
    <node concept="3clFb_" id="4f6Z7yOiy$H" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDecorationRootMapper" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4f6Z7yOiy$K" role="3clF47">
        <node concept="3clFbJ" id="4f6Z7yOj0Em" role="3cqZAp">
          <node concept="3clFbS" id="4f6Z7yOj0En" role="3clFbx">
            <node concept="3clFbF" id="4f6Z7yOj0Eo" role="3cqZAp">
              <node concept="37vLTI" id="4f6Z7yOj0Ep" role="3clFbG">
                <node concept="2ShNRf" id="4f6Z7yOj0Eq" role="37vLTx">
                  <node concept="YeOm9" id="4f6Z7yOj0Er" role="2ShVmc">
                    <node concept="1Y3b0j" id="4f6Z7yOj0Es" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="sm7x:~Mapper.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Mapper" />
                      <ref role="1Y3XeK" to="sm7x:~Mapper" resolve="Mapper" />
                      <node concept="3Tm1VV" id="4f6Z7yOj0Et" role="1B3o_S" />
                      <node concept="3Tqbb2" id="4f6Z7yOj0Eu" role="2Ghqu4" />
                      <node concept="3uibUv" id="4f6Z7yOj0Ev" role="2Ghqu4">
                        <ref role="3uigEE" to="jqfx:~ViewContainer" resolve="ViewContainer" />
                      </node>
                      <node concept="3clFb_" id="4f6Z7yOj0Ew" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="registerSynchronizers" />
                        <property role="DiZV1" value="false" />
                        <property role="IEkAT" value="false" />
                        <node concept="3Tmbuc" id="4f6Z7yOj0Ex" role="1B3o_S" />
                        <node concept="3cqZAl" id="4f6Z7yOj0Ey" role="3clF45" />
                        <node concept="37vLTG" id="4f6Z7yOj0Ez" role="3clF46">
                          <property role="TrG5h" value="configuration" />
                          <node concept="3uibUv" id="4f6Z7yOj0E$" role="1tU5fm">
                            <ref role="3uigEE" to="sm7x:~Mapper$SynchronizersConfiguration" resolve="Mapper.SynchronizersConfiguration" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="4f6Z7yOj0E_" role="3clF47">
                          <node concept="3clFbF" id="4f6Z7yOj0EA" role="3cqZAp">
                            <node concept="3nyPlj" id="4f6Z7yOj0EB" role="3clFbG">
                              <ref role="37wK5l" to="sm7x:~Mapper.registerSynchronizers(jetbrains.jetpad.mapper.Mapper$SynchronizersConfiguration):void" resolve="registerSynchronizers" />
                              <node concept="37vLTw" id="4f6Z7yOj0EC" role="37wK5m">
                                <ref role="3cqZAo" node="4f6Z7yOj0Ez" resolve="configuration" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4f6Z7yOkIrS" role="3cqZAp">
                            <node concept="2OqwBi" id="4f6Z7yOkIrT" role="3clFbG">
                              <node concept="37vLTw" id="4f6Z7yOkIrU" role="2Oq$k0">
                                <ref role="3cqZAo" node="4f6Z7yOj0Ez" resolve="configuration" />
                              </node>
                              <node concept="liA8E" id="4f6Z7yOkIrV" role="2OqNvi">
                                <ref role="37wK5l" to="sm7x:~Mapper$SynchronizersConfiguration.add(jetbrains.jetpad.mapper.Synchronizer):void" resolve="add" />
                                <node concept="2YIFZM" id="4f6Z7yOkIrW" role="37wK5m">
                                  <ref role="37wK5l" to="sm7x:~Synchronizers.forConstantRole(jetbrains.jetpad.mapper.Mapper,java.lang.Object,java.util.List,jetbrains.jetpad.mapper.MapperFactory):jetbrains.jetpad.mapper.RoleSynchronizer" resolve="forConstantRole" />
                                  <ref role="1Pybhc" to="sm7x:~Synchronizers" resolve="Synchronizers" />
                                  <node concept="Xjq3P" id="4f6Z7yOkIrX" role="37wK5m" />
                                  <node concept="1rXfSq" id="4f6Z7yOkIrY" role="37wK5m">
                                    <ref role="37wK5l" to="sm7x:~Mapper.getSource():java.lang.Object" resolve="getSource" />
                                  </node>
                                  <node concept="2OqwBi" id="4f6Z7yOkIrZ" role="37wK5m">
                                    <node concept="2OqwBi" id="4f6Z7yOkIs0" role="2Oq$k0">
                                      <node concept="1rXfSq" id="4f6Z7yOkIs1" role="2Oq$k0">
                                        <ref role="37wK5l" to="sm7x:~Mapper.getTarget():java.lang.Object" resolve="getTarget" />
                                      </node>
                                      <node concept="liA8E" id="4f6Z7yOkIs2" role="2OqNvi">
                                        <ref role="37wK5l" to="jqfx:~ViewContainer.decorationRoot():jetbrains.jetpad.projectional.view.View" resolve="decorationRoot" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4f6Z7yOkIs3" role="2OqNvi">
                                      <ref role="37wK5l" to="jqfx:~View.children():jetbrains.jetpad.model.collections.list.ObservableList" resolve="children" />
                                    </node>
                                  </node>
                                  <node concept="2ShNRf" id="4f6Z7yOkUI4" role="37wK5m">
                                    <node concept="YeOm9" id="4f6Z7yOl5wa" role="2ShVmc">
                                      <node concept="1Y3b0j" id="4f6Z7yOl5wd" role="YeSDq">
                                        <property role="2bfB8j" value="true" />
                                        <ref role="1Y3XeK" to="sm7x:~MapperFactory" resolve="MapperFactory" />
                                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                        <node concept="3Tm1VV" id="4f6Z7yOl5we" role="1B3o_S" />
                                        <node concept="3clFb_" id="4f6Z7yOl5wf" role="jymVt">
                                          <property role="1EzhhJ" value="false" />
                                          <property role="TrG5h" value="createMapper" />
                                          <property role="DiZV1" value="false" />
                                          <property role="IEkAT" value="false" />
                                          <node concept="3Tm1VV" id="4f6Z7yOl5wg" role="1B3o_S" />
                                          <node concept="3uibUv" id="4f6Z7yOl5wi" role="3clF45">
                                            <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
                                            <node concept="3qUE_q" id="4f6Z7yOl5wj" role="11_B2D">
                                              <node concept="3Tqbb2" id="4f6Z7yOmHeI" role="3qUE_r" />
                                            </node>
                                            <node concept="3qUE_q" id="4f6Z7yOl5wl" role="11_B2D">
                                              <node concept="3uibUv" id="4f6Z7yOmR0Z" role="3qUE_r">
                                                <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="37vLTG" id="4f6Z7yOl5wn" role="3clF46">
                                            <property role="TrG5h" value="source" />
                                            <node concept="3Tqbb2" id="4f6Z7yOn0N8" role="1tU5fm" />
                                          </node>
                                          <node concept="3clFbS" id="4f6Z7yOl5wp" role="3clF47">
                                            <node concept="3cpWs6" id="4f6Z7yOnaMJ" role="3cqZAp">
                                              <node concept="1rXfSq" id="4f6Z7yOoSjH" role="3cqZAk">
                                                <ref role="37wK5l" node="4f6Z7yOo45Z" resolve="createDecorationMapper" />
                                                <node concept="37vLTw" id="4f6Z7yOp35W" role="37wK5m">
                                                  <ref role="3cqZAo" node="4f6Z7yOl5wn" resolve="source" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3Tqbb2" id="4f6Z7yOlgnr" role="2Ghqu4" />
                                        <node concept="3uibUv" id="4f6Z7yOlOWO" role="2Ghqu4">
                                          <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="4f6Z7yOj0ER" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="4f6Z7yOj0ES" role="37wK5m">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
                      </node>
                      <node concept="2OqwBi" id="4f6Z7yOjG52" role="37wK5m">
                        <node concept="1rXfSq" id="4f6Z7yOjxxX" role="2Oq$k0">
                          <ref role="37wK5l" node="2kUb22mGw4l" resolve="getRootMapper" />
                        </node>
                        <node concept="liA8E" id="4f6Z7yOjHlB" role="2OqNvi">
                          <ref role="37wK5l" to="sm7x:~Mapper.getTarget():java.lang.Object" resolve="getTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4f6Z7yOjczk" role="37vLTJ">
                  <ref role="3cqZAo" node="4f6Z7yOiMgL" resolve="myDecorationRootMapper" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4f6Z7yOj0EV" role="3clFbw">
            <node concept="10Nm6u" id="4f6Z7yOj0EW" role="3uHU7w" />
            <node concept="37vLTw" id="4f6Z7yOj2mK" role="3uHU7B">
              <ref role="3cqZAo" node="4f6Z7yOiMgL" resolve="myDecorationRootMapper" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4f6Z7yOkbC8" role="3cqZAp">
          <node concept="37vLTw" id="4f6Z7yOkbC7" role="3clFbG">
            <ref role="3cqZAo" node="4f6Z7yOiMgL" resolve="myDecorationRootMapper" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4f6Z7yOi8OJ" role="1B3o_S" />
      <node concept="3uibUv" id="4f6Z7yOioqB" role="3clF45">
        <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
        <node concept="3Tqbb2" id="4f6Z7yOip45" role="11_B2D" />
        <node concept="3uibUv" id="4f6Z7yOiyyq" role="11_B2D">
          <ref role="3uigEE" to="jqfx:~ViewContainer" resolve="ViewContainer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4f6Z7yOnbb8" role="jymVt" />
    <node concept="3clFb_" id="4f6Z7yOo45Z" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createDecorationMapper" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4f6Z7yOo462" role="3clF47" />
      <node concept="3Tm1VV" id="4f6Z7yOnDn4" role="1B3o_S" />
      <node concept="3uibUv" id="4f6Z7yOnTwA" role="3clF45">
        <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
        <node concept="3Tqbb2" id="4f6Z7yOnUgY" role="11_B2D" />
        <node concept="3uibUv" id="1gT9jIxDReM" role="11_B2D">
          <ref role="3uigEE" to="8n5u:3HZBsOQ$4mP" resolve="DiagramDecoratorView" />
        </node>
      </node>
      <node concept="37vLTG" id="4f6Z7yOoGJB" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4f6Z7yOoGJA" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4f6Z7yOngsu" role="jymVt" />
    <node concept="3clFb_" id="I0mWogDyMf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createViewContainer" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="I0mWogDyMg" role="3clF47">
        <node concept="3cpWs8" id="ya5FdpXoUD" role="3cqZAp">
          <node concept="3cpWsn" id="ya5FdpXoUG" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="ya5FdpXoUH" role="1tU5fm">
              <ref role="3uigEE" to="jqfx:~ViewContainer" resolve="ViewContainer" />
            </node>
            <node concept="2ShNRf" id="ya5FdpXoUI" role="33vP2m">
              <node concept="1pGfFk" id="ya5FdpXoUJ" role="2ShVmc">
                <ref role="37wK5l" to="jqfx:~ViewContainer.&lt;init&gt;()" resolve="ViewContainer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="I0mWogDyMh" role="3cqZAp">
          <node concept="2OqwBi" id="I0mWogDyMi" role="3clFbG">
            <node concept="2OqwBi" id="I0mWogDyMj" role="2Oq$k0">
              <node concept="2OqwBi" id="ya5FdpXweF" role="2Oq$k0">
                <node concept="37vLTw" id="ya5FdpXp$j" role="2Oq$k0">
                  <ref role="3cqZAo" node="ya5FdpXoUG" resolve="result" />
                </node>
                <node concept="liA8E" id="ya5FdpXzxJ" role="2OqNvi">
                  <ref role="37wK5l" to="jqfx:~ViewContainer.root():jetbrains.jetpad.projectional.view.View" resolve="root" />
                </node>
              </node>
              <node concept="liA8E" id="I0mWogDyMk" role="2OqNvi">
                <ref role="37wK5l" to="jqfx:~View.focusable():jetbrains.jetpad.model.property.Property" resolve="focusable" />
              </node>
            </node>
            <node concept="liA8E" id="I0mWogDyMl" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="3clFbT" id="I0mWogDyMm" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="I0mWogDyMn" role="3cqZAp">
          <node concept="2OqwBi" id="I0mWogDyMo" role="3clFbG">
            <node concept="2OqwBi" id="I0mWogDyMp" role="2Oq$k0">
              <node concept="2OqwBi" id="ya5FdpXSB$" role="2Oq$k0">
                <node concept="37vLTw" id="ya5FdpXSwn" role="2Oq$k0">
                  <ref role="3cqZAo" node="ya5FdpXoUG" resolve="result" />
                </node>
                <node concept="liA8E" id="ya5FdpY2dK" role="2OqNvi">
                  <ref role="37wK5l" to="jqfx:~ViewContainer.root():jetbrains.jetpad.projectional.view.View" resolve="root" />
                </node>
              </node>
              <node concept="liA8E" id="I0mWogDyMq" role="2OqNvi">
                <ref role="37wK5l" to="jqfx:~View.focused():jetbrains.jetpad.model.property.ReadableProperty" resolve="focused" />
              </node>
            </node>
            <node concept="liA8E" id="I0mWogDyMr" role="2OqNvi">
              <ref role="37wK5l" to="x7mh:~EventSource.addHandler(jetbrains.jetpad.model.event.EventHandler):jetbrains.jetpad.base.Registration" resolve="addHandler" />
              <node concept="2ShNRf" id="I0mWogDyMs" role="37wK5m">
                <node concept="YeOm9" id="I0mWogDyMt" role="2ShVmc">
                  <node concept="1Y3b0j" id="I0mWogDyMu" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="x7mh:~EventHandler" resolve="EventHandler" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="I0mWogDyMv" role="1B3o_S" />
                    <node concept="3clFb_" id="I0mWogDyMw" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="onEvent" />
                      <property role="DiZV1" value="false" />
                      <property role="IEkAT" value="false" />
                      <node concept="3Tm1VV" id="I0mWogDyMx" role="1B3o_S" />
                      <node concept="3cqZAl" id="I0mWogDyMy" role="3clF45" />
                      <node concept="37vLTG" id="I0mWogDyMz" role="3clF46">
                        <property role="TrG5h" value="focused" />
                        <node concept="3uibUv" id="I0mWogDyM$" role="1tU5fm">
                          <ref role="3uigEE" to="lgza:~PropertyChangeEvent" resolve="PropertyChangeEvent" />
                          <node concept="3uibUv" id="I0mWogDyM_" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="I0mWogDyMA" role="3clF47">
                        <node concept="3clFbJ" id="I0mWogDyMB" role="3cqZAp">
                          <node concept="3clFbS" id="I0mWogDyMC" role="3clFbx">
                            <node concept="3clFbF" id="I0mWogDyMD" role="3cqZAp">
                              <node concept="1rXfSq" id="I0mWogDyME" role="3clFbG">
                                <ref role="37wK5l" node="6w0WfK8S4Ev" resolve="hidePatternEditor" />
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="I0mWogDyMF" role="3clFbw">
                            <node concept="2OqwBi" id="I0mWogDyMG" role="3fr31v">
                              <node concept="37vLTw" id="1iiFLkj5CrS" role="2Oq$k0">
                                <ref role="3cqZAo" node="I0mWogDyMz" resolve="focused" />
                              </node>
                              <node concept="liA8E" id="I0mWogDyMI" role="2OqNvi">
                                <ref role="37wK5l" to="lgza:~PropertyChangeEvent.getNewValue():java.lang.Object" resolve="getNewValue" />
                              </node>
                            </node>
                          </node>
                          <node concept="3eNFk2" id="7CaZq43pqo8" role="3eNLev">
                            <node concept="3fqX7Q" id="7CaZq43pqtG" role="3eO9$A">
                              <node concept="1rXfSq" id="7CaZq43pq$u" role="3fr31v">
                                <ref role="37wK5l" to="g51k:~EditorCell_Basic.isSelected():boolean" resolve="isSelected" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="7CaZq43pqoa" role="3eOfB_">
                              <node concept="3clFbF" id="7CaZq43ps7I" role="3cqZAp">
                                <node concept="2YIFZM" id="7CaZq43pt9A" role="3clFbG">
                                  <ref role="37wK5l" to="epaj:~SelectionUtil.selectCell(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,java.lang.String):void" resolve="selectCell" />
                                  <ref role="1Pybhc" to="epaj:~SelectionUtil" resolve="SelectionUtil" />
                                  <node concept="1rXfSq" id="7CaZq43pu1q" role="37wK5m">
                                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                                  </node>
                                  <node concept="1rXfSq" id="7CaZq43pvAj" role="37wK5m">
                                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
                                  </node>
                                  <node concept="1rXfSq" id="7CaZq43pxhM" role="37wK5m">
                                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getCellId():java.lang.String" resolve="getCellId" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="I0mWogDyMJ" role="2Ghqu4">
                      <ref role="3uigEE" to="lgza:~PropertyChangeEvent" resolve="PropertyChangeEvent" />
                      <node concept="3uibUv" id="I0mWogDyMK" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ya5FdpHtS0" role="3cqZAp">
          <node concept="2OqwBi" id="ya5FdpHtS1" role="3clFbG">
            <node concept="2OqwBi" id="ya5FdpYnS6" role="2Oq$k0">
              <node concept="37vLTw" id="ya5FdpYnO8" role="2Oq$k0">
                <ref role="3cqZAo" node="ya5FdpXoUG" resolve="result" />
              </node>
              <node concept="liA8E" id="ya5FdpYxJ0" role="2OqNvi">
                <ref role="37wK5l" to="jqfx:~ViewContainer.root():jetbrains.jetpad.projectional.view.View" resolve="root" />
              </node>
            </node>
            <node concept="liA8E" id="ya5FdpHtS7" role="2OqNvi">
              <ref role="37wK5l" to="jqfx:~View.addTrait(jetbrains.jetpad.projectional.view.ViewTrait):jetbrains.jetpad.base.Registration" resolve="addTrait" />
              <node concept="10M0yZ" id="ya5FdpHtS8" role="37wK5m">
                <ref role="3cqZAo" to="zdnc:~RootTrait.ROOT_TRAIT" resolve="ROOT_TRAIT" />
                <ref role="1PxDUh" to="zdnc:~RootTrait" resolve="RootTrait" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="ya5FdpZt4F" role="3cqZAp">
          <node concept="37vLTw" id="ya5FdpZCN2" role="3cqZAk">
            <ref role="3cqZAo" node="ya5FdpXoUG" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="I0mWogDyML" role="1B3o_S" />
      <node concept="3uibUv" id="ya5Fdq07mP" role="3clF45">
        <ref role="3uigEE" to="jqfx:~ViewContainer" resolve="ViewContainer" />
      </node>
    </node>
    <node concept="3clFb_" id="63$PQ33zKZe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hasConnectionDragFeedback" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="63$PQ33zKZh" role="3clF47">
        <node concept="3cpWs6" id="63$PQ33zUyd" role="3cqZAp">
          <node concept="2OqwBi" id="63$PQ33BsVn" role="3cqZAk">
            <node concept="37vLTw" id="4MoyDPOCaEl" role="2Oq$k0">
              <ref role="3cqZAo" node="4MoyDPO_YC2" resolve="myIsShowingDragFeedBack" />
            </node>
            <node concept="liA8E" id="63$PQ33BsVp" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="63$PQ33zAR9" role="1B3o_S" />
      <node concept="10P_77" id="63$PQ33$s0b" role="3clF45" />
    </node>
    <node concept="3clFb_" id="63$PQ33$hNW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="showConnectionDragFeedback" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="63$PQ33$NJV" role="3clF46">
        <property role="TrG5h" value="fromView" />
        <node concept="3uibUv" id="63$PQ33_32N" role="1tU5fm">
          <ref role="3uigEE" to="jqfx:~View" resolve="View" />
        </node>
      </node>
      <node concept="3clFbS" id="63$PQ33$hNZ" role="3clF47">
        <node concept="1gVbGN" id="63$PQ33Eb8H" role="3cqZAp">
          <node concept="3fqX7Q" id="4MoyDPOCH56" role="1gVkn0">
            <node concept="2OqwBi" id="4MoyDPOCKuA" role="3fr31v">
              <node concept="37vLTw" id="4MoyDPOCJW3" role="2Oq$k0">
                <ref role="3cqZAo" node="4MoyDPO_YC2" resolve="myIsShowingDragFeedBack" />
              </node>
              <node concept="liA8E" id="4MoyDPOEc3M" role="2OqNvi">
                <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="63$PQ33Dp1C" role="3cqZAp">
          <node concept="3cpWsn" id="63$PQ33Dp1D" role="3cpWs9">
            <property role="TrG5h" value="connection" />
            <node concept="3uibUv" id="4wVpOa1XhB8" role="1tU5fm">
              <ref role="3uigEE" to="zdnc:~PolyLineConnection" resolve="PolyLineConnection" />
            </node>
            <node concept="2ShNRf" id="63$PQ33DyJ_" role="33vP2m">
              <node concept="1pGfFk" id="4wVpOa1XzVZ" role="2ShVmc">
                <ref role="37wK5l" to="zdnc:~PolyLineConnection.&lt;init&gt;()" resolve="PolyLineConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="63$PQ33F0vO" role="3cqZAp">
          <node concept="2OqwBi" id="63$PQ33Fgnr" role="3clFbG">
            <node concept="2OqwBi" id="63$PQ33F44T" role="2Oq$k0">
              <node concept="37vLTw" id="63$PQ33F0vN" role="2Oq$k0">
                <ref role="3cqZAo" node="63$PQ33Dp1D" resolve="connection" />
              </node>
              <node concept="liA8E" id="63$PQ33FbjX" role="2OqNvi">
                <ref role="37wK5l" to="zdnc:~PolyLineConnection.fromView():jetbrains.jetpad.model.property.Property" resolve="fromView" />
              </node>
            </node>
            <node concept="liA8E" id="63$PQ33Fo7z" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="37vLTw" id="63$PQ33FtAq" role="37wK5m">
                <ref role="3cqZAo" node="63$PQ33$NJV" resolve="fromView" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="63$PQ33DaBy" role="3cqZAp">
          <node concept="37vLTI" id="4MoyDPOEpFK" role="3clFbG">
            <node concept="37vLTw" id="4MoyDPOEpRF" role="37vLTx">
              <ref role="3cqZAo" node="63$PQ33Dp1D" resolve="connection" />
            </node>
            <node concept="37vLTw" id="4MoyDPOEkxW" role="37vLTJ">
              <ref role="3cqZAo" node="4MoyDPOBWgu" resolve="myDragConnection" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1zD$HgvApWN" role="3cqZAp">
          <node concept="2OqwBi" id="1zD$HgvAzHl" role="3clFbG">
            <node concept="37vLTw" id="1zD$HgvApWM" role="2Oq$k0">
              <ref role="3cqZAo" node="4MoyDPO_YC2" resolve="myIsShowingDragFeedBack" />
            </node>
            <node concept="liA8E" id="1zD$HgvA_I6" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="3clFbT" id="1zD$HgvACs4" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="63$PQ33$qO0" role="3cqZAp">
          <node concept="37vLTw" id="63$PQ33DXyI" role="3cqZAk">
            <ref role="3cqZAo" node="63$PQ33Dp1D" resolve="connection" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="63$PQ33$8L7" role="1B3o_S" />
      <node concept="3uibUv" id="63$PQ33$hqs" role="3clF45">
        <ref role="3uigEE" to="zdnc:~PolyLineConnection" resolve="PolyLineConnection" />
      </node>
    </node>
    <node concept="3clFb_" id="63$PQ33_AXI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateConnectionDragFeedback" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="63$PQ33_PKx" role="3clF46">
        <property role="TrG5h" value="toLocation" />
        <node concept="3uibUv" id="63$PQ33_PKy" role="1tU5fm">
          <ref role="3uigEE" to="g88e:~Vector" resolve="Vector" />
        </node>
      </node>
      <node concept="3clFbS" id="63$PQ33_AXL" role="3clF47">
        <node concept="3cpWs8" id="4wVpOa1Und8" role="3cqZAp">
          <node concept="3cpWsn" id="4wVpOa1Und9" role="3cpWs9">
            <property role="TrG5h" value="targetView" />
            <node concept="3uibUv" id="4wVpOa1Und7" role="1tU5fm">
              <ref role="3uigEE" to="jqfx:~View" resolve="View" />
            </node>
            <node concept="2OqwBi" id="4wVpOa1Unda" role="33vP2m">
              <node concept="2OqwBi" id="4wVpOa1Undb" role="2Oq$k0">
                <node concept="2OqwBi" id="ya5FdpH1PY" role="2Oq$k0">
                  <node concept="1rXfSq" id="ya5FdpGSKk" role="2Oq$k0">
                    <ref role="37wK5l" node="2kUb22mGw4l" resolve="getRootMapper" />
                  </node>
                  <node concept="liA8E" id="ya5FdpH3zV" role="2OqNvi">
                    <ref role="37wK5l" to="sm7x:~Mapper.getTarget():java.lang.Object" resolve="getTarget" />
                  </node>
                </node>
                <node concept="liA8E" id="4wVpOa1Undf" role="2OqNvi">
                  <ref role="37wK5l" to="jqfx:~ViewContainer.contentRoot():jetbrains.jetpad.projectional.view.View" resolve="contentRoot" />
                </node>
              </node>
              <node concept="liA8E" id="4wVpOa1Undg" role="2OqNvi">
                <ref role="37wK5l" to="jqfx:~View.viewAt(jetbrains.jetpad.geometry.Vector):jetbrains.jetpad.projectional.view.View" resolve="viewAt" />
                <node concept="37vLTw" id="4wVpOa1Undh" role="37wK5m">
                  <ref role="3cqZAo" node="63$PQ33_PKx" resolve="toLocation" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="4wVpOa3bk_Q" role="3cqZAp">
          <node concept="3clFbS" id="4wVpOa3bk_S" role="2LFqv$">
            <node concept="3clFbF" id="4wVpOa3cKow" role="3cqZAp">
              <node concept="37vLTI" id="4wVpOa3cUNQ" role="3clFbG">
                <node concept="2OqwBi" id="4wVpOa3dckc" role="37vLTx">
                  <node concept="2OqwBi" id="4wVpOa3d4hQ" role="2Oq$k0">
                    <node concept="37vLTw" id="4wVpOa3cVdQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="4wVpOa1Und9" resolve="targetView" />
                    </node>
                    <node concept="liA8E" id="4wVpOa3d5ya" role="2OqNvi">
                      <ref role="37wK5l" to="jqfx:~View.parent():jetbrains.jetpad.model.property.ReadableProperty" resolve="parent" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4wVpOa3diQ2" role="2OqNvi">
                    <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                  </node>
                </node>
                <node concept="37vLTw" id="4wVpOa3cKov" role="37vLTJ">
                  <ref role="3cqZAo" node="4wVpOa1Und9" resolve="targetView" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4wVpOa3crOt" role="2$JKZa">
            <node concept="3y3z36" id="4wVpOa3czVX" role="3uHU7B">
              <node concept="10Nm6u" id="4wVpOa3cARo" role="3uHU7w" />
              <node concept="37vLTw" id="4wVpOa3ctwv" role="3uHU7B">
                <ref role="3cqZAo" node="4wVpOa1Und9" resolve="targetView" />
              </node>
            </node>
            <node concept="3clFbC" id="4wVpOa3c5GL" role="3uHU7w">
              <node concept="2OqwBi" id="4wVpOa3bOmt" role="3uHU7B">
                <node concept="2OqwBi" id="4wVpOa3b_9Z" role="2Oq$k0">
                  <node concept="37vLTw" id="4wVpOa3budp" role="2Oq$k0">
                    <ref role="3cqZAo" node="4wVpOa1Und9" resolve="targetView" />
                  </node>
                  <node concept="liA8E" id="4wVpOa3bEpd" role="2OqNvi">
                    <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                    <node concept="10M0yZ" id="4wVpOa3bNAL" role="37wK5m">
                      <ref role="1PxDUh" node="5stQbxMM_mL" resolve="JetpadUtils" />
                      <ref role="3cqZAo" node="4wVpOa3fRTD" resolve="CONNECTABLE" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4wVpOa3bWE7" role="2OqNvi">
                  <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                </node>
              </node>
              <node concept="10Nm6u" id="4wVpOa3c7ob" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4wVpOa3hcI4" role="3cqZAp">
          <node concept="3clFbS" id="4wVpOa3hcI7" role="3clFbx">
            <node concept="3clFbF" id="4wVpOa35xdG" role="3cqZAp">
              <node concept="2OqwBi" id="4wVpOa3678o" role="3clFbG">
                <node concept="2OqwBi" id="4wVpOa35W7d" role="2Oq$k0">
                  <node concept="37vLTw" id="4MoyDPOEfKu" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MoyDPOBWgu" resolve="myDragConnection" />
                  </node>
                  <node concept="liA8E" id="4wVpOa360uY" role="2OqNvi">
                    <ref role="37wK5l" to="zdnc:~PolyLineConnection.toView():jetbrains.jetpad.model.property.Property" resolve="toView" />
                  </node>
                </node>
                <node concept="liA8E" id="4wVpOa36a_d" role="2OqNvi">
                  <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
                  <node concept="37vLTw" id="4wVpOa3ll28" role="37wK5m">
                    <ref role="3cqZAo" node="4wVpOa1Und9" resolve="targetView" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4wVpOa3hR7o" role="3clFbw">
            <node concept="2OqwBi" id="4wVpOa3icVx" role="3uHU7w">
              <node concept="2OqwBi" id="4wVpOa3hZ32" role="2Oq$k0">
                <node concept="37vLTw" id="4wVpOa3hSMm" role="2Oq$k0">
                  <ref role="3cqZAo" node="4wVpOa1Und9" resolve="targetView" />
                </node>
                <node concept="liA8E" id="4wVpOa3i30e" role="2OqNvi">
                  <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                  <node concept="10M0yZ" id="4wVpOa3icaP" role="37wK5m">
                    <ref role="1PxDUh" node="5stQbxMM_mL" resolve="JetpadUtils" />
                    <ref role="3cqZAo" node="4wVpOa3fRTD" resolve="CONNECTABLE" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4wVpOa3ijQ1" role="2OqNvi">
                <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
              </node>
            </node>
            <node concept="3y3z36" id="4wVpOa3htyG" role="3uHU7B">
              <node concept="37vLTw" id="4wVpOa3hmzI" role="3uHU7B">
                <ref role="3cqZAo" node="4wVpOa1Und9" resolve="targetView" />
              </node>
              <node concept="10Nm6u" id="4wVpOa3hBZr" role="3uHU7w" />
            </node>
          </node>
          <node concept="9aQIb" id="4wVpOa3iK3c" role="9aQIa">
            <node concept="3clFbS" id="4wVpOa3iK3d" role="9aQI4">
              <node concept="3clFbF" id="4wVpOa1Y5lI" role="3cqZAp">
                <node concept="2OqwBi" id="4wVpOa1YB1s" role="3clFbG">
                  <node concept="2OqwBi" id="4wVpOa1Yv4q" role="2Oq$k0">
                    <node concept="37vLTw" id="4MoyDPOErZE" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MoyDPOBWgu" resolve="myDragConnection" />
                    </node>
                    <node concept="liA8E" id="4wVpOa1YxdP" role="2OqNvi">
                      <ref role="37wK5l" to="zdnc:~PolyLineConnection.toView():jetbrains.jetpad.model.property.Property" resolve="toView" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4wVpOa1YIIs" role="2OqNvi">
                    <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
                    <node concept="10Nm6u" id="4wVpOa3llxQ" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="63$PQ33Gpqq" role="3cqZAp">
          <node concept="2OqwBi" id="63$PQ33HjsH" role="3clFbG">
            <node concept="2OqwBi" id="63$PQ33H9u3" role="2Oq$k0">
              <node concept="37vLTw" id="4MoyDPOC_N1" role="2Oq$k0">
                <ref role="3cqZAo" node="4MoyDPOBWgu" resolve="myDragConnection" />
              </node>
              <node concept="liA8E" id="63$PQ33HdZk" role="2OqNvi">
                <ref role="37wK5l" to="zdnc:~PolyLineConnection.toLocation():jetbrains.jetpad.model.property.Property" resolve="toLocation" />
              </node>
            </node>
            <node concept="liA8E" id="63$PQ33Hqsu" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="37vLTw" id="63$PQ33Hwhq" role="37wK5m">
                <ref role="3cqZAo" node="63$PQ33_PKx" resolve="toLocation" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="63$PQ33_uq8" role="1B3o_S" />
      <node concept="3cqZAl" id="63$PQ33_AbX" role="3clF45" />
    </node>
    <node concept="3clFb_" id="63$PQ33Ahg3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hideConnectionDragFeedback" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3NXJmdrBFZL" role="1B3o_S" />
      <node concept="3clFbS" id="63$PQ33Ahg6" role="3clF47">
        <node concept="3clFbF" id="63$PQ33Hxj$" role="3cqZAp">
          <node concept="2OqwBi" id="63$PQ33HyO6" role="3clFbG">
            <node concept="37vLTw" id="4MoyDPOEhIy" role="2Oq$k0">
              <ref role="3cqZAo" node="4MoyDPO_YC2" resolve="myIsShowingDragFeedBack" />
            </node>
            <node concept="liA8E" id="63$PQ33HP6T" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="3clFbT" id="4MoyDPOEjp9" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="63$PQ33Aguh" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1ARPSJOicF0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="syncDiagramElements" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1ARPSJOiD28" role="3clF46">
        <property role="TrG5h" value="elements" />
        <node concept="3uibUv" id="1ARPSJOiZyD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3Tqbb2" id="1ARPSJOj0JC" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1ARPSJOjllZ" role="3clF46">
        <property role="TrG5h" value="blocksIterator" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1ARPSJOjlm0" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~ListIterator" resolve="ListIterator" />
          <node concept="3Tqbb2" id="1ARPSJOjlm1" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1ARPSJOjCyk" role="3clF46">
        <property role="TrG5h" value="existingBlocks" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1ARPSJOjCyl" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3Tqbb2" id="1ARPSJOjCym" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1ARPSJOjOpc" role="3clF46">
        <property role="TrG5h" value="connectorsIterator" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1ARPSJOjOpd" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~ListIterator" resolve="ListIterator" />
          <node concept="3Tqbb2" id="1ARPSJOjOpe" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1ARPSJOjOpf" role="3clF46">
        <property role="TrG5h" value="existingConnectors" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1ARPSJOjOpg" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3Tqbb2" id="1ARPSJOjOph" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="1ARPSJOicFb" role="3clF47">
        <node concept="2Gpval" id="2nFrfBfPosx" role="3cqZAp">
          <node concept="2GrKxI" id="2nFrfBfPosz" role="2Gsz3X">
            <property role="TrG5h" value="nextElement" />
          </node>
          <node concept="3clFbS" id="2nFrfBfPosB" role="2LFqv$">
            <node concept="3cpWs8" id="1ARPSJO4mKw" role="3cqZAp">
              <node concept="3cpWsn" id="1ARPSJO4mKx" role="3cpWs9">
                <property role="TrG5h" value="cell" />
                <node concept="3uibUv" id="1ARPSJO4mKy" role="1tU5fm">
                  <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                </node>
                <node concept="2OqwBi" id="1ARPSJO4mKz" role="33vP2m">
                  <node concept="2OqwBi" id="nJ7v7_ytp7" role="2Oq$k0">
                    <node concept="2OqwBi" id="nJ7v7_ysbU" role="2Oq$k0">
                      <node concept="2OqwBi" id="nJ7v7_yrbw" role="2Oq$k0">
                        <node concept="1rXfSq" id="1ARPSJO4mK$" role="2Oq$k0">
                          <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                        </node>
                        <node concept="liA8E" id="nJ7v7_ys5M" role="2OqNvi">
                          <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                        </node>
                      </node>
                      <node concept="liA8E" id="nJ7v7_ytlL" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorComponent.getUpdater():jetbrains.mps.openapi.editor.update.Updater" resolve="getUpdater" />
                      </node>
                    </node>
                    <node concept="liA8E" id="nJ7v7_ytMz" role="2OqNvi">
                      <ref role="37wK5l" to="22ra:~Updater.getCurrentUpdateSession():jetbrains.mps.openapi.editor.update.UpdateSession" resolve="getCurrentUpdateSession" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1ARPSJO4mK_" role="2OqNvi">
                    <ref role="37wK5l" to="22ra:~UpdateSession.updateChildNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.openapi.editor.cells.EditorCell" resolve="updateChildNodeCell" />
                    <node concept="2GrUjf" id="1ARPSJO4mKA" role="37wK5m">
                      <ref role="2Gs0qQ" node="2nFrfBfPosz" resolve="nextElement" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1ARPSJOeLas" role="3cqZAp">
              <node concept="3clFbS" id="1ARPSJOeLav" role="3clFbx">
                <node concept="3N13vt" id="1ARPSJOeOVR" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="1ARPSJOeNwY" role="3clFbw">
                <node concept="3fqX7Q" id="1ARPSJOeLS1" role="3uHU7B">
                  <node concept="2ZW3vV" id="1ARPSJOeNiA" role="3fr31v">
                    <node concept="3uibUv" id="1ARPSJOeNml" role="2ZW6by">
                      <ref role="3uigEE" node="7RwPgCWdCTe" resolve="BlockCell" />
                    </node>
                    <node concept="37vLTw" id="1ARPSJOeM0R" role="2ZW6bz">
                      <ref role="3cqZAo" node="1ARPSJO4mKx" resolve="cell" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="1ARPSJOeNCl" role="3uHU7w">
                  <node concept="2ZW3vV" id="1ARPSJOeNCm" role="3fr31v">
                    <node concept="3uibUv" id="1ARPSJOeNGR" role="2ZW6by">
                      <ref role="3uigEE" node="5xniKJ5D5Sh" resolve="ConnectorCell" />
                    </node>
                    <node concept="37vLTw" id="1ARPSJOeNCo" role="2ZW6bz">
                      <ref role="3cqZAo" node="1ARPSJO4mKx" resolve="cell" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1ARPSJOeQWp" role="3cqZAp">
              <node concept="1rXfSq" id="1ARPSJOeQWo" role="3clFbG">
                <ref role="37wK5l" node="1ARPSJOkA_A" resolve="syncToNextNode" />
                <node concept="3K4zz7" id="1ARPSJOeVwP" role="37wK5m">
                  <node concept="37vLTw" id="1ARPSJOeZPL" role="3K4GZi">
                    <ref role="3cqZAo" node="1ARPSJOjOpc" resolve="connectorsIterator" />
                  </node>
                  <node concept="2ZW3vV" id="1ARPSJOeX_C" role="3K4Cdx">
                    <node concept="3uibUv" id="1ARPSJOeX_D" role="2ZW6by">
                      <ref role="3uigEE" node="7RwPgCWdCTe" resolve="BlockCell" />
                    </node>
                    <node concept="37vLTw" id="1ARPSJOeX_E" role="2ZW6bz">
                      <ref role="3cqZAo" node="1ARPSJO4mKx" resolve="cell" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1ARPSJOeZCB" role="3K4E3e">
                    <ref role="3cqZAo" node="1ARPSJOjllZ" resolve="blocksIterator" />
                  </node>
                </node>
                <node concept="3K4zz7" id="1ARPSJOf0dL" role="37wK5m">
                  <node concept="37vLTw" id="1ARPSJOf2nH" role="3K4GZi">
                    <ref role="3cqZAo" node="1ARPSJOjOpf" resolve="existingConnectors" />
                  </node>
                  <node concept="2ZW3vV" id="1ARPSJOf0dN" role="3K4Cdx">
                    <node concept="3uibUv" id="1ARPSJOf0dO" role="2ZW6by">
                      <ref role="3uigEE" node="7RwPgCWdCTe" resolve="BlockCell" />
                    </node>
                    <node concept="37vLTw" id="1ARPSJOf0dP" role="2ZW6bz">
                      <ref role="3cqZAo" node="1ARPSJO4mKx" resolve="cell" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1ARPSJOf0xB" role="3K4E3e">
                    <ref role="3cqZAo" node="1ARPSJOjCyk" resolve="existingBlocks" />
                  </node>
                </node>
                <node concept="2GrUjf" id="1ARPSJOf3pq" role="37wK5m">
                  <ref role="2Gs0qQ" node="2nFrfBfPosz" resolve="nextElement" />
                </node>
                <node concept="37vLTw" id="1ARPSJOf4VE" role="37wK5m">
                  <ref role="3cqZAo" node="1ARPSJO4mKx" resolve="cell" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1ARPSJOlhwU" role="2GsD0m">
            <ref role="3cqZAo" node="1ARPSJOiD28" resolve="elements" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1ARPSJOicFA" role="1B3o_S" />
      <node concept="3cqZAl" id="1ARPSJOicFB" role="3clF45" />
    </node>
    <node concept="312cEu" id="zxzBEO4rCA" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="DiagramSubstituteActionWraper" />
      <node concept="3clFbW" id="zxzBEO5Vc5" role="jymVt">
        <node concept="3cqZAl" id="zxzBEO5Vc7" role="3clF45" />
        <node concept="3Tm6S6" id="zxzBEO5Vc8" role="1B3o_S" />
        <node concept="3clFbS" id="zxzBEO5Vc9" role="3clF47">
          <node concept="XkiVB" id="zxzBEO66Iz" role="3cqZAp">
            <ref role="37wK5l" to="zce0:~NodeSubstituteActionWrapper.&lt;init&gt;(jetbrains.mps.openapi.editor.cells.SubstituteAction)" resolve="NodeSubstituteActionWrapper" />
            <node concept="37vLTw" id="zxzBEO66OC" role="37wK5m">
              <ref role="3cqZAo" node="zxzBEO66dD" resolve="action" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="zxzBEO66dD" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="zxzBEO66dC" role="1tU5fm">
            <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="zxzBEO4E2b" role="1zkMxy">
        <ref role="3uigEE" to="zce0:~NodeSubstituteActionWrapper" resolve="NodeSubstituteActionWrapper" />
      </node>
    </node>
    <node concept="2tJIrI" id="TRRVvfbMcQ" role="jymVt" />
    <node concept="312cEu" id="4wVpOa2uEoK" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="ConnectionInfo" />
      <node concept="3Tm1VV" id="3NXJmdrxSLs" role="1B3o_S" />
      <node concept="2RhdJD" id="4wVpOa2ITzW" role="jymVt">
        <property role="2RkwnN" value="fromNode" />
        <node concept="3Tm1VV" id="4wVpOa2ITzX" role="1B3o_S" />
        <node concept="2RoN1w" id="4wVpOa2ITzY" role="2RnVtd">
          <node concept="3wEZqW" id="4wVpOa2ITzZ" role="3wFrgM" />
          <node concept="3xqBd$" id="4wVpOa2IT$0" role="3xrYvX">
            <node concept="3Tm6S6" id="4wVpOa2IT$1" role="3xqFEP" />
          </node>
        </node>
        <node concept="3Tqbb2" id="4wVpOa2J7BP" role="2RkE6I" />
      </node>
      <node concept="2RhdJD" id="4wVpOa2Jpxw" role="jymVt">
        <property role="2RkwnN" value="fromId" />
        <node concept="3Tm1VV" id="4wVpOa2Jpxx" role="1B3o_S" />
        <node concept="2RoN1w" id="4wVpOa2Jpxy" role="2RnVtd">
          <node concept="3wEZqW" id="4wVpOa2Jpxz" role="3wFrgM" />
          <node concept="3xqBd$" id="4wVpOa2Jpx$" role="3xrYvX">
            <node concept="3Tm6S6" id="4wVpOa2Jpx_" role="3xqFEP" />
          </node>
        </node>
        <node concept="3uibUv" id="4wVpOa2JB_$" role="2RkE6I">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2RhdJD" id="4wVpOa2JVpa" role="jymVt">
        <property role="2RkwnN" value="toNode" />
        <node concept="3Tm1VV" id="4wVpOa2JVpb" role="1B3o_S" />
        <node concept="2RoN1w" id="4wVpOa2JVpc" role="2RnVtd">
          <node concept="3wEZqW" id="4wVpOa2JVpd" role="3wFrgM" />
          <node concept="3xqBd$" id="4wVpOa2JVpe" role="3xrYvX">
            <node concept="3Tm6S6" id="4wVpOa2JVpf" role="3xqFEP" />
          </node>
        </node>
        <node concept="3Tqbb2" id="4wVpOa2K9tq" role="2RkE6I" />
      </node>
      <node concept="2RhdJD" id="4wVpOa2Kt6S" role="jymVt">
        <property role="2RkwnN" value="toId" />
        <node concept="3Tm1VV" id="4wVpOa2Kt6T" role="1B3o_S" />
        <node concept="2RoN1w" id="4wVpOa2Kt6U" role="2RnVtd">
          <node concept="3wEZqW" id="4wVpOa2Kt6V" role="3wFrgM" />
          <node concept="3xqBd$" id="4wVpOa2Kt6W" role="3xrYvX">
            <node concept="3Tm6S6" id="4wVpOa2Kt6X" role="3xqFEP" />
          </node>
        </node>
        <node concept="3uibUv" id="4wVpOa2KFhG" role="2RkE6I">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2tJIrI" id="4wVpOa2zIzL" role="jymVt" />
      <node concept="3clFbW" id="4wVpOa2uTXc" role="jymVt">
        <node concept="3Tm1VV" id="zxzBENS9zw" role="1B3o_S" />
        <node concept="3cqZAl" id="4wVpOa2uTXe" role="3clF45" />
        <node concept="3clFbS" id="4wVpOa2uTXg" role="3clF47">
          <node concept="3clFbJ" id="4wVpOa2vbX6" role="3cqZAp">
            <node concept="3clFbS" id="4wVpOa2vbX7" role="3clFbx">
              <node concept="3cpWs6" id="4wVpOa2x8hh" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="4wVpOa2vbXa" role="3clFbw">
              <node concept="10Nm6u" id="4wVpOa2vbXb" role="3uHU7w" />
              <node concept="37vLTw" id="TRRVvePGh6" role="3uHU7B">
                <ref role="3cqZAo" node="4MoyDPOBWgu" resolve="myDragConnection" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4wVpOa2vbXd" role="3cqZAp" />
          <node concept="3cpWs8" id="4wVpOa2vbXe" role="3cqZAp">
            <node concept="3cpWsn" id="4wVpOa2vbXf" role="3cpWs9">
              <property role="TrG5h" value="fromView" />
              <node concept="3uibUv" id="4wVpOa2vbXg" role="1tU5fm">
                <ref role="3uigEE" to="jqfx:~View" resolve="View" />
              </node>
              <node concept="2OqwBi" id="4wVpOa2vbXh" role="33vP2m">
                <node concept="2OqwBi" id="4wVpOa2vbXi" role="2Oq$k0">
                  <node concept="37vLTw" id="TRRVvePGh7" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MoyDPOBWgu" resolve="myDragConnection" />
                  </node>
                  <node concept="liA8E" id="4wVpOa2vbXk" role="2OqNvi">
                    <ref role="37wK5l" to="zdnc:~PolyLineConnection.fromView():jetbrains.jetpad.model.property.Property" resolve="fromView" />
                  </node>
                </node>
                <node concept="liA8E" id="4wVpOa2vbXl" role="2OqNvi">
                  <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4wVpOa2vbXm" role="3cqZAp">
            <node concept="3cpWsn" id="4wVpOa2vbXn" role="3cpWs9">
              <property role="TrG5h" value="toView" />
              <node concept="3uibUv" id="4wVpOa2vbXo" role="1tU5fm">
                <ref role="3uigEE" to="jqfx:~View" resolve="View" />
              </node>
              <node concept="2OqwBi" id="4wVpOa2vbXp" role="33vP2m">
                <node concept="2OqwBi" id="4wVpOa2vbXq" role="2Oq$k0">
                  <node concept="37vLTw" id="TRRVvePGh5" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MoyDPOBWgu" resolve="myDragConnection" />
                  </node>
                  <node concept="liA8E" id="4wVpOa2vbXs" role="2OqNvi">
                    <ref role="37wK5l" to="zdnc:~PolyLineConnection.toView():jetbrains.jetpad.model.property.Property" resolve="toView" />
                  </node>
                </node>
                <node concept="liA8E" id="4wVpOa2vbXt" role="2OqNvi">
                  <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4wVpOa2vbXu" role="3cqZAp">
            <node concept="3clFbS" id="4wVpOa2vbXv" role="3clFbx">
              <node concept="3cpWs6" id="4wVpOa2xKBP" role="3cqZAp" />
            </node>
            <node concept="22lmx$" id="4wVpOa2vbXy" role="3clFbw">
              <node concept="3clFbC" id="4wVpOa2vbXz" role="3uHU7w">
                <node concept="10Nm6u" id="4wVpOa2vbX$" role="3uHU7w" />
                <node concept="37vLTw" id="4wVpOa2vbX_" role="3uHU7B">
                  <ref role="3cqZAo" node="4wVpOa2vbXn" resolve="toView" />
                </node>
              </node>
              <node concept="3clFbC" id="4wVpOa2vbXA" role="3uHU7B">
                <node concept="37vLTw" id="4wVpOa2vbXB" role="3uHU7B">
                  <ref role="3cqZAo" node="4wVpOa2vbXf" resolve="fromView" />
                </node>
                <node concept="10Nm6u" id="4wVpOa2vbXC" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4wVpOa2vbXD" role="3cqZAp" />
          <node concept="3clFbF" id="4wVpOa2$6GD" role="3cqZAp">
            <node concept="37vLTI" id="4wVpOa2_9zY" role="3clFbG">
              <node concept="338YkY" id="4wVpOa2TMwM" role="37vLTJ">
                <ref role="338YkT" node="4wVpOa2ITzW" resolve="fromNode" />
              </node>
              <node concept="2OqwBi" id="4wVpOa2vbXH" role="37vLTx">
                <node concept="2OqwBi" id="4wVpOa2vbXI" role="2Oq$k0">
                  <node concept="37vLTw" id="4wVpOa2vbXJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="4wVpOa2vbXf" resolve="fromView" />
                  </node>
                  <node concept="liA8E" id="4wVpOa2vbXK" role="2OqNvi">
                    <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                    <node concept="10M0yZ" id="4wVpOa2vbXL" role="37wK5m">
                      <ref role="1PxDUh" node="5stQbxMM_mL" resolve="JetpadUtils" />
                      <ref role="3cqZAo" node="BSIQ$y$9m$" resolve="SOURCE" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4wVpOa2vbXM" role="2OqNvi">
                  <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4wVpOa2$t8I" role="3cqZAp">
            <node concept="37vLTI" id="4wVpOa2_NNg" role="3clFbG">
              <node concept="338YkY" id="4wVpOa2TV9j" role="37vLTJ">
                <ref role="338YkT" node="4wVpOa2Jpxw" resolve="fromId" />
              </node>
              <node concept="2OqwBi" id="4wVpOa3o2Pl" role="37vLTx">
                <node concept="2OqwBi" id="4wVpOa2vc3V" role="2Oq$k0">
                  <node concept="37vLTw" id="4wVpOa2vc3W" role="2Oq$k0">
                    <ref role="3cqZAo" node="4wVpOa2vbXf" resolve="fromView" />
                  </node>
                  <node concept="liA8E" id="4wVpOa2vc3X" role="2OqNvi">
                    <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                    <node concept="10M0yZ" id="4wVpOa2vc3Y" role="37wK5m">
                      <ref role="3cqZAo" node="6e64XHXvkE7" resolve="ID" />
                      <ref role="1PxDUh" node="5stQbxMM_mL" resolve="JetpadUtils" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4wVpOa3og_1" role="2OqNvi">
                  <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4wVpOa2$hWG" role="3cqZAp">
            <node concept="37vLTI" id="4wVpOa2_jIf" role="3clFbG">
              <node concept="338YkY" id="4wVpOa2U3PH" role="37vLTJ">
                <ref role="338YkT" node="4wVpOa2JVpa" resolve="toNode" />
              </node>
              <node concept="2OqwBi" id="4wVpOa2vc44" role="37vLTx">
                <node concept="2OqwBi" id="4wVpOa2vc45" role="2Oq$k0">
                  <node concept="37vLTw" id="4wVpOa2vc46" role="2Oq$k0">
                    <ref role="3cqZAo" node="4wVpOa2vbXn" resolve="toView" />
                  </node>
                  <node concept="liA8E" id="4wVpOa2vc47" role="2OqNvi">
                    <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                    <node concept="10M0yZ" id="4wVpOa2vc48" role="37wK5m">
                      <ref role="1PxDUh" node="5stQbxMM_mL" resolve="JetpadUtils" />
                      <ref role="3cqZAo" node="BSIQ$y$9m$" resolve="SOURCE" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4wVpOa2vc49" role="2OqNvi">
                  <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4wVpOa2$Cln" role="3cqZAp">
            <node concept="37vLTI" id="4wVpOa2_OzB" role="3clFbG">
              <node concept="338YkY" id="4wVpOa2UcxQ" role="37vLTJ">
                <ref role="338YkT" node="4wVpOa2Kt6S" resolve="toId" />
              </node>
              <node concept="2OqwBi" id="4wVpOa3osOr" role="37vLTx">
                <node concept="2OqwBi" id="4wVpOa2vc4f" role="2Oq$k0">
                  <node concept="37vLTw" id="4wVpOa2vc4g" role="2Oq$k0">
                    <ref role="3cqZAo" node="4wVpOa2vbXn" resolve="toView" />
                  </node>
                  <node concept="liA8E" id="4wVpOa2vc4h" role="2OqNvi">
                    <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                    <node concept="10M0yZ" id="4wVpOa2vc4i" role="37wK5m">
                      <ref role="1PxDUh" node="5stQbxMM_mL" resolve="JetpadUtils" />
                      <ref role="3cqZAo" node="6e64XHXvkE7" resolve="ID" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4wVpOa3oILL" role="2OqNvi">
                  <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4wVpOa2QzYK" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isValid" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3clFbS" id="4wVpOa2QzYN" role="3clF47">
          <node concept="3cpWs6" id="4wVpOa2QHDh" role="3cqZAp">
            <node concept="1Wc70l" id="4wVpOa2R3CR" role="3cqZAk">
              <node concept="3y3z36" id="4wVpOa2Rcf$" role="3uHU7w">
                <node concept="338YkY" id="5zlO6Ou9XA$" role="3uHU7B">
                  <ref role="338YkT" node="4wVpOa2JVpa" resolve="toNode" />
                </node>
                <node concept="10Nm6u" id="4wVpOa2RfXc" role="3uHU7w" />
              </node>
              <node concept="3y3z36" id="4wVpOa2QQll" role="3uHU7B">
                <node concept="338YkY" id="5zlO6Ou9Ys8" role="3uHU7B">
                  <ref role="338YkT" node="4wVpOa2ITzW" resolve="fromNode" />
                </node>
                <node concept="10Nm6u" id="4wVpOa2QU2e" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4wVpOa2QqrX" role="1B3o_S" />
        <node concept="10P_77" id="4wVpOa2QzY0" role="3clF45" />
      </node>
    </node>
    <node concept="2tJIrI" id="zxzBENXV0N" role="jymVt" />
    <node concept="2tJIrI" id="zxzBEO2C0X" role="jymVt" />
    <node concept="3Tm1VV" id="7efWZtHWeDl" role="1B3o_S" />
    <node concept="3uibUv" id="6NctU1I0YCR" role="1zkMxy">
      <ref role="3uigEE" node="4EnhxLZX04P" resolve="AbstractJetpadCell" />
    </node>
    <node concept="3uibUv" id="7efWZtHW$5k" role="EKbjA">
      <ref role="3uigEE" to="exr9:~EditorCell_WithComponent" resolve="EditorCell_WithComponent" />
    </node>
    <node concept="3uibUv" id="ya5FdpUB_$" role="EKbjA">
      <ref role="3uigEE" to="sm7x:~MapperFactory" resolve="MapperFactory" />
      <node concept="3Tqbb2" id="ya5FdqfNpi" role="11_B2D" />
      <node concept="3uibUv" id="ya5FdpVrvP" role="11_B2D">
        <ref role="3uigEE" to="zdnc:~DiagramView" resolve="DiagramView" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7RwPgCWdCTe">
    <property role="TrG5h" value="BlockCell" />
    <property role="1sVAO0" value="true" />
    <node concept="3uibUv" id="2eSMEaVAOY9" role="1zkMxy">
      <ref role="3uigEE" node="4EnhxLZX04P" resolve="AbstractJetpadCell" />
    </node>
    <node concept="3clFbW" id="7RwPgCWdL1G" role="jymVt">
      <node concept="37vLTG" id="75sA8i0mbTB" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="75sA8i0mbTC" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="75sA8i0mbTD" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tqbb2" id="7RwPgCWdLXf" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7RwPgCWdL1I" role="3clF45" />
      <node concept="3Tm1VV" id="7RwPgCWdL1J" role="1B3o_S" />
      <node concept="3clFbS" id="7RwPgCWdL1K" role="3clF47">
        <node concept="XkiVB" id="7RwPgCWdMiZ" role="3cqZAp">
          <ref role="37wK5l" node="4EnhxLZX43r" resolve="AbstractJetpadCell" />
          <node concept="37vLTw" id="7RwPgCWdMjl" role="37wK5m">
            <ref role="3cqZAo" node="75sA8i0mbTB" resolve="editorContext" />
          </node>
          <node concept="37vLTw" id="7RwPgCWdMkA" role="37wK5m">
            <ref role="3cqZAo" node="75sA8i0mbTD" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4EnhxM0uiSt" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createMapper" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4EnhxM0uiSu" role="1B3o_S" />
      <node concept="3uibUv" id="4EnhxM0uiSv" role="3clF45">
        <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
        <node concept="3Tqbb2" id="4EnhxM0uiSw" role="11_B2D" />
        <node concept="3uibUv" id="4EnhxM0uiSz" role="11_B2D">
          <ref role="3uigEE" to="zdnc:~DiagramNodeView" resolve="DiagramNodeView" />
        </node>
      </node>
      <node concept="3clFbS" id="4EnhxM0uiS$" role="3clF47" />
    </node>
    <node concept="3clFb_" id="10CJ9tWr14l" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createDecorationMapper" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="10CJ9tWr14m" role="1B3o_S" />
      <node concept="3uibUv" id="10CJ9tWr14n" role="3clF45">
        <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
        <node concept="3Tqbb2" id="10CJ9tWr14o" role="11_B2D" />
        <node concept="3uibUv" id="1gT9jIw$BjB" role="11_B2D">
          <ref role="3uigEE" to="8n5u:3HZBsOQyWBp" resolve="NodeDecoratorView" />
        </node>
      </node>
      <node concept="3clFbS" id="10CJ9tWr14q" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1xt3dAOphbs" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="moveView" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="6PdUmI$bd0S" role="3clF46">
        <property role="TrG5h" value="xProperty" />
        <node concept="3uibUv" id="6PdUmI$bd0T" role="1tU5fm">
          <ref role="3uigEE" node="1xt3dANZPZG" resolve="ReadableModelProperty" />
          <node concept="3uibUv" id="6PdUmI$bd0U" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6PdUmI$bd0V" role="3clF46">
        <property role="TrG5h" value="yProperty" />
        <node concept="3uibUv" id="6PdUmI$bd0W" role="1tU5fm">
          <ref role="3uigEE" node="1xt3dANZPZG" resolve="ReadableModelProperty" />
          <node concept="3uibUv" id="6PdUmI$bd0X" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1xt3dAOphbv" role="3clF47">
        <node concept="3SKdUt" id="70DU5_bhIRt" role="3cqZAp">
          <node concept="3SKdUq" id="70DU5_bhISn" role="3SKWNk">
            <property role="3SKdUp" value="TODO: not used? remove? " />
          </node>
        </node>
        <node concept="3cpWs8" id="1xt3dAOpits" role="3cqZAp">
          <node concept="3cpWsn" id="1xt3dAOpitt" role="3cpWs9">
            <property role="TrG5h" value="cell" />
            <node concept="3uibUv" id="1xt3dAOpitu" role="1tU5fm">
              <ref role="3uigEE" node="7efWZtHWeDk" resolve="DiagramCell" />
            </node>
            <node concept="1rXfSq" id="1xt3dAOpkiR" role="33vP2m">
              <ref role="37wK5l" node="63$PQ33inmu" resolve="getDiagramCell" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xt3dAOpitG" role="3cqZAp">
          <node concept="3clFbS" id="1xt3dAOpitH" role="3clFbx">
            <node concept="3cpWs6" id="1xt3dAOpitI" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1xt3dAOpitJ" role="3clFbw">
            <node concept="10Nm6u" id="1xt3dAOpitK" role="3uHU7w" />
            <node concept="37vLTw" id="1xt3dAOpitL" role="3uHU7B">
              <ref role="3cqZAo" node="1xt3dAOpitt" resolve="cell" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1xt3dAOpitM" role="3cqZAp">
          <node concept="3cpWsn" id="1xt3dAOpitN" role="3cpWs9">
            <property role="TrG5h" value="descendantMapper" />
            <node concept="3uibUv" id="1xt3dAOpitO" role="1tU5fm">
              <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
              <node concept="3qUtgH" id="1xt3dAOpitP" role="11_B2D">
                <node concept="3Tqbb2" id="1xt3dAOpitQ" role="3qUvdb" />
              </node>
              <node concept="3qTvmN" id="1xt3dAOpitR" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="1xt3dAOpitS" role="33vP2m">
              <node concept="2OqwBi" id="1xt3dAOpitT" role="2Oq$k0">
                <node concept="37vLTw" id="1xt3dAOpitU" role="2Oq$k0">
                  <ref role="3cqZAo" node="1xt3dAOpitt" resolve="cell" />
                </node>
                <node concept="liA8E" id="1xt3dAOpitV" role="2OqNvi">
                  <ref role="37wK5l" node="2kUb22mGw4l" resolve="getRootMapper" />
                </node>
              </node>
              <node concept="liA8E" id="1xt3dAOpitW" role="2OqNvi">
                <ref role="37wK5l" to="sm7x:~Mapper.getDescendantMapper(java.lang.Object):jetbrains.jetpad.mapper.Mapper" resolve="getDescendantMapper" />
                <node concept="1rXfSq" id="1xt3dAOpitX" role="37wK5m">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xt3dAOpitY" role="3cqZAp">
          <node concept="3clFbS" id="1xt3dAOpitZ" role="3clFbx">
            <node concept="3clFbF" id="1xt3dAOpiu0" role="3cqZAp">
              <node concept="2OqwBi" id="1xt3dAOpiu1" role="3clFbG">
                <node concept="1eOMI4" id="1xt3dAOpiu2" role="2Oq$k0">
                  <node concept="10QFUN" id="1xt3dAOpiu3" role="1eOMHV">
                    <node concept="2OqwBi" id="1xt3dAOpiu4" role="10QFUP">
                      <node concept="37vLTw" id="1xt3dAOpiu5" role="2Oq$k0">
                        <ref role="3cqZAo" node="1xt3dAOpitN" resolve="descendantMapper" />
                      </node>
                      <node concept="liA8E" id="1xt3dAOpiu6" role="2OqNvi">
                        <ref role="37wK5l" to="sm7x:~Mapper.getTarget():java.lang.Object" resolve="getTarget" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="1xt3dAOpiu7" role="10QFUM">
                      <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1xt3dAOpiu8" role="2OqNvi">
                  <ref role="37wK5l" to="jqfx:~View.moveTo(jetbrains.jetpad.geometry.Vector):void" resolve="moveTo" />
                  <node concept="2ShNRf" id="1xt3dAOpiu9" role="37wK5m">
                    <node concept="1pGfFk" id="1xt3dAOpiua" role="2ShVmc">
                      <ref role="37wK5l" to="g88e:~Vector.&lt;init&gt;(int,int)" resolve="Vector" />
                      <node concept="2OqwBi" id="1xt3dAOpiub" role="37wK5m">
                        <node concept="37vLTw" id="6PdUmI$bf$Z" role="2Oq$k0">
                          <ref role="3cqZAo" node="6PdUmI$bd0S" resolve="xProperty" />
                        </node>
                        <node concept="liA8E" id="1xt3dAOpiud" role="2OqNvi">
                          <ref role="37wK5l" to="lgza:~ValueProperty.get():java.lang.Object" resolve="get" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1xt3dAOpiue" role="37wK5m">
                        <node concept="liA8E" id="1xt3dAOpiuf" role="2OqNvi">
                          <ref role="37wK5l" to="lgza:~ValueProperty.get():java.lang.Object" resolve="get" />
                        </node>
                        <node concept="37vLTw" id="6PdUmI$bgpz" role="2Oq$k0">
                          <ref role="3cqZAo" node="6PdUmI$bd0V" resolve="yProperty" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1xt3dAOpiuh" role="3cqZAp">
              <node concept="2OqwBi" id="1xt3dAOpiui" role="3clFbG">
                <node concept="1eOMI4" id="1xt3dAOpiuj" role="2Oq$k0">
                  <node concept="10QFUN" id="1xt3dAOpiuk" role="1eOMHV">
                    <node concept="2OqwBi" id="1xt3dAOpiul" role="10QFUP">
                      <node concept="37vLTw" id="1xt3dAOpium" role="2Oq$k0">
                        <ref role="3cqZAo" node="1xt3dAOpitN" resolve="descendantMapper" />
                      </node>
                      <node concept="liA8E" id="1xt3dAOpiun" role="2OqNvi">
                        <ref role="37wK5l" to="sm7x:~Mapper.getTarget():java.lang.Object" resolve="getTarget" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="1xt3dAOpiuo" role="10QFUM">
                      <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1xt3dAOpiup" role="2OqNvi">
                  <ref role="37wK5l" to="jqfx:~View.invalidate():void" resolve="invalidate" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1xt3dAOpiuq" role="3cqZAp">
              <node concept="1rXfSq" id="1xt3dAOpiur" role="3clFbG">
                <ref role="37wK5l" to="g51k:~EditorCell_Collection.requestRelayout():void" resolve="requestRelayout" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1xt3dAOpius" role="3clFbw">
            <node concept="10Nm6u" id="1xt3dAOpiut" role="3uHU7w" />
            <node concept="37vLTw" id="1xt3dAOpiuu" role="3uHU7B">
              <ref role="3cqZAo" node="1xt3dAOpitN" resolve="descendantMapper" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1xt3dAOpfZK" role="1B3o_S" />
      <node concept="3cqZAl" id="1xt3dAOph9i" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3wCUwlCJ20x" role="jymVt">
      <property role="TrG5h" value="getContentViewMapperSource" />
      <node concept="17QB3L" id="3wCUwlCJ3wQ" role="3clF45" />
      <node concept="3Tmbuc" id="3wCUwlCJ4GW" role="1B3o_S" />
      <node concept="3clFbS" id="3wCUwlCJ20_" role="3clF47">
        <node concept="3clFbF" id="3wCUwlCJdAL" role="3cqZAp">
          <node concept="2OqwBi" id="3wCUwlCJe4R" role="3clFbG">
            <node concept="2OqwBi" id="3wCUwlCJdFj" role="2Oq$k0">
              <node concept="1rXfSq" id="3wCUwlCJdAK" role="2Oq$k0">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
              </node>
              <node concept="liA8E" id="3wCUwlCJdYB" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
              </node>
            </node>
            <node concept="liA8E" id="3wCUwlCJevx" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3wCUwlCEDT5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getBlockMapper" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3wCUwlCEDT8" role="3clF47">
        <node concept="3cpWs6" id="3wCUwlCFba7" role="3cqZAp">
          <node concept="10QFUN" id="3wCUwlCFciD" role="3cqZAk">
            <node concept="3uibUv" id="3wCUwlCFci_" role="10QFUM">
              <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
              <node concept="3Tqbb2" id="3wCUwlCFciA" role="11_B2D" />
              <node concept="3uibUv" id="3wCUwlCFciB" role="11_B2D">
                <ref role="3uigEE" to="zdnc:~DiagramNodeView" resolve="DiagramNodeView" />
              </node>
            </node>
            <node concept="2OqwBi" id="3wCUwlCEFMS" role="10QFUP">
              <node concept="2OqwBi" id="3wCUwlCEFMT" role="2Oq$k0">
                <node concept="1rXfSq" id="3wCUwlCEFMU" role="2Oq$k0">
                  <ref role="37wK5l" node="63$PQ33inmu" resolve="getDiagramCell" />
                </node>
                <node concept="liA8E" id="3wCUwlCEFMV" role="2OqNvi">
                  <ref role="37wK5l" node="2kUb22mGw4l" resolve="getRootMapper" />
                </node>
              </node>
              <node concept="liA8E" id="3wCUwlCEFMW" role="2OqNvi">
                <ref role="37wK5l" to="sm7x:~Mapper.getDescendantMapper(java.lang.Object):jetbrains.jetpad.mapper.Mapper" resolve="getDescendantMapper" />
                <node concept="1rXfSq" id="3wCUwlCEFMX" role="37wK5m">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3wCUwlCECRq" role="1B3o_S" />
      <node concept="3uibUv" id="3wCUwlCEXRH" role="3clF45">
        <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
        <node concept="3Tqbb2" id="6IvYjB$b$6I" role="11_B2D" />
        <node concept="3uibUv" id="6IvYjB$b$6J" role="11_B2D">
          <ref role="3uigEE" to="zdnc:~DiagramNodeView" resolve="DiagramNodeView" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3wCUwlCI5y5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getContentView" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3wCUwlCI5y6" role="3clF47">
        <node concept="3cpWs8" id="3wCUwlCI$D4" role="3cqZAp">
          <node concept="3cpWsn" id="3wCUwlCI$D5" role="3cpWs9">
            <property role="TrG5h" value="blockMapper" />
            <node concept="3uibUv" id="3wCUwlCI$CX" role="1tU5fm">
              <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
              <node concept="3Tqbb2" id="3wCUwlCI$D3" role="11_B2D" />
              <node concept="3uibUv" id="3wCUwlCI$D2" role="11_B2D">
                <ref role="3uigEE" to="zdnc:~DiagramNodeView" resolve="DiagramNodeView" />
              </node>
            </node>
            <node concept="1rXfSq" id="3wCUwlCI$D6" role="33vP2m">
              <ref role="37wK5l" node="3wCUwlCEDT5" resolve="getBlockMapper" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3wCUwlCOyP$" role="3cqZAp">
          <node concept="3clFbS" id="3wCUwlCOyPB" role="3clFbx">
            <node concept="3cpWs6" id="3wCUwlCO$jK" role="3cqZAp">
              <node concept="10Nm6u" id="3wCUwlCO_k3" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="3wCUwlCPufw" role="3clFbw">
            <node concept="3clFbC" id="3wCUwlCPIGe" role="3uHU7w">
              <node concept="3cmrfG" id="3wCUwlCPIXI" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="3wCUwlCPB9a" role="3uHU7B">
                <node concept="2OqwBi" id="3wCUwlCP$xc" role="2Oq$k0">
                  <node concept="2OqwBi" id="3wCUwlCPwuR" role="2Oq$k0">
                    <node concept="2OqwBi" id="3wCUwlCPvtI" role="2Oq$k0">
                      <node concept="37vLTw" id="3wCUwlCPvo4" role="2Oq$k0">
                        <ref role="3cqZAo" node="3wCUwlCI$D5" resolve="blockMapper" />
                      </node>
                      <node concept="liA8E" id="3wCUwlCPw8N" role="2OqNvi">
                        <ref role="37wK5l" to="sm7x:~Mapper.getTarget():java.lang.Object" resolve="getTarget" />
                      </node>
                    </node>
                    <node concept="2OwXpG" id="3wCUwlCPz5x" role="2OqNvi">
                      <ref role="2Oxat5" to="zdnc:~DiagramNodeView.contentView" resolve="contentView" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3wCUwlCPAkb" role="2OqNvi">
                    <ref role="37wK5l" to="jqfx:~View.children():jetbrains.jetpad.model.collections.list.ObservableList" resolve="children" />
                  </node>
                </node>
                <node concept="liA8E" id="3wCUwlCPHUW" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="3wCUwlCPskS" role="3uHU7B">
              <node concept="3clFbC" id="3wCUwlCO$6f" role="3uHU7B">
                <node concept="37vLTw" id="3wCUwlCOzWn" role="3uHU7B">
                  <ref role="3cqZAo" node="3wCUwlCI$D5" resolve="blockMapper" />
                </node>
                <node concept="10Nm6u" id="3wCUwlCO$eQ" role="3uHU7w" />
              </node>
              <node concept="3clFbC" id="3wCUwlCPu97" role="3uHU7w">
                <node concept="2OqwBi" id="3wCUwlCPtuv" role="3uHU7B">
                  <node concept="37vLTw" id="3wCUwlCPtqf" role="2Oq$k0">
                    <ref role="3cqZAo" node="3wCUwlCI$D5" resolve="blockMapper" />
                  </node>
                  <node concept="liA8E" id="3wCUwlCPtO3" role="2OqNvi">
                    <ref role="37wK5l" to="sm7x:~Mapper.getTarget():java.lang.Object" resolve="getTarget" />
                  </node>
                </node>
                <node concept="10Nm6u" id="3wCUwlCPu9Z" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3wCUwlCPgsn" role="3cqZAp">
          <node concept="2OqwBi" id="3wCUwlCOWwl" role="3cqZAk">
            <node concept="2OqwBi" id="3wCUwlCOU0A" role="2Oq$k0">
              <node concept="2OqwBi" id="3wCUwlCOQbc" role="2Oq$k0">
                <node concept="2OqwBi" id="3wCUwlCOC$o" role="2Oq$k0">
                  <node concept="37vLTw" id="3wCUwlCOBy0" role="2Oq$k0">
                    <ref role="3cqZAo" node="3wCUwlCI$D5" resolve="blockMapper" />
                  </node>
                  <node concept="liA8E" id="3wCUwlCOPZ6" role="2OqNvi">
                    <ref role="37wK5l" to="sm7x:~Mapper.getTarget():java.lang.Object" resolve="getTarget" />
                  </node>
                </node>
                <node concept="2OwXpG" id="3wCUwlCOSFZ" role="2OqNvi">
                  <ref role="2Oxat5" to="zdnc:~DiagramNodeView.contentView" resolve="contentView" />
                </node>
              </node>
              <node concept="liA8E" id="3wCUwlCOVS4" role="2OqNvi">
                <ref role="37wK5l" to="jqfx:~View.children():jetbrains.jetpad.model.collections.list.ObservableList" resolve="children" />
              </node>
            </node>
            <node concept="liA8E" id="3wCUwlCPdTv" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
              <node concept="3cmrfG" id="3wCUwlCPea9" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3wCUwlCI5yi" role="1B3o_S" />
      <node concept="3uibUv" id="3wCUwlCPqnC" role="3clF45">
        <ref role="3uigEE" to="jqfx:~View" resolve="View" />
      </node>
    </node>
    <node concept="3clFb_" id="1ARPSJOoIjM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="syncPortNodes" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1ARPSJOoIjN" role="3clF46">
        <property role="TrG5h" value="ports" />
        <node concept="3uibUv" id="1ARPSJOoIjO" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3qUE_q" id="1ARPSJOqHJZ" role="11_B2D">
            <node concept="3Tqbb2" id="1ARPSJOqI67" role="3qUE_r" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1ARPSJOoIjQ" role="3clF46">
        <property role="TrG5h" value="portsIterator" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1ARPSJOoIjR" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~ListIterator" resolve="ListIterator" />
          <node concept="3Tqbb2" id="1ARPSJOoIjS" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1ARPSJOoIjT" role="3clF46">
        <property role="TrG5h" value="existingPorts" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1ARPSJOoIjU" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3Tqbb2" id="1ARPSJOoIjV" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="1ARPSJOoIk2" role="3clF47">
        <node concept="2Gpval" id="ya5Fdr0yP$" role="3cqZAp">
          <node concept="2GrKxI" id="ya5Fdr0yP_" role="2Gsz3X">
            <property role="TrG5h" value="nextPort" />
          </node>
          <node concept="3clFbS" id="ya5Fdr0yPE" role="2LFqv$">
            <node concept="3cpWs8" id="1ARPSJO9J6y" role="3cqZAp">
              <node concept="3cpWsn" id="1ARPSJO9J6z" role="3cpWs9">
                <property role="TrG5h" value="portCell" />
                <node concept="3uibUv" id="1ARPSJO9J6$" role="1tU5fm">
                  <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                </node>
                <node concept="2OqwBi" id="1ARPSJO9J6_" role="33vP2m">
                  <node concept="2OqwBi" id="nJ7v7_xXmW" role="2Oq$k0">
                    <node concept="2OqwBi" id="nJ7v7_xX14" role="2Oq$k0">
                      <node concept="2OqwBi" id="nJ7v7_xVVm" role="2Oq$k0">
                        <node concept="1rXfSq" id="1ARPSJO9J6A" role="2Oq$k0">
                          <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                        </node>
                        <node concept="liA8E" id="nJ7v7_xWXc" role="2OqNvi">
                          <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                        </node>
                      </node>
                      <node concept="liA8E" id="nJ7v7_xXjE" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorComponent.getUpdater():jetbrains.mps.openapi.editor.update.Updater" resolve="getUpdater" />
                      </node>
                    </node>
                    <node concept="liA8E" id="nJ7v7_xXP$" role="2OqNvi">
                      <ref role="37wK5l" to="22ra:~Updater.getCurrentUpdateSession():jetbrains.mps.openapi.editor.update.UpdateSession" resolve="getCurrentUpdateSession" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1ARPSJO9J6B" role="2OqNvi">
                    <ref role="37wK5l" to="22ra:~UpdateSession.updateChildNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.openapi.editor.cells.EditorCell" resolve="updateChildNodeCell" />
                    <node concept="2GrUjf" id="1ARPSJO9J6C" role="37wK5m">
                      <ref role="2Gs0qQ" node="ya5Fdr0yP_" resolve="nextPort" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1ARPSJO9Jwr" role="3cqZAp">
              <node concept="3clFbS" id="1ARPSJO9Jwu" role="3clFbx">
                <node concept="3N13vt" id="1ARPSJO9JXk" role="3cqZAp" />
              </node>
              <node concept="3fqX7Q" id="1ARPSJO9JTE" role="3clFbw">
                <node concept="2ZW3vV" id="1ARPSJO9JVj" role="3fr31v">
                  <node concept="3uibUv" id="1ARPSJO9JVk" role="2ZW6by">
                    <ref role="3uigEE" node="fQU43X4C0S" resolve="PortCell" />
                  </node>
                  <node concept="37vLTw" id="1ARPSJO9JVl" role="2ZW6bz">
                    <ref role="3cqZAo" node="1ARPSJO9J6z" resolve="portCell" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1ARPSJOsQdN" role="3cqZAp">
              <node concept="1rXfSq" id="1ARPSJOsQdM" role="3clFbG">
                <ref role="37wK5l" node="1ARPSJOkA_A" resolve="syncToNextNode" />
                <node concept="37vLTw" id="1ARPSJOsQxZ" role="37wK5m">
                  <ref role="3cqZAo" node="1ARPSJOoIjQ" resolve="portsIterator" />
                </node>
                <node concept="37vLTw" id="1ARPSJOsQBV" role="37wK5m">
                  <ref role="3cqZAo" node="1ARPSJOoIjT" resolve="existingPorts" />
                </node>
                <node concept="2GrUjf" id="1ARPSJOsQIU" role="37wK5m">
                  <ref role="2Gs0qQ" node="ya5Fdr0yP_" resolve="nextPort" />
                </node>
                <node concept="37vLTw" id="1ARPSJOsRoc" role="37wK5m">
                  <ref role="3cqZAo" node="1ARPSJO9J6z" resolve="portCell" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1ARPSJOoUUM" role="2GsD0m">
            <ref role="3cqZAo" node="1ARPSJOoIjN" resolve="ports" />
          </node>
        </node>
        <node concept="3clFbF" id="1ARPSJOqZTI" role="3cqZAp">
          <node concept="1rXfSq" id="1ARPSJOqZTH" role="3clFbG">
            <ref role="37wK5l" node="ya5Fdr1Hkm" resolve="purgeTailNodes" />
            <node concept="37vLTw" id="1ARPSJOrdSX" role="37wK5m">
              <ref role="3cqZAo" node="1ARPSJOoIjQ" resolve="portsIterator" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1ARPSJOoIkE" role="1B3o_S" />
      <node concept="3cqZAl" id="1ARPSJOoIkF" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1ARPSJOuv37" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="syncPortObjects" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1ARPSJOuwPb" role="3clF46">
        <property role="TrG5h" value="ports" />
        <node concept="3uibUv" id="1ARPSJOuwPc" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3qTvmN" id="6mlphA0wMuZ" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1ARPSJOuwPf" role="3clF46">
        <property role="TrG5h" value="portsIterator" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1ARPSJOuwPg" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~ListIterator" resolve="ListIterator" />
        </node>
      </node>
      <node concept="37vLTG" id="1ARPSJOuwPi" role="3clF46">
        <property role="TrG5h" value="existingPorts" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1ARPSJOuwPj" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        </node>
      </node>
      <node concept="3clFbS" id="1ARPSJOuv3a" role="3clF47">
        <node concept="2Gpval" id="6IvYjBzPU0s" role="3cqZAp">
          <node concept="2GrKxI" id="6IvYjBzPU0t" role="2Gsz3X">
            <property role="TrG5h" value="port" />
          </node>
          <node concept="3clFbS" id="6IvYjBzPU0u" role="2LFqv$">
            <node concept="3clFbJ" id="ya5Fdr6kfa" role="3cqZAp">
              <node concept="3clFbS" id="ya5Fdr6kfd" role="3clFbx">
                <node concept="3clFbF" id="ya5Fdr6wio" role="3cqZAp">
                  <node concept="1rXfSq" id="ya5Fdr6win" role="3clFbG">
                    <ref role="37wK5l" node="ya5Fdr217M" resolve="syncToNextObject" />
                    <node concept="37vLTw" id="ya5Fdr6wjQ" role="37wK5m">
                      <ref role="3cqZAo" node="1ARPSJOuwPf" resolve="portsIterator" />
                    </node>
                    <node concept="37vLTw" id="ya5Fdr6wvy" role="37wK5m">
                      <ref role="3cqZAo" node="1ARPSJOuwPi" resolve="existingPorts" />
                    </node>
                    <node concept="2GrUjf" id="ya5Fdr6yF$" role="37wK5m">
                      <ref role="2Gs0qQ" node="6IvYjBzPU0t" resolve="port" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="ya5Fdr6oWq" role="3clFbw">
                <node concept="37vLTw" id="ya5Fdr6moF" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ARPSJOuwPi" resolve="existingPorts" />
                </node>
                <node concept="liA8E" id="ya5Fdr6u8f" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object):boolean" resolve="contains" />
                  <node concept="2GrUjf" id="ya5Fdr6wbg" role="37wK5m">
                    <ref role="2Gs0qQ" node="6IvYjBzPU0t" resolve="port" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="ya5Fdr6Dhe" role="9aQIa">
                <node concept="3clFbS" id="ya5Fdr6Dhf" role="9aQI4">
                  <node concept="3clFbF" id="ya5Fdr6DJF" role="3cqZAp">
                    <node concept="2OqwBi" id="ya5Fdr6DV7" role="3clFbG">
                      <node concept="37vLTw" id="ya5Fdr6DJE" role="2Oq$k0">
                        <ref role="3cqZAo" node="1ARPSJOuwPf" resolve="portsIterator" />
                      </node>
                      <node concept="liA8E" id="ya5Fdr6Gl0" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ListIterator.add(java.lang.Object):void" resolve="add" />
                        <node concept="2GrUjf" id="ya5Fdr6Ir8" role="37wK5m">
                          <ref role="2Gs0qQ" node="6IvYjBzPU0t" resolve="port" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="ya5Fdr6IZs" role="3cqZAp">
                    <node concept="2OqwBi" id="ya5Fdr6LIK" role="3clFbG">
                      <node concept="37vLTw" id="ya5Fdr6IZr" role="2Oq$k0">
                        <ref role="3cqZAo" node="1ARPSJOuwPi" resolve="existingPorts" />
                      </node>
                      <node concept="liA8E" id="ya5Fdr6QUt" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="2GrUjf" id="ya5Fdr6T2Y" role="37wK5m">
                          <ref role="2Gs0qQ" node="6IvYjBzPU0t" resolve="port" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1ARPSJOv0YO" role="2GsD0m">
            <ref role="3cqZAo" node="1ARPSJOuwPb" resolve="ports" />
          </node>
        </node>
        <node concept="2$JKZl" id="ya5Fdr2BUi" role="3cqZAp">
          <node concept="3clFbS" id="ya5Fdr2BUj" role="2LFqv$">
            <node concept="3clFbF" id="ya5Fdr2VsY" role="3cqZAp">
              <node concept="2OqwBi" id="ya5Fdr2Wr3" role="3clFbG">
                <node concept="37vLTw" id="1ARPSJOwIwh" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ARPSJOuwPf" resolve="portsIterator" />
                </node>
                <node concept="liA8E" id="ya5Fdr2XzB" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ListIterator.next():java.lang.Object" resolve="next" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ya5Fdr2BUq" role="3cqZAp">
              <node concept="2OqwBi" id="ya5Fdr2BUr" role="3clFbG">
                <node concept="37vLTw" id="1ARPSJOwIxy" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ARPSJOuwPf" resolve="portsIterator" />
                </node>
                <node concept="liA8E" id="ya5Fdr2BUt" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ListIterator.remove():void" resolve="remove" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="ya5Fdr2BU_" role="2$JKZa">
            <node concept="37vLTw" id="1ARPSJOwIuU" role="2Oq$k0">
              <ref role="3cqZAo" node="1ARPSJOuwPf" resolve="portsIterator" />
            </node>
            <node concept="liA8E" id="ya5Fdr2BUB" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~ListIterator.hasNext():boolean" resolve="hasNext" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1ARPSJOuqYI" role="1B3o_S" />
      <node concept="3cqZAl" id="1ARPSJOurE9" role="3clF45" />
    </node>
    <node concept="3clFb_" id="ya5Fdr217M" role="jymVt">
      <property role="TrG5h" value="syncToNextObject" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="ya5Fdr217N" role="3clF45" />
      <node concept="37vLTG" id="ya5Fdr217O" role="3clF46">
        <property role="TrG5h" value="listIterator" />
        <node concept="3uibUv" id="ya5Fdr2niA" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~ListIterator" resolve="ListIterator" />
        </node>
      </node>
      <node concept="37vLTG" id="ya5Fdr217R" role="3clF46">
        <property role="TrG5h" value="elementsSet" />
        <node concept="3uibUv" id="ya5Fdr2pjk" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        </node>
      </node>
      <node concept="37vLTG" id="ya5Fdr217U" role="3clF46">
        <property role="TrG5h" value="next" />
        <node concept="3uibUv" id="ya5Fdr2rS1" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="ya5Fdr217W" role="3clF47">
        <node concept="2$JKZl" id="ya5Fdr217X" role="3cqZAp">
          <node concept="3clFbS" id="ya5Fdr217Y" role="2LFqv$">
            <node concept="3cpWs8" id="ya5Fdr217Z" role="3cqZAp">
              <node concept="3cpWsn" id="ya5Fdr2180" role="3cpWs9">
                <property role="TrG5h" value="nextFromList" />
                <node concept="3uibUv" id="ya5Fdr2uGN" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="2OqwBi" id="ya5Fdr2182" role="33vP2m">
                  <node concept="37vLTw" id="ya5Fdr2183" role="2Oq$k0">
                    <ref role="3cqZAo" node="ya5Fdr217O" resolve="listIterator" />
                  </node>
                  <node concept="liA8E" id="ya5Fdr2184" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ListIterator.next():java.lang.Object" resolve="next" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="ya5Fdr2185" role="3cqZAp">
              <node concept="3clFbS" id="ya5Fdr2186" role="3clFbx">
                <node concept="3cpWs6" id="ya5Fdr2187" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="ya5Fdr2188" role="3clFbw">
                <node concept="37vLTw" id="ya5Fdr2189" role="3uHU7w">
                  <ref role="3cqZAo" node="ya5Fdr217U" resolve="next" />
                </node>
                <node concept="37vLTw" id="ya5Fdr218a" role="3uHU7B">
                  <ref role="3cqZAo" node="ya5Fdr2180" resolve="nextFromList" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ya5Fdr218b" role="3cqZAp">
              <node concept="2OqwBi" id="ya5Fdr218c" role="3clFbG">
                <node concept="37vLTw" id="ya5Fdr218d" role="2Oq$k0">
                  <ref role="3cqZAo" node="ya5Fdr217O" resolve="listIterator" />
                </node>
                <node concept="liA8E" id="ya5Fdr218e" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ListIterator.remove():void" resolve="remove" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ya5Fdr218f" role="3cqZAp">
              <node concept="2OqwBi" id="ya5Fdr218g" role="3clFbG">
                <node concept="37vLTw" id="ya5Fdr218h" role="2Oq$k0">
                  <ref role="3cqZAo" node="ya5Fdr217R" resolve="elementsSet" />
                </node>
                <node concept="liA8E" id="ya5Fdr218i" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
                  <node concept="37vLTw" id="ya5Fdr218j" role="37wK5m">
                    <ref role="3cqZAo" node="ya5Fdr2180" resolve="nextFromList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="ya5Fdr218r" role="2$JKZa">
            <node concept="37vLTw" id="ya5Fdr218s" role="2Oq$k0">
              <ref role="3cqZAo" node="ya5Fdr217O" resolve="listIterator" />
            </node>
            <node concept="liA8E" id="ya5Fdr218t" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~ListIterator.hasNext():boolean" resolve="hasNext" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="ya5Fdr218u" role="3cqZAp">
          <node concept="3clFbT" id="ya5Fdr218v" role="1gVkn0" />
          <node concept="Xl_RD" id="ya5Fdr218w" role="1gVpfI">
            <property role="Xl_RC" value="Next element was not found in passed listIterator" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1ARPSJOwFcj" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="6IvYjB$0FJz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createDiagramNodeView" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6IvYjB$0FJO" role="3clF47">
        <node concept="3cpWs8" id="6IvYjB$0FJP" role="3cqZAp">
          <node concept="3cpWsn" id="6IvYjB$0FJQ" role="3cpWs9">
            <property role="TrG5h" value="blockView" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5pJ3qUjxdfe" role="1tU5fm">
              <ref role="3uigEE" to="e29j:~BlockView" resolve="BlockView" />
            </node>
            <node concept="2ShNRf" id="6IvYjB$0FJS" role="33vP2m">
              <node concept="1pGfFk" id="6IvYjB$0FJT" role="2ShVmc">
                <ref role="37wK5l" to="e29j:~BlockView.&lt;init&gt;()" resolve="BlockView" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3MhItEoL_Mb" role="3cqZAp">
          <node concept="2OqwBi" id="3MhItEoM1MR" role="3clFbG">
            <node concept="2OqwBi" id="3MhItEoLLyd" role="2Oq$k0">
              <node concept="37vLTw" id="3MhItEoL_Ma" role="2Oq$k0">
                <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
              </node>
              <node concept="liA8E" id="3MhItEoLUdN" role="2OqNvi">
                <ref role="37wK5l" to="zdnc:~DiagramNodeView.minimalSize():jetbrains.jetpad.model.property.Property" resolve="minimalSize" />
              </node>
            </node>
            <node concept="liA8E" id="3MhItEoM8Xh" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="2ShNRf" id="3MhItEoMgYN" role="37wK5m">
                <node concept="1pGfFk" id="3MhItEoMrL6" role="2ShVmc">
                  <ref role="37wK5l" to="g88e:~Vector.&lt;init&gt;(int,int)" resolve="Vector" />
                  <node concept="3cmrfG" id="3MhItEoMz07" role="37wK5m">
                    <property role="3cmrfH" value="10" />
                  </node>
                  <node concept="3cmrfG" id="3MhItEoMzeh" role="37wK5m">
                    <property role="3cmrfH" value="10" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6IvYjB$0FJU" role="3cqZAp">
          <node concept="2OqwBi" id="6IvYjB$0FJV" role="3clFbG">
            <node concept="2OqwBi" id="6IvYjB$0FJW" role="2Oq$k0">
              <node concept="2OqwBi" id="6IvYjB$0FJX" role="2Oq$k0">
                <node concept="37vLTw" id="6IvYjB$0FJY" role="2Oq$k0">
                  <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
                </node>
                <node concept="2OwXpG" id="6IvYjB$0FJZ" role="2OqNvi">
                  <ref role="2Oxat5" to="zdnc:~DiagramNodeView.rect" resolve="rect" />
                </node>
              </node>
              <node concept="liA8E" id="6IvYjB$0FK0" role="2OqNvi">
                <ref role="37wK5l" to="jqfx:~View.background():jetbrains.jetpad.model.property.Property" resolve="background" />
              </node>
            </node>
            <node concept="liA8E" id="6IvYjB$0FK1" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="10M0yZ" id="6IvYjB$0FK2" role="37wK5m">
                <ref role="1PxDUh" to="4rj2:~Color" resolve="Color" />
                <ref role="3cqZAo" to="4rj2:~Color.TRANSPARENT" resolve="TRANSPARENT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6IvYjB$0FK3" role="3cqZAp">
          <node concept="2OqwBi" id="6IvYjB$0FK4" role="3clFbG">
            <node concept="2OqwBi" id="6IvYjB$0FK5" role="2Oq$k0">
              <node concept="37vLTw" id="6IvYjB$0FK6" role="2Oq$k0">
                <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
              </node>
              <node concept="liA8E" id="6IvYjB$0FK7" role="2OqNvi">
                <ref role="37wK5l" to="zdnc:~DiagramNodeView.padding():jetbrains.jetpad.model.property.Property" resolve="padding" />
              </node>
            </node>
            <node concept="liA8E" id="6IvYjB$0FK8" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="3cmrfG" id="6IvYjB$0FK9" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IvYjB$0FKa" role="3cqZAp" />
        <node concept="3clFbF" id="6IvYjB$0FKz" role="3cqZAp">
          <node concept="2OqwBi" id="6IvYjB$0FK$" role="3clFbG">
            <node concept="2OqwBi" id="6IvYjB$0FK_" role="2Oq$k0">
              <node concept="2OqwBi" id="65yGeFRexBx" role="2Oq$k0">
                <node concept="37vLTw" id="6IvYjB$0FKB" role="2Oq$k0">
                  <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
                </node>
                <node concept="2OwXpG" id="1kbdh1fz6T" role="2OqNvi">
                  <ref role="2Oxat5" to="zdnc:~DiagramNodeView.contentView" resolve="contentView" />
                </node>
              </node>
              <node concept="liA8E" id="6IvYjB$0FKD" role="2OqNvi">
                <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                <node concept="10M0yZ" id="6IvYjB$0FKE" role="37wK5m">
                  <ref role="1PxDUh" to="zdnc:~RootTrait" resolve="RootTrait" />
                  <ref role="3cqZAo" to="zdnc:~RootTrait.MOVE_HANDLER" resolve="MOVE_HANDLER" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6IvYjB$0FKF" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="2ShNRf" id="6IvYjB$0FKG" role="37wK5m">
                <node concept="YeOm9" id="6IvYjB$0FKH" role="2ShVmc">
                  <node concept="1Y3b0j" id="6IvYjB$0FKI" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="zdnc:~MoveHandler" resolve="MoveHandler" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="6IvYjB$0FKJ" role="1B3o_S" />
                    <node concept="3clFb_" id="6IvYjB$0FKK" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="move" />
                      <property role="DiZV1" value="false" />
                      <property role="IEkAT" value="false" />
                      <node concept="3Tm1VV" id="6IvYjB$0FKL" role="1B3o_S" />
                      <node concept="3cqZAl" id="6IvYjB$0FKM" role="3clF45" />
                      <node concept="37vLTG" id="6IvYjB$0FKN" role="3clF46">
                        <property role="TrG5h" value="delta" />
                        <node concept="3uibUv" id="6IvYjB$0FKO" role="1tU5fm">
                          <ref role="3uigEE" to="g88e:~Vector" resolve="Vector" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="6IvYjB$0FKP" role="3clF47">
                        <node concept="3clFbF" id="70DU5_bgCMb" role="3cqZAp">
                          <node concept="2OqwBi" id="70DU5_bgZsI" role="3clFbG">
                            <node concept="37vLTw" id="6mlphA0wAhr" role="2Oq$k0">
                              <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
                            </node>
                            <node concept="liA8E" id="70DU5_bh2eC" role="2OqNvi">
                              <ref role="37wK5l" to="jqfx:~View.move(jetbrains.jetpad.geometry.Vector):void" resolve="move" />
                              <node concept="37vLTw" id="70DU5_bhfni" role="37wK5m">
                                <ref role="3cqZAo" node="6IvYjB$0FKN" resolve="delta" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="70DU5_bhiDW" role="3cqZAp">
                          <node concept="2OqwBi" id="70DU5_bhkad" role="3clFbG">
                            <node concept="37vLTw" id="6mlphA0wAng" role="2Oq$k0">
                              <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
                            </node>
                            <node concept="liA8E" id="70DU5_bhmQq" role="2OqNvi">
                              <ref role="37wK5l" to="jqfx:~View.invalidate():void" resolve="invalidate" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="70DU5_bhBtU" role="3cqZAp">
                          <node concept="1rXfSq" id="70DU5_bhBtT" role="3clFbG">
                            <ref role="37wK5l" to="g51k:~EditorCell_Collection.requestRelayout():void" resolve="requestRelayout" />
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
        <node concept="3clFbF" id="6mlphA0x_Ct" role="3cqZAp">
          <node concept="1rXfSq" id="6mlphA0x_Cs" role="3clFbG">
            <ref role="37wK5l" node="6mlphA0xaGb" resolve="configureView" />
            <node concept="37vLTw" id="6mlphA0xBm$" role="37wK5m">
              <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
            </node>
            <node concept="1bVj0M" id="53wrLxGyTtQ" role="37wK5m">
              <node concept="3clFbS" id="53wrLxGyTtS" role="1bW5cS">
                <node concept="3clFbF" id="53wrLxGz0Ec" role="3cqZAp">
                  <node concept="3clFbT" id="53wrLxGz0Eb" role="3clFbG">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IvYjB$0FMf" role="3cqZAp" />
        <node concept="3clFbF" id="6IvYjB$0FMg" role="3cqZAp">
          <node concept="2OqwBi" id="6IvYjB$0FMh" role="3clFbG">
            <node concept="2OqwBi" id="6IvYjB$0FMi" role="2Oq$k0">
              <node concept="37vLTw" id="6IvYjB$0FMj" role="2Oq$k0">
                <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
              </node>
              <node concept="liA8E" id="6IvYjB$0FMk" role="2OqNvi">
                <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                <node concept="10M0yZ" id="6IvYjB$0FMl" role="37wK5m">
                  <ref role="3cqZAo" node="4wVpOa3fRTD" resolve="CONNECTABLE" />
                  <ref role="1PxDUh" node="5stQbxMM_mL" resolve="JetpadUtils" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6IvYjB$0FMm" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="10M0yZ" id="6IvYjB$0FMn" role="37wK5m">
                <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6IvYjB$0FMo" role="3cqZAp">
          <node concept="2OqwBi" id="6IvYjB$0FMp" role="3clFbG">
            <node concept="2OqwBi" id="6IvYjB$0FMq" role="2Oq$k0">
              <node concept="2OqwBi" id="6IvYjB$0FMr" role="2Oq$k0">
                <node concept="37vLTw" id="6IvYjB$0FMs" role="2Oq$k0">
                  <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
                </node>
                <node concept="2OwXpG" id="6IvYjB$0FMt" role="2OqNvi">
                  <ref role="2Oxat5" to="zdnc:~DiagramNodeView.rect" resolve="rect" />
                </node>
              </node>
              <node concept="liA8E" id="6IvYjB$0FMu" role="2OqNvi">
                <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                <node concept="10M0yZ" id="6IvYjB$0FMv" role="37wK5m">
                  <ref role="3cqZAo" node="BSIQ$y$9m$" resolve="SOURCE" />
                  <ref role="1PxDUh" node="5stQbxMM_mL" resolve="JetpadUtils" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6IvYjB$0FMw" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="1rXfSq" id="6IvYjB$9e1b" role="37wK5m">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2nWW3egI_s3" role="3cqZAp">
          <node concept="2OqwBi" id="2nWW3egI_s4" role="3clFbG">
            <node concept="37vLTw" id="3m8TDKKbDLh" role="2Oq$k0">
              <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
            </node>
            <node concept="liA8E" id="2nWW3egI_s5" role="2OqNvi">
              <ref role="37wK5l" to="jqfx:~View.addTrait(jetbrains.jetpad.projectional.view.ViewTrait):jetbrains.jetpad.base.Registration" resolve="addTrait" />
              <node concept="2OqwBi" id="3m8TDKKbeeX" role="37wK5m">
                <node concept="2OqwBi" id="2nWW3egI_s6" role="2Oq$k0">
                  <node concept="2ShNRf" id="2nWW3egI_s7" role="2Oq$k0">
                    <node concept="1pGfFk" id="2nWW3egI_s8" role="2ShVmc">
                      <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.&lt;init&gt;()" resolve="ViewTraitBuilder" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2nWW3egI_s9" role="2OqNvi">
                    <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.on(jetbrains.jetpad.projectional.view.ViewEventSpec,jetbrains.jetpad.projectional.view.ViewEventHandler):jetbrains.jetpad.projectional.view.ViewTraitBuilder" resolve="on" />
                    <node concept="10M0yZ" id="2nWW3egI_sa" role="37wK5m">
                      <ref role="1PxDUh" to="jqfx:~ViewEvents" resolve="ViewEvents" />
                      <ref role="3cqZAo" to="jqfx:~ViewEvents.KEY_PRESSED" resolve="KEY_PRESSED" />
                    </node>
                    <node concept="2ShNRf" id="2nWW3egI_sb" role="37wK5m">
                      <node concept="YeOm9" id="2nWW3egI_sc" role="2ShVmc">
                        <node concept="1Y3b0j" id="2nWW3egI_sd" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <property role="1sVAO0" value="false" />
                          <property role="1EXbeo" value="false" />
                          <ref role="1Y3XeK" to="jqfx:~ViewEventHandler" resolve="ViewEventHandler" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <node concept="3Tm1VV" id="2nWW3egI_se" role="1B3o_S" />
                          <node concept="3clFb_" id="2nWW3egI_sf" role="jymVt">
                            <property role="TrG5h" value="handle" />
                            <property role="DiZV1" value="false" />
                            <property role="od$2w" value="false" />
                            <node concept="2AHcQZ" id="2nWW3egI_sg" role="2AJF6D">
                              <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                            </node>
                            <node concept="37vLTG" id="2nWW3egI_sh" role="3clF46">
                              <property role="TrG5h" value="view" />
                              <property role="3TUv4t" value="false" />
                              <node concept="3uibUv" id="2nWW3egI_si" role="1tU5fm">
                                <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                              </node>
                            </node>
                            <node concept="37vLTG" id="2nWW3egI_sj" role="3clF46">
                              <property role="TrG5h" value="e" />
                              <property role="3TUv4t" value="false" />
                              <node concept="3uibUv" id="3m8TDKKbefb" role="1tU5fm">
                                <ref role="3uigEE" to="v7xa:~KeyEvent" resolve="KeyEvent" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="2nWW3egI_sk" role="3clF47">
                              <node concept="3clFbJ" id="3m8TDKKhdIf" role="3cqZAp">
                                <node concept="3clFbS" id="3m8TDKKhdIi" role="3clFbx">
                                  <node concept="3cpWs6" id="3m8TDKKik5y" role="3cqZAp" />
                                </node>
                                <node concept="3fqX7Q" id="3m8TDKKhPMT" role="3clFbw">
                                  <node concept="2OqwBi" id="3m8TDKKi7aH" role="3fr31v">
                                    <node concept="2OqwBi" id="3m8TDKKhWDY" role="2Oq$k0">
                                      <node concept="37vLTw" id="3m8TDKKhPYu" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
                                      </node>
                                      <node concept="liA8E" id="3m8TDKKi0jl" role="2OqNvi">
                                        <ref role="37wK5l" to="jqfx:~View.focused():jetbrains.jetpad.model.property.ReadableProperty" resolve="focused" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="3m8TDKKic98" role="2OqNvi">
                                      <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="3m8TDKKbefd" role="3cqZAp">
                                <node concept="2OqwBi" id="3m8TDKKbeqP" role="3clFbw">
                                  <node concept="37vLTw" id="3m8TDKKbeqO" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2nWW3egI_sj" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="3m8TDKKbeqQ" role="2OqNvi">
                                    <ref role="37wK5l" to="v7xa:~KeyEvent.is(jetbrains.jetpad.event.Key,jetbrains.jetpad.event.ModifierKey...):boolean" resolve="is" />
                                    <node concept="Rm8GO" id="3m8TDKKbeqU" role="37wK5m">
                                      <ref role="Rm8GQ" to="v7xa:~Key.T" resolve="T" />
                                      <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="3m8TDKKbefn" role="3clFbx">
                                  <node concept="3clFbF" id="3m8TDKKbefo" role="3cqZAp">
                                    <node concept="2OqwBi" id="3m8TDKKbefp" role="3clFbG">
                                      <node concept="37vLTw" id="3m8TDKKc2IB" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
                                      </node>
                                      <node concept="liA8E" id="3m8TDKKbefr" role="2OqNvi">
                                        <ref role="37wK5l" to="zdnc:~DiagramNodeView.setPortsDirection(jetbrains.jetpad.projectional.diagram.base.GridDirection):void" resolve="setPortsDirection" />
                                        <node concept="2OqwBi" id="3m8TDKKbefs" role="37wK5m">
                                          <node concept="2OqwBi" id="3m8TDKKbeft" role="2Oq$k0">
                                            <node concept="37vLTw" id="3m8TDKKcjch" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
                                            </node>
                                            <node concept="liA8E" id="3m8TDKKbefv" role="2OqNvi">
                                              <ref role="37wK5l" to="zdnc:~DiagramNodeView.getPortsDirection():jetbrains.jetpad.projectional.diagram.base.GridDirection" resolve="getPortsDirection" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="3m8TDKKbefw" role="2OqNvi">
                                            <ref role="37wK5l" to="mgas:~GridDirection.turnClockwise():jetbrains.jetpad.projectional.diagram.base.GridDirection" resolve="turnClockwise" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3eNFk2" id="3m8TDKKiFAp" role="3eNLev">
                                  <node concept="2OqwBi" id="3m8TDKKiFMj" role="3eO9$A">
                                    <node concept="37vLTw" id="3m8TDKKiFKQ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2nWW3egI_sj" resolve="e" />
                                    </node>
                                    <node concept="liA8E" id="3m8TDKKiOeS" role="2OqNvi">
                                      <ref role="37wK5l" to="v7xa:~KeyEvent.is(jetbrains.jetpad.event.Key,jetbrains.jetpad.event.ModifierKey...):boolean" resolve="is" />
                                      <node concept="Rm8GO" id="3m8TDKKj3Rq" role="37wK5m">
                                        <ref role="Rm8GQ" to="v7xa:~Key.T" resolve="T" />
                                        <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
                                      </node>
                                      <node concept="Rm8GO" id="3m8TDKKjjAe" role="37wK5m">
                                        <ref role="1Px2BO" to="v7xa:~ModifierKey" resolve="ModifierKey" />
                                        <ref role="Rm8GQ" to="v7xa:~ModifierKey.SHIFT" resolve="SHIFT" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="3m8TDKKiFAr" role="3eOfB_">
                                    <node concept="3clFbF" id="3m8TDKKgjEb" role="3cqZAp">
                                      <node concept="2OqwBi" id="3m8TDKKgjEc" role="3clFbG">
                                        <node concept="37vLTw" id="3m8TDKKgjEd" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
                                        </node>
                                        <node concept="liA8E" id="3m8TDKKgjEe" role="2OqNvi">
                                          <ref role="37wK5l" to="zdnc:~DiagramNodeView.setPortsDirection(jetbrains.jetpad.projectional.diagram.base.GridDirection):void" resolve="setPortsDirection" />
                                          <node concept="2OqwBi" id="3m8TDKKgjEf" role="37wK5m">
                                            <node concept="2OqwBi" id="3m8TDKKgjEg" role="2Oq$k0">
                                              <node concept="37vLTw" id="3m8TDKKgjEh" role="2Oq$k0">
                                                <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
                                              </node>
                                              <node concept="liA8E" id="3m8TDKKgjEi" role="2OqNvi">
                                                <ref role="37wK5l" to="zdnc:~DiagramNodeView.getPortsDirection():jetbrains.jetpad.projectional.diagram.base.GridDirection" resolve="getPortsDirection" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="3m8TDKKgjEj" role="2OqNvi">
                                              <ref role="37wK5l" to="mgas:~GridDirection.turnCounterclockwise():jetbrains.jetpad.projectional.diagram.base.GridDirection" resolve="turnCounterclockwise" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3Tm1VV" id="2nWW3egI_sl" role="1B3o_S" />
                            <node concept="3cqZAl" id="2nWW3egI_sm" role="3clF45" />
                          </node>
                          <node concept="3uibUv" id="3m8TDKKbefz" role="2Ghqu4">
                            <ref role="3uigEE" to="v7xa:~KeyEvent" resolve="KeyEvent" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3m8TDKKbef$" role="2OqNvi">
                  <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.build():jetbrains.jetpad.projectional.view.ViewTrait" resolve="build" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6IvYjB$0FMz" role="3cqZAp">
          <node concept="37vLTw" id="6IvYjB$0FM$" role="3cqZAk">
            <ref role="3cqZAo" node="6IvYjB$0FJQ" resolve="blockView" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2nWW3egIHoH" role="1B3o_S" />
      <node concept="3uibUv" id="6IvYjB$0FMA" role="3clF45">
        <ref role="3uigEE" to="zdnc:~DiagramNodeView" resolve="DiagramNodeView" />
      </node>
    </node>
    <node concept="3clFb_" id="6mlphA0M9jK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updatePositionsFromModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="6mlphA0PIpN" role="3clF46">
        <property role="TrG5h" value="contentView" />
        <node concept="3uibUv" id="6mlphA0PJLG" role="1tU5fm">
          <ref role="3uigEE" to="jqfx:~View" resolve="View" />
        </node>
      </node>
      <node concept="37vLTG" id="6mlphA0PJY$" role="3clF46">
        <property role="TrG5h" value="nodeView" />
        <node concept="3uibUv" id="6mlphA0PLsP" role="1tU5fm">
          <ref role="3uigEE" to="zdnc:~DiagramNodeView" resolve="DiagramNodeView" />
        </node>
      </node>
      <node concept="3clFbS" id="6mlphA0M9jN" role="3clF47">
        <node concept="3cpWs8" id="6mlphA0Nv0L" role="3cqZAp">
          <node concept="3cpWsn" id="6mlphA0Nv0M" role="3cpWs9">
            <property role="TrG5h" value="xPosition" />
            <node concept="3uibUv" id="6mlphA0Nv0D" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
            <node concept="2OqwBi" id="6mlphA0Nv0N" role="33vP2m">
              <node concept="2OqwBi" id="6mlphA0Nv0O" role="2Oq$k0">
                <node concept="37vLTw" id="6mlphA0Nv0P" role="2Oq$k0">
                  <ref role="3cqZAo" node="6mlphA0PIpN" resolve="contentView" />
                </node>
                <node concept="liA8E" id="6mlphA0Nv0Q" role="2OqNvi">
                  <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                  <node concept="10M0yZ" id="6mlphA0Nv0R" role="37wK5m">
                    <ref role="1PxDUh" to="8n5u:70DU5_aRQ79" resolve="MovableContentView" />
                    <ref role="3cqZAo" to="8n5u:6mlphA0BHaq" resolve="POSITION_X" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6mlphA0Nv0S" role="2OqNvi">
                <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6mlphA0N$TE" role="3cqZAp">
          <node concept="3cpWsn" id="6mlphA0N$TF" role="3cpWs9">
            <property role="TrG5h" value="yPosition" />
            <node concept="3uibUv" id="6mlphA0N$Tn" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
            <node concept="2OqwBi" id="6mlphA0N$TG" role="33vP2m">
              <node concept="2OqwBi" id="6mlphA0N$TH" role="2Oq$k0">
                <node concept="37vLTw" id="6mlphA0N$TI" role="2Oq$k0">
                  <ref role="3cqZAo" node="6mlphA0PIpN" resolve="contentView" />
                </node>
                <node concept="liA8E" id="6mlphA0N$TJ" role="2OqNvi">
                  <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                  <node concept="10M0yZ" id="6mlphA0N$TK" role="37wK5m">
                    <ref role="3cqZAo" to="8n5u:6mlphA0BHcO" resolve="POSITION_Y" />
                    <ref role="1PxDUh" to="8n5u:70DU5_aRQ79" resolve="MovableContentView" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6mlphA0N$TL" role="2OqNvi">
                <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6mlphA0N_Yk" role="3cqZAp">
          <node concept="3cpWsn" id="6mlphA0N_Yn" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="10Oyi0" id="6mlphA0N_Yi" role="1tU5fm" />
            <node concept="3K4zz7" id="6mlphA0NAET" role="33vP2m">
              <node concept="37vLTw" id="6mlphA0NAHb" role="3K4E3e">
                <ref role="3cqZAo" node="6mlphA0Nv0M" resolve="xPosition" />
              </node>
              <node concept="3cmrfG" id="6mlphA0NAJk" role="3K4GZi">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3y3z36" id="6mlphA0NAuD" role="3K4Cdx">
                <node concept="10Nm6u" id="6mlphA0NA$J" role="3uHU7w" />
                <node concept="37vLTw" id="6mlphA0NAd9" role="3uHU7B">
                  <ref role="3cqZAo" node="6mlphA0Nv0M" resolve="xPosition" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6mlphA0NBTY" role="3cqZAp">
          <node concept="3cpWsn" id="6mlphA0NBTZ" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="6mlphA0NBU0" role="1tU5fm" />
            <node concept="3K4zz7" id="6mlphA0NBU1" role="33vP2m">
              <node concept="37vLTw" id="6mlphA0NCf7" role="3K4E3e">
                <ref role="3cqZAo" node="6mlphA0N$TF" resolve="yPosition" />
              </node>
              <node concept="3cmrfG" id="6mlphA0NBU3" role="3K4GZi">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3y3z36" id="6mlphA0NBU4" role="3K4Cdx">
                <node concept="10Nm6u" id="6mlphA0NBU5" role="3uHU7w" />
                <node concept="37vLTw" id="6mlphA0NCcK" role="3uHU7B">
                  <ref role="3cqZAo" node="6mlphA0N$TF" resolve="yPosition" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7iEi5hDgzsL" role="3cqZAp">
          <node concept="3cpWsn" id="7iEi5hDgzsM" role="3cpWs9">
            <property role="TrG5h" value="delta" />
            <node concept="3uibUv" id="7iEi5hDgzsJ" role="1tU5fm">
              <ref role="3uigEE" to="g88e:~Vector" resolve="Vector" />
            </node>
            <node concept="2OqwBi" id="7iEi5hDgzsN" role="33vP2m">
              <node concept="2OqwBi" id="7iEi5hDgzsO" role="2Oq$k0">
                <node concept="2OqwBi" id="7iEi5hDgzsP" role="2Oq$k0">
                  <node concept="2OqwBi" id="7iEi5hDgzsQ" role="2Oq$k0">
                    <node concept="37vLTw" id="7iEi5hDgzsR" role="2Oq$k0">
                      <ref role="3cqZAo" node="6mlphA0PJY$" resolve="nodeView" />
                    </node>
                    <node concept="liA8E" id="7iEi5hDgzsS" role="2OqNvi">
                      <ref role="37wK5l" to="jqfx:~View.bounds():jetbrains.jetpad.model.property.ReadableProperty" resolve="bounds" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7iEi5hDgzsT" role="2OqNvi">
                    <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                  </node>
                </node>
                <node concept="2OwXpG" id="7iEi5hDgzsU" role="2OqNvi">
                  <ref role="2Oxat5" to="g88e:~Rectangle.origin" resolve="origin" />
                </node>
              </node>
              <node concept="liA8E" id="7iEi5hDgzsV" role="2OqNvi">
                <ref role="37wK5l" to="g88e:~Vector.sub(jetbrains.jetpad.geometry.Vector):jetbrains.jetpad.geometry.Vector" resolve="sub" />
                <node concept="2OqwBi" id="7iEi5hDgzsW" role="37wK5m">
                  <node concept="2OqwBi" id="7iEi5hDgzsX" role="2Oq$k0">
                    <node concept="2OqwBi" id="7iEi5hDgzsY" role="2Oq$k0">
                      <node concept="2OqwBi" id="5ERLuiUHpRL" role="2Oq$k0">
                        <node concept="37vLTw" id="5ERLuiUHpdn" role="2Oq$k0">
                          <ref role="3cqZAo" node="6mlphA0PJY$" resolve="nodeView" />
                        </node>
                        <node concept="2OwXpG" id="5ERLuiUHrsf" role="2OqNvi">
                          <ref role="2Oxat5" to="zdnc:~DiagramNodeView.rect" resolve="rect" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7iEi5hDgzt0" role="2OqNvi">
                        <ref role="37wK5l" to="jqfx:~View.bounds():jetbrains.jetpad.model.property.ReadableProperty" resolve="bounds" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7iEi5hDgzt1" role="2OqNvi">
                      <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                    </node>
                  </node>
                  <node concept="2OwXpG" id="7iEi5hDgzt2" role="2OqNvi">
                    <ref role="2Oxat5" to="g88e:~Rectangle.origin" resolve="origin" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6mlphA0NDeR" role="3cqZAp">
          <node concept="2OqwBi" id="6mlphA0NLvQ" role="3clFbG">
            <node concept="37vLTw" id="6mlphA0QjdG" role="2Oq$k0">
              <ref role="3cqZAo" node="6mlphA0PJY$" resolve="nodeView" />
            </node>
            <node concept="liA8E" id="6mlphA0NOay" role="2OqNvi">
              <ref role="37wK5l" to="jqfx:~View.moveTo(jetbrains.jetpad.geometry.Vector):void" resolve="moveTo" />
              <node concept="2OqwBi" id="1J5kWzWRMBy" role="37wK5m">
                <node concept="2ShNRf" id="6mlphA0Ql6I" role="2Oq$k0">
                  <node concept="1pGfFk" id="6mlphA0Qsns" role="2ShVmc">
                    <ref role="37wK5l" to="g88e:~Vector.&lt;init&gt;(int,int)" resolve="Vector" />
                    <node concept="37vLTw" id="6mlphA0QsqW" role="37wK5m">
                      <ref role="3cqZAo" node="6mlphA0N_Yn" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="6mlphA0QsRt" role="37wK5m">
                      <ref role="3cqZAo" node="6mlphA0NBTZ" resolve="y" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1J5kWzWRMU3" role="2OqNvi">
                  <ref role="37wK5l" to="g88e:~Vector.add(jetbrains.jetpad.geometry.Vector):jetbrains.jetpad.geometry.Vector" resolve="add" />
                  <node concept="37vLTw" id="7iEi5hDg_qW" role="37wK5m">
                    <ref role="3cqZAo" node="7iEi5hDgzsM" resolve="delta" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="6mlphA0M7PP" role="1B3o_S" />
      <node concept="3cqZAl" id="6mlphA0M9jI" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="7RwPgCWdCTf" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="fQU43XdNux">
    <property role="TrG5h" value="PropertyMapperCell" />
    <property role="1sVAO0" value="true" />
    <node concept="312cEg" id="4EnhxM02mgj" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myModelProperty" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4EnhxM02lui" role="1B3o_S" />
      <node concept="3uibUv" id="4EnhxM02mg8" role="1tU5fm">
        <ref role="3uigEE" node="4EnhxLZZ1Ll" resolve="WritableModelProperty" />
        <node concept="16syzq" id="4EnhxM03zTd" role="11_B2D">
          <ref role="16sUi3" node="4EnhxM03nNv" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="fQU43XdNuK" role="jymVt">
      <node concept="37vLTG" id="fQU43XdNuL" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="fQU43XdNuM" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="fQU43XdNuN" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="fQU43XdNuO" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="fQU43XdNuT" role="3clF45" />
      <node concept="3clFbS" id="fQU43XdNuU" role="3clF47">
        <node concept="XkiVB" id="3dX40azXS$E" role="3cqZAp">
          <ref role="37wK5l" node="4EnhxLZX43r" resolve="AbstractJetpadCell" />
          <node concept="37vLTw" id="3dX40azXTpq" role="37wK5m">
            <ref role="3cqZAo" node="fQU43XdNuL" resolve="editorContext" />
          </node>
          <node concept="37vLTw" id="3dX40azXTNX" role="37wK5m">
            <ref role="3cqZAo" node="fQU43XdNuN" resolve="node" />
          </node>
        </node>
        <node concept="3clFbF" id="4EnhxM04syo" role="3cqZAp">
          <node concept="37vLTI" id="4EnhxM04tQJ" role="3clFbG">
            <node concept="2ShNRf" id="4EnhxM04ua4" role="37vLTx">
              <node concept="YeOm9" id="4EnhxM04vyc" role="2ShVmc">
                <node concept="1Y3b0j" id="4EnhxM04vyf" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" node="4EnhxLZZ1Ll" resolve="WritableModelProperty" />
                  <ref role="37wK5l" node="4EnhxLZZ$Cj" resolve="WritableModelProperty" />
                  <node concept="3cpWs3" id="4EnhxM02kqj" role="37wK5m">
                    <node concept="3cpWs3" id="4EnhxM02kqk" role="3uHU7B">
                      <node concept="Xl_RD" id="4EnhxM02kql" role="3uHU7w">
                        <property role="Xl_RC" value="_" />
                      </node>
                      <node concept="1rXfSq" id="4EnhxM02kqm" role="3uHU7B">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getCellId():java.lang.String" resolve="getCellId" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4EnhxM02kqn" role="3uHU7w">
                      <node concept="2OqwBi" id="4EnhxM02kqo" role="2Oq$k0">
                        <node concept="liA8E" id="4EnhxM02kqp" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                        </node>
                        <node concept="2JrnkZ" id="4EnhxM02kqq" role="2Oq$k0">
                          <node concept="37vLTw" id="4EnhxM02GHk" role="2JrQYb">
                            <ref role="3cqZAo" node="fQU43XdNuN" resolve="node" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4EnhxM02kqs" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4EnhxM02kqt" role="37wK5m">
                    <node concept="2OqwBi" id="4EnhxM02kqu" role="2Oq$k0">
                      <node concept="1rXfSq" id="4EnhxM02kqv" role="2Oq$k0">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                      </node>
                      <node concept="liA8E" id="4EnhxM02kqw" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolve="getOperationContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4EnhxM02kqx" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~IOperationContext.getProject():jetbrains.mps.project.Project" resolve="getProject" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="4EnhxM04vyg" role="1B3o_S" />
                  <node concept="3clFb_" id="4EnhxM04vyh" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getModelPropertyValue" />
                    <property role="od$2w" value="false" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tmbuc" id="4EnhxM04vyj" role="1B3o_S" />
                    <node concept="16syzq" id="4EnhxM04v_Z" role="3clF45">
                      <ref role="16sUi3" node="4EnhxM03nNv" resolve="T" />
                    </node>
                    <node concept="3clFbS" id="4EnhxM04vyl" role="3clF47">
                      <node concept="3cpWs6" id="4EnhxM05o1X" role="3cqZAp">
                        <node concept="1rXfSq" id="4EnhxM05oxp" role="3cqZAk">
                          <ref role="37wK5l" node="4EnhxM04Xpm" resolve="getModelPropertyValueImpl" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="4EnhxM04vyn" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="setModelPropertyValue" />
                    <property role="od$2w" value="false" />
                    <property role="DiZV1" value="false" />
                    <node concept="37vLTG" id="4EnhxM04vyo" role="3clF46">
                      <property role="TrG5h" value="value" />
                      <node concept="16syzq" id="4EnhxM04vA0" role="1tU5fm">
                        <ref role="16sUi3" node="4EnhxM03nNv" resolve="T" />
                      </node>
                    </node>
                    <node concept="3Tmbuc" id="4EnhxM04vyr" role="1B3o_S" />
                    <node concept="3cqZAl" id="4EnhxM04vys" role="3clF45" />
                    <node concept="3clFbS" id="4EnhxM04vyt" role="3clF47">
                      <node concept="3clFbF" id="4EnhxM05pS3" role="3cqZAp">
                        <node concept="1rXfSq" id="4EnhxM05pS2" role="3clFbG">
                          <ref role="37wK5l" node="4EnhxM0565M" resolve="setModelPropertyValueImpl" />
                          <node concept="37vLTw" id="4EnhxM05pZd" role="37wK5m">
                            <ref role="3cqZAo" node="4EnhxM04vyo" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="16syzq" id="4EnhxM04v_Y" role="2Ghqu4">
                    <ref role="16sUi3" node="4EnhxM03nNv" resolve="T" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4EnhxM04syn" role="37vLTJ">
              <ref role="3cqZAo" node="4EnhxM02mgj" resolve="myModelProperty" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EnhxM01vjt" role="3cqZAp">
          <node concept="1rXfSq" id="4EnhxM01vjs" role="3clFbG">
            <ref role="37wK5l" node="4EnhxM00ZLG" resolve="addModelProperty" />
            <node concept="37vLTw" id="4EnhxM02pWM" role="37wK5m">
              <ref role="3cqZAo" node="4EnhxM02mgj" resolve="myModelProperty" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="fQU43XdNvj" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="1bnlBs3bsP7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="registerSynchronizers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1bnlBs2ZQER" role="3clF46">
        <property role="TrG5h" value="configuration" />
        <node concept="3uibUv" id="1bnlBs2ZQES" role="1tU5fm">
          <ref role="3uigEE" to="sm7x:~Mapper$SynchronizersConfiguration" resolve="Mapper.SynchronizersConfiguration" />
        </node>
      </node>
      <node concept="37vLTG" id="1bnlBs3bFiX" role="3clF46">
        <property role="TrG5h" value="viewProperty" />
        <node concept="3uibUv" id="1bnlBs3bGE4" role="1tU5fm">
          <ref role="3uigEE" to="lgza:~Property" resolve="Property" />
        </node>
      </node>
      <node concept="3clFbS" id="1bnlBs3bsPa" role="3clF47">
        <node concept="3clFbF" id="1bnlBs3bYX1" role="3cqZAp">
          <node concept="2OqwBi" id="1bnlBs3bZBP" role="3clFbG">
            <node concept="37vLTw" id="1bnlBs3bYX0" role="2Oq$k0">
              <ref role="3cqZAo" node="1bnlBs2ZQER" resolve="configuration" />
            </node>
            <node concept="liA8E" id="1bnlBs3c3CP" role="2OqNvi">
              <ref role="37wK5l" to="sm7x:~Mapper$SynchronizersConfiguration.add(jetbrains.jetpad.mapper.Synchronizer):void" resolve="add" />
              <node concept="2YIFZM" id="1bnlBs3cfdh" role="37wK5m">
                <ref role="37wK5l" to="sm7x:~Synchronizers.forProperty(jetbrains.jetpad.model.property.ReadableProperty,jetbrains.jetpad.model.property.WritableProperty):jetbrains.jetpad.mapper.Synchronizer" resolve="forProperty" />
                <ref role="1Pybhc" to="sm7x:~Synchronizers" resolve="Synchronizers" />
                <node concept="37vLTw" id="1bnlBs3cfdi" role="37wK5m">
                  <ref role="3cqZAo" node="4EnhxM02mgj" resolve="myModelProperty" />
                </node>
                <node concept="37vLTw" id="1bnlBs3cfdj" role="37wK5m">
                  <ref role="3cqZAo" node="1bnlBs3bFiX" resolve="viewProperty" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EnhxLZBUZU" role="3cqZAp">
          <node concept="2OqwBi" id="4EnhxLZBXsv" role="3clFbG">
            <node concept="37vLTw" id="4EnhxLZBUZT" role="2Oq$k0">
              <ref role="3cqZAo" node="1bnlBs2ZQER" resolve="configuration" />
            </node>
            <node concept="liA8E" id="4EnhxLZC17r" role="2OqNvi">
              <ref role="37wK5l" to="sm7x:~Mapper$SynchronizersConfiguration.add(jetbrains.jetpad.mapper.Synchronizer):void" resolve="add" />
              <node concept="2YIFZM" id="4EnhxLZC2dF" role="37wK5m">
                <ref role="37wK5l" to="sm7x:~Synchronizers.forProperty(jetbrains.jetpad.model.property.ReadableProperty,jetbrains.jetpad.model.property.WritableProperty):jetbrains.jetpad.mapper.Synchronizer" resolve="forProperty" />
                <ref role="1Pybhc" to="sm7x:~Synchronizers" resolve="Synchronizers" />
                <node concept="37vLTw" id="4EnhxLZC3i1" role="37wK5m">
                  <ref role="3cqZAo" node="1bnlBs3bFiX" resolve="viewProperty" />
                </node>
                <node concept="37vLTw" id="4EnhxLZC4pk" role="37wK5m">
                  <ref role="3cqZAo" node="4EnhxM02mgj" resolve="myModelProperty" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1bnlBs3brqj" role="1B3o_S" />
      <node concept="3cqZAl" id="1bnlBs3bsNC" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1xt3dANTALk" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="synchronize" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="1xt3dANTALl" role="1B3o_S" />
      <node concept="3cqZAl" id="1xt3dANTALn" role="3clF45" />
      <node concept="3clFbS" id="1xt3dANTALs" role="3clF47">
        <node concept="3clFbF" id="1xt3dANTESV" role="3cqZAp">
          <node concept="1rXfSq" id="1xt3dANTESU" role="3clFbG">
            <ref role="37wK5l" node="4EnhxM00zkW" resolve="synchronizeViewWithModel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4EnhxM04Xpm" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getModelPropertyValueImpl" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4EnhxM04Xpp" role="3clF47" />
      <node concept="3Tmbuc" id="4EnhxM04BzZ" role="1B3o_S" />
      <node concept="16syzq" id="4EnhxM04WZ7" role="3clF45">
        <ref role="16sUi3" node="4EnhxM03nNv" resolve="T" />
      </node>
    </node>
    <node concept="3clFb_" id="4EnhxM0565M" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="setModelPropertyValueImpl" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4EnhxM0565P" role="3clF47" />
      <node concept="3Tmbuc" id="4EnhxM053CM" role="1B3o_S" />
      <node concept="3cqZAl" id="4EnhxM0565K" role="3clF45" />
      <node concept="37vLTG" id="4EnhxM058A4" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="4EnhxM058A3" role="1tU5fm">
          <ref role="16sUi3" node="4EnhxM03nNv" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="fQU43XdNvX" role="1B3o_S" />
    <node concept="3uibUv" id="4EnhxLZY0pr" role="1zkMxy">
      <ref role="3uigEE" node="4EnhxLZX04P" resolve="AbstractJetpadCell" />
    </node>
    <node concept="16euLQ" id="4EnhxM03nNv" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="fQU43X4C0S">
    <property role="TrG5h" value="PortCell" />
    <property role="1sVAO0" value="true" />
    <node concept="3uibUv" id="2eSMEaVIc5l" role="1zkMxy">
      <ref role="3uigEE" node="4EnhxLZX04P" resolve="AbstractJetpadCell" />
    </node>
    <node concept="3clFbW" id="fQU43X4C0U" role="jymVt">
      <node concept="37vLTG" id="fQU43X4C0V" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="fQU43X4C0W" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="fQU43X4C0X" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tqbb2" id="fQU43X4C0Y" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="fQU43X4C0Z" role="3clF45" />
      <node concept="3Tm1VV" id="fQU43X4C10" role="1B3o_S" />
      <node concept="3clFbS" id="fQU43X4C11" role="3clF47">
        <node concept="XkiVB" id="fQU43X4C12" role="3cqZAp">
          <ref role="37wK5l" node="4EnhxLZX43r" resolve="AbstractJetpadCell" />
          <node concept="37vLTw" id="fQU43X4C13" role="37wK5m">
            <ref role="3cqZAo" node="fQU43X4C0V" resolve="editorContext" />
          </node>
          <node concept="37vLTw" id="fQU43X4C14" role="37wK5m">
            <ref role="3cqZAo" node="fQU43X4C0X" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4EnhxM0_Lb1" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createMapper" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4EnhxM0_Lb2" role="1B3o_S" />
      <node concept="3uibUv" id="4EnhxM0_Lb3" role="3clF45">
        <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
        <node concept="3Tqbb2" id="4EnhxM0_Lb4" role="11_B2D" />
        <node concept="3uibUv" id="4EnhxM0_Lb7" role="11_B2D">
          <ref role="3uigEE" to="jqfx:~RectView" resolve="RectView" />
        </node>
      </node>
      <node concept="3clFbS" id="4EnhxM0_Lb8" role="3clF47" />
    </node>
    <node concept="3clFb_" id="4f6Z7yPzSGf" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createDecorationMapper" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4f6Z7yPzSGg" role="1B3o_S" />
      <node concept="3uibUv" id="4f6Z7yPzSGh" role="3clF45">
        <ref role="3uigEE" to="sm7x:~Mapper" resolve="Mapper" />
        <node concept="3Tqbb2" id="4f6Z7yPzSGi" role="11_B2D" />
        <node concept="3uibUv" id="1gT9jIyl$Hm" role="11_B2D">
          <ref role="3uigEE" to="8n5u:3HZBsOQzEC7" resolve="PortDecoratorView" />
        </node>
      </node>
      <node concept="3clFbS" id="4f6Z7yPzSGk" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="fQU43X4C15" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4EnhxLZX04P">
    <property role="TrG5h" value="AbstractJetpadCell" />
    <property role="1sVAO0" value="true" />
    <node concept="3uibUv" id="6f4ruoaLhLF" role="EKbjA">
      <ref role="3uigEE" to="g51k:~SynchronizeableEditorCell" resolve="SynchronizeableEditorCell" />
    </node>
    <node concept="312cEg" id="4EnhxM00tkF" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myModelProperties" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4EnhxM00jOs" role="1B3o_S" />
      <node concept="3uibUv" id="4EnhxM00t5b" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1xt3dAOniZC" role="11_B2D">
          <ref role="3uigEE" node="1xt3dANZPZG" resolve="ReadableModelProperty" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4f6Z7yOTA8k" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myErrorItem" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="4f6Z7yOTA8l" role="1B3o_S" />
      <node concept="3uibUv" id="4f6Z7yOTA8m" role="1tU5fm">
        <ref role="3uigEE" to="lgza:~Property" resolve="Property" />
        <node concept="3uibUv" id="4f6Z7yOTA8n" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="2ShNRf" id="4f6Z7yOTA8o" role="33vP2m">
        <node concept="1pGfFk" id="4f6Z7yOTA8p" role="2ShVmc">
          <ref role="37wK5l" to="lgza:~ValueProperty.&lt;init&gt;(java.lang.Object)" resolve="ValueProperty" />
          <node concept="3uibUv" id="4f6Z7yOTA8q" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
          <node concept="3clFbT" id="4f6Z7yOTA8r" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2fBTGxfb4v" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="mySelectedItem" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="2fBTGxfb4w" role="1B3o_S" />
      <node concept="3uibUv" id="2fBTGxfb4x" role="1tU5fm">
        <ref role="3uigEE" to="lgza:~Property" resolve="Property" />
        <node concept="3uibUv" id="2fBTGxfb4y" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="2ShNRf" id="2fBTGxfb4z" role="33vP2m">
        <node concept="1pGfFk" id="2fBTGxfb4$" role="2ShVmc">
          <ref role="37wK5l" to="lgza:~ValueProperty.&lt;init&gt;(java.lang.Object)" resolve="ValueProperty" />
          <node concept="3uibUv" id="2fBTGxfb4_" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
          <node concept="3clFbT" id="2fBTGxfb4A" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="4EnhxLZX43r" role="jymVt">
      <node concept="37vLTG" id="4EnhxLZX4qD" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="4EnhxLZX4qE" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="4EnhxLZX4qF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4EnhxLZX4qG" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4EnhxLZX43t" role="3clF45" />
      <node concept="3Tm1VV" id="4EnhxLZX43u" role="1B3o_S" />
      <node concept="3clFbS" id="4EnhxLZX43v" role="3clF47">
        <node concept="XkiVB" id="4EnhxLZX4r2" role="3cqZAp">
          <ref role="37wK5l" to="g51k:~EditorCell_Collection.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.nodeEditor.cellLayout.CellLayout,jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler)" resolve="EditorCell_Collection" />
          <node concept="37vLTw" id="4EnhxLZX5e6" role="37wK5m">
            <ref role="3cqZAo" node="4EnhxLZX4qD" resolve="editorContext" />
          </node>
          <node concept="37vLTw" id="4EnhxLZX5e7" role="37wK5m">
            <ref role="3cqZAo" node="4EnhxLZX4qF" resolve="node" />
          </node>
          <node concept="2ShNRf" id="4EnhxLZX5e8" role="37wK5m">
            <node concept="HV5vD" id="2eSMEaV_ZNZ" role="2ShVmc">
              <ref role="HV5vE" node="2eSMEaVmH5p" resolve="EmptyCellLayout" />
            </node>
          </node>
          <node concept="10Nm6u" id="4EnhxLZX5ea" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5P7U$5zqAAs" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isTransparentCollection" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5P7U$5zqAAt" role="1B3o_S" />
      <node concept="10P_77" id="5P7U$5zqAAv" role="3clF45" />
      <node concept="3clFbS" id="5P7U$5zqAAw" role="3clF47">
        <node concept="3cpWs6" id="5P7U$5zqALf" role="3cqZAp">
          <node concept="3clFbT" id="5P7U$5zqAQb" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5P7U$5zqAAx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="63$PQ33inmu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDiagramCell" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="63$PQ33inmx" role="3clF47">
        <node concept="3cpWs6" id="63$PQ33iAiK" role="3cqZAp">
          <node concept="10QFUN" id="63$PQ33iHu_" role="3cqZAk">
            <node concept="3uibUv" id="63$PQ33iIiP" role="10QFUM">
              <ref role="3uigEE" node="7efWZtHWeDk" resolve="DiagramCell" />
            </node>
            <node concept="2YIFZM" id="63$PQ33iAu4" role="10QFUP">
              <ref role="1Pybhc" to="g51k:~CellFinderUtil" resolve="CellFinderUtil" />
              <ref role="37wK5l" to="g51k:~CellFinderUtil.findParent(jetbrains.mps.openapi.editor.cells.EditorCell,org.jetbrains.mps.util.Condition):jetbrains.mps.openapi.editor.cells.EditorCell_Collection" resolve="findParent" />
              <node concept="Xjq3P" id="63$PQ33iB4V" role="37wK5m" />
              <node concept="1bVj0M" id="1xt3dAOp1SK" role="37wK5m">
                <node concept="3clFbS" id="1xt3dAOp1SL" role="1bW5cS">
                  <node concept="3clFbF" id="1xt3dAOp1SM" role="3cqZAp">
                    <node concept="2ZW3vV" id="1xt3dAOp1SN" role="3clFbG">
                      <node concept="3uibUv" id="1xt3dAOp1SO" role="2ZW6by">
                        <ref role="3uigEE" node="7efWZtHWeDk" resolve="DiagramCell" />
                      </node>
                      <node concept="37vLTw" id="1xt3dAOp1SP" role="2ZW6bz">
                        <ref role="3cqZAo" node="1xt3dAOp1SQ" resolve="parent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="1xt3dAOp1SQ" role="1bW2Oz">
                  <property role="TrG5h" value="parent" />
                  <node concept="3uibUv" id="1xt3dAOp1SR" role="1tU5fm">
                    <ref role="3uigEE" to="f4zo:~EditorCell_Collection" resolve="EditorCell_Collection" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="63$PQ33inhs" role="1B3o_S" />
      <node concept="3uibUv" id="63$PQ33inl$" role="3clF45">
        <ref role="3uigEE" node="7efWZtHWeDk" resolve="DiagramCell" />
      </node>
    </node>
    <node concept="2tJIrI" id="5DFOuUnz1WT" role="jymVt" />
    <node concept="3clFb_" id="5DFOuUnzvMj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="paintCell" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5DFOuUnzvMk" role="1B3o_S" />
      <node concept="3cqZAl" id="5DFOuUnzvMm" role="3clF45" />
      <node concept="37vLTG" id="5DFOuUnzvMn" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="5DFOuUnzvMo" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="5DFOuUnzvMp" role="3clF46">
        <property role="TrG5h" value="settings" />
        <node concept="3uibUv" id="5DFOuUnzvMq" role="1tU5fm">
          <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
        </node>
      </node>
      <node concept="3clFbS" id="5DFOuUnzvMr" role="3clF47">
        <node concept="3SKdUt" id="1Rn1mnSBhWA" role="3cqZAp">
          <node concept="3SKdUq" id="1Rn1mnSBhWC" role="3SKWNk">
            <property role="3SKdUp" value="just blocking child cell painting here" />
          </node>
        </node>
        <node concept="3clFbF" id="4LTjGf2Lu9Y" role="3cqZAp">
          <node concept="1rXfSq" id="4LTjGf2Lu9W" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.paintChildCells(java.awt.Graphics,jetbrains.mps.nodeEditor.cells.ParentSettings):void" resolve="paintChildCells" />
            <node concept="37vLTw" id="4LTjGf2Luku" role="37wK5m">
              <ref role="3cqZAo" node="5DFOuUnzvMn" resolve="graphics" />
            </node>
            <node concept="37vLTw" id="4LTjGf2Lutb" role="37wK5m">
              <ref role="3cqZAo" node="5DFOuUnzvMp" resolve="settings" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5DFOuUnzvMs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5DFOuUnzyos" role="jymVt" />
    <node concept="3clFb_" id="5DFOuUnxGhh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="paintDecorations" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5DFOuUnxGhi" role="1B3o_S" />
      <node concept="3cqZAl" id="5DFOuUnxGhk" role="3clF45" />
      <node concept="37vLTG" id="5DFOuUnxGhl" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="5DFOuUnxGhm" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="5DFOuUnxGhn" role="3clF47">
        <node concept="3clFbF" id="BIhXNazWcB" role="3cqZAp">
          <node concept="2OqwBi" id="BIhXNazYNM" role="3clFbG">
            <node concept="37vLTw" id="BIhXNazWc_" role="2Oq$k0">
              <ref role="3cqZAo" node="4f6Z7yOTA8k" resolve="myErrorItem" />
            </node>
            <node concept="liA8E" id="BIhXNa$16S" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="2YIFZM" id="BIhXNazEEs" role="37wK5m">
                <ref role="1Pybhc" to="f4zo:~CellMessagesUtil" resolve="CellMessagesUtil" />
                <ref role="37wK5l" to="f4zo:~CellMessagesUtil.hasErrorMessages(jetbrains.mps.openapi.editor.cells.EditorCell):boolean" resolve="hasErrorMessages" />
                <node concept="Xjq3P" id="BIhXNazF34" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Rn1mnSBkJb" role="3cqZAp">
          <node concept="1rXfSq" id="1Rn1mnSBkJ9" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.paintChildDecorations(java.awt.Graphics):void" resolve="paintChildDecorations" />
            <node concept="37vLTw" id="1Rn1mnSBln0" role="37wK5m">
              <ref role="3cqZAo" node="5DFOuUnxGhl" resolve="graphics" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5DFOuUnxGho" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EnhxM00ZLG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addModelProperty" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4EnhxM00ZLJ" role="3clF47">
        <node concept="3clFbJ" id="4EnhxM08DkZ" role="3cqZAp">
          <node concept="3clFbS" id="4EnhxM08Dl2" role="3clFbx">
            <node concept="3clFbF" id="4EnhxM08GlP" role="3cqZAp">
              <node concept="37vLTI" id="4EnhxM08GQy" role="3clFbG">
                <node concept="2ShNRf" id="4EnhxM08H0F" role="37vLTx">
                  <node concept="1pGfFk" id="4EnhxM08J6Y" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
                    <node concept="3uibUv" id="1xt3dAOnlOm" role="1pMfVU">
                      <ref role="3uigEE" node="1xt3dANZPZG" resolve="ReadableModelProperty" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4EnhxM08GlO" role="37vLTJ">
                  <ref role="3cqZAo" node="4EnhxM00tkF" resolve="myModelProperties" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4EnhxM08Fha" role="3clFbw">
            <node concept="10Nm6u" id="4EnhxM08FCZ" role="3uHU7w" />
            <node concept="37vLTw" id="4EnhxM08DYi" role="3uHU7B">
              <ref role="3cqZAo" node="4EnhxM00tkF" resolve="myModelProperties" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EnhxM011Dh" role="3cqZAp">
          <node concept="2OqwBi" id="4EnhxM0129X" role="3clFbG">
            <node concept="37vLTw" id="4EnhxM011Dg" role="2Oq$k0">
              <ref role="3cqZAo" node="4EnhxM00tkF" resolve="myModelProperties" />
            </node>
            <node concept="liA8E" id="4EnhxM0171y" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="4EnhxM017Fo" role="37wK5m">
                <ref role="3cqZAo" node="4EnhxM010Ip" resolve="modelProperty" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4EnhxM00YRE" role="1B3o_S" />
      <node concept="3cqZAl" id="4EnhxM00ZKA" role="3clF45" />
      <node concept="37vLTG" id="4EnhxM010Ip" role="3clF46">
        <property role="TrG5h" value="modelProperty" />
        <node concept="3uibUv" id="1xt3dAOqcL6" role="1tU5fm">
          <ref role="3uigEE" node="1xt3dANZPZG" resolve="ReadableModelProperty" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7N7geA4Xn0r" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getAscent" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="7N7geA4Xn0s" role="1B3o_S" />
      <node concept="10Oyi0" id="7N7geA4Xn0u" role="3clF45" />
      <node concept="3clFbS" id="7N7geA4Xn0v" role="3clF47">
        <node concept="3cpWs6" id="7N7geA4XqyJ" role="3cqZAp">
          <node concept="1rXfSq" id="7N7geA4XsJR" role="3cqZAk">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.getHeight():int" resolve="getHeight" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7N7geA4Xn0w" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6f4ruoaLl0N" role="jymVt" />
    <node concept="3clFb_" id="6f4ruoaLnf2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canBeSynchronized" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="6f4ruoaLnf3" role="1B3o_S" />
      <node concept="10P_77" id="6f4ruoaLnf5" role="3clF45" />
      <node concept="3clFbS" id="6f4ruoaLnf8" role="3clF47">
        <node concept="3clFbF" id="6f4ruoaLpLP" role="3cqZAp">
          <node concept="3clFbT" id="6f4ruoaLpLO" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4EnhxM00zkW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="synchronizeViewWithModel" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="4EnhxM00zkX" role="1B3o_S" />
      <node concept="3cqZAl" id="4EnhxM00zkZ" role="3clF45" />
      <node concept="3clFbS" id="4EnhxM00zl0" role="3clF47">
        <node concept="3clFbJ" id="4EnhxM00$3X" role="3cqZAp">
          <node concept="3clFbS" id="4EnhxM00$3Y" role="3clFbx">
            <node concept="1DcWWT" id="4EnhxM00Amf" role="3cqZAp">
              <node concept="3clFbS" id="4EnhxM00Amg" role="2LFqv$">
                <node concept="3clFbF" id="4EnhxM00DZc" role="3cqZAp">
                  <node concept="2OqwBi" id="4EnhxM00EcL" role="3clFbG">
                    <node concept="37vLTw" id="4EnhxM00DZb" role="2Oq$k0">
                      <ref role="3cqZAo" node="4EnhxM00Amh" resolve="nextModelProperty" />
                    </node>
                    <node concept="liA8E" id="4EnhxM00NVq" role="2OqNvi">
                      <ref role="37wK5l" node="1xt3dAOl0BU" resolve="synchronizeViewWithModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4EnhxM00Amh" role="1Duv9x">
                <property role="TrG5h" value="nextModelProperty" />
                <node concept="3uibUv" id="1xt3dAOnnvA" role="1tU5fm">
                  <ref role="3uigEE" node="1xt3dANZPZG" resolve="ReadableModelProperty" />
                </node>
              </node>
              <node concept="37vLTw" id="4EnhxM00Azi" role="1DdaDG">
                <ref role="3cqZAo" node="4EnhxM00tkF" resolve="myModelProperties" />
              </node>
            </node>
            <node concept="3clFbF" id="4EnhxM00T0e" role="3cqZAp">
              <node concept="1rXfSq" id="4EnhxM00T0d" role="3clFbG">
                <ref role="37wK5l" to="g51k:~EditorCell_Collection.requestRelayout():void" resolve="requestRelayout" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4EnhxM00$X7" role="3clFbw">
            <node concept="10Nm6u" id="4EnhxM00_7g" role="3uHU7w" />
            <node concept="37vLTw" id="4EnhxM00$4m" role="3uHU7B">
              <ref role="3cqZAo" node="4EnhxM00tkF" resolve="myModelProperties" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EnhxM00zl1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="ya5FdqP5Tx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDirectChildCell" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="1xt3dANWo3b" role="3clF45">
        <ref role="3uigEE" node="4EnhxLZX04P" resolve="AbstractJetpadCell" />
      </node>
      <node concept="3clFbS" id="ya5FdqP5Tt" role="3clF47">
        <node concept="3SKdUt" id="ya5FdqP5Tl" role="3cqZAp">
          <node concept="3SKdUq" id="ya5FdqP5Tf" role="3SKWNk">
            <property role="3SKdUp" value="TODO: use more effitient way of getting port cell (by ID)" />
          </node>
        </node>
        <node concept="2Gpval" id="ya5FdqP5TF" role="3cqZAp">
          <node concept="2GrKxI" id="ya5FdqP5Tr" role="2Gsz3X">
            <property role="TrG5h" value="nextCell" />
          </node>
          <node concept="1rXfSq" id="ya5FdqP5TB" role="2GsD0m">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.getContentCells():java.lang.Iterable" resolve="getContentCells" />
          </node>
          <node concept="3clFbS" id="ya5FdqP5TP" role="2LFqv$">
            <node concept="3clFbJ" id="ya5FdqP5Tz" role="3cqZAp">
              <node concept="3clFbS" id="ya5FdqP5TD" role="3clFbx">
                <node concept="3cpWs6" id="ya5FdqP5TT" role="3cqZAp">
                  <node concept="10QFUN" id="1xt3dANWqSC" role="3cqZAk">
                    <node concept="3uibUv" id="1xt3dANWtat" role="10QFUM">
                      <ref role="3uigEE" node="4EnhxLZX04P" resolve="AbstractJetpadCell" />
                    </node>
                    <node concept="2GrUjf" id="ya5FdqP5Tn" role="10QFUP">
                      <ref role="2Gs0qQ" node="ya5FdqP5Tr" resolve="nextCell" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="ya5FdqP5Tv" role="3clFbw">
                <node concept="37vLTw" id="ya5FdqP5TN" role="3uHU7w">
                  <ref role="3cqZAo" node="ya5FdqP5TH" resolve="node" />
                </node>
                <node concept="2OqwBi" id="ya5FdqP5Tp" role="3uHU7B">
                  <node concept="2GrUjf" id="ya5FdqP5Tj" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="ya5FdqP5Tr" resolve="nextCell" />
                  </node>
                  <node concept="liA8E" id="ya5FdqP5TL" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="ya5FdqP5TJ" role="3cqZAp">
          <node concept="10Nm6u" id="ya5FdqP5Td" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tmbuc" id="ya5FdqP5Th" role="1B3o_S" />
      <node concept="37vLTG" id="ya5FdqP5TH" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="ya5FdqP5TR" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="1ARPSJOkA_A" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="syncToNextNode" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1ARPSJOkA_B" role="3clF46">
        <property role="TrG5h" value="nodesIterator" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1ARPSJOkA_C" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~ListIterator" resolve="ListIterator" />
          <node concept="3Tqbb2" id="1ARPSJOkA_D" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1ARPSJOkA_E" role="3clF46">
        <property role="TrG5h" value="existingNodes" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1ARPSJOkA_F" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3Tqbb2" id="1ARPSJOkA_G" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1ARPSJOkA_H" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1ARPSJOkA_I" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ARPSJOkA_J" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="1ARPSJOkA_K" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="3clFbS" id="1ARPSJOkA_L" role="3clF47">
        <node concept="3clFbJ" id="1ARPSJOkA_M" role="3cqZAp">
          <node concept="3clFbS" id="1ARPSJOkA_N" role="3clFbx">
            <node concept="2$JKZl" id="1ARPSJOttC$" role="3cqZAp">
              <node concept="3clFbS" id="1ARPSJOttC_" role="2LFqv$">
                <node concept="3cpWs8" id="1ARPSJOttCA" role="3cqZAp">
                  <node concept="3cpWsn" id="1ARPSJOttCB" role="3cpWs9">
                    <property role="TrG5h" value="nextNode" />
                    <node concept="3Tqbb2" id="1ARPSJOttCC" role="1tU5fm" />
                    <node concept="2OqwBi" id="1ARPSJOttCD" role="33vP2m">
                      <node concept="37vLTw" id="1ARPSJOtu1m" role="2Oq$k0">
                        <ref role="3cqZAo" node="1ARPSJOkA_B" resolve="nodesIterator" />
                      </node>
                      <node concept="liA8E" id="1ARPSJOttCF" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ListIterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1ARPSJOttCG" role="3cqZAp">
                  <node concept="3clFbS" id="1ARPSJOttCH" role="3clFbx">
                    <node concept="3cpWs6" id="1ARPSJOttCI" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="1ARPSJOttCJ" role="3clFbw">
                    <node concept="37vLTw" id="1ARPSJOttCK" role="3uHU7w">
                      <ref role="3cqZAo" node="1ARPSJOkA_H" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="1ARPSJOttCL" role="3uHU7B">
                      <ref role="3cqZAo" node="1ARPSJOttCB" resolve="nextNode" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1ARPSJOttCM" role="3cqZAp">
                  <node concept="2OqwBi" id="1ARPSJOttCN" role="3clFbG">
                    <node concept="37vLTw" id="1ARPSJOtudz" role="2Oq$k0">
                      <ref role="3cqZAo" node="1ARPSJOkA_B" resolve="nodesIterator" />
                    </node>
                    <node concept="liA8E" id="1ARPSJOttCP" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ListIterator.remove():void" resolve="remove" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1ARPSJOttCQ" role="3cqZAp">
                  <node concept="2OqwBi" id="1ARPSJOttCR" role="3clFbG">
                    <node concept="37vLTw" id="1ARPSJOtuiN" role="2Oq$k0">
                      <ref role="3cqZAo" node="1ARPSJOkA_E" resolve="existingNodes" />
                    </node>
                    <node concept="liA8E" id="1ARPSJOttCT" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
                      <node concept="37vLTw" id="1ARPSJOttCU" role="37wK5m">
                        <ref role="3cqZAo" node="1ARPSJOttCB" resolve="nextNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1ARPSJOttCV" role="3cqZAp">
                  <node concept="1rXfSq" id="1ARPSJOttCW" role="3clFbG">
                    <ref role="37wK5l" to="g51k:~EditorCell_Collection.removeCell(jetbrains.mps.nodeEditor.cells.EditorCell):void" resolve="removeCell" />
                    <node concept="1eOMI4" id="1ARPSJOttCX" role="37wK5m">
                      <node concept="1rXfSq" id="1ARPSJOttCY" role="1eOMHV">
                        <ref role="37wK5l" node="ya5FdqP5Tx" resolve="getDirectChildCell" />
                        <node concept="37vLTw" id="1ARPSJOttCZ" role="37wK5m">
                          <ref role="3cqZAo" node="1ARPSJOttCB" resolve="nextNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1ARPSJOttD0" role="2$JKZa">
                <node concept="37vLTw" id="1ARPSJOttYu" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ARPSJOkA_B" resolve="nodesIterator" />
                </node>
                <node concept="liA8E" id="1ARPSJOttD2" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ListIterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
            <node concept="1gVbGN" id="1ARPSJOttD3" role="3cqZAp">
              <node concept="3clFbT" id="1ARPSJOttD4" role="1gVkn0" />
              <node concept="Xl_RD" id="1ARPSJOttD5" role="1gVpfI">
                <property role="Xl_RC" value="Next element was not found in passed listIterator" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1ARPSJOkA_T" role="3clFbw">
            <node concept="37vLTw" id="1ARPSJOkA_U" role="2Oq$k0">
              <ref role="3cqZAo" node="1ARPSJOkA_E" resolve="existingNodes" />
            </node>
            <node concept="liA8E" id="1ARPSJOkA_V" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object):boolean" resolve="contains" />
              <node concept="37vLTw" id="1ARPSJOkA_W" role="37wK5m">
                <ref role="3cqZAo" node="1ARPSJOkA_H" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1ARPSJOkA_X" role="9aQIa">
            <node concept="3clFbS" id="1ARPSJOkA_Y" role="9aQI4">
              <node concept="3clFbF" id="1ARPSJOkA_Z" role="3cqZAp">
                <node concept="1rXfSq" id="1ARPSJOkAA0" role="3clFbG">
                  <ref role="37wK5l" to="g51k:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="addEditorCell" />
                  <node concept="37vLTw" id="1ARPSJOkAA1" role="37wK5m">
                    <ref role="3cqZAo" node="1ARPSJOkA_J" resolve="cell" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1ARPSJOkAA2" role="3cqZAp">
                <node concept="2OqwBi" id="1ARPSJOkAA3" role="3clFbG">
                  <node concept="37vLTw" id="1ARPSJOkAA4" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ARPSJOkA_B" resolve="nodesIterator" />
                  </node>
                  <node concept="liA8E" id="1ARPSJOkAA5" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ListIterator.add(java.lang.Object):void" resolve="add" />
                    <node concept="37vLTw" id="1ARPSJOkAA6" role="37wK5m">
                      <ref role="3cqZAo" node="1ARPSJOkA_H" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1ARPSJOkAA7" role="3cqZAp">
                <node concept="2OqwBi" id="1ARPSJOkAA8" role="3clFbG">
                  <node concept="37vLTw" id="1ARPSJOkAA9" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ARPSJOkA_E" resolve="existingNodes" />
                  </node>
                  <node concept="liA8E" id="1ARPSJOkAAa" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
                    <node concept="37vLTw" id="1ARPSJOkAAb" role="37wK5m">
                      <ref role="3cqZAo" node="1ARPSJOkA_H" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1ARPSJOkAAc" role="1B3o_S" />
      <node concept="3cqZAl" id="1ARPSJOkAAd" role="3clF45" />
    </node>
    <node concept="3clFb_" id="ya5Fdr1Hkm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="purgeTailNodes" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="ya5Fdr1Hkn" role="3clF47">
        <node concept="2$JKZl" id="ya5Fdr1Hko" role="3cqZAp">
          <node concept="3clFbS" id="ya5Fdr1Hkp" role="2LFqv$">
            <node concept="3cpWs8" id="ya5Fdr1Hkq" role="3cqZAp">
              <node concept="3cpWsn" id="ya5Fdr1Hkr" role="3cpWs9">
                <property role="TrG5h" value="nextFromList" />
                <node concept="3Tqbb2" id="ya5Fdr1Hks" role="1tU5fm" />
                <node concept="2OqwBi" id="ya5Fdr1Hkt" role="33vP2m">
                  <node concept="37vLTw" id="ya5Fdr1Hku" role="2Oq$k0">
                    <ref role="3cqZAo" node="ya5Fdr1HkK" resolve="listIterator" />
                  </node>
                  <node concept="liA8E" id="ya5Fdr1Hkv" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ListIterator.next():java.lang.Object" resolve="next" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ya5Fdr1Hkw" role="3cqZAp">
              <node concept="2OqwBi" id="ya5Fdr1Hkx" role="3clFbG">
                <node concept="37vLTw" id="ya5Fdr1Hky" role="2Oq$k0">
                  <ref role="3cqZAo" node="ya5Fdr1HkK" resolve="listIterator" />
                </node>
                <node concept="liA8E" id="ya5Fdr1Hkz" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ListIterator.remove():void" resolve="remove" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ya5Fdr1Hk$" role="3cqZAp">
              <node concept="1rXfSq" id="ya5Fdr1Hk_" role="3clFbG">
                <ref role="37wK5l" to="g51k:~EditorCell_Collection.removeCell(jetbrains.mps.nodeEditor.cells.EditorCell):void" resolve="removeCell" />
                <node concept="1eOMI4" id="ya5Fdr1HkA" role="37wK5m">
                  <node concept="1rXfSq" id="ya5Fdr1HkD" role="1eOMHV">
                    <ref role="37wK5l" node="ya5FdqP5Tx" resolve="getDirectChildCell" />
                    <node concept="37vLTw" id="ya5Fdr1HkE" role="37wK5m">
                      <ref role="3cqZAo" node="ya5Fdr1Hkr" resolve="nextFromList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="ya5Fdr1HkF" role="2$JKZa">
            <node concept="37vLTw" id="ya5Fdr1HkG" role="2Oq$k0">
              <ref role="3cqZAo" node="ya5Fdr1HkK" resolve="listIterator" />
            </node>
            <node concept="liA8E" id="ya5Fdr1HkH" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~ListIterator.hasNext():boolean" resolve="hasNext" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="ya5Fdr1HkI" role="1B3o_S" />
      <node concept="3cqZAl" id="ya5Fdr1HkJ" role="3clF45" />
      <node concept="37vLTG" id="ya5Fdr1HkK" role="3clF46">
        <property role="TrG5h" value="listIterator" />
        <node concept="3uibUv" id="ya5Fdr1HkL" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~ListIterator" resolve="ListIterator" />
          <node concept="3Tqbb2" id="ya5Fdr1HkM" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6mlphA0xaGb" role="jymVt">
      <property role="TrG5h" value="configureView" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="53wrLxGxnLA" role="3clF45" />
      <node concept="37vLTG" id="53wrLxGxp$c" role="3clF46">
        <property role="TrG5h" value="view" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="53wrLxGxp$b" role="1tU5fm">
          <ref role="3uigEE" to="jqfx:~View" resolve="View" />
        </node>
      </node>
      <node concept="37vLTG" id="53wrLxGxB6j" role="3clF46">
        <property role="TrG5h" value="canDelete" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="53wrLxGxBpy" role="1tU5fm">
          <node concept="10P_77" id="53wrLxGxEK_" role="1ajl9A" />
        </node>
      </node>
      <node concept="3clFbS" id="53wrLxGxnNh" role="3clF47">
        <node concept="3clFbF" id="53wrLxGvbaw" role="3cqZAp">
          <node concept="2OqwBi" id="53wrLxGvgkq" role="3clFbG">
            <node concept="2OqwBi" id="53wrLxGvelJ" role="2Oq$k0">
              <node concept="37vLTw" id="53wrLxGxxM6" role="2Oq$k0">
                <ref role="3cqZAo" node="53wrLxGxp$c" resolve="view" />
              </node>
              <node concept="liA8E" id="53wrLxGvf01" role="2OqNvi">
                <ref role="37wK5l" to="jqfx:~View.focusable():jetbrains.jetpad.model.property.Property" resolve="focusable" />
              </node>
            </node>
            <node concept="liA8E" id="53wrLxGvjqT" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="3clFbT" id="53wrLxGvksg" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1zQJDAjbcza" role="3cqZAp">
          <node concept="2OqwBi" id="1zQJDAjbczb" role="3clFbG">
            <node concept="2OqwBi" id="1zQJDAjbczc" role="2Oq$k0">
              <node concept="37vLTw" id="53wrLxGxzlW" role="2Oq$k0">
                <ref role="3cqZAo" node="53wrLxGxp$c" resolve="view" />
              </node>
              <node concept="liA8E" id="1zQJDAjbcze" role="2OqNvi">
                <ref role="37wK5l" to="jqfx:~View.prop(jetbrains.jetpad.projectional.view.ViewPropertySpec):jetbrains.jetpad.model.property.Property" resolve="prop" />
                <node concept="10M0yZ" id="1zQJDAjbczf" role="37wK5m">
                  <ref role="3cqZAo" to="zdnc:~RootTrait.DELETE_HANDLER" resolve="DELETE_HANDLER" />
                  <ref role="1PxDUh" to="zdnc:~RootTrait" resolve="RootTrait" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1zQJDAjbczg" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="2ShNRf" id="1zQJDAjbczh" role="37wK5m">
                <node concept="YeOm9" id="1zQJDAjbczi" role="2ShVmc">
                  <node concept="1Y3b0j" id="1zQJDAjbczj" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="zdnc:~DeleteHandler" resolve="DeleteHandler" />
                    <node concept="3Tm1VV" id="1zQJDAjbczk" role="1B3o_S" />
                    <node concept="3clFb_" id="1zQJDAjbczl" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="canDelete" />
                      <property role="DiZV1" value="false" />
                      <property role="IEkAT" value="false" />
                      <node concept="3Tm1VV" id="1zQJDAjbczm" role="1B3o_S" />
                      <node concept="10P_77" id="1zQJDAjbczn" role="3clF45" />
                      <node concept="3clFbS" id="1zQJDAjbczo" role="3clF47">
                        <node concept="3SKdUt" id="6mlphA0yy6g" role="3cqZAp">
                          <node concept="3SKdUq" id="6mlphA0yy6w" role="3SKWNk">
                            <property role="3SKdUp" value="TODO: do we need it? it always return true.." />
                          </node>
                        </node>
                        <node concept="3clFbF" id="53wrLxGxGCT" role="3cqZAp">
                          <node concept="2OqwBi" id="53wrLxGxGSt" role="3clFbG">
                            <node concept="37vLTw" id="53wrLxGxGCS" role="2Oq$k0">
                              <ref role="3cqZAo" node="53wrLxGxB6j" resolve="canDelete" />
                            </node>
                            <node concept="1Bd96e" id="53wrLxGxHwm" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="1zQJDAjbczr" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="delete" />
                      <property role="DiZV1" value="false" />
                      <property role="IEkAT" value="false" />
                      <node concept="3Tm1VV" id="1zQJDAjbczs" role="1B3o_S" />
                      <node concept="3cqZAl" id="1zQJDAjbczt" role="3clF45" />
                      <node concept="3clFbS" id="1zQJDAjbczu" role="3clF47">
                        <node concept="3clFbF" id="6mlphA0xihK" role="3cqZAp">
                          <node concept="2OqwBi" id="6mlphA0xjhp" role="3clFbG">
                            <node concept="2OqwBi" id="6mlphA0xiNx" role="2Oq$k0">
                              <node concept="2OqwBi" id="6mlphA0xil$" role="2Oq$k0">
                                <node concept="1rXfSq" id="6mlphA0xihJ" role="2Oq$k0">
                                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                                </node>
                                <node concept="liA8E" id="6mlphA0xiJm" role="2OqNvi">
                                  <ref role="37wK5l" to="cj4x:~EditorComponent.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6mlphA0xjeB" role="2OqNvi">
                                <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection():jetbrains.mps.openapi.editor.selection.Selection" resolve="getSelection" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6mlphA0xjxO" role="2OqNvi">
                              <ref role="37wK5l" to="lwvz:~Selection.executeAction(jetbrains.mps.openapi.editor.cells.CellActionType):void" resolve="executeAction" />
                              <node concept="Rm8GO" id="53wrLxGmAaL" role="37wK5m">
                                <ref role="1Px2BO" to="f4zo:~CellActionType" resolve="CellActionType" />
                                <ref role="Rm8GQ" to="f4zo:~CellActionType.DELETE" resolve="DELETE" />
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
        </node>
        <node concept="3clFbF" id="3m8TDKKbeeT" role="3cqZAp">
          <node concept="2OqwBi" id="3m8TDKKbeeU" role="3clFbG">
            <node concept="37vLTw" id="L6rm9$tgbH" role="2Oq$k0">
              <ref role="3cqZAo" node="53wrLxGxp$c" resolve="view" />
            </node>
            <node concept="liA8E" id="3m8TDKKbeeW" role="2OqNvi">
              <ref role="37wK5l" to="jqfx:~View.addTrait(jetbrains.jetpad.projectional.view.ViewTrait):jetbrains.jetpad.base.Registration" resolve="addTrait" />
              <node concept="2OqwBi" id="L6rm9$ZNBQ" role="37wK5m">
                <node concept="2OqwBi" id="3m8TDKKbeeY" role="2Oq$k0">
                  <node concept="2ShNRf" id="3m8TDKKbeqn" role="2Oq$k0">
                    <node concept="1pGfFk" id="3m8TDKKbeqo" role="2ShVmc">
                      <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.&lt;init&gt;()" resolve="ViewTraitBuilder" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3m8TDKKbef0" role="2OqNvi">
                    <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.on(jetbrains.jetpad.projectional.view.ViewEventSpec,jetbrains.jetpad.projectional.view.ViewEventHandler):jetbrains.jetpad.projectional.view.ViewTraitBuilder" resolve="on" />
                    <node concept="10M0yZ" id="3m8TDKKbeu_" role="37wK5m">
                      <ref role="1PxDUh" to="jqfx:~ViewEvents" resolve="ViewEvents" />
                      <ref role="3cqZAo" to="jqfx:~ViewEvents.KEY_PRESSED" resolve="KEY_PRESSED" />
                    </node>
                    <node concept="2ShNRf" id="3m8TDKKbef2" role="37wK5m">
                      <node concept="YeOm9" id="3m8TDKKbef3" role="2ShVmc">
                        <node concept="1Y3b0j" id="3m8TDKKbef4" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <property role="1sVAO0" value="false" />
                          <property role="1EXbeo" value="false" />
                          <ref role="1Y3XeK" to="jqfx:~ViewEventHandler" resolve="ViewEventHandler" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <node concept="3Tm1VV" id="3m8TDKKbef5" role="1B3o_S" />
                          <node concept="3clFb_" id="3m8TDKKbef6" role="jymVt">
                            <property role="TrG5h" value="handle" />
                            <property role="DiZV1" value="false" />
                            <property role="od$2w" value="false" />
                            <node concept="2AHcQZ" id="3m8TDKKbef7" role="2AJF6D">
                              <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                            </node>
                            <node concept="37vLTG" id="3m8TDKKbef8" role="3clF46">
                              <property role="TrG5h" value="view" />
                              <property role="3TUv4t" value="false" />
                              <node concept="3uibUv" id="3m8TDKKbef9" role="1tU5fm">
                                <ref role="3uigEE" to="jqfx:~View" resolve="View" />
                              </node>
                            </node>
                            <node concept="37vLTG" id="3m8TDKKbefa" role="3clF46">
                              <property role="TrG5h" value="e" />
                              <property role="3TUv4t" value="false" />
                              <node concept="3uibUv" id="L6rm9$v5Ol" role="1tU5fm">
                                <ref role="3uigEE" to="v7xa:~KeyEvent" resolve="KeyEvent" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="3m8TDKKbefc" role="3clF47">
                              <node concept="3clFbJ" id="L6rm9$Y_gk" role="3cqZAp">
                                <node concept="3clFbS" id="L6rm9$Y_gn" role="3clFbx">
                                  <node concept="3cpWs6" id="L6rm9$YJdD" role="3cqZAp" />
                                </node>
                                <node concept="3fqX7Q" id="L6rm9$YAT8" role="3clFbw">
                                  <node concept="2OqwBi" id="L6rm9$YH0o" role="3fr31v">
                                    <node concept="2OqwBi" id="L6rm9$YDNJ" role="2Oq$k0">
                                      <node concept="37vLTw" id="L6rm9$YCxb" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3m8TDKKbef8" resolve="view" />
                                      </node>
                                      <node concept="liA8E" id="L6rm9$YFqf" role="2OqNvi">
                                        <ref role="37wK5l" to="jqfx:~View.focused():jetbrains.jetpad.model.property.ReadableProperty" resolve="focused" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="L6rm9$YJ92" role="2OqNvi">
                                      <ref role="37wK5l" to="lgza:~ReadableProperty.get():java.lang.Object" resolve="get" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="L6rm9$W99n" role="3cqZAp">
                                <node concept="2OqwBi" id="L6rm9$W99o" role="3clFbG">
                                  <node concept="2YIFZM" id="L6rm9$WdoG" role="2Oq$k0">
                                    <ref role="1Pybhc" to="475o:1s17jCa4YDf" resolve="MPSToolTipManager" />
                                    <ref role="37wK5l" to="475o:1s17jCa4YDJ" resolve="getInstance" />
                                  </node>
                                  <node concept="liA8E" id="L6rm9$XDeL" role="2OqNvi">
                                    <ref role="37wK5l" to="475o:59WdvGPQugF" resolve="hideToolTip" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="L6rm9$v8f4" role="3cqZAp">
                                <node concept="3clFbS" id="L6rm9$v8f7" role="3clFbx">
                                  <node concept="3clFbF" id="6mlphA0xm8Z" role="3cqZAp">
                                    <node concept="2OqwBi" id="6mlphA0xn2Z" role="3clFbG">
                                      <node concept="2OqwBi" id="6mlphA0xmC7" role="2Oq$k0">
                                        <node concept="2OqwBi" id="6mlphA0xmfL" role="2Oq$k0">
                                          <node concept="1rXfSq" id="6mlphA0xm8Y" role="2Oq$k0">
                                            <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                                          </node>
                                          <node concept="liA8E" id="6mlphA0xm_J" role="2OqNvi">
                                            <ref role="37wK5l" to="cj4x:~EditorComponent.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="6mlphA0xn05" role="2OqNvi">
                                          <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection():jetbrains.mps.openapi.editor.selection.Selection" resolve="getSelection" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="6mlphA0xnmG" role="2OqNvi">
                                        <ref role="37wK5l" to="lwvz:~Selection.executeAction(jetbrains.mps.openapi.editor.cells.CellActionType):void" resolve="executeAction" />
                                        <node concept="Rm8GO" id="6mlphA0xnxR" role="37wK5m">
                                          <ref role="1Px2BO" to="f4zo:~CellActionType" resolve="CellActionType" />
                                          <ref role="Rm8GQ" to="f4zo:~CellActionType.SHOW_MESSAGE" resolve="SHOW_MESSAGE" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="L6rm9$v9o5" role="3clFbw">
                                  <node concept="37vLTw" id="L6rm9$v9mi" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3m8TDKKbefa" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="L6rm9$vaMI" role="2OqNvi">
                                    <ref role="37wK5l" to="v7xa:~KeyEvent.is(jetbrains.jetpad.event.Key,jetbrains.jetpad.event.ModifierKey...):boolean" resolve="is" />
                                    <node concept="Rm8GO" id="L6rm9$veEa" role="37wK5m">
                                      <ref role="Rm8GQ" to="v7xa:~Key.F1" resolve="F1" />
                                      <ref role="1Px2BO" to="v7xa:~Key" resolve="Key" />
                                    </node>
                                    <node concept="Rm8GO" id="L6rm9$vgWi" role="37wK5m">
                                      <ref role="Rm8GQ" to="v7xa:~ModifierKey.CONTROL" resolve="CONTROL" />
                                      <ref role="1Px2BO" to="v7xa:~ModifierKey" resolve="ModifierKey" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3Tm1VV" id="3m8TDKKbefx" role="1B3o_S" />
                            <node concept="3cqZAl" id="3m8TDKKbefy" role="3clF45" />
                          </node>
                          <node concept="3uibUv" id="L6rm9$v4EV" role="2Ghqu4">
                            <ref role="3uigEE" to="v7xa:~KeyEvent" resolve="KeyEvent" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="L6rm9$ZOxv" role="2OqNvi">
                  <ref role="37wK5l" to="jqfx:~ViewTraitBuilder.build():jetbrains.jetpad.projectional.view.ViewTrait" resolve="build" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="53wrLxGxmg7" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2fBTGxfeoT" role="jymVt" />
    <node concept="3clFb_" id="2fBTGxfgPd" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setSelected" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="2fBTGxfgPe" role="1B3o_S" />
      <node concept="3cqZAl" id="2fBTGxfgPg" role="3clF45" />
      <node concept="37vLTG" id="2fBTGxfgPh" role="3clF46">
        <property role="TrG5h" value="isSelected" />
        <node concept="10P_77" id="2fBTGxfgPi" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2fBTGxfgPn" role="3clF47">
        <node concept="3clFbF" id="2fBTGxfgPr" role="3cqZAp">
          <node concept="3nyPlj" id="2fBTGxfgPq" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.setSelected(boolean):void" resolve="setSelected" />
            <node concept="37vLTw" id="2fBTGxfgPp" role="37wK5m">
              <ref role="3cqZAo" node="2fBTGxfgPh" resolve="isSelected" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2fBTGxfp1W" role="3cqZAp">
          <node concept="2OqwBi" id="2fBTGxfpwd" role="3clFbG">
            <node concept="37vLTw" id="2fBTGxfp1V" role="2Oq$k0">
              <ref role="3cqZAo" node="2fBTGxfb4v" resolve="mySelectedItem" />
            </node>
            <node concept="liA8E" id="2fBTGxfr4T" role="2OqNvi">
              <ref role="37wK5l" to="lgza:~WritableProperty.set(java.lang.Object):void" resolve="set" />
              <node concept="37vLTw" id="2fBTGxfwE1" role="37wK5m">
                <ref role="3cqZAo" node="2fBTGxfgPh" resolve="isSelected" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2fBTGxfgPo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4EnhxLZX04Q" role="1B3o_S" />
    <node concept="3uibUv" id="4EnhxLZX0GV" role="1zkMxy">
      <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
    </node>
  </node>
  <node concept="312cEu" id="4EnhxLZZ1Ll">
    <property role="TrG5h" value="WritableModelProperty" />
    <property role="1sVAO0" value="true" />
    <node concept="3uibUv" id="1xt3dAO0BrG" role="1zkMxy">
      <ref role="3uigEE" node="1xt3dANZPZG" resolve="ReadableModelProperty" />
      <node concept="16syzq" id="1xt3dAO0H4P" role="11_B2D">
        <ref role="16sUi3" node="4EnhxLZZ46y" resolve="T" />
      </node>
    </node>
    <node concept="312cEg" id="4EnhxLZZG9A" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myCommandId" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4EnhxLZZDH6" role="1B3o_S" />
      <node concept="17QB3L" id="4EnhxLZZFSO" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4EnhxLZZX73" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4EnhxLZZUxS" role="1B3o_S" />
      <node concept="3uibUv" id="4EnhxLZZWQd" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="3clFbW" id="4EnhxLZZ$Cj" role="jymVt">
      <node concept="3cqZAl" id="4EnhxLZZ$Cl" role="3clF45" />
      <node concept="3Tm1VV" id="4EnhxLZZ$Cm" role="1B3o_S" />
      <node concept="3clFbS" id="4EnhxLZZ$Cn" role="3clF47">
        <node concept="3clFbF" id="4EnhxLZZIlQ" role="3cqZAp">
          <node concept="37vLTI" id="4EnhxLZZIOK" role="3clFbG">
            <node concept="37vLTw" id="4EnhxLZZJ7M" role="37vLTx">
              <ref role="3cqZAo" node="4EnhxLZZAOa" resolve="commandId" />
            </node>
            <node concept="37vLTw" id="4EnhxLZZIlP" role="37vLTJ">
              <ref role="3cqZAo" node="4EnhxLZZG9A" resolve="myCommandId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EnhxLZZZrX" role="3cqZAp">
          <node concept="37vLTI" id="4EnhxM000$l" role="3clFbG">
            <node concept="37vLTw" id="4EnhxM000Sm" role="37vLTx">
              <ref role="3cqZAo" node="4EnhxLZZQ$7" resolve="project" />
            </node>
            <node concept="37vLTw" id="4EnhxLZZZrW" role="37vLTJ">
              <ref role="3cqZAo" node="4EnhxLZZX73" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1xt3dAOleGI" role="3cqZAp">
          <node concept="1rXfSq" id="1xt3dAOleGH" role="3clFbG">
            <ref role="37wK5l" to="lgza:~ValueProperty.addHandler(jetbrains.jetpad.model.event.EventHandler):jetbrains.jetpad.base.Registration" resolve="addHandler" />
            <node concept="2ShNRf" id="1xt3dAOllNB" role="37wK5m">
              <node concept="YeOm9" id="1xt3dAOllNC" role="2ShVmc">
                <node concept="1Y3b0j" id="1xt3dAOllND" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="x7mh:~EventHandler" resolve="EventHandler" />
                  <node concept="3Tm1VV" id="1xt3dAOllNE" role="1B3o_S" />
                  <node concept="3clFb_" id="1xt3dAOllNF" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="onEvent" />
                    <property role="DiZV1" value="false" />
                    <property role="IEkAT" value="false" />
                    <node concept="3Tm1VV" id="1xt3dAOllNG" role="1B3o_S" />
                    <node concept="3cqZAl" id="1xt3dAOllNH" role="3clF45" />
                    <node concept="37vLTG" id="1xt3dAOllNI" role="3clF46">
                      <property role="TrG5h" value="event" />
                      <node concept="3uibUv" id="1xt3dAOllNJ" role="1tU5fm">
                        <ref role="3uigEE" to="lgza:~PropertyChangeEvent" resolve="PropertyChangeEvent" />
                        <node concept="16syzq" id="1xt3dAOllNK" role="11_B2D">
                          <ref role="16sUi3" node="4EnhxLZZ46y" resolve="T" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="1xt3dAOllNL" role="3clF47">
                      <node concept="3clFbF" id="1xt3dAOm4w1" role="3cqZAp">
                        <node concept="1rXfSq" id="1xt3dAOm4w0" role="3clFbG">
                          <ref role="37wK5l" node="4EnhxLZZcys" resolve="safeSetModelPropertyValue" />
                          <node concept="2OqwBi" id="1xt3dAOm51R" role="37wK5m">
                            <node concept="37vLTw" id="1xt3dAOm4Wu" role="2Oq$k0">
                              <ref role="3cqZAo" node="1xt3dAOllNI" resolve="event" />
                            </node>
                            <node concept="liA8E" id="1xt3dAOm6Sj" role="2OqNvi">
                              <ref role="37wK5l" to="lgza:~PropertyChangeEvent.getNewValue():java.lang.Object" resolve="getNewValue" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="1xt3dAOllNM" role="2Ghqu4">
                    <ref role="3uigEE" to="lgza:~PropertyChangeEvent" resolve="PropertyChangeEvent" />
                    <node concept="16syzq" id="1xt3dAOllNN" role="11_B2D">
                      <ref role="16sUi3" node="4EnhxLZZ46y" resolve="T" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4EnhxLZZAOa" role="3clF46">
        <property role="TrG5h" value="commandId" />
        <node concept="17QB3L" id="4EnhxLZZAO9" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4EnhxLZZQ$7" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4EnhxLZZQRI" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4EnhxLZZcys" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="safeSetModelPropertyValue" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tmbuc" id="1xt3dAOlSXC" role="1B3o_S" />
      <node concept="3cqZAl" id="4EnhxLZZcyu" role="3clF45" />
      <node concept="37vLTG" id="4EnhxLZZcyv" role="3clF46">
        <property role="TrG5h" value="t" />
        <property role="3TUv4t" value="true" />
        <node concept="16syzq" id="4EnhxLZZcyw" role="1tU5fm">
          <ref role="16sUi3" node="4EnhxLZZ46y" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="4EnhxLZZcyx" role="3clF47">
        <node concept="3clFbF" id="2twtFhilykl" role="3cqZAp">
          <node concept="2OqwBi" id="2twtFhil$iU" role="3clFbG">
            <node concept="2OqwBi" id="2twtFhily_S" role="2Oq$k0">
              <node concept="37vLTw" id="2twtFhilykk" role="2Oq$k0">
                <ref role="3cqZAo" node="4EnhxLZZX73" resolve="myProject" />
              </node>
              <node concept="liA8E" id="2twtFhil$fW" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="2twtFhil$WK" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable):void" resolve="executeCommand" />
              <node concept="2ShNRf" id="2twtFhil$Zu" role="37wK5m">
                <node concept="YeOm9" id="2twtFhim0Uj" role="2ShVmc">
                  <node concept="1Y3b0j" id="2twtFhim0Um" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="w1kc:~UndoRunnable$Base" resolve="UndoRunnable.Base" />
                    <ref role="37wK5l" to="w1kc:~UndoRunnable$Base.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="UndoRunnable.Base" />
                    <node concept="3Tm1VV" id="2twtFhim0Un" role="1B3o_S" />
                    <node concept="3clFb_" id="2twtFhim0Uo" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <property role="IEkAT" value="false" />
                      <node concept="3Tm1VV" id="2twtFhim0Up" role="1B3o_S" />
                      <node concept="3cqZAl" id="2twtFhim0Ur" role="3clF45" />
                      <node concept="3clFbS" id="2twtFhim0Us" role="3clF47">
                        <node concept="3clFbF" id="2twtFhim1jp" role="3cqZAp">
                          <node concept="1rXfSq" id="2twtFhim1jo" role="3clFbG">
                            <ref role="37wK5l" node="4EnhxLZZcz2" resolve="setModelPropertyValue" />
                            <node concept="37vLTw" id="2twtFhim1lL" role="37wK5m">
                              <ref role="3cqZAo" node="4EnhxLZZcyv" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="2twtFhim12Z" role="37wK5m" />
                    <node concept="37vLTw" id="2twtFhim17X" role="37wK5m">
                      <ref role="3cqZAo" node="4EnhxLZZG9A" resolve="myCommandId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4EnhxLZZcz2" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="setModelPropertyValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="4EnhxLZZcz3" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="4EnhxLZZcz4" role="1tU5fm">
          <ref role="16sUi3" node="4EnhxLZZ46y" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="4EnhxLZZcz5" role="3clF47" />
      <node concept="3Tmbuc" id="4EnhxLZZcz6" role="1B3o_S" />
      <node concept="3cqZAl" id="4EnhxLZZcz7" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="4EnhxLZZ1Lm" role="1B3o_S" />
    <node concept="16euLQ" id="4EnhxLZZ46y" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="3uibUv" id="4EnhxLZZ9pl" role="EKbjA">
      <ref role="3uigEE" to="lgza:~Property" resolve="Property" />
      <node concept="16syzq" id="4EnhxLZZ9p_" role="11_B2D">
        <ref role="16sUi3" node="4EnhxLZZ46y" resolve="T" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1xt3dANZPZG">
    <property role="TrG5h" value="ReadableModelProperty" />
    <property role="1sVAO0" value="true" />
    <node concept="3clFbW" id="1xt3dAO0a$M" role="jymVt">
      <node concept="3cqZAl" id="1xt3dAO0a$N" role="3clF45" />
      <node concept="3Tm1VV" id="1xt3dAO0a$O" role="1B3o_S" />
      <node concept="3clFbS" id="1xt3dAO0a$P" role="3clF47">
        <node concept="XkiVB" id="1xt3dAOkRke" role="3cqZAp">
          <ref role="37wK5l" to="lgza:~ValueProperty.&lt;init&gt;()" resolve="ValueProperty" />
        </node>
        <node concept="3clFbF" id="1xt3dAOn4m8" role="3cqZAp">
          <node concept="1rXfSq" id="1xt3dAOn4m7" role="3clFbG">
            <ref role="37wK5l" to="lgza:~ValueProperty.set(java.lang.Object):void" resolve="set" />
            <node concept="1rXfSq" id="1xt3dAOkRr$" role="37wK5m">
              <ref role="37wK5l" node="1xt3dAOkefP" resolve="safeGetModelPropertyValue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1xt3dAOkefP" role="jymVt">
      <property role="TrG5h" value="safeGetModelPropertyValue" />
      <node concept="16syzq" id="1xt3dAOkfNq" role="3clF45">
        <ref role="16sUi3" node="1xt3dANZTf7" resolve="T" />
      </node>
      <node concept="3Tm6S6" id="1xt3dAOlVZb" role="1B3o_S" />
      <node concept="3clFbS" id="1xt3dAOkefT" role="3clF47">
        <node concept="3clFbF" id="1xt3dAOkPN7" role="3cqZAp">
          <node concept="2OqwBi" id="1xt3dAOkPN9" role="3clFbG">
            <node concept="2YIFZM" id="1xt3dAOkPNa" role="2Oq$k0">
              <ref role="37wK5l" to="w1kc:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
              <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
            </node>
            <node concept="liA8E" id="1xt3dAOkPNb" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelCommandExecutor.runReadAction(jetbrains.mps.util.Computable):java.lang.Object" resolve="runReadAction" />
              <node concept="1bVj0M" id="1xt3dAOkPNc" role="37wK5m">
                <node concept="3clFbS" id="1xt3dAOkPNd" role="1bW5cS">
                  <node concept="3clFbF" id="1xt3dAOkPNe" role="3cqZAp">
                    <node concept="2YIFZM" id="1xt3dAOkPNf" role="3clFbG">
                      <ref role="37wK5l" to="w1kc:~NodeReadAccessCasterInEditor.runCleanPropertyAccessAction(jetbrains.mps.util.Computable):java.lang.Object" resolve="runCleanPropertyAccessAction" />
                      <ref role="1Pybhc" to="w1kc:~NodeReadAccessCasterInEditor" resolve="NodeReadAccessCasterInEditor" />
                      <node concept="1bVj0M" id="1xt3dAOkPNg" role="37wK5m">
                        <node concept="3clFbS" id="1xt3dAOkPNh" role="1bW5cS">
                          <node concept="3clFbF" id="1xt3dAOkPNi" role="3cqZAp">
                            <node concept="1rXfSq" id="1xt3dAOkPNj" role="3clFbG">
                              <ref role="37wK5l" node="1xt3dAO0aAu" resolve="getModelPropertyValue" />
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
      </node>
    </node>
    <node concept="3clFb_" id="1xt3dAO0aAu" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getModelPropertyValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1xt3dAO0aAv" role="3clF47" />
      <node concept="3Tmbuc" id="1xt3dAO0aAw" role="1B3o_S" />
      <node concept="16syzq" id="1xt3dAO0aAx" role="3clF45">
        <ref role="16sUi3" node="1xt3dANZTf7" resolve="T" />
      </node>
    </node>
    <node concept="3clFb_" id="1xt3dAOl0BU" role="jymVt">
      <property role="TrG5h" value="synchronizeViewWithModel" />
      <node concept="3cqZAl" id="1xt3dAOl0BW" role="3clF45" />
      <node concept="3Tm1VV" id="1xt3dAOl0BX" role="1B3o_S" />
      <node concept="3clFbS" id="1xt3dAOl0BY" role="3clF47">
        <node concept="3clFbF" id="1xt3dAOlbzP" role="3cqZAp">
          <node concept="1rXfSq" id="1xt3dAOlbzO" role="3clFbG">
            <ref role="37wK5l" to="lgza:~ValueProperty.set(java.lang.Object):void" resolve="set" />
            <node concept="1rXfSq" id="1xt3dAOl6_x" role="37wK5m">
              <ref role="37wK5l" node="1xt3dAOkefP" resolve="safeGetModelPropertyValue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1xt3dANZPZH" role="1B3o_S" />
    <node concept="16euLQ" id="1xt3dANZTf7" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="3uibUv" id="1xt3dAOk2YT" role="1zkMxy">
      <ref role="3uigEE" to="lgza:~ValueProperty" resolve="ValueProperty" />
      <node concept="16syzq" id="1xt3dAOk64f" role="11_B2D">
        <ref role="16sUi3" node="1xt3dANZTf7" resolve="T" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2eSMEaVmH5p">
    <property role="TrG5h" value="EmptyCellLayout" />
    <node concept="2tJIrI" id="2eSMEaVmJZt" role="jymVt" />
    <node concept="3clFb_" id="2eSMEaVmJZx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doLayout" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="2eSMEaVmJZy" role="1B3o_S" />
      <node concept="3cqZAl" id="2eSMEaVmJZ$" role="3clF45" />
      <node concept="37vLTG" id="2eSMEaVmJZ_" role="3clF46">
        <property role="TrG5h" value="collection" />
        <node concept="3uibUv" id="2eSMEaVmJZA" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell_Collection" resolve="EditorCell_Collection" />
        </node>
      </node>
      <node concept="3clFbS" id="2eSMEaVmJZD" role="3clF47">
        <node concept="2Gpval" id="1RWHAMZRP$W" role="3cqZAp">
          <node concept="2GrKxI" id="1RWHAMZRP$X" role="2Gsz3X">
            <property role="TrG5h" value="childCell" />
          </node>
          <node concept="3clFbS" id="1RWHAMZRP$Y" role="2LFqv$">
            <node concept="3clFbF" id="1RWHAMZRQza" role="3cqZAp">
              <node concept="2OqwBi" id="1RWHAMZRRCY" role="3clFbG">
                <node concept="2GrUjf" id="1RWHAMZRQz9" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1RWHAMZRP$X" resolve="childCell" />
                </node>
                <node concept="liA8E" id="1RWHAMZRSWL" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.relayout():void" resolve="relayout" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1RWHAMZRQnj" role="2GsD0m">
            <ref role="3cqZAo" node="2eSMEaVmJZ_" resolve="collection" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2eSMEaVmJZE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doLayoutText" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="2eSMEaVmJZF" role="1B3o_S" />
      <node concept="3uibUv" id="2eSMEaVmJZH" role="3clF45">
        <ref role="3uigEE" to="cj4x:~TextBuilder" resolve="TextBuilder" />
      </node>
      <node concept="37vLTG" id="2eSMEaVmJZI" role="3clF46">
        <property role="TrG5h" value="iterable" />
        <node concept="3uibUv" id="2eSMEaVmJZJ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="2eSMEaVmJZK" role="11_B2D">
            <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2eSMEaVmJZN" role="3clF47">
        <node concept="3clFbF" id="2eSMEaV_SXd" role="3cqZAp">
          <node concept="2YIFZM" id="2eSMEaV_SXu" role="3clFbG">
            <ref role="37wK5l" to="eh3q:~TextBuilder.getEmptyTextBuilder():jetbrains.mps.nodeEditor.text.TextBuilder" resolve="getEmptyTextBuilder" />
            <ref role="1Pybhc" to="eh3q:~TextBuilder" resolve="TextBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2eSMEaVmH5q" role="1B3o_S" />
    <node concept="3uibUv" id="2eSMEaVmJZg" role="1zkMxy">
      <ref role="3uigEE" to="kcid:~AbstractCellLayout" resolve="AbstractCellLayout" />
    </node>
  </node>
</model>

