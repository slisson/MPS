<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:dfcc07af-60f0-4854-8074-3994ccf0ed1f(jetbrains.mps.migration.test.tests@tests)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="auc7" ref="r:22e3ec81-a192-41cd-83a2-488758bdeedc(jetbrains.mps.migration.component.util)" />
    <import index="ec5l" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="vsqj" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" />
    <import index="k7g3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="as9o" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/f:java_stub#3f233e7f-b8a6-46d2-a57f-795d56775243#org.jetbrains.annotations(Annotations/org.jetbrains.annotations@java_stub)" />
    <import index="bim2" ref="a5b1c28d-abeb-49a6-a58c-559039616d64/r:a9597bdf-0806-4a79-8ace-88240c6b9878(jetbrains.mps.migration.component/jetbrains.mps.ide.migration)" />
    <import index="kqhl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project.structure.modules(MPS.Core/jetbrains.mps.project.structure.modules@java_stub)" />
    <import index="hy6y" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.adapter.structure(MPS.Core/jetbrains.mps.smodel.adapter.structure@java_stub)" />
    <import index="6f4m" ref="528ff3b9-5fc4-40dd-931f-c6ce3650640e/r:f69c3fa1-0e30-4980-84e2-190ae44e4c3d(jetbrains.mps.lang.migration.runtime/jetbrains.mps.lang.migration.runtime.base)" />
    <import index="88zw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="t3eg" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.language(MPS.OpenAPI/org.jetbrains.mps.openapi.language@java_stub)" />
    <import index="oh7r" ref="r:eea68efb-2953-43f4-848f-9829ac5c7101(jetbrains.mps.testbench.junit.runners)" />
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="pt5l" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.project(MPS.Platform/jetbrains.mps.ide.project@java_stub)" />
    <import index="iiw6" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.components(MPS.IDEA/com.intellij.openapi.components@java_stub)" />
    <import index="l077" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.extapi.module(MPS.Core/jetbrains.mps.extapi.module@java_stub)" />
    <import index="42ru" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.module(MPS.Core/jetbrains.mps.module@java_stub)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
        <child id="8243879142738613219" name="beforeTest" index="1KhZu4" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1171983834376" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" flags="nn" index="3vFxKo">
        <child id="1171983854940" name="condition" index="3vFALc" />
      </concept>
      <concept id="8243879142738608185" name="jetbrains.mps.baseLanguage.unitTest.structure.BeforeTest" flags="in" index="1KhYhu" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
        <child id="1206655950512" name="initializer" index="3Mj9YC" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1206655653991" name="jetbrains.mps.baseLanguage.collections.structure.MapInitializer" flags="ng" index="3Mi1_Z">
        <child id="1206655902276" name="entries" index="3MiYds" />
      </concept>
      <concept id="1206655735055" name="jetbrains.mps.baseLanguage.collections.structure.MapEntry" flags="ng" index="3Milgn">
        <child id="1206655844556" name="key" index="3MiK7k" />
        <child id="1206655853135" name="value" index="3MiMdn" />
      </concept>
    </language>
  </registry>
  <node concept="3s_ewN" id="4JxJVgt40Xf">
    <property role="3s_ewP" value="Migrations" />
    <node concept="312cEu" id="5yUWKvFOXgg" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="MockModule" />
      <node concept="312cEg" id="5yUWKvFQV1R" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myModuleDescriptor" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="5yUWKvFQUDi" role="1B3o_S" />
        <node concept="3uibUv" id="5yUWKvFQV15" role="1tU5fm">
          <ref role="3uigEE" to="kqhl:~ModuleDescriptor" resolve="ModuleDescriptor" />
        </node>
      </node>
      <node concept="312cEg" id="24fxuaXp1Z5" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myUsedLanguages" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="24fxuaXp2vJ" role="1B3o_S" />
        <node concept="2hMVRd" id="24fxuaXppcs" role="1tU5fm">
          <node concept="3uibUv" id="24fxuaXppcv" role="2hN53Y">
            <ref role="3uigEE" to="t3eg:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="$5yWDriXrD" role="jymVt">
        <property role="TrG5h" value="myDependencies" />
        <node concept="3Tm6S6" id="$5yWDriXrE" role="1B3o_S" />
        <node concept="A3Dl8" id="$5yWDriY1Z" role="1tU5fm">
          <node concept="3uibUv" id="$5yWDriY3q" role="A3Ik2">
            <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
      <node concept="3clFbW" id="5yUWKvFOXgh" role="jymVt">
        <node concept="3cqZAl" id="5yUWKvFOXgi" role="3clF45" />
        <node concept="3Tm1VV" id="5yUWKvFOXgj" role="1B3o_S" />
        <node concept="3clFbS" id="5yUWKvFOXgk" role="3clF47">
          <node concept="3clFbF" id="5yUWKvFOXgl" role="3cqZAp">
            <node concept="1rXfSq" id="5yUWKvFOXgm" role="3clFbG">
              <ref role="37wK5l" to="vsqj:~AbstractModule.setModuleReference(org.jetbrains.mps.openapi.module.SModuleReference):void" resolve="setModuleReference" />
              <node concept="2ShNRf" id="5yUWKvFOXgn" role="37wK5m">
                <node concept="1pGfFk" id="5yUWKvFOXgo" role="2ShVmc">
                  <ref role="37wK5l" to="kqhl:~ModuleReference.&lt;init&gt;(java.lang.String,org.jetbrains.mps.openapi.module.SModuleId)" resolve="ModuleReference" />
                  <node concept="37vLTw" id="5yUWKvFOXgp" role="37wK5m">
                    <ref role="3cqZAo" node="5yUWKvFOXgs" resolve="name" />
                  </node>
                  <node concept="2YIFZM" id="5yUWKvFOXgq" role="37wK5m">
                    <ref role="37wK5l" to="vsqj:~ModuleId.foreign(java.lang.String):jetbrains.mps.project.ModuleId" resolve="foreign" />
                    <ref role="1Pybhc" to="vsqj:~ModuleId" resolve="ModuleId" />
                    <node concept="37vLTw" id="5yUWKvFOXgr" role="37wK5m">
                      <ref role="3cqZAo" node="5yUWKvFOXgs" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5yUWKvFQVq8" role="3cqZAp">
            <node concept="37vLTI" id="5yUWKvFQVv8" role="3clFbG">
              <node concept="37vLTw" id="5yUWKvFQVq6" role="37vLTJ">
                <ref role="3cqZAo" node="5yUWKvFQV1R" resolve="myModuleDescriptor" />
              </node>
              <node concept="2ShNRf" id="5yUWKvFQYZY" role="37vLTx">
                <node concept="1pGfFk" id="5yUWKvFQYZX" role="2ShVmc">
                  <ref role="37wK5l" to="kqhl:~ModuleDescriptor.&lt;init&gt;()" resolve="ModuleDescriptor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="24fxuaXpnGI" role="3cqZAp">
            <node concept="37vLTI" id="24fxuaXpolH" role="3clFbG">
              <node concept="2OqwBi" id="24fxuaXpoD7" role="37vLTx">
                <node concept="37vLTw" id="24fxuaXpos0" role="2Oq$k0">
                  <ref role="3cqZAo" node="24fxuaXoWmo" resolve="usedLanguages" />
                </node>
                <node concept="3lbrtF" id="24fxuaXpoSs" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="24fxuaXpnGG" role="37vLTJ">
                <ref role="3cqZAo" node="24fxuaXp1Z5" resolve="myUsedLanguages" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="$5yWDriYAb" role="3cqZAp">
            <node concept="37vLTI" id="$5yWDriZcL" role="3clFbG">
              <node concept="37vLTw" id="$5yWDriZhX" role="37vLTx">
                <ref role="3cqZAo" node="$5yWDriSnw" resolve="dependencies" />
              </node>
              <node concept="37vLTw" id="$5yWDriYA9" role="37vLTJ">
                <ref role="3cqZAo" node="$5yWDriXrD" resolve="myDependencies" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="24fxuaXph2I" role="3cqZAp">
            <node concept="2OqwBi" id="24fxuaXphdT" role="3clFbG">
              <node concept="37vLTw" id="24fxuaXph2G" role="2Oq$k0">
                <ref role="3cqZAo" node="24fxuaXoWmo" resolve="usedLanguages" />
              </node>
              <node concept="2es0OD" id="24fxuaXphsd" role="2OqNvi">
                <node concept="1bVj0M" id="24fxuaXphsf" role="23t8la">
                  <node concept="3clFbS" id="24fxuaXphsg" role="1bW5cS">
                    <node concept="3clFbF" id="24fxuaXphNC" role="3cqZAp">
                      <node concept="2OqwBi" id="24fxuaXpiwf" role="3clFbG">
                        <node concept="2OqwBi" id="24fxuaXphXQ" role="2Oq$k0">
                          <node concept="37vLTw" id="24fxuaXphNB" role="2Oq$k0">
                            <ref role="3cqZAo" node="5yUWKvFQV1R" resolve="myModuleDescriptor" />
                          </node>
                          <node concept="liA8E" id="24fxuaXpid1" role="2OqNvi">
                            <ref role="37wK5l" to="kqhl:~ModuleDescriptor.getLanguageVersions():java.util.Map" resolve="getLanguageVersions" />
                          </node>
                        </node>
                        <node concept="liA8E" id="24fxuaXpiMX" role="2OqNvi">
                          <ref role="37wK5l" to="k7g3:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                          <node concept="2OqwBi" id="24fxuaXpjgV" role="37wK5m">
                            <node concept="37vLTw" id="24fxuaXpiYh" role="2Oq$k0">
                              <ref role="3cqZAo" node="24fxuaXphsh" resolve="it" />
                            </node>
                            <node concept="3AY5_j" id="24fxuaXpjxg" role="2OqNvi" />
                          </node>
                          <node concept="2OqwBi" id="24fxuaXpkbz" role="37wK5m">
                            <node concept="37vLTw" id="24fxuaXpjRm" role="2Oq$k0">
                              <ref role="3cqZAo" node="24fxuaXphsh" resolve="it" />
                            </node>
                            <node concept="3AV6Ez" id="24fxuaXpkyO" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="24fxuaXphsh" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="24fxuaXphsi" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5yUWKvFOXgs" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="5yUWKvFOXgt" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="24fxuaXoWmo" role="3clF46">
          <property role="TrG5h" value="usedLanguages" />
          <node concept="3rvAFt" id="24fxuaXp89a" role="1tU5fm">
            <node concept="3uibUv" id="24fxuaXp8Hq" role="3rvQeY">
              <ref role="3uigEE" to="t3eg:~SLanguage" resolve="SLanguage" />
            </node>
            <node concept="10Oyi0" id="24fxuaXp9lI" role="3rvSg0" />
          </node>
        </node>
        <node concept="37vLTG" id="$5yWDriSnw" role="3clF46">
          <property role="TrG5h" value="dependencies" />
          <node concept="A3Dl8" id="$5yWDriST9" role="1tU5fm">
            <node concept="3uibUv" id="$5yWDriT2t" role="A3Ik2">
              <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5yUWKvFR23n" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getModuleDescriptor" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="5yUWKvFR23o" role="1B3o_S" />
        <node concept="3uibUv" id="5yUWKvFR23q" role="3clF45">
          <ref role="3uigEE" to="kqhl:~ModuleDescriptor" resolve="ModuleDescriptor" />
        </node>
        <node concept="3clFbS" id="5yUWKvFR23r" role="3clF47">
          <node concept="3clFbF" id="5yUWKvFR3fL" role="3cqZAp">
            <node concept="37vLTw" id="5yUWKvFR3fK" role="3clFbG">
              <ref role="3cqZAo" node="5yUWKvFQV1R" resolve="myModuleDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="24fxuaXpqpi" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getAllUsedLanguages" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="24fxuaXpqpj" role="1B3o_S" />
        <node concept="3uibUv" id="24fxuaXpqpl" role="3clF45">
          <ref role="3uigEE" to="k7g3:~Set" resolve="Set" />
          <node concept="3uibUv" id="24fxuaXpqpm" role="11_B2D">
            <ref role="3uigEE" to="t3eg:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
        <node concept="3clFbS" id="24fxuaXpqpn" role="3clF47">
          <node concept="3clFbF" id="24fxuaXpsXR" role="3cqZAp">
            <node concept="37vLTw" id="24fxuaXpsXQ" role="3clFbG">
              <ref role="3cqZAo" node="24fxuaXp1Z5" resolve="myUsedLanguages" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="$5yWDriZZn" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getDeclaredDependencies" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="$5yWDriZZo" role="1B3o_S" />
        <node concept="A3Dl8" id="$5yWDrkmCE" role="3clF45">
          <node concept="3uibUv" id="$5yWDrkmCG" role="A3Ik2">
            <ref role="3uigEE" to="88zw:~SDependency" resolve="SDependency" />
          </node>
        </node>
        <node concept="3clFbS" id="$5yWDriZZs" role="3clF47">
          <node concept="3clFbF" id="$5yWDrkhku" role="3cqZAp">
            <node concept="2OqwBi" id="$5yWDrkhtv" role="3clFbG">
              <node concept="37vLTw" id="$5yWDrkhkt" role="2Oq$k0">
                <ref role="3cqZAo" node="$5yWDriXrD" resolve="myDependencies" />
              </node>
              <node concept="3$u5V9" id="$5yWDrkhBJ" role="2OqNvi">
                <node concept="1bVj0M" id="$5yWDrkhBL" role="23t8la">
                  <node concept="3clFbS" id="$5yWDrkhBM" role="1bW5cS">
                    <node concept="3clFbF" id="$5yWDrkhI4" role="3cqZAp">
                      <node concept="10QFUN" id="uE$YS68W99" role="3clFbG">
                        <node concept="3uibUv" id="uE$YS68WgW" role="10QFUM">
                          <ref role="3uigEE" to="88zw:~SDependency" resolve="SDependency" />
                        </node>
                        <node concept="2ShNRf" id="$5yWDrkhI2" role="10QFUP">
                          <node concept="1pGfFk" id="uE$YS68vCP" role="2ShVmc">
                            <ref role="37wK5l" to="42ru:~SDependencyImpl.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModule,org.jetbrains.mps.openapi.module.SDependencyScope,boolean)" resolve="SDependencyImpl" />
                            <node concept="37vLTw" id="uE$YS68uxf" role="37wK5m">
                              <ref role="3cqZAo" node="$5yWDrkhBN" resolve="it" />
                            </node>
                            <node concept="Rm8GO" id="$5yWDrkoiS" role="37wK5m">
                              <ref role="1Px2BO" to="88zw:~SDependencyScope" resolve="SDependencyScope" />
                              <ref role="Rm8GQ" to="88zw:~SDependencyScope.DEFAULT" resolve="DEFAULT" />
                            </node>
                            <node concept="3clFbT" id="uE$YS68vtt" role="37wK5m">
                              <property role="3clFbU" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="$5yWDrkhBN" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <property role="3TUv4t" value="true" />
                    <node concept="2jxLKc" id="$5yWDrkhBO" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5yUWKvFOXgv" role="1zkMxy">
        <ref role="3uigEE" to="vsqj:~AbstractModule" resolve="AbstractModule" />
      </node>
    </node>
    <node concept="2tJIrI" id="5yUWKvFOXtt" role="jymVt" />
    <node concept="312cEu" id="47OXGvfUn5W" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="MockMigrationScript" />
      <node concept="312cEg" id="5yUWKvFP6ah" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myReference" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5yUWKvFP5NJ" role="1tU5fm">
          <ref role="3uigEE" to="6f4m:2RG318eWpZ8" resolve="MigrationScriptReference" />
        </node>
        <node concept="3Tm6S6" id="5yUWKvFP6wQ" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="5yUWKvFP2zn" role="jymVt">
        <node concept="3cqZAl" id="5yUWKvFP2zp" role="3clF45" />
        <node concept="3Tm1VV" id="5yUWKvFP2zq" role="1B3o_S" />
        <node concept="3clFbS" id="5yUWKvFP2zr" role="3clF47">
          <node concept="3clFbF" id="5yUWKvFP6zO" role="3cqZAp">
            <node concept="37vLTI" id="5yUWKvFP6_P" role="3clFbG">
              <node concept="37vLTw" id="5yUWKvFP6zM" role="37vLTJ">
                <ref role="3cqZAo" node="5yUWKvFP6ah" resolve="myReference" />
              </node>
              <node concept="2ShNRf" id="5yUWKvFP31O" role="37vLTx">
                <node concept="1pGfFk" id="5yUWKvFP31P" role="2ShVmc">
                  <ref role="37wK5l" to="6f4m:1HyHl70Zxpa" resolve="MigrationScriptReference" />
                  <node concept="37vLTw" id="24fxuaXooWr" role="37wK5m">
                    <ref role="3cqZAo" node="5yUWKvFP2Sd" resolve="lang" />
                  </node>
                  <node concept="37vLTw" id="5yUWKvFP3KB" role="37wK5m">
                    <ref role="3cqZAo" node="5yUWKvFP2Wi" resolve="version" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5yUWKvFP2Sd" role="3clF46">
          <property role="TrG5h" value="lang" />
          <node concept="3uibUv" id="24fxuaXojYg" role="1tU5fm">
            <ref role="3uigEE" to="t3eg:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
        <node concept="37vLTG" id="5yUWKvFP2Wi" role="3clF46">
          <property role="TrG5h" value="version" />
          <node concept="10Oyi0" id="5yUWKvFP2ZD" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="5yUWKvFP1uB" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getDescriptor" />
        <node concept="3uibUv" id="5yUWKvFP1uC" role="3clF45">
          <ref role="3uigEE" to="6f4m:2RG318eWpZ8" resolve="MigrationScriptReference" />
        </node>
        <node concept="3Tm1VV" id="5yUWKvFP1uD" role="1B3o_S" />
        <node concept="3clFbS" id="5yUWKvFP1uG" role="3clF47">
          <node concept="3clFbF" id="5yUWKvFP6PO" role="3cqZAp">
            <node concept="37vLTw" id="5yUWKvFP6PN" role="3clFbG">
              <ref role="3cqZAo" node="5yUWKvFP6ah" resolve="myReference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5yUWKvFP1uJ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="execute" />
        <node concept="37vLTG" id="5yUWKvFP1uK" role="3clF46">
          <property role="TrG5h" value="moduleToMigrate" />
          <node concept="3uibUv" id="5yUWKvFP1uL" role="1tU5fm">
            <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
          </node>
        </node>
        <node concept="37vLTG" id="5yUWKvFP1uM" role="3clF46">
          <property role="TrG5h" value="dataCollector" />
          <node concept="3uibUv" id="5yUWKvFP1uN" role="1tU5fm">
            <ref role="3uigEE" to="6f4m:2RG318eW0B2" resolve="DataCollector" />
          </node>
        </node>
        <node concept="3Tm1VV" id="5yUWKvFP1uO" role="1B3o_S" />
        <node concept="3uibUv" id="5yUWKvFP1uQ" role="3clF45">
          <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
        </node>
        <node concept="3clFbS" id="5yUWKvFP1uT" role="3clF47">
          <node concept="3clFbF" id="5yUWKvFP1uV" role="3cqZAp">
            <node concept="10Nm6u" id="5yUWKvFP1uU" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5yUWKvFP3S0" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getCaption" />
        <node concept="17QB3L" id="5yUWKvFP3S1" role="3clF45" />
        <node concept="3Tm1VV" id="5yUWKvFP3S2" role="1B3o_S" />
        <node concept="3clFbS" id="5yUWKvFP3S6" role="3clF47">
          <node concept="3clFbF" id="5yUWKvFP58Z" role="3cqZAp">
            <node concept="3cpWs3" id="5yUWKvFPbRA" role="3clFbG">
              <node concept="Xl_RD" id="5yUWKvFPc2Z" role="3uHU7w">
                <property role="Xl_RC" value="'" />
              </node>
              <node concept="3cpWs3" id="5yUWKvFPaNP" role="3uHU7B">
                <node concept="3cpWs3" id="5yUWKvFPa26" role="3uHU7B">
                  <node concept="3cpWs3" id="5yUWKvFP5gQ" role="3uHU7B">
                    <node concept="Xl_RD" id="5yUWKvFP58Y" role="3uHU7B">
                      <property role="Xl_RC" value="'script " />
                    </node>
                    <node concept="2OqwBi" id="5yUWKvFP6ZZ" role="3uHU7w">
                      <node concept="37vLTw" id="5yUWKvFP6Tn" role="2Oq$k0">
                        <ref role="3cqZAo" node="5yUWKvFP6ah" resolve="myReference" />
                      </node>
                      <node concept="liA8E" id="5yUWKvFP77t" role="2OqNvi">
                        <ref role="37wK5l" to="6f4m:2RG318eWpZE" resolve="getFromVersion" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5yUWKvFPabV" role="3uHU7w">
                    <property role="Xl_RC" value=" in language " />
                  </node>
                </node>
                <node concept="2OqwBi" id="5yUWKvFPb62" role="3uHU7w">
                  <node concept="37vLTw" id="5yUWKvFPaY0" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yUWKvFP6ah" resolve="myReference" />
                  </node>
                  <node concept="liA8E" id="5yUWKvFPbjI" role="2OqNvi">
                    <ref role="37wK5l" to="6f4m:2RG318eWpZ$" resolve="getLanguage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5yUWKvFP0eW" role="1zkMxy">
        <ref role="3uigEE" to="6f4m:6d7r2Fq7hpH" resolve="MigrationScriptBase" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4JxJVgt40Xg" role="1B3o_S" />
    <node concept="3s_gsd" id="4JxJVgt40Xh" role="3s_ewO">
      <node concept="3s$Bmu" id="4JxJVgt40Xi" role="3s_gse">
        <property role="3s$Bm0" value="isAvailable" />
        <node concept="3cqZAl" id="4JxJVgt40Xk" role="3clF45" />
        <node concept="3Tm1VV" id="4JxJVgt40Xm" role="1B3o_S" />
        <node concept="3clFbS" id="4JxJVgt40Xn" role="3clF47">
          <node concept="3clFbH" id="$5yWDriDBT" role="3cqZAp" />
          <node concept="3cpWs8" id="$5yWDriEuW" role="3cqZAp">
            <node concept="3cpWsn" id="$5yWDriEuX" role="3cpWs9">
              <property role="TrG5h" value="langA" />
              <node concept="3uibUv" id="$5yWDriEuY" role="1tU5fm">
                <ref role="3uigEE" to="t3eg:~SLanguage" resolve="SLanguage" />
              </node>
              <node concept="2YIFZM" id="$5yWDriEZ3" role="33vP2m">
                <ref role="1Pybhc" to="hy6y:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <ref role="37wK5l" to="hy6y:~MetaAdapterFactory.getLanguage(java.util.UUID,java.lang.String):org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
                <node concept="2ShNRf" id="$5yWDriEZ4" role="37wK5m">
                  <node concept="1pGfFk" id="$5yWDriEZ5" role="2ShVmc">
                    <ref role="37wK5l" to="k7g3:~UUID.&lt;init&gt;(long,long)" resolve="UUID" />
                    <node concept="3cmrfG" id="$5yWDriEZ6" role="37wK5m">
                      <property role="3cmrfH" value="239" />
                    </node>
                    <node concept="3cmrfG" id="$5yWDriEZ7" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="$5yWDriEZ8" role="37wK5m">
                  <property role="Xl_RC" value="langA" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="$5yWDriGO4" role="3cqZAp">
            <node concept="3cpWsn" id="$5yWDriGO5" role="3cpWs9">
              <property role="TrG5h" value="langB" />
              <node concept="3uibUv" id="$5yWDriGO6" role="1tU5fm">
                <ref role="3uigEE" to="t3eg:~SLanguage" resolve="SLanguage" />
              </node>
              <node concept="2YIFZM" id="$5yWDriGO7" role="33vP2m">
                <ref role="37wK5l" to="hy6y:~MetaAdapterFactory.getLanguage(java.util.UUID,java.lang.String):org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
                <ref role="1Pybhc" to="hy6y:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <node concept="2ShNRf" id="$5yWDriGO8" role="37wK5m">
                  <node concept="1pGfFk" id="$5yWDriGO9" role="2ShVmc">
                    <ref role="37wK5l" to="k7g3:~UUID.&lt;init&gt;(long,long)" resolve="UUID" />
                    <node concept="3cmrfG" id="$5yWDriGOa" role="37wK5m">
                      <property role="3cmrfH" value="239" />
                    </node>
                    <node concept="3cmrfG" id="$5yWDriGOb" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="$5yWDriGOc" role="37wK5m">
                  <property role="Xl_RC" value="langB" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="$5yWDriF3H" role="3cqZAp" />
          <node concept="3clFbH" id="$5yWDriJID" role="3cqZAp" />
          <node concept="3cpWs8" id="$5yWDriIQv" role="3cqZAp">
            <node concept="3cpWsn" id="$5yWDriIQw" role="3cpWs9">
              <property role="TrG5h" value="scriptA0" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="$5yWDriIQx" role="1tU5fm">
                <ref role="3uigEE" to="6f4m:2RG318eVG1Z" resolve="MigrationScript" />
              </node>
              <node concept="2ShNRf" id="5yUWKvFPfqa" role="33vP2m">
                <node concept="YeOm9" id="5yUWKvFPsDn" role="2ShVmc">
                  <node concept="1Y3b0j" id="5yUWKvFPsDq" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" node="5yUWKvFP2zn" resolve="Migrations_Test.MockMigrationScript" />
                    <ref role="1Y3XeK" node="47OXGvfUn5W" resolve="Migrations_Test.MockMigrationScript" />
                    <node concept="3Tm1VV" id="5yUWKvFPsDr" role="1B3o_S" />
                    <node concept="37vLTw" id="$5yWDriJDM" role="37wK5m">
                      <ref role="3cqZAo" node="$5yWDriEuX" resolve="langA" />
                    </node>
                    <node concept="3cmrfG" id="5yUWKvFPfqd" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="$5yWDriKyI" role="3cqZAp" />
          <node concept="3cpWs8" id="$5yWDriLZZ" role="3cqZAp">
            <node concept="3cpWsn" id="$5yWDriM00" role="3cpWs9">
              <property role="TrG5h" value="scriptB0" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="$5yWDriM01" role="1tU5fm">
                <ref role="3uigEE" to="6f4m:2RG318eVG1Z" resolve="MigrationScript" />
              </node>
              <node concept="2ShNRf" id="$5yWDriM02" role="33vP2m">
                <node concept="YeOm9" id="$5yWDriM03" role="2ShVmc">
                  <node concept="1Y3b0j" id="$5yWDriM04" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" node="5yUWKvFP2zn" resolve="Migrations_Test.MockMigrationScript" />
                    <ref role="1Y3XeK" node="47OXGvfUn5W" resolve="Migrations_Test.MockMigrationScript" />
                    <node concept="3Tm1VV" id="$5yWDriM05" role="1B3o_S" />
                    <node concept="37vLTw" id="$5yWDriMOk" role="37wK5m">
                      <ref role="3cqZAo" node="$5yWDriGO5" resolve="langB" />
                    </node>
                    <node concept="3cmrfG" id="$5yWDriM07" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFb_" id="$5yWDriM08" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="executeAfter" />
                      <node concept="A3Dl8" id="$5yWDriM09" role="3clF45">
                        <node concept="3uibUv" id="$5yWDriM0a" role="A3Ik2">
                          <ref role="3uigEE" to="6f4m:2RG318eWpZ8" resolve="MigrationScriptReference" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="$5yWDriM0b" role="1B3o_S" />
                      <node concept="3clFbS" id="$5yWDriM0c" role="3clF47">
                        <node concept="3clFbF" id="$5yWDriM0d" role="3cqZAp">
                          <node concept="2ShNRf" id="$5yWDriM0e" role="3clFbG">
                            <node concept="2HTt$P" id="$5yWDriM0f" role="2ShVmc">
                              <node concept="3uibUv" id="$5yWDriM0g" role="2HTBi0">
                                <ref role="3uigEE" to="6f4m:2RG318eWpZ8" resolve="MigrationScriptReference" />
                              </node>
                              <node concept="2OqwBi" id="$5yWDriM0h" role="2HTEbv">
                                <node concept="37vLTw" id="$5yWDriN3T" role="2Oq$k0">
                                  <ref role="3cqZAo" node="$5yWDriIQw" resolve="scriptA0" />
                                </node>
                                <node concept="liA8E" id="$5yWDriM0j" role="2OqNvi">
                                  <ref role="37wK5l" to="6f4m:4F5w8gPX8b4" resolve="getDescriptor" />
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
          <node concept="3clFbH" id="$5yWDriLF0" role="3cqZAp" />
          <node concept="3cpWs8" id="$5yWDriKQm" role="3cqZAp">
            <node concept="3cpWsn" id="$5yWDriKQn" role="3cpWs9">
              <property role="TrG5h" value="scriptA1" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="$5yWDriKQo" role="1tU5fm">
                <ref role="3uigEE" to="6f4m:2RG318eVG1Z" resolve="MigrationScript" />
              </node>
              <node concept="2ShNRf" id="$5yWDriKQp" role="33vP2m">
                <node concept="YeOm9" id="$5yWDriKQq" role="2ShVmc">
                  <node concept="1Y3b0j" id="$5yWDriKQr" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" node="47OXGvfUn5W" resolve="Migrations_Test.MockMigrationScript" />
                    <ref role="37wK5l" node="5yUWKvFP2zn" resolve="Migrations_Test.MockMigrationScript" />
                    <node concept="3Tm1VV" id="$5yWDriKQs" role="1B3o_S" />
                    <node concept="37vLTw" id="$5yWDriKQt" role="37wK5m">
                      <ref role="3cqZAo" node="$5yWDriEuX" resolve="langA" />
                    </node>
                    <node concept="3cmrfG" id="$5yWDriKQu" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3clFb_" id="$5yWDriNr3" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="requiresData" />
                      <node concept="A3Dl8" id="$5yWDriNr4" role="3clF45">
                        <node concept="3uibUv" id="$5yWDriNr5" role="A3Ik2">
                          <ref role="3uigEE" to="6f4m:2RG318eWpZ8" resolve="MigrationScriptReference" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="$5yWDriNr6" role="1B3o_S" />
                      <node concept="3clFbS" id="$5yWDriNre" role="3clF47">
                        <node concept="3clFbF" id="$5yWDriNUP" role="3cqZAp">
                          <node concept="2ShNRf" id="$5yWDriNUQ" role="3clFbG">
                            <node concept="2HTt$P" id="$5yWDriNUR" role="2ShVmc">
                              <node concept="3uibUv" id="$5yWDriNUS" role="2HTBi0">
                                <ref role="3uigEE" to="6f4m:2RG318eWpZ8" resolve="MigrationScriptReference" />
                              </node>
                              <node concept="2OqwBi" id="$5yWDriNUT" role="2HTEbv">
                                <node concept="37vLTw" id="$5yWDriP_d" role="2Oq$k0">
                                  <ref role="3cqZAo" node="$5yWDriM00" resolve="scriptB0" />
                                </node>
                                <node concept="liA8E" id="$5yWDriNUV" role="2OqNvi">
                                  <ref role="37wK5l" to="6f4m:4F5w8gPX8b4" resolve="getDescriptor" />
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
          <node concept="3clFbH" id="$5yWDrkvg4" role="3cqZAp" />
          <node concept="3cpWs8" id="3ZYZaNLMdaf" role="3cqZAp">
            <node concept="3cpWsn" id="3ZYZaNLMdag" role="3cpWs9">
              <property role="TrG5h" value="singleModule" />
              <node concept="3uibUv" id="3ZYZaNLMdah" role="1tU5fm">
                <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
              </node>
              <node concept="2ShNRf" id="3ZYZaNLMdai" role="33vP2m">
                <node concept="1pGfFk" id="3ZYZaNLMdaj" role="2ShVmc">
                  <ref role="37wK5l" node="5yUWKvFOXgh" resolve="Migrations_Test.MockModule" />
                  <node concept="Xl_RD" id="3ZYZaNLMdak" role="37wK5m">
                    <property role="Xl_RC" value="singleModule" />
                  </node>
                  <node concept="2ShNRf" id="3ZYZaNLMdal" role="37wK5m">
                    <node concept="3rGOSV" id="3ZYZaNLMdam" role="2ShVmc">
                      <node concept="3uibUv" id="3ZYZaNLMdan" role="3rHrn6">
                        <ref role="3uigEE" to="t3eg:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="10Oyi0" id="3ZYZaNLMdao" role="3rHtpV" />
                      <node concept="3Mi1_Z" id="3ZYZaNLMdap" role="3Mj9YC">
                        <node concept="3Milgn" id="3ZYZaNLMdaq" role="3MiYds">
                          <node concept="37vLTw" id="3ZYZaNLMdar" role="3MiK7k">
                            <ref role="3cqZAo" node="$5yWDriEuX" resolve="langA" />
                          </node>
                          <node concept="3cmrfG" id="3ZYZaNLMdas" role="3MiMdn">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                        <node concept="3Milgn" id="3ZYZaNLMdat" role="3MiYds">
                          <node concept="37vLTw" id="3ZYZaNLMdau" role="3MiK7k">
                            <ref role="3cqZAo" node="$5yWDriGO5" resolve="langB" />
                          </node>
                          <node concept="3cmrfG" id="3ZYZaNLMdav" role="3MiMdn">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="3ZYZaNLMdaw" role="37wK5m">
                    <node concept="kMnCb" id="3ZYZaNLMdax" role="2ShVmc">
                      <node concept="3uibUv" id="3ZYZaNLMday" role="kMuH3">
                        <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3ZYZaNLMdsF" role="3cqZAp" />
          <node concept="3clFbH" id="3ZYZaNLMsgj" role="3cqZAp" />
          <node concept="3clFbH" id="$5yWDrkAcp" role="3cqZAp" />
          <node concept="3vwNmj" id="3ZYZaNLMYBY" role="3cqZAp">
            <node concept="2YIFZM" id="3ZYZaNLMYBZ" role="3vwVQn">
              <ref role="37wK5l" to="auc7:7skfiiCuuW4" resolve="areDepsSatisfied" />
              <ref role="1Pybhc" to="auc7:tdUHv2l0Sg" resolve="MigrationComponent" />
              <node concept="2ShNRf" id="3ZYZaNLMYC0" role="37wK5m">
                <node concept="1pGfFk" id="3ZYZaNLMYC1" role="2ShVmc">
                  <ref role="37wK5l" to="bim2:5SsFeroaatn" resolve="ScriptApplied" />
                  <node concept="37vLTw" id="3ZYZaNLMYC2" role="37wK5m">
                    <ref role="3cqZAo" node="$5yWDriIQw" resolve="scriptA0" />
                  </node>
                  <node concept="37vLTw" id="3ZYZaNLN1Kx" role="37wK5m">
                    <ref role="3cqZAo" node="3ZYZaNLMdag" resolve="singleModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="3ZYZaNLMYC4" role="3cqZAp">
            <node concept="2YIFZM" id="3ZYZaNLMYC5" role="3vFALc">
              <ref role="37wK5l" to="auc7:7skfiiCuuW4" resolve="areDepsSatisfied" />
              <ref role="1Pybhc" to="auc7:tdUHv2l0Sg" resolve="MigrationComponent" />
              <node concept="2ShNRf" id="3ZYZaNLMYC6" role="37wK5m">
                <node concept="1pGfFk" id="3ZYZaNLMYC7" role="2ShVmc">
                  <ref role="37wK5l" to="bim2:5SsFeroaatn" resolve="ScriptApplied" />
                  <node concept="37vLTw" id="3ZYZaNLMYC8" role="37wK5m">
                    <ref role="3cqZAo" node="$5yWDriM00" resolve="scriptB0" />
                  </node>
                  <node concept="37vLTw" id="3ZYZaNLN1LN" role="37wK5m">
                    <ref role="3cqZAo" node="3ZYZaNLMdag" resolve="singleModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3ZYZaNLMZ2e" role="3cqZAp" />
          <node concept="3clFbH" id="3ZYZaNLMZsg" role="3cqZAp" />
          <node concept="3cpWs8" id="3ZYZaNLMtWp" role="3cqZAp">
            <node concept="3cpWsn" id="3ZYZaNLMtWq" role="3cpWs9">
              <property role="TrG5h" value="dep1" />
              <node concept="_YKpA" id="3ZYZaNLMtWr" role="1tU5fm">
                <node concept="3uibUv" id="3ZYZaNLMtWs" role="_ZDj9">
                  <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                </node>
              </node>
              <node concept="2ShNRf" id="3ZYZaNLMtWt" role="33vP2m">
                <node concept="Tc6Ow" id="3ZYZaNLMtWu" role="2ShVmc">
                  <node concept="3uibUv" id="3ZYZaNLMtWv" role="HW$YZ">
                    <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3ZYZaNLMsJp" role="3cqZAp">
            <node concept="3cpWsn" id="3ZYZaNLMsJq" role="3cpWs9">
              <property role="TrG5h" value="dep2" />
              <node concept="_YKpA" id="3ZYZaNLMsJf" role="1tU5fm">
                <node concept="3uibUv" id="3ZYZaNLMsJi" role="_ZDj9">
                  <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                </node>
              </node>
              <node concept="2ShNRf" id="3ZYZaNLMsJr" role="33vP2m">
                <node concept="Tc6Ow" id="3ZYZaNLMsJs" role="2ShVmc">
                  <node concept="3uibUv" id="3ZYZaNLMsJt" role="HW$YZ">
                    <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3ZYZaNLMeAz" role="3cqZAp">
            <node concept="3cpWsn" id="3ZYZaNLMeA$" role="3cpWs9">
              <property role="TrG5h" value="cyclicModule1" />
              <node concept="3uibUv" id="3ZYZaNLMeA_" role="1tU5fm">
                <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
              </node>
              <node concept="2ShNRf" id="3ZYZaNLMeAA" role="33vP2m">
                <node concept="1pGfFk" id="3ZYZaNLMeAB" role="2ShVmc">
                  <ref role="37wK5l" node="5yUWKvFOXgh" resolve="Migrations_Test.MockModule" />
                  <node concept="Xl_RD" id="3ZYZaNLMeAC" role="37wK5m">
                    <property role="Xl_RC" value="cyclicModule1" />
                  </node>
                  <node concept="2ShNRf" id="3ZYZaNLMeAD" role="37wK5m">
                    <node concept="3rGOSV" id="3ZYZaNLMeAE" role="2ShVmc">
                      <node concept="3uibUv" id="3ZYZaNLMeAF" role="3rHrn6">
                        <ref role="3uigEE" to="t3eg:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="10Oyi0" id="3ZYZaNLMeAG" role="3rHtpV" />
                      <node concept="3Mi1_Z" id="3ZYZaNLMeAH" role="3Mj9YC">
                        <node concept="3Milgn" id="3ZYZaNLMeAI" role="3MiYds">
                          <node concept="37vLTw" id="3ZYZaNLMeAJ" role="3MiK7k">
                            <ref role="3cqZAo" node="$5yWDriEuX" resolve="langA" />
                          </node>
                          <node concept="3cmrfG" id="3ZYZaNLMeAK" role="3MiMdn">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                        <node concept="3Milgn" id="3ZYZaNLMeAL" role="3MiYds">
                          <node concept="37vLTw" id="3ZYZaNLMeAM" role="3MiK7k">
                            <ref role="3cqZAo" node="$5yWDriGO5" resolve="langB" />
                          </node>
                          <node concept="3cmrfG" id="3ZYZaNLMeAN" role="3MiMdn">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3ZYZaNLMvAk" role="37wK5m">
                    <ref role="3cqZAo" node="3ZYZaNLMtWq" resolve="dep1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="$5yWDrkwf7" role="3cqZAp">
            <node concept="3cpWsn" id="$5yWDrkwf8" role="3cpWs9">
              <property role="TrG5h" value="cyclicModule2" />
              <node concept="3uibUv" id="$5yWDrkwf9" role="1tU5fm">
                <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
              </node>
              <node concept="2ShNRf" id="$5yWDrkwBE" role="33vP2m">
                <node concept="1pGfFk" id="$5yWDrkzRQ" role="2ShVmc">
                  <ref role="37wK5l" node="5yUWKvFOXgh" resolve="Migrations_Test.MockModule" />
                  <node concept="Xl_RD" id="$5yWDrkzWh" role="37wK5m">
                    <property role="Xl_RC" value="cyclicModule2" />
                  </node>
                  <node concept="2ShNRf" id="$5yWDrk$hf" role="37wK5m">
                    <node concept="3rGOSV" id="$5yWDrk$h6" role="2ShVmc">
                      <node concept="3uibUv" id="$5yWDrk$h7" role="3rHrn6">
                        <ref role="3uigEE" to="t3eg:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="10Oyi0" id="$5yWDrk$h8" role="3rHtpV" />
                      <node concept="3Mi1_Z" id="$5yWDrk$wN" role="3Mj9YC">
                        <node concept="3Milgn" id="$5yWDrk$$m" role="3MiYds">
                          <node concept="37vLTw" id="$5yWDrk$$A" role="3MiK7k">
                            <ref role="3cqZAo" node="$5yWDriEuX" resolve="langA" />
                          </node>
                          <node concept="3cmrfG" id="$5yWDrk$_g" role="3MiMdn">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                        <node concept="3Milgn" id="$5yWDrk$_7" role="3MiYds">
                          <node concept="37vLTw" id="$5yWDrk$_y" role="3MiK7k">
                            <ref role="3cqZAo" node="$5yWDriGO5" resolve="langB" />
                          </node>
                          <node concept="3cmrfG" id="$5yWDrk$A2" role="3MiMdn">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3ZYZaNLMvP7" role="37wK5m">
                    <ref role="3cqZAo" node="3ZYZaNLMsJq" resolve="dep2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ZYZaNLMwt2" role="3cqZAp">
            <node concept="2OqwBi" id="3ZYZaNLMwX0" role="3clFbG">
              <node concept="37vLTw" id="3ZYZaNLMwt0" role="2Oq$k0">
                <ref role="3cqZAo" node="3ZYZaNLMtWq" resolve="dep1" />
              </node>
              <node concept="TSZUe" id="3ZYZaNLMxl0" role="2OqNvi">
                <node concept="37vLTw" id="3ZYZaNLMxna" role="25WWJ7">
                  <ref role="3cqZAo" node="$5yWDrkwf8" resolve="cyclicModule2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ZYZaNLMxQj" role="3cqZAp">
            <node concept="2OqwBi" id="3ZYZaNLMydL" role="3clFbG">
              <node concept="37vLTw" id="3ZYZaNLMxQh" role="2Oq$k0">
                <ref role="3cqZAo" node="3ZYZaNLMsJq" resolve="dep2" />
              </node>
              <node concept="TSZUe" id="3ZYZaNLMz0N" role="2OqNvi">
                <node concept="37vLTw" id="3ZYZaNLMz2R" role="25WWJ7">
                  <ref role="3cqZAo" node="3ZYZaNLMeA$" resolve="cyclicModule1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3ZYZaNLN0Bp" role="3cqZAp" />
          <node concept="3vwNmj" id="3ZYZaNLN2Au" role="3cqZAp">
            <node concept="2YIFZM" id="3ZYZaNLN2Av" role="3vwVQn">
              <ref role="37wK5l" to="auc7:7skfiiCuuW4" resolve="areDepsSatisfied" />
              <ref role="1Pybhc" to="auc7:tdUHv2l0Sg" resolve="MigrationComponent" />
              <node concept="2ShNRf" id="3ZYZaNLN2Aw" role="37wK5m">
                <node concept="1pGfFk" id="3ZYZaNLN2Ax" role="2ShVmc">
                  <ref role="37wK5l" to="bim2:5SsFeroaatn" resolve="ScriptApplied" />
                  <node concept="37vLTw" id="3ZYZaNLN2Ay" role="37wK5m">
                    <ref role="3cqZAo" node="$5yWDriM00" resolve="scriptB0" />
                  </node>
                  <node concept="37vLTw" id="3ZYZaNLN2Az" role="37wK5m">
                    <ref role="3cqZAo" node="3ZYZaNLMeA$" resolve="cyclicModule1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="3ZYZaNLN28i" role="3cqZAp">
            <node concept="2YIFZM" id="3ZYZaNLN28j" role="3vwVQn">
              <ref role="37wK5l" to="auc7:7skfiiCuuW4" resolve="areDepsSatisfied" />
              <ref role="1Pybhc" to="auc7:tdUHv2l0Sg" resolve="MigrationComponent" />
              <node concept="2ShNRf" id="3ZYZaNLN28k" role="37wK5m">
                <node concept="1pGfFk" id="3ZYZaNLN28l" role="2ShVmc">
                  <ref role="37wK5l" to="bim2:5SsFeroaatn" resolve="ScriptApplied" />
                  <node concept="37vLTw" id="3ZYZaNLN2xr" role="37wK5m">
                    <ref role="3cqZAo" node="$5yWDriM00" resolve="scriptB0" />
                  </node>
                  <node concept="37vLTw" id="3ZYZaNLN3CO" role="37wK5m">
                    <ref role="3cqZAo" node="$5yWDrkwf8" resolve="cyclicModule2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="3ZYZaNLN3FF" role="3cqZAp">
            <node concept="2YIFZM" id="3ZYZaNLN3FG" role="3vFALc">
              <ref role="37wK5l" to="auc7:7skfiiCuuW4" resolve="areDepsSatisfied" />
              <ref role="1Pybhc" to="auc7:tdUHv2l0Sg" resolve="MigrationComponent" />
              <node concept="2ShNRf" id="3ZYZaNLN3FH" role="37wK5m">
                <node concept="1pGfFk" id="3ZYZaNLN3FI" role="2ShVmc">
                  <ref role="37wK5l" to="bim2:5SsFeroaatn" resolve="ScriptApplied" />
                  <node concept="37vLTw" id="3ZYZaNLN3FJ" role="37wK5m">
                    <ref role="3cqZAo" node="$5yWDriKQn" resolve="scriptA1" />
                  </node>
                  <node concept="37vLTw" id="3ZYZaNLN3FK" role="37wK5m">
                    <ref role="3cqZAo" node="3ZYZaNLMeA$" resolve="cyclicModule1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="3ZYZaNLN28o" role="3cqZAp">
            <node concept="2YIFZM" id="3ZYZaNLN28p" role="3vFALc">
              <ref role="37wK5l" to="auc7:7skfiiCuuW4" resolve="areDepsSatisfied" />
              <ref role="1Pybhc" to="auc7:tdUHv2l0Sg" resolve="MigrationComponent" />
              <node concept="2ShNRf" id="3ZYZaNLN28q" role="37wK5m">
                <node concept="1pGfFk" id="3ZYZaNLN28r" role="2ShVmc">
                  <ref role="37wK5l" to="bim2:5SsFeroaatn" resolve="ScriptApplied" />
                  <node concept="37vLTw" id="3ZYZaNLN2y_" role="37wK5m">
                    <ref role="3cqZAo" node="$5yWDriKQn" resolve="scriptA1" />
                  </node>
                  <node concept="37vLTw" id="3ZYZaNLN4f5" role="37wK5m">
                    <ref role="3cqZAo" node="$5yWDrkwf8" resolve="cyclicModule2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="$5yWDrkDHp" role="3cqZAp" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="74sHQpDbWgb">
    <property role="3s_ewP" value="MigrationAssistant" />
    <node concept="3Tm1VV" id="74sHQpDbWgc" role="1B3o_S" />
    <node concept="3s_gsd" id="74sHQpDbWgj" role="3s_ewO">
      <node concept="3s$Bmu" id="74sHQpDcnKH" role="3s_gse">
        <property role="3s$Bm0" value="test" />
        <node concept="3cqZAl" id="74sHQpDcnKJ" role="3clF45" />
        <node concept="3Tm1VV" id="74sHQpDcnKL" role="1B3o_S" />
        <node concept="3clFbS" id="74sHQpDcnKM" role="3clF47">
          <node concept="3vFxKo" id="eTQo0Zhrgp" role="3cqZAp">
            <node concept="2OqwBi" id="74sHQpDcrE7" role="3vFALc">
              <node concept="2OqwBi" id="74sHQpDcr9l" role="2Oq$k0">
                <node concept="2YIFZM" id="74sHQpDcnWp" role="2Oq$k0">
                  <ref role="37wK5l" to="pt5l:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
                  <ref role="1Pybhc" to="pt5l:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="37vLTw" id="74sHQpDcr7g" role="37wK5m">
                    <ref role="3cqZAo" node="74sHQpDcmy_" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="74sHQpDcrqn" role="2OqNvi">
                  <ref role="37wK5l" to="iiw6:~ComponentManager.getComponent(java.lang.Class):java.lang.Object" resolve="getComponent" />
                  <node concept="3VsKOn" id="74sHQpDcrvh" role="37wK5m">
                    <ref role="3VsUkX" to="bim2:5SsFeroaabl" resolve="MigrationManager" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="74sHQpDcrZj" role="2OqNvi">
                <ref role="37wK5l" to="bim2:5SsFeroaac6" resolve="isMigrationRequired" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7jBjFIiuTsb" role="3cqZAp" />
          <node concept="3cpWs8" id="7jBjFIit3KY" role="3cqZAp">
            <node concept="3cpWsn" id="7jBjFIit3KZ" role="3cpWs9">
              <property role="TrG5h" value="properties" />
              <node concept="_YKpA" id="7jBjFIit43I" role="1tU5fm">
                <node concept="3uibUv" id="7jBjFIit43K" role="_ZDj9">
                  <ref role="3uigEE" to="t3eg:~SProperty" resolve="SProperty" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7jBjFIit148" role="3cqZAp">
            <node concept="3cpWsn" id="7jBjFIit149" role="3cpWs9">
              <property role="TrG5h" value="root" />
              <node concept="3uibUv" id="7jBjFIit13T" role="1tU5fm">
                <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
              </node>
            </node>
          </node>
          <node concept="1QHqEK" id="7jBjFIiutnh" role="3cqZAp">
            <node concept="1QHqEC" id="7jBjFIiutnj" role="1QHqEI">
              <node concept="3clFbS" id="7jBjFIiutnl" role="1bW5cS">
                <node concept="3cpWs8" id="7jBjFIisTKa" role="3cqZAp">
                  <node concept="3cpWsn" id="7jBjFIisTKb" role="3cpWs9">
                    <property role="TrG5h" value="modules" />
                    <node concept="2OqwBi" id="7jBjFIisTKc" role="33vP2m">
                      <node concept="37vLTw" id="7jBjFIisTKd" role="2Oq$k0">
                        <ref role="3cqZAo" node="74sHQpDcmy_" resolve="project" />
                      </node>
                      <node concept="liA8E" id="7jBjFIisTKe" role="2OqNvi">
                        <ref role="37wK5l" to="vsqj:~Project.getModules():java.lang.Iterable" resolve="getModules" />
                      </node>
                    </node>
                    <node concept="A3Dl8" id="7jBjFIisUyS" role="1tU5fm">
                      <node concept="3qUE_q" id="7jBjFIisUNa" role="A3Ik2">
                        <node concept="3uibUv" id="7jBjFIisUVN" role="3qUE_r">
                          <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7jBjFIisXQb" role="3cqZAp">
                  <node concept="3cpWsn" id="7jBjFIisXQc" role="3cpWs9">
                    <property role="TrG5h" value="migratingSolution" />
                    <node concept="3uibUv" id="7jBjFIisXQ1" role="1tU5fm">
                      <ref role="3uigEE" to="vsqj:~Solution" resolve="Solution" />
                    </node>
                    <node concept="2OqwBi" id="7jBjFIisXQd" role="33vP2m">
                      <node concept="2OqwBi" id="7jBjFIisXQe" role="2Oq$k0">
                        <node concept="37vLTw" id="7jBjFIisXQf" role="2Oq$k0">
                          <ref role="3cqZAo" node="7jBjFIisTKb" resolve="modules" />
                        </node>
                        <node concept="UnYns" id="7jBjFIisXQg" role="2OqNvi">
                          <node concept="3uibUv" id="7jBjFIisXQh" role="UnYnz">
                            <ref role="3uigEE" to="vsqj:~Solution" resolve="Solution" />
                          </node>
                        </node>
                      </node>
                      <node concept="1uHKPH" id="7jBjFIisXQi" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7jBjFIisYXJ" role="3cqZAp">
                  <node concept="3cpWsn" id="7jBjFIisYXK" role="3cpWs9">
                    <property role="TrG5h" value="migratingModel" />
                    <node concept="3uibUv" id="7jBjFIisYX1" role="1tU5fm">
                      <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="7jBjFIisYXL" role="33vP2m">
                      <node concept="2OqwBi" id="7jBjFIisYXM" role="2Oq$k0">
                        <node concept="37vLTw" id="7jBjFIisYXN" role="2Oq$k0">
                          <ref role="3cqZAo" node="7jBjFIisXQc" resolve="migratingSolution" />
                        </node>
                        <node concept="liA8E" id="7jBjFIisYXO" role="2OqNvi">
                          <ref role="37wK5l" to="l077:~SModuleBase.getModels():java.util.List" resolve="getModels" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7jBjFIisYXP" role="2OqNvi">
                        <ref role="37wK5l" to="k7g3:~List.get(int):java.lang.Object" resolve="get" />
                        <node concept="3cmrfG" id="7jBjFIisYXQ" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7jBjFIiv49J" role="3cqZAp">
                  <node concept="37vLTI" id="7jBjFIiv49L" role="3clFbG">
                    <node concept="2OqwBi" id="7jBjFIit14a" role="37vLTx">
                      <node concept="2OqwBi" id="7jBjFIit14b" role="2Oq$k0">
                        <node concept="2OqwBi" id="7jBjFIit14c" role="2Oq$k0">
                          <node concept="37vLTw" id="7jBjFIit14d" role="2Oq$k0">
                            <ref role="3cqZAo" node="7jBjFIisYXK" resolve="migratingModel" />
                          </node>
                          <node concept="liA8E" id="7jBjFIit14e" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SModel.getRootNodes():java.lang.Iterable" resolve="getRootNodes" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7jBjFIit14f" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~Iterable.iterator():java.util.Iterator" resolve="iterator" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7jBjFIit14g" role="2OqNvi">
                        <ref role="37wK5l" to="k7g3:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7jBjFIiv49P" role="37vLTJ">
                      <ref role="3cqZAo" node="7jBjFIit149" resolve="root" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7jBjFIiuHV0" role="3cqZAp">
                  <node concept="37vLTI" id="7jBjFIiuHV2" role="3clFbG">
                    <node concept="2OqwBi" id="7jBjFIitcqu" role="37vLTx">
                      <node concept="2OqwBi" id="7jBjFIitbCo" role="2Oq$k0">
                        <node concept="2ShNRf" id="7jBjFIit4kW" role="2Oq$k0">
                          <node concept="Tc6Ow" id="7jBjFIit9mM" role="2ShVmc">
                            <node concept="3uibUv" id="7jBjFIit9JQ" role="HW$YZ">
                              <ref role="3uigEE" to="t3eg:~SProperty" resolve="SProperty" />
                            </node>
                            <node concept="2OqwBi" id="7jBjFIit9S4" role="I$8f6">
                              <node concept="37vLTw" id="7jBjFIit9Ow" role="2Oq$k0">
                                <ref role="3cqZAo" node="7jBjFIit149" resolve="root" />
                              </node>
                              <node concept="liA8E" id="7jBjFIitayh" role="2OqNvi">
                                <ref role="37wK5l" to="ec5l:~SNode.getProperties():java.lang.Iterable" resolve="getProperties" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2S7cBI" id="7jBjFIitc3t" role="2OqNvi">
                          <node concept="1bVj0M" id="7jBjFIitc3v" role="23t8la">
                            <node concept="3clFbS" id="7jBjFIitc3w" role="1bW5cS">
                              <node concept="3clFbF" id="7jBjFIitcZx" role="3cqZAp">
                                <node concept="2OqwBi" id="7jBjFIitdf2" role="3clFbG">
                                  <node concept="37vLTw" id="7jBjFIitcZw" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jBjFIitc3x" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="7jBjFIitdxK" role="2OqNvi">
                                    <ref role="37wK5l" to="t3eg:~SProperty.getName():java.lang.String" resolve="getName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="7jBjFIitc3x" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="7jBjFIitc3y" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="1nlBCl" id="7jBjFIitj8T" role="2S7zOq">
                            <property role="3clFbU" value="false" />
                          </node>
                        </node>
                      </node>
                      <node concept="ANE8D" id="7jBjFIitcLe" role="2OqNvi" />
                    </node>
                    <node concept="37vLTw" id="7jBjFIiuHV6" role="37vLTJ">
                      <ref role="3cqZAo" node="7jBjFIit3KZ" resolve="properties" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="7jBjFIivch$" role="3cqZAp">
            <node concept="3clFbC" id="7jBjFIiviDz" role="3vwVQn">
              <node concept="2OqwBi" id="7jBjFIivdiu" role="3uHU7B">
                <node concept="37vLTw" id="7jBjFIivcYy" role="2Oq$k0">
                  <ref role="3cqZAo" node="7jBjFIit3KZ" resolve="properties" />
                </node>
                <node concept="34oBXx" id="7jBjFIivdIa" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="7jBjFIivgSG" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7jBjFIivb$$" role="3cqZAp" />
          <node concept="3cpWs8" id="7jBjFIiuACn" role="3cqZAp">
            <node concept="3cpWsn" id="7jBjFIiuACo" role="3cpWs9">
              <property role="TrG5h" value="value0" />
              <node concept="3uibUv" id="7jBjFIiuABv" role="1tU5fm">
                <ref role="3uigEE" to="e2lb:~String" resolve="String" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7jBjFIiuBTM" role="3cqZAp">
            <node concept="3cpWsn" id="7jBjFIiuBTN" role="3cpWs9">
              <property role="TrG5h" value="value1" />
              <node concept="3uibUv" id="7jBjFIiuBSV" role="1tU5fm">
                <ref role="3uigEE" to="e2lb:~String" resolve="String" />
              </node>
            </node>
          </node>
          <node concept="1QHqEK" id="7jBjFIiv2LH" role="3cqZAp">
            <node concept="1QHqEC" id="7jBjFIiv2LJ" role="1QHqEI">
              <node concept="3clFbS" id="7jBjFIiv2LL" role="1bW5cS">
                <node concept="3clFbF" id="7jBjFIiuLf4" role="3cqZAp">
                  <node concept="37vLTI" id="7jBjFIiuLf6" role="3clFbG">
                    <node concept="2OqwBi" id="7jBjFIiuACp" role="37vLTx">
                      <node concept="37vLTw" id="7jBjFIiuACq" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jBjFIit149" resolve="root" />
                      </node>
                      <node concept="liA8E" id="7jBjFIiuACr" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty):java.lang.String" resolve="getProperty" />
                        <node concept="1y4W85" id="7jBjFIiuACs" role="37wK5m">
                          <node concept="3cmrfG" id="7jBjFIiuACt" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="7jBjFIiuACu" role="1y566C">
                            <ref role="3cqZAo" node="7jBjFIit3KZ" resolve="properties" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="7jBjFIiuLfa" role="37vLTJ">
                      <ref role="3cqZAo" node="7jBjFIiuACo" resolve="value0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7jBjFIiuLWI" role="3cqZAp">
                  <node concept="37vLTI" id="7jBjFIiuLWK" role="3clFbG">
                    <node concept="2OqwBi" id="7jBjFIitInY" role="37vLTx">
                      <node concept="37vLTw" id="7jBjFIitInZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jBjFIit149" resolve="root" />
                      </node>
                      <node concept="liA8E" id="7jBjFIitIo0" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty):java.lang.String" resolve="getProperty" />
                        <node concept="1y4W85" id="7jBjFIitIo1" role="37wK5m">
                          <node concept="3cmrfG" id="7jBjFIitIo2" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="7jBjFIitIo3" role="1y566C">
                            <ref role="3cqZAo" node="7jBjFIit3KZ" resolve="properties" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="7jBjFIiuLWO" role="37vLTJ">
                      <ref role="3cqZAo" node="7jBjFIiuBTN" resolve="value1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="7jBjFIitzSi" role="3cqZAp">
            <node concept="2OqwBi" id="7jBjFIitzSj" role="3vwVQn">
              <node concept="2OqwBi" id="7jBjFIitzSk" role="2Oq$k0">
                <node concept="1y4W85" id="7jBjFIitzSl" role="2Oq$k0">
                  <node concept="3cmrfG" id="7jBjFIitzSm" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="7jBjFIitzSn" role="1y566C">
                    <ref role="3cqZAo" node="7jBjFIit3KZ" resolve="properties" />
                  </node>
                </node>
                <node concept="liA8E" id="7jBjFIitzSo" role="2OqNvi">
                  <ref role="37wK5l" to="t3eg:~SProperty.getName():java.lang.String" resolve="getName" />
                </node>
              </node>
              <node concept="liA8E" id="7jBjFIitzSp" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="Xl_RD" id="7jBjFIitzSq" role="37wK5m">
                  <property role="Xl_RC" value="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="7jBjFIitB_U" role="3cqZAp">
            <node concept="2OqwBi" id="7jBjFIitFSM" role="3vwVQn">
              <node concept="37vLTw" id="7jBjFIiuEU4" role="2Oq$k0">
                <ref role="3cqZAo" node="7jBjFIiuACo" resolve="value0" />
              </node>
              <node concept="liA8E" id="7jBjFIitH49" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="Xl_RD" id="7jBjFIitHb0" role="37wK5m">
                  <property role="Xl_RC" value="239" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="7jBjFIit201" role="3cqZAp">
            <node concept="2OqwBi" id="7jBjFIitgYA" role="3vwVQn">
              <node concept="liA8E" id="7jBjFIithIU" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="Xl_RD" id="7jBjFIithP_" role="37wK5m">
                  <property role="Xl_RC" value="newvalue" />
                </node>
              </node>
              <node concept="2OqwBi" id="7jBjFIiuGXP" role="2Oq$k0">
                <node concept="1y4W85" id="7jBjFIiuGJX" role="2Oq$k0">
                  <node concept="3cmrfG" id="7jBjFIiuGJY" role="1y58nS">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="7jBjFIiuGJZ" role="1y566C">
                    <ref role="3cqZAo" node="7jBjFIit3KZ" resolve="properties" />
                  </node>
                </node>
                <node concept="liA8E" id="7jBjFIiuH3O" role="2OqNvi">
                  <ref role="37wK5l" to="t3eg:~SProperty.getName():java.lang.String" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="7jBjFIitInW" role="3cqZAp">
            <node concept="2OqwBi" id="7jBjFIitInX" role="3vwVQn">
              <node concept="liA8E" id="7jBjFIitIo4" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="Xl_RD" id="7jBjFIitIo5" role="37wK5m">
                  <property role="Xl_RC" value="239" />
                </node>
              </node>
              <node concept="37vLTw" id="7jBjFIiuGGK" role="2Oq$k0">
                <ref role="3cqZAo" node="7jBjFIiuBTN" resolve="value1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="74sHQpDbWx3" role="jymVt">
      <property role="TrG5h" value="PROJECT_PATH" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="74sHQpDbWx4" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="74sHQpDbWx5" role="33vP2m">
        <property role="Xl_RC" value="testbench/modules/migrationAssistant" />
      </node>
      <node concept="3Tm6S6" id="74sHQpDbWx6" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="74sHQpDcmy_" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="project" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="74sHQpDcmvX" role="1B3o_S" />
      <node concept="3uibUv" id="74sHQpDcmyv" role="1tU5fm">
        <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="1KhYhu" id="74sHQpDbWxN" role="1KhZu4">
      <node concept="3clFbS" id="74sHQpDbWxO" role="2VODD2">
        <node concept="3clFbF" id="74sHQpDbWCc" role="3cqZAp">
          <node concept="2YIFZM" id="74sHQpDcgRn" role="3clFbG">
            <ref role="1Pybhc" to="oh7r:3oaQFFra9DZ" resolve="MpsTestsSupport" />
            <ref role="37wK5l" to="oh7r:3oaQFFrbn6t" resolve="initEnv" />
            <node concept="3clFbT" id="74sHQpDbWCe" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="74sHQpDbWCf" role="37wK5m">
              <node concept="2YIFZM" id="74sHQpDch68" role="2Oq$k0">
                <ref role="1Pybhc" to="79ha:6rx4kZDk5A9" resolve="EnvironmentConfig" />
                <ref role="37wK5l" to="79ha:3YQ3dO9lg_M" resolve="emptyEnvironment" />
              </node>
              <node concept="liA8E" id="74sHQpDbWCh" role="2OqNvi">
                <ref role="37wK5l" to="79ha:6rx4kZDk6GC" resolve="addPlugin" />
                <node concept="Xl_RD" id="74sHQpDbWCi" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.ide.migration.assistant" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="74sHQpDbWCj" role="3cqZAp">
          <node concept="2YIFZM" id="74sHQpDbWCv" role="3clFbG">
            <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
            <ref role="37wK5l" to="e2lb:~System.setProperty(java.lang.String,java.lang.String):java.lang.String" resolve="setProperty" />
            <node concept="10M0yZ" id="74sHQpDcgSz" role="37wK5m">
              <ref role="1PxDUh" to="oh7r:43Ra3NMzuDK" resolve="ContextProjectSupport" />
              <ref role="3cqZAo" to="oh7r:7X3$CtvY4JR" resolve="PROJECT_PATH_PROPERTY" />
            </node>
            <node concept="37vLTw" id="74sHQpDbWCm" role="37wK5m">
              <ref role="3cqZAo" node="74sHQpDbWx3" resolve="PROJECT_PATH" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="74sHQpDcn_p" role="3cqZAp">
          <node concept="37vLTI" id="74sHQpDcnGL" role="3clFbG">
            <node concept="37vLTw" id="74sHQpDcn_n" role="37vLTJ">
              <ref role="3cqZAo" node="74sHQpDcmy_" resolve="project" />
            </node>
            <node concept="2YIFZM" id="74sHQpDcgSg" role="37vLTx">
              <ref role="1Pybhc" to="oh7r:43Ra3NMzuDK" resolve="ContextProjectSupport" />
              <ref role="37wK5l" to="oh7r:43Ra3NMzH1x" resolve="loadContextProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

