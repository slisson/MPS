<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:adc783db-1c21-4910-9cf7-6a22bf949a4a(jetbrains.mps.persistence.java.library)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="qx6n" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/org.jetbrains.mps.openapi.persistence@java_stub)" />
    <import index="ep0o" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.extapi.persistence(MPS.Core/jetbrains.mps.extapi.persistence@java_stub)" />
    <import index="as9o" ref="f:java_stub#3f233e7f-b8a6-46d2-a57f-795d56775243#org.jetbrains.annotations(Annotations/org.jetbrains.annotations@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="gznm" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.loading(MPS.Core/jetbrains.mps.smodel.loading@java_stub)" />
    <import index="tyed" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.nodeidmap(MPS.Core/jetbrains.mps.smodel.nodeidmap@java_stub)" />
    <import index="vsqj" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" />
    <import index="1ltj" ref="r:aa7e8178-3b66-4295-bcce-165c85d78006(jetbrains.mps.baseLanguage.javastub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="ec5l" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="88zw" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="fhgm" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.stubs.javastub.classpath(MPS.Core/jetbrains.mps.stubs.javastub.classpath@java_stub)" />
    <import index="59et" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.vfs(MPS.Core/jetbrains.mps.vfs@java_stub)" />
    <import index="d2v5" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.persistence(MPS.Core/jetbrains.mps.persistence@java_stub)" />
    <import index="51te" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.extapi.model(MPS.Core/jetbrains.mps.extapi.model@java_stub)" />
    <import index="ajxo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#org.apache.log4j(MPS.Core/org.apache.log4j@java_stub)" />
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
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
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4357968816427488499" name="jetbrains.mps.lang.smodel.structure.CheckedModuleReference" flags="nn" index="2L6k_Z">
        <property id="4357968816427488500" name="moduleId" index="2L6k_S" />
      </concept>
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
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1226566855640" name="jetbrains.mps.baseLanguage.collections.structure.AddSetElementOperation" flags="nn" index="2l5eF5">
        <child id="1226567214363" name="argument" index="2l6Ag6" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5JsnGMj1qcN">
    <property role="TrG5h" value="JavaClassStubConstants" />
    <node concept="3Tm1VV" id="5JsnGMj1qcO" role="1B3o_S" />
    <node concept="Wx3nA" id="5JsnGMj1qcP" role="jymVt">
      <property role="TrG5h" value="STUB_TYPE" />
      <property role="3TUv4t" value="true" />
      <node concept="10M0yZ" id="UnXiqJI9Mf" role="33vP2m">
        <ref role="1PxDUh" to="d2v5:~PersistenceRegistry" resolve="PersistenceRegistry" />
        <ref role="3cqZAo" to="d2v5:~PersistenceRegistry.JAVA_CLASSES_ROOT" resolve="JAVA_CLASSES_ROOT" />
      </node>
      <node concept="3Tm1VV" id="5JsnGMj1qcQ" role="1B3o_S" />
      <node concept="17QB3L" id="5JsnGMj1qcR" role="1tU5fm" />
      <node concept="z59LJ" id="5JsnGMj1qcT" role="lGtFl">
        <node concept="TZ5HA" id="5JsnGMj1qcU" role="TZ5H$">
          <node concept="1dT_AC" id="5JsnGMj1qcV" role="1dT_Ay">
            <property role="1dT_AB" value="should be in sync with what's written in plugin.xml" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="5JsnGMj1qcW" role="jymVt">
      <node concept="3cqZAl" id="5JsnGMj1qcX" role="3clF45" />
      <node concept="3Tm1VV" id="5JsnGMj1qcY" role="1B3o_S" />
      <node concept="3clFbS" id="5JsnGMj1qcZ" role="3clF47" />
    </node>
  </node>
  <node concept="312cEu" id="5JsnGMj1qd0">
    <property role="TrG5h" value="JavaClassStubModelDescriptor" />
    <node concept="3uibUv" id="6bPW_JGiSzV" role="1zkMxy">
      <ref role="3uigEE" to="51te:~ReloadableSModelBase" resolve="ReloadableSModelBase" />
    </node>
    <node concept="Wx3nA" id="5JsnGMj1qd2" role="jymVt">
      <property role="TrG5h" value="LOG" />
      <property role="3TUv4t" value="true" />
      <node concept="2YIFZM" id="Hn0$MvbYsJ" role="33vP2m">
        <ref role="37wK5l" to="ajxo:~LogManager.getLogger(java.lang.Class):org.apache.log4j.Logger" resolve="getLogger" />
        <ref role="1Pybhc" to="ajxo:~LogManager" resolve="LogManager" />
        <node concept="3VsKOn" id="Hn0$MvbYsK" role="37wK5m">
          <ref role="3VsUkX" node="5JsnGMj1qd0" resolve="JavaClassStubModelDescriptor" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5JsnGMj1qd6" role="1B3o_S" />
      <node concept="3uibUv" id="Hn0$MvbYsB" role="1tU5fm">
        <ref role="3uigEE" to="ajxo:~Logger" resolve="Logger" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JsnGMj1qd7" role="jymVt" />
    <node concept="3Tm1VV" id="5JsnGMj1qd8" role="1B3o_S" />
    <node concept="312cEg" id="5JsnGMj1qd9" role="jymVt">
      <property role="TrG5h" value="myModel" />
      <node concept="3uibUv" id="1KRNqi_Xwgv" role="1tU5fm">
        <ref role="3uigEE" to="cu2c:~SModel" resolve="SModel" />
      </node>
      <node concept="3Tm6S6" id="5JsnGMj1qda" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5JsnGMj1qdc" role="jymVt">
      <property role="TrG5h" value="myModelRoot" />
      <node concept="3uibUv" id="5JsnGMj1qdd" role="1tU5fm">
        <ref role="3uigEE" to="qx6n:~ModelRoot" resolve="ModelRoot" />
      </node>
      <node concept="3Tm6S6" id="5JsnGMj1qde" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="5JsnGMj1qdf" role="jymVt">
      <node concept="3cqZAl" id="5JsnGMj1qdg" role="3clF45" />
      <node concept="3Tm1VV" id="5JsnGMj1qdh" role="1B3o_S" />
      <node concept="3clFbS" id="5JsnGMj1qdi" role="3clF47">
        <node concept="XkiVB" id="5JsnGMj1qdj" role="3cqZAp">
          <ref role="37wK5l" to="51te:~ReloadableSModelBase.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.persistence.DataSource)" resolve="ReloadableSModelBase" />
          <node concept="37vLTw" id="5JsnGMj1qdk" role="37wK5m">
            <ref role="3cqZAo" node="5JsnGMj1qdq" resolve="modelReference" />
          </node>
          <node concept="37vLTw" id="5JsnGMj1qdl" role="37wK5m">
            <ref role="3cqZAo" node="5JsnGMj1qds" resolve="source" />
          </node>
        </node>
        <node concept="3clFbF" id="5JsnGMj1qdm" role="3cqZAp">
          <node concept="37vLTI" id="5JsnGMj1qdn" role="3clFbG">
            <node concept="37vLTw" id="5JsnGMj1qdo" role="37vLTx">
              <ref role="3cqZAo" node="5JsnGMj1qdu" resolve="root" />
            </node>
            <node concept="37vLTw" id="5JsnGMj1qdp" role="37vLTJ">
              <ref role="3cqZAo" node="5JsnGMj1qdc" resolve="myModelRoot" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5JsnGMj1qdq" role="3clF46">
        <property role="TrG5h" value="modelReference" />
        <node concept="3uibUv" id="5JsnGMj1qdr" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="37vLTG" id="5JsnGMj1qds" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="5JsnGMj1qdt" role="1tU5fm">
          <ref role="3uigEE" to="ep0o:~FolderSetDataSource" resolve="FolderSetDataSource" />
        </node>
      </node>
      <node concept="37vLTG" id="5JsnGMj1qdu" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="5JsnGMj1qdv" role="1tU5fm">
          <ref role="3uigEE" to="qx6n:~ModelRoot" resolve="ModelRoot" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qdw" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getCurrentModelInternal" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="62HG2toxrKC" role="3clF45">
        <ref role="3uigEE" to="cu2c:~SModel" resolve="SModel" />
      </node>
      <node concept="3Tmbuc" id="5JsnGMj1qdx" role="1B3o_S" />
      <node concept="3clFbS" id="5JsnGMj1qdz" role="3clF47">
        <node concept="3cpWs6" id="5JsnGMj1qd$" role="3cqZAp">
          <node concept="37vLTw" id="5JsnGMj1qd_" role="3cqZAk">
            <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sSU0" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qdA" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSource" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="5JsnGMj1qdB" role="3clF45">
        <ref role="3uigEE" to="ep0o:~FolderSetDataSource" resolve="FolderSetDataSource" />
      </node>
      <node concept="3Tm1VV" id="5JsnGMj1qdC" role="1B3o_S" />
      <node concept="2AHcQZ" id="5JsnGMj1qdD" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="5JsnGMj1qdE" role="3clF47">
        <node concept="3clFbF" id="5JsnGMj1qdF" role="3cqZAp">
          <node concept="10QFUN" id="5JsnGMj1qdG" role="3clFbG">
            <node concept="3uibUv" id="5JsnGMj1qdH" role="10QFUM">
              <ref role="3uigEE" to="ep0o:~FolderSetDataSource" resolve="FolderSetDataSource" />
            </node>
            <node concept="3nyPlj" id="5JsnGMj1qdI" role="10QFUP">
              <ref role="37wK5l" to="51te:~SModelBase.getSource():org.jetbrains.mps.openapi.persistence.DataSource" resolve="getSource" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JsnGMj1qdJ" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qdK" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="getSModelInternal" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="1KRNqi_Xtuw" role="3clF45">
        <ref role="3uigEE" to="cu2c:~SModel" resolve="SModel" />
      </node>
      <node concept="3Tm1VV" id="5JsnGMj1qdL" role="1B3o_S" />
      <node concept="3clFbS" id="5JsnGMj1qdN" role="3clF47">
        <node concept="3clFbJ" id="5JsnGMj1qdO" role="3cqZAp">
          <node concept="3clFbC" id="5JsnGMj1qdP" role="3clFbw">
            <node concept="37vLTw" id="5JsnGMj1qdQ" role="3uHU7B">
              <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
            </node>
            <node concept="10Nm6u" id="5JsnGMj1qdR" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5JsnGMj1qdS" role="3clFbx">
            <node concept="1HWtB8" id="5_MnDK5JOdy" role="3cqZAp">
              <node concept="Xjq3P" id="5_MnDK5JOhW" role="1HWFw0" />
              <node concept="3clFbS" id="5_MnDK5JOdA" role="1HWHxc">
                <node concept="3clFbJ" id="5_MnDK5JPRB" role="3cqZAp">
                  <node concept="3clFbS" id="5_MnDK5JPRE" role="3clFbx">
                    <node concept="3cpWs6" id="5_MnDK5JPZq" role="3cqZAp">
                      <node concept="37vLTw" id="5_MnDK5JR2g" role="3cqZAk">
                        <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="5_MnDK5JPXc" role="3clFbw">
                    <node concept="10Nm6u" id="5_MnDK5JPYi" role="3uHU7w" />
                    <node concept="37vLTw" id="5_MnDK5JPVo" role="3uHU7B">
                      <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5JsnGMj1qdT" role="3cqZAp">
                  <node concept="37vLTI" id="5JsnGMj1qdU" role="3clFbG">
                    <node concept="1rXfSq" id="4hiugqyz3vI" role="37vLTx">
                      <ref role="37wK5l" node="5JsnGMj1qeh" resolve="createModel" />
                    </node>
                    <node concept="37vLTw" id="5JsnGMj1qdW" role="37vLTJ">
                      <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5JsnGMj1qdX" role="3cqZAp">
                  <node concept="2OqwBi" id="3GSxfNuHikF" role="3clFbG">
                    <node concept="37vLTw" id="62HG2toxzwD" role="2Oq$k0">
                      <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
                    </node>
                    <node concept="liA8E" id="3GSxfNuHk8$" role="2OqNvi">
                      <ref role="37wK5l" to="cu2c:~SModel.setModelDescriptor(org.jetbrains.mps.openapi.model.SModel):void" resolve="setModelDescriptor" />
                      <node concept="Xjq3P" id="3GSxfNuHl2E" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5JsnGMj1qe2" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyzet6" role="3clFbG">
                <ref role="37wK5l" to="51te:~SModelBase.fireModelStateChanged(jetbrains.mps.smodel.loading.ModelLoadingState):void" resolve="fireModelStateChanged" />
                <node concept="Rm8GO" id="5JsnGMj1qe5" role="37wK5m">
                  <ref role="Rm8GQ" to="gznm:~ModelLoadingState.FULLY_LOADED" resolve="FULLY_LOADED" />
                  <ref role="1Px2BO" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5JsnGMj1qe6" role="3cqZAp">
          <node concept="37vLTw" id="5JsnGMj1qe7" role="3cqZAk">
            <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sSTY" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qe8" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isLoaded" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5JsnGMj1qe9" role="1B3o_S" />
      <node concept="10P_77" id="5JsnGMj1qea" role="3clF45" />
      <node concept="3clFbS" id="5JsnGMj1qeb" role="3clF47">
        <node concept="3clFbF" id="5JsnGMj1qec" role="3cqZAp">
          <node concept="3y3z36" id="5JsnGMj1qed" role="3clFbG">
            <node concept="10Nm6u" id="5JsnGMj1qee" role="3uHU7w" />
            <node concept="37vLTw" id="5JsnGMj1qef" role="3uHU7B">
              <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JsnGMj1qeg" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2zDDKmDKSco" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="unload" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="2zDDKmDKScp" role="1B3o_S" />
      <node concept="3cqZAl" id="2zDDKmDKScr" role="3clF45" />
      <node concept="3clFbS" id="2zDDKmDKScx" role="3clF47">
        <node concept="3clFbF" id="2zDDKmDLdA$" role="3cqZAp">
          <node concept="2YIFZM" id="2zDDKmDLdHO" role="3clFbG">
            <ref role="37wK5l" to="cu2c:~ModelAccess.assertLegalWrite():void" resolve="assertLegalWrite" />
            <ref role="1Pybhc" to="cu2c:~ModelAccess" resolve="ModelAccess" />
          </node>
        </node>
        <node concept="3clFbH" id="2zDDKmDLdI4" role="3cqZAp" />
        <node concept="3cpWs8" id="2zDDKmDLef2" role="3cqZAp">
          <node concept="3cpWsn" id="2zDDKmDLef3" role="3cpWs9">
            <property role="TrG5h" value="oldModel" />
            <node concept="3uibUv" id="2zDDKmDLef4" role="1tU5fm">
              <ref role="3uigEE" to="cu2c:~SModel" resolve="SModel" />
            </node>
            <node concept="37vLTw" id="2zDDKmDLeyO" role="33vP2m">
              <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2zDDKmDLeNV" role="3cqZAp">
          <node concept="3clFbS" id="2zDDKmDLeNY" role="3clFbx">
            <node concept="3clFbF" id="2zDDKmDLff1" role="3cqZAp">
              <node concept="2OqwBi" id="2zDDKmDLfk5" role="3clFbG">
                <node concept="37vLTw" id="2zDDKmDLff0" role="2Oq$k0">
                  <ref role="3cqZAo" node="2zDDKmDLef3" resolve="oldModel" />
                </node>
                <node concept="liA8E" id="2zDDKmDLfOt" role="2OqNvi">
                  <ref role="37wK5l" to="cu2c:~SModel.setModelDescriptor(org.jetbrains.mps.openapi.model.SModel):void" resolve="setModelDescriptor" />
                  <node concept="10Nm6u" id="2zDDKmDLfPe" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2zDDKmDLg3a" role="3cqZAp">
              <node concept="37vLTI" id="2zDDKmDLg9j" role="3clFbG">
                <node concept="37vLTw" id="2zDDKmDLg39" role="37vLTJ">
                  <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
                </node>
                <node concept="10Nm6u" id="2zDDKmDLgfp" role="37vLTx" />
              </node>
            </node>
            <node concept="3clFbF" id="2zDDKmDLgyT" role="3cqZAp">
              <node concept="1rXfSq" id="2zDDKmDLgyS" role="3clFbG">
                <ref role="37wK5l" to="51te:~SModelBase.fireModelStateChanged(jetbrains.mps.smodel.loading.ModelLoadingState):void" resolve="fireModelStateChanged" />
                <node concept="Rm8GO" id="2zDDKmDLgIC" role="37wK5m">
                  <ref role="Rm8GQ" to="gznm:~ModelLoadingState.NOT_LOADED" resolve="NOT_LOADED" />
                  <ref role="1Px2BO" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2zDDKmDLf28" role="3clFbw">
            <node concept="10Nm6u" id="2zDDKmDLf2N" role="3uHU7w" />
            <node concept="37vLTw" id="2zDDKmDLeWi" role="3uHU7B">
              <ref role="3cqZAo" node="2zDDKmDLef3" resolve="oldModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2zDDKmDL8a2" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qeh" role="jymVt">
      <property role="TrG5h" value="createModel" />
      <node concept="3uibUv" id="1KRNqi_Xxdt" role="3clF45">
        <ref role="3uigEE" to="cu2c:~SModel" resolve="SModel" />
      </node>
      <node concept="3Tm6S6" id="5JsnGMj1qei" role="1B3o_S" />
      <node concept="3clFbS" id="5JsnGMj1qek" role="3clF47">
        <node concept="3cpWs8" id="5JsnGMj1qel" role="3cqZAp">
          <node concept="3cpWsn" id="5JsnGMj1qem" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="1KRNqiAwYf7" role="1tU5fm">
              <ref role="3uigEE" to="cu2c:~SModel" resolve="SModel" />
            </node>
            <node concept="2ShNRf" id="5JsnGMj1qeo" role="33vP2m">
              <node concept="1pGfFk" id="5JsnGMj1qep" role="2ShVmc">
                <ref role="37wK5l" to="cu2c:~SModel.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,jetbrains.mps.smodel.nodeidmap.INodeIdToNodeMap)" resolve="SModel" />
                <node concept="1rXfSq" id="5JsnGMj1qeq" role="37wK5m">
                  <ref role="37wK5l" to="51te:~SModelBase.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                </node>
                <node concept="2ShNRf" id="5JsnGMj1qer" role="37wK5m">
                  <node concept="1pGfFk" id="5JsnGMj1qes" role="2ShVmc">
                    <ref role="37wK5l" to="tyed:~ForeignNodeIdMap.&lt;init&gt;()" resolve="ForeignNodeIdMap" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5JsnGMj1qet" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzhBZ" role="1DdaDG">
            <ref role="37wK5l" node="5JsnGMj1qeZ" resolve="getLanguagesToImport" />
          </node>
          <node concept="3cpWsn" id="5JsnGMj1qev" role="1Duv9x">
            <property role="TrG5h" value="l" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="5JsnGMj1qew" role="1tU5fm">
              <ref role="3uigEE" to="cu2c:~Language" resolve="Language" />
            </node>
          </node>
          <node concept="3clFbS" id="5JsnGMj1qex" role="2LFqv$">
            <node concept="3clFbF" id="5JsnGMj1qey" role="3cqZAp">
              <node concept="2OqwBi" id="5JsnGMj1qez" role="3clFbG">
                <node concept="37vLTw" id="281cAWYnnvl" role="2Oq$k0">
                  <ref role="3cqZAo" node="5JsnGMj1qem" resolve="model" />
                </node>
                <node concept="liA8E" id="5JsnGMj1qe_" role="2OqNvi">
                  <ref role="37wK5l" to="cu2c:~SModel.addLanguage(org.jetbrains.mps.openapi.module.SModuleReference):void" resolve="addLanguage" />
                  <node concept="2OqwBi" id="5JsnGMj1qeA" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTv1s" role="2Oq$k0">
                      <ref role="3cqZAo" node="5JsnGMj1qev" resolve="l" />
                    </node>
                    <node concept="liA8E" id="5JsnGMj1qeC" role="2OqNvi">
                      <ref role="37wK5l" to="vsqj:~AbstractModule.getModuleReference():org.jetbrains.mps.openapi.module.SModuleReference" resolve="getModuleReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5JsnGMj1qeH" role="3cqZAp">
          <node concept="2OqwBi" id="5JsnGMj1qeI" role="3clFbG">
            <node concept="2ShNRf" id="5JsnGMj1qeJ" role="2Oq$k0">
              <node concept="1pGfFk" id="5JsnGMj1qeK" role="2ShVmc">
                <ref role="37wK5l" to="1ltj:jBjYWzSGEf" resolve="ASMModelLoader" />
                <node concept="2OqwBi" id="5JsnGMj1qeN" role="37wK5m">
                  <node concept="liA8E" id="5JsnGMj1qeO" role="2OqNvi">
                    <ref role="37wK5l" to="qx6n:~ModelRoot.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                  </node>
                  <node concept="37vLTw" id="5JsnGMj1qeP" role="2Oq$k0">
                    <ref role="3cqZAo" node="5JsnGMj1qdc" resolve="myModelRoot" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3oDzK78mcgQ" role="37wK5m">
                  <node concept="1rXfSq" id="3oDzK78mbU4" role="2Oq$k0">
                    <ref role="37wK5l" node="5JsnGMj1qdA" resolve="getSource" />
                  </node>
                  <node concept="liA8E" id="3oDzK78mcI5" role="2OqNvi">
                    <ref role="37wK5l" to="ep0o:~FolderSetDataSource.getPaths():java.util.Collection" resolve="getPaths" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTy1N" role="37wK5m">
                  <ref role="3cqZAo" node="5JsnGMj1qem" resolve="model" />
                </node>
                <node concept="3clFbT" id="5JsnGMj1qeT" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5JsnGMj1qeU" role="2OqNvi">
              <ref role="37wK5l" to="1ltj:6hYzBiUOtK3" resolve="updateModel" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5JsnGMj1qeX" role="3cqZAp">
          <node concept="37vLTw" id="5JsnGMj1qeY" role="3cqZAk">
            <ref role="3cqZAo" node="5JsnGMj1qem" resolve="model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qeZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getLanguagesToImport" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="5JsnGMj1qf0" role="1B3o_S" />
      <node concept="3uibUv" id="5JsnGMj1qf1" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Set" resolve="Set" />
        <node concept="3uibUv" id="5JsnGMj1qf2" role="11_B2D">
          <ref role="3uigEE" to="cu2c:~Language" resolve="Language" />
        </node>
      </node>
      <node concept="3clFbS" id="5JsnGMj1qf3" role="3clF47">
        <node concept="3cpWs8" id="5JsnGMj1qf4" role="3cqZAp">
          <node concept="3cpWsn" id="5JsnGMj1qf5" role="3cpWs9">
            <property role="TrG5h" value="moduleIds" />
            <property role="3TUv4t" value="false" />
            <node concept="2hMVRd" id="5JsnGMj1qf6" role="1tU5fm">
              <node concept="17QB3L" id="5JsnGMj1qf7" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="5JsnGMj1qf8" role="33vP2m">
              <node concept="2i4dXS" id="5JsnGMj1qf9" role="2ShVmc">
                <node concept="17QB3L" id="5JsnGMj1qfa" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5JsnGMj1qfb" role="3cqZAp">
          <node concept="2OqwBi" id="5JsnGMj1qfc" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTu8h" role="2Oq$k0">
              <ref role="3cqZAo" node="5JsnGMj1qf5" resolve="moduleIds" />
            </node>
            <node concept="2l5eF5" id="5JsnGMj1qfe" role="2OqNvi">
              <node concept="2OqwBi" id="5JsnGMj1qff" role="2l6Ag6">
                <node concept="2OqwBi" id="5JsnGMj1qfg" role="2Oq$k0">
                  <node concept="2L6k_Z" id="625yo8Squ4S" role="2Oq$k0">
                    <property role="2L6k_S" value="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
                  </node>
                  <node concept="liA8E" id="5JsnGMj1qfk" role="2OqNvi">
                    <ref role="37wK5l" to="88zw:~SModuleReference.getModuleId():org.jetbrains.mps.openapi.module.SModuleId" resolve="getModuleId" />
                  </node>
                </node>
                <node concept="liA8E" id="5JsnGMj1qfl" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~Object.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5JsnGMj1qfm" role="3cqZAp">
          <node concept="3cpWsn" id="5JsnGMj1qfn" role="3cpWs9">
            <property role="TrG5h" value="languages" />
            <node concept="A3Dl8" id="5JsnGMj1qfo" role="1tU5fm">
              <node concept="3uibUv" id="5JsnGMj1qfp" role="A3Ik2">
                <ref role="3uigEE" to="cu2c:~Language" resolve="Language" />
              </node>
            </node>
            <node concept="2OqwBi" id="5JsnGMj1qfq" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTwTR" role="2Oq$k0">
                <ref role="3cqZAo" node="5JsnGMj1qf5" resolve="moduleIds" />
              </node>
              <node concept="3$u5V9" id="5JsnGMj1qfs" role="2OqNvi">
                <node concept="1bVj0M" id="5JsnGMj1qft" role="23t8la">
                  <node concept="3clFbS" id="5JsnGMj1qfu" role="1bW5cS">
                    <node concept="3clFbF" id="5JsnGMj1qfv" role="3cqZAp">
                      <node concept="1eOMI4" id="5JsnGMj1qfw" role="3clFbG">
                        <node concept="10QFUN" id="5JsnGMj1qfx" role="1eOMHV">
                          <node concept="2OqwBi" id="5JsnGMj1qfy" role="10QFUP">
                            <node concept="2YIFZM" id="5JsnGMj1qfz" role="2Oq$k0">
                              <ref role="37wK5l" to="cu2c:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
                              <ref role="1Pybhc" to="cu2c:~MPSModuleRepository" resolve="MPSModuleRepository" />
                            </node>
                            <node concept="liA8E" id="5JsnGMj1qf$" role="2OqNvi">
                              <ref role="37wK5l" to="cu2c:~MPSModuleRepository.getModule(org.jetbrains.mps.openapi.module.SModuleId):org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                              <node concept="2YIFZM" id="5JsnGMj1qf_" role="37wK5m">
                                <ref role="37wK5l" to="vsqj:~ModuleId.fromString(java.lang.String):jetbrains.mps.project.ModuleId" resolve="fromString" />
                                <ref role="1Pybhc" to="vsqj:~ModuleId" resolve="ModuleId" />
                                <node concept="37vLTw" id="2BHiRxghiJ$" role="37wK5m">
                                  <ref role="3cqZAo" node="5JsnGMj1qfC" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="5JsnGMj1qfB" role="10QFUM">
                            <ref role="3uigEE" to="cu2c:~Language" resolve="Language" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5JsnGMj1qfC" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5JsnGMj1qfD" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5JsnGMj1qfE" role="3cqZAp">
          <node concept="2ShNRf" id="5JsnGMj1qfF" role="3cqZAk">
            <node concept="2i4dXS" id="5JsnGMj1qfG" role="2ShVmc">
              <node concept="3uibUv" id="5JsnGMj1qfH" role="HW$YZ">
                <ref role="3uigEE" to="cu2c:~Language" resolve="Language" />
              </node>
              <node concept="37vLTw" id="3GM_nagTBH8" role="I$8f6">
                <ref role="3cqZAo" node="5JsnGMj1qfn" resolve="languages" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qhN" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="reloadFromDiskSafe" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="5JsnGMj1qhO" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5JsnGMj1qhP" role="3clF47">
        <node concept="3clFbF" id="5JsnGMj1qhQ" role="3cqZAp">
          <node concept="2YIFZM" id="5JsnGMj1qhR" role="3clFbG">
            <ref role="1Pybhc" to="cu2c:~ModelAccess" resolve="ModelAccess" />
            <ref role="37wK5l" to="cu2c:~ModelAccess.assertLegalWrite():void" resolve="assertLegalWrite" />
          </node>
        </node>
        <node concept="3clFbJ" id="5JsnGMj1qhS" role="3cqZAp">
          <node concept="2OqwBi" id="5JsnGMj1qhT" role="3clFbw">
            <node concept="2OqwBi" id="5JsnGMj1qhU" role="2Oq$k0">
              <node concept="1rXfSq" id="4hiugqyz9EO" role="2Oq$k0">
                <ref role="37wK5l" node="5JsnGMj1qdA" resolve="getSource" />
              </node>
              <node concept="liA8E" id="5JsnGMj1qhW" role="2OqNvi">
                <ref role="37wK5l" to="ep0o:~FolderSetDataSource.getPaths():java.util.Collection" resolve="getPaths" />
              </node>
            </node>
            <node concept="liA8E" id="5JsnGMj1qhX" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Collection.isEmpty():boolean" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3clFbS" id="5JsnGMj1qhY" role="3clFbx">
            <node concept="3clFbF" id="5JsnGMj1qhZ" role="3cqZAp">
              <node concept="2OqwBi" id="5JsnGMj1qi0" role="3clFbG">
                <node concept="2YIFZM" id="5JsnGMj1qi1" role="2Oq$k0">
                  <ref role="1Pybhc" to="cu2c:~SModelRepository" resolve="SModelRepository" />
                  <ref role="37wK5l" to="cu2c:~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="5JsnGMj1qi2" role="2OqNvi">
                  <ref role="37wK5l" to="cu2c:~SModelRepository.deleteModel(org.jetbrains.mps.openapi.model.SModel):void" resolve="deleteModel" />
                  <node concept="Xjq3P" id="5JsnGMj1qi3" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5JsnGMj1qi4" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="5JsnGMj1qi5" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyNTV" role="3clFbG">
            <ref role="37wK5l" node="5JsnGMj1qif" resolve="reload" />
          </node>
        </node>
        <node concept="3clFbF" id="5JsnGMj1qim" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyZCv" role="3clFbG">
            <ref role="37wK5l" to="51te:~ReloadableSModelBase.updateTimestamp():void" resolve="updateTimestamp" />
          </node>
        </node>
        <node concept="3clFbF" id="5JsnGMj1qi7" role="3cqZAp">
          <node concept="2OqwBi" id="5JsnGMj1qi8" role="3clFbG">
            <node concept="37vLTw" id="5JsnGMj1qi9" role="2Oq$k0">
              <ref role="3cqZAo" node="5JsnGMj1qd2" resolve="LOG" />
            </node>
            <node concept="liA8E" id="5JsnGMj1qia" role="2OqNvi">
              <ref role="37wK5l" to="ajxo:~Category.assertLog(boolean,java.lang.String):void" resolve="assertLog" />
              <node concept="3fqX7Q" id="5JsnGMj1qib" role="37wK5m">
                <node concept="1rXfSq" id="4hiugqyzkym" role="3fr31v">
                  <ref role="37wK5l" to="51te:~ReloadableSModelBase.needsReloading():boolean" resolve="needsReloading" />
                </node>
              </node>
              <node concept="Xl_RD" id="Hn0$MvbYti" role="37wK5m">
                <property role="Xl_RC" value="Assertion failed." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5JsnGMj1qid" role="1B3o_S" />
      <node concept="3cqZAl" id="5JsnGMj1qie" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5JsnGMj1qif" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="reload" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5JsnGMj1qig" role="3clF47">
        <node concept="3clFbJ" id="5JsnGMj1qih" role="3cqZAp">
          <node concept="3clFbC" id="5JsnGMj1qii" role="3clFbw">
            <node concept="37vLTw" id="5JsnGMj1qij" role="3uHU7B">
              <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
            </node>
            <node concept="10Nm6u" id="5JsnGMj1qik" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5JsnGMj1qil" role="3clFbx">
            <node concept="3cpWs6" id="5JsnGMj1qio" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs8" id="GRPX9ErnNv" role="3cqZAp">
          <node concept="3cpWsn" id="GRPX9ErnNt" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="oldModel" />
            <node concept="3uibUv" id="GRPX9Ero1M" role="1tU5fm">
              <ref role="3uigEE" to="cu2c:~SModel" resolve="SModel" />
            </node>
            <node concept="37vLTw" id="GRPX9Erod3" role="33vP2m">
              <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GRPX9Eror4" role="3cqZAp">
          <node concept="37vLTI" id="GRPX9EroEa" role="3clFbG">
            <node concept="1rXfSq" id="GRPX9EroRs" role="37vLTx">
              <ref role="37wK5l" node="5JsnGMj1qeh" resolve="createModel" />
            </node>
            <node concept="37vLTw" id="GRPX9Eror2" role="37vLTJ">
              <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GRPX9Erp7R" role="3cqZAp">
          <node concept="1rXfSq" id="GRPX9Erp7P" role="3clFbG">
            <ref role="37wK5l" to="51te:~SModelBase.replaceModelAndFireEvent(jetbrains.mps.smodel.SModel,jetbrains.mps.smodel.SModel):void" resolve="replaceModelAndFireEvent" />
            <node concept="37vLTw" id="GRPX9Erpnn" role="37wK5m">
              <ref role="3cqZAo" node="GRPX9ErnNt" resolve="oldModel" />
            </node>
            <node concept="37vLTw" id="GRPX9Erpp2" role="37wK5m">
              <ref role="3cqZAo" node="5JsnGMj1qd9" resolve="myModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5JsnGMj1qiF" role="1B3o_S" />
      <node concept="3cqZAl" id="5JsnGMj1qiG" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="5JsnGMj1qiI">
    <property role="TrG5h" value="JavaClassStubModelRootFactory" />
    <node concept="3Tm1VV" id="5JsnGMj1qiJ" role="1B3o_S" />
    <node concept="3uibUv" id="5JsnGMj1qiK" role="EKbjA">
      <ref role="3uigEE" to="qx6n:~ModelRootFactory" resolve="ModelRootFactory" />
    </node>
    <node concept="3clFbW" id="5JsnGMj1qiL" role="jymVt">
      <node concept="3cqZAl" id="5JsnGMj1qiM" role="3clF45" />
      <node concept="3Tm1VV" id="5JsnGMj1qiN" role="1B3o_S" />
      <node concept="3clFbS" id="5JsnGMj1qiO" role="3clF47" />
    </node>
    <node concept="3clFb_" id="5JsnGMj1qiP" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="create" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5JsnGMj1qiQ" role="1B3o_S" />
      <node concept="3uibUv" id="5JsnGMj1qiR" role="3clF45">
        <ref role="3uigEE" to="qx6n:~ModelRoot" resolve="ModelRoot" />
      </node>
      <node concept="3clFbS" id="5JsnGMj1qiS" role="3clF47">
        <node concept="3cpWs6" id="5JsnGMj1qiT" role="3cqZAp">
          <node concept="2ShNRf" id="5JsnGMj1qiU" role="3cqZAk">
            <node concept="1pGfFk" id="5JsnGMj1qiV" role="2ShVmc">
              <ref role="37wK5l" node="5JsnGMj1qiZ" resolve="JavaClassStubsModelRoot" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sRLm" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5JsnGMj1qiW">
    <property role="TrG5h" value="JavaClassStubsModelRoot" />
    <node concept="3uibUv" id="7emJ8uwVCkA" role="1zkMxy">
      <ref role="3uigEE" to="ep0o:~FileBasedModelRoot" resolve="FileBasedModelRoot" />
    </node>
    <node concept="3Tm1VV" id="5JsnGMj1qiY" role="1B3o_S" />
    <node concept="3clFbW" id="5JsnGMj1qiZ" role="jymVt">
      <node concept="3cqZAl" id="5JsnGMj1qj0" role="3clF45" />
      <node concept="3Tm1VV" id="5JsnGMj1qj1" role="1B3o_S" />
      <node concept="3clFbS" id="5JsnGMj1qj2" role="3clF47">
        <node concept="XkiVB" id="rqS1YhJk5w" role="3cqZAp">
          <ref role="37wK5l" to="ep0o:~FileBasedModelRoot.&lt;init&gt;()" resolve="FileBasedModelRoot" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qj3" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getType" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5JsnGMj1qj4" role="1B3o_S" />
      <node concept="17QB3L" id="7o5OtEM74kR" role="3clF45" />
      <node concept="3clFbS" id="5JsnGMj1qj6" role="3clF47">
        <node concept="3clFbF" id="5JsnGMj1qj7" role="3cqZAp">
          <node concept="10M0yZ" id="5JsnGMj1qj8" role="3clFbG">
            <ref role="1PxDUh" node="5JsnGMj1qcN" resolve="JavaClassStubConstants" />
            <ref role="3cqZAo" node="5JsnGMj1qcP" resolve="STUB_TYPE" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JsnGMj1qj9" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qjo" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getModel" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5JsnGMj1qjp" role="1B3o_S" />
      <node concept="3uibUv" id="5JsnGMj1qjq" role="3clF45">
        <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
      </node>
      <node concept="37vLTG" id="5JsnGMj1qjr" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="5JsnGMj1qjs" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SModelId" resolve="SModelId" />
        </node>
      </node>
      <node concept="3clFbS" id="5JsnGMj1qjt" role="3clF47">
        <node concept="3SKdUt" id="5JsnGMj1qju" role="3cqZAp">
          <node concept="3SKdUq" id="5JsnGMj1qjv" role="3SKWNk">
            <property role="3SKdUp" value="todo implement" />
          </node>
        </node>
        <node concept="3clFbF" id="5JsnGMj1qjw" role="3cqZAp">
          <node concept="10Nm6u" id="5JsnGMj1qjx" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sS5b" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="rP8MxQUY2j" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="load" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="rP8MxQUY2k" role="1B3o_S" />
      <node concept="3cqZAl" id="rP8MxQUY2m" role="3clF45" />
      <node concept="37vLTG" id="rP8MxQUY2n" role="3clF46">
        <property role="TrG5h" value="memento" />
        <node concept="3uibUv" id="rP8MxQUY2o" role="1tU5fm">
          <ref role="3uigEE" to="qx6n:~Memento" resolve="Memento" />
        </node>
      </node>
      <node concept="3clFbS" id="rP8MxQUY2p" role="3clF47">
        <node concept="3clFbF" id="rP8MxQV0nz" role="3cqZAp">
          <node concept="3nyPlj" id="rP8MxQV0ny" role="3clFbG">
            <ref role="37wK5l" to="ep0o:~FileBasedModelRoot.load(org.jetbrains.mps.openapi.persistence.Memento):void" resolve="load" />
            <node concept="37vLTw" id="rP8MxQV0nx" role="37wK5m">
              <ref role="3cqZAo" node="rP8MxQUY2n" resolve="memento" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="rP8MxQV5aX" role="3cqZAp">
          <node concept="3clFbS" id="rP8MxQV5b0" role="3clFbx">
            <node concept="3cpWs6" id="rP8MxQV71k" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="rP8MxQV6P0" role="3clFbw">
            <node concept="10Nm6u" id="rP8MxQV6ZL" role="3uHU7w" />
            <node concept="2OqwBi" id="rP8MxQV5N1" role="3uHU7B">
              <node concept="37vLTw" id="rP8MxQV5c3" role="2Oq$k0">
                <ref role="3cqZAo" node="rP8MxQUY2n" resolve="memento" />
              </node>
              <node concept="liA8E" id="rP8MxQV6az" role="2OqNvi">
                <ref role="37wK5l" to="qx6n:~Memento.get(java.lang.String):java.lang.String" resolve="get" />
                <node concept="Xl_RD" id="rP8MxQV6ky" role="37wK5m">
                  <property role="Xl_RC" value="path" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="rqS1YhJF9b" role="3cqZAp">
          <node concept="3cpWsn" id="rqS1YhJF9c" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="17QB3L" id="rqS1YhJFQ8" role="1tU5fm" />
            <node concept="2YIFZM" id="rqS1YhJF9d" role="33vP2m">
              <ref role="37wK5l" to="msyo:~FileUtil.stripLastSlashes(java.lang.String):java.lang.String" resolve="stripLastSlashes" />
              <ref role="1Pybhc" to="msyo:~FileUtil" resolve="FileUtil" />
              <node concept="2OqwBi" id="rqS1YhJF9e" role="37wK5m">
                <node concept="37vLTw" id="rqS1YhJF9f" role="2Oq$k0">
                  <ref role="3cqZAo" node="rP8MxQUY2n" resolve="memento" />
                </node>
                <node concept="liA8E" id="rqS1YhJF9g" role="2OqNvi">
                  <ref role="37wK5l" to="qx6n:~Memento.get(java.lang.String):java.lang.String" resolve="get" />
                  <node concept="Xl_RD" id="rqS1YhJF9h" role="37wK5m">
                    <property role="Xl_RC" value="path" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="rqS1YhJVE7" role="3cqZAp">
          <node concept="3cpWsn" id="rqS1YhJVE8" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="rqS1YhJW5t" role="1tU5fm">
              <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
            </node>
            <node concept="2OqwBi" id="rqS1YhJVEa" role="33vP2m">
              <node concept="2YIFZM" id="rqS1YhJVEb" role="2Oq$k0">
                <ref role="37wK5l" to="59et:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
                <ref role="1Pybhc" to="59et:~FileSystem" resolve="FileSystem" />
              </node>
              <node concept="liA8E" id="rqS1YhJVEc" role="2OqNvi">
                <ref role="37wK5l" to="59et:~FileSystem.getFileByPath(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getFileByPath" />
                <node concept="37vLTw" id="rqS1YhJVEd" role="37wK5m">
                  <ref role="3cqZAo" node="rqS1YhJF9c" resolve="path" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="rqS1YhJG4v" role="3cqZAp">
          <node concept="3clFbS" id="rqS1YhJG4y" role="3clFbx">
            <node concept="3clFbF" id="rqS1YhJXab" role="3cqZAp">
              <node concept="37vLTI" id="rqS1YhJXpF" role="3clFbG">
                <node concept="2OqwBi" id="rqS1YhJY06" role="37vLTx">
                  <node concept="2OqwBi" id="rqS1YhJXuy" role="2Oq$k0">
                    <node concept="37vLTw" id="rqS1YhJXt_" role="2Oq$k0">
                      <ref role="3cqZAo" node="rqS1YhJVE8" resolve="file" />
                    </node>
                    <node concept="liA8E" id="rqS1YhJXYj" role="2OqNvi">
                      <ref role="37wK5l" to="59et:~IFile.getParent():jetbrains.mps.vfs.IFile" resolve="getParent" />
                    </node>
                  </node>
                  <node concept="liA8E" id="rqS1YhJYKd" role="2OqNvi">
                    <ref role="37wK5l" to="59et:~IFile.getPath():java.lang.String" resolve="getPath" />
                  </node>
                </node>
                <node concept="37vLTw" id="rqS1YhJXaa" role="37vLTJ">
                  <ref role="3cqZAo" node="rqS1YhJF9c" resolve="path" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6STCsy2s2v3" role="3clFbw">
            <node concept="3y3z36" id="6STCsy2s2va" role="3uHU7B">
              <node concept="10Nm6u" id="6STCsy2s2vb" role="3uHU7w" />
              <node concept="37vLTw" id="6STCsy2s2vc" role="3uHU7B">
                <ref role="3cqZAo" node="rqS1YhJVE8" resolve="file" />
              </node>
            </node>
            <node concept="3y3z36" id="6STCsy2s2v5" role="3uHU7w">
              <node concept="10Nm6u" id="6STCsy2s2v6" role="3uHU7w" />
              <node concept="2OqwBi" id="6STCsy2s2v7" role="3uHU7B">
                <node concept="37vLTw" id="6STCsy2s2v8" role="2Oq$k0">
                  <ref role="3cqZAo" node="rqS1YhJVE8" resolve="file" />
                </node>
                <node concept="liA8E" id="6STCsy2s2v9" role="2OqNvi">
                  <ref role="37wK5l" to="59et:~IFile.getParent():jetbrains.mps.vfs.IFile" resolve="getParent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="rqS1YhISSC" role="3cqZAp">
          <node concept="1rXfSq" id="rqS1YhISSB" role="3clFbG">
            <ref role="37wK5l" to="ep0o:~FileBasedModelRoot.setContentRoot(java.lang.String):void" resolve="setContentRoot" />
            <node concept="37vLTw" id="rqS1YhJF9i" role="37wK5m">
              <ref role="3cqZAo" node="rqS1YhJF9c" resolve="path" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="rqS1YhJ$Fs" role="3cqZAp">
          <node concept="3cpWsn" id="rqS1YhJ$Ft" role="3cpWs9">
            <property role="TrG5h" value="files" />
            <node concept="3uibUv" id="rqS1YhJ$F6" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~List" resolve="List" />
              <node concept="17QB3L" id="7o5OtEM79mS" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="rqS1YhJ$Fu" role="33vP2m">
              <node concept="37vLTw" id="rqS1YhJ$Fv" role="2Oq$k0">
                <ref role="3cqZAo" to="ep0o:~FileBasedModelRoot.filesForKind" resolve="filesForKind" />
              </node>
              <node concept="liA8E" id="rqS1YhJ$Fw" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="37vLTw" id="rqS1YhJ$Fx" role="37wK5m">
                  <ref role="3cqZAo" to="ep0o:~FileBasedModelRoot.SOURCE_ROOTS" resolve="SOURCE_ROOTS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="rqS1YhJv22" role="3cqZAp">
          <node concept="2OqwBi" id="rqS1YhJ_QO" role="3clFbG">
            <node concept="37vLTw" id="rqS1YhJ$Fy" role="2Oq$k0">
              <ref role="3cqZAo" node="rqS1YhJ$Ft" resolve="files" />
            </node>
            <node concept="liA8E" id="rqS1YhJEDW" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="2OqwBi" id="rqS1YhJYUD" role="37wK5m">
                <node concept="37vLTw" id="rqS1YhJYUE" role="2Oq$k0">
                  <ref role="3cqZAo" node="rP8MxQUY2n" resolve="memento" />
                </node>
                <node concept="liA8E" id="rqS1YhJYUF" role="2OqNvi">
                  <ref role="37wK5l" to="qx6n:~Memento.get(java.lang.String):java.lang.String" resolve="get" />
                  <node concept="Xl_RD" id="rqS1YhJYUG" role="37wK5m">
                    <property role="Xl_RC" value="path" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="rP8MxQV0nw" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qjy" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="loadModels" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5JsnGMj1qjz" role="1B3o_S" />
      <node concept="3uibUv" id="5JsnGMj1qj$" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5JsnGMj1qj_" role="11_B2D">
          <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="5JsnGMj1qjA" role="3clF47">
        <node concept="3cpWs8" id="5JsnGMj1qjB" role="3cqZAp">
          <node concept="3cpWsn" id="5JsnGMj1qjC" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <property role="3TUv4t" value="false" />
            <node concept="_YKpA" id="5JsnGMj1qjD" role="1tU5fm">
              <node concept="3uibUv" id="5JsnGMj1qjE" role="_ZDj9">
                <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="5JsnGMj1qjF" role="33vP2m">
              <node concept="Tc6Ow" id="5JsnGMj1qjG" role="2ShVmc">
                <node concept="3uibUv" id="5JsnGMj1qjH" role="HW$YZ">
                  <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6STCsy2s705" role="3cqZAp">
          <node concept="3cpWsn" id="6STCsy2s704" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="files" />
            <node concept="3vKaQO" id="2Dokkv7jLOE" role="1tU5fm">
              <node concept="3uibUv" id="2Dokkv7jLOG" role="3O5elw">
                <ref role="3uigEE" to="e2lb:~String" resolve="String" />
              </node>
            </node>
            <node concept="1rXfSq" id="6STCsy2s708" role="33vP2m">
              <ref role="37wK5l" to="ep0o:~FileBasedModelRoot.getFiles(java.lang.String):java.util.Collection" resolve="getFiles" />
              <node concept="10M0yZ" id="6STCsy2s70v" role="37wK5m">
                <ref role="1PxDUh" to="ep0o:~FileBasedModelRoot" resolve="FileBasedModelRoot" />
                <ref role="3cqZAo" to="ep0o:~FileBasedModelRoot.SOURCE_ROOTS" resolve="SOURCE_ROOTS" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7o5OtEM3VSc" role="3cqZAp">
          <node concept="3cpWsn" id="7o5OtEM3VSb" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="excludedFiles" />
            <node concept="3vKaQO" id="2Dokkv7jMGc" role="1tU5fm">
              <node concept="3uibUv" id="2Dokkv7jMGe" role="3O5elw">
                <ref role="3uigEE" to="e2lb:~String" resolve="String" />
              </node>
            </node>
            <node concept="1rXfSq" id="7o5OtEM3VSf" role="33vP2m">
              <ref role="37wK5l" to="ep0o:~FileBasedModelRoot.getFiles(java.lang.String):java.util.Collection" resolve="getFiles" />
              <node concept="10M0yZ" id="7o5OtEM3VSD" role="37wK5m">
                <ref role="1PxDUh" to="ep0o:~FileBasedModelRoot" resolve="FileBasedModelRoot" />
                <ref role="3cqZAo" to="ep0o:~FileBasedModelRoot.EXCLUDED" resolve="EXCLUDED" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Dokkv7hXCr" role="3cqZAp" />
        <node concept="3cpWs8" id="2Dokkv7i1d3" role="3cqZAp">
          <node concept="3cpWsn" id="2Dokkv7i1d4" role="3cpWs9">
            <property role="TrG5h" value="jarsToLoad" />
            <node concept="2hMVRd" id="2Dokkv7k3OB" role="1tU5fm">
              <node concept="3uibUv" id="2Dokkv7k3OD" role="2hN53Y">
                <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
              </node>
            </node>
            <node concept="2ShNRf" id="2Dokkv7i2Wr" role="33vP2m">
              <node concept="1pGfFk" id="2Dokkv7iiDr" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="2Dokkv7iiNy" role="1pMfVU">
                  <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Dokkv7iiSQ" role="3cqZAp">
          <node concept="3cpWsn" id="2Dokkv7iiSR" role="3cpWs9">
            <property role="TrG5h" value="cpRootsToLoad" />
            <node concept="2hMVRd" id="2Dokkv7k4hK" role="1tU5fm">
              <node concept="3uibUv" id="2Dokkv7k4Na" role="2hN53Y">
                <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
              </node>
            </node>
            <node concept="2ShNRf" id="2Dokkv7iiSU" role="33vP2m">
              <node concept="1pGfFk" id="2Dokkv7iiSV" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="2Dokkv7iiSW" role="1pMfVU">
                  <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Dokkv7hXE_" role="3cqZAp" />
        <node concept="1DcWWT" id="6STCsy2s48B" role="3cqZAp">
          <node concept="2OqwBi" id="2Dokkv7jNsB" role="1DdaDG">
            <node concept="37vLTw" id="6STCsy2s48U" role="2Oq$k0">
              <ref role="3cqZAo" node="6STCsy2s704" resolve="files" />
            </node>
            <node concept="3$u5V9" id="2Dokkv7jPjm" role="2OqNvi">
              <node concept="1bVj0M" id="2Dokkv7jPjo" role="23t8la">
                <node concept="3clFbS" id="2Dokkv7jPjp" role="1bW5cS">
                  <node concept="3clFbF" id="2Dokkv7jPAR" role="3cqZAp">
                    <node concept="2OqwBi" id="2Dokkv7jKR2" role="3clFbG">
                      <node concept="liA8E" id="2Dokkv7jKR3" role="2OqNvi">
                        <ref role="37wK5l" to="59et:~FileSystem.getFileByPath(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getFileByPath" />
                        <node concept="37vLTw" id="2Dokkv7jPOq" role="37wK5m">
                          <ref role="3cqZAo" node="2Dokkv7jPjq" resolve="it" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="2Dokkv7jKR5" role="2Oq$k0">
                        <ref role="1Pybhc" to="59et:~FileSystem" resolve="FileSystem" />
                        <ref role="37wK5l" to="59et:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2Dokkv7jPjq" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2Dokkv7jPjr" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6STCsy2s48R" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="2Dokkv7jQ0p" role="1tU5fm">
              <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
            </node>
          </node>
          <node concept="3clFbS" id="6STCsy2s48D" role="2LFqv$">
            <node concept="3clFbF" id="4r96ppgPlMy" role="3cqZAp">
              <node concept="1rXfSq" id="4r96ppgPlMz" role="3clFbG">
                <ref role="37wK5l" node="4r96ppgPp9J" resolve="collectJarFiles" />
                <node concept="37vLTw" id="2Dokkv7jQIy" role="37wK5m">
                  <ref role="3cqZAo" node="6STCsy2s48R" resolve="file" />
                </node>
                <node concept="37vLTw" id="2Dokkv7j2uz" role="37wK5m">
                  <ref role="3cqZAo" node="7o5OtEM3VSb" resolve="excludedFiles" />
                </node>
                <node concept="37vLTw" id="2Dokkv7jzEE" role="37wK5m">
                  <ref role="3cqZAo" node="2Dokkv7i1d4" resolve="jarsToLoad" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2Dokkv7jF7c" role="3cqZAp" />
            <node concept="3SKdUt" id="2Dokkv7izYf" role="3cqZAp">
              <node concept="3SKdUq" id="2Dokkv7i_eh" role="3SKWNk">
                <property role="3SKdUp" value="we suppose here that each path can be either a jar-file or a classes directory or a jar directory," />
              </node>
            </node>
            <node concept="3SKdUt" id="2Dokkv7iARn" role="3cqZAp">
              <node concept="3SKdUq" id="2Dokkv7iC7r" role="3SKWNk">
                <property role="3SKdUp" value="but does not contain both jar-fils and class-files" />
              </node>
            </node>
            <node concept="3clFbJ" id="2Dokkv7isax" role="3cqZAp">
              <node concept="3clFbS" id="2Dokkv7isa$" role="3clFbx">
                <node concept="3N13vt" id="2Dokkv7ixYq" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="2Dokkv7ixN_" role="3clFbw">
                <node concept="37vLTw" id="2Dokkv7ixNA" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Dokkv7i1d4" resolve="jarsToLoad" />
                </node>
                <node concept="3GX2aA" id="2Dokkv7khWk" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="2Dokkv7ir$$" role="3cqZAp" />
            <node concept="3clFbF" id="2Dokkv7jHvz" role="3cqZAp">
              <node concept="2OqwBi" id="2Dokkv7jIaS" role="3clFbG">
                <node concept="37vLTw" id="2Dokkv7jHvy" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Dokkv7iiSR" resolve="cpRootsToLoad" />
                </node>
                <node concept="TSZUe" id="2Dokkv7kjCg" role="2OqNvi">
                  <node concept="37vLTw" id="2Dokkv7kk0Y" role="25WWJ7">
                    <ref role="3cqZAo" node="6STCsy2s48R" resolve="file" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Dokkv7jRLN" role="3cqZAp" />
        <node concept="3clFbF" id="2Dokkv7k4Zd" role="3cqZAp">
          <node concept="2OqwBi" id="2Dokkv7k6xj" role="3clFbG">
            <node concept="2OqwBi" id="2Dokkv7kt3U" role="2Oq$k0">
              <node concept="37vLTw" id="2Dokkv7k4Zc" role="2Oq$k0">
                <ref role="3cqZAo" node="2Dokkv7i1d4" resolve="jarsToLoad" />
              </node>
              <node concept="3$u5V9" id="2Dokkv7kuA_" role="2OqNvi">
                <node concept="1bVj0M" id="2Dokkv7kuAB" role="23t8la">
                  <node concept="3clFbS" id="2Dokkv7kuAC" role="1bW5cS">
                    <node concept="3clFbF" id="2Dokkv7kuQJ" role="3cqZAp">
                      <node concept="2OqwBi" id="2Dokkv7kviA" role="3clFbG">
                        <node concept="2YIFZM" id="2Dokkv7kv3_" role="2Oq$k0">
                          <ref role="37wK5l" to="59et:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
                          <ref role="1Pybhc" to="59et:~FileSystem" resolve="FileSystem" />
                        </node>
                        <node concept="liA8E" id="2Dokkv7kvEb" role="2OqNvi">
                          <ref role="37wK5l" to="59et:~FileSystem.getFileByPath(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getFileByPath" />
                          <node concept="3cpWs3" id="2Dokkv7kx4g" role="37wK5m">
                            <node concept="Xl_RD" id="2Dokkv7kx4W" role="3uHU7w">
                              <property role="Xl_RC" value="!/" />
                            </node>
                            <node concept="2OqwBi" id="2Dokkv7kw9U" role="3uHU7B">
                              <node concept="37vLTw" id="2Dokkv7kvTy" role="2Oq$k0">
                                <ref role="3cqZAo" node="2Dokkv7kuAD" resolve="it" />
                              </node>
                              <node concept="liA8E" id="2Dokkv7kwJD" role="2OqNvi">
                                <ref role="37wK5l" to="59et:~IFile.getPath():java.lang.String" resolve="getPath" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2Dokkv7kuAD" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="2Dokkv7kuAE" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="2Dokkv7k7DS" role="2OqNvi">
              <node concept="1bVj0M" id="2Dokkv7k7DU" role="23t8la">
                <node concept="3clFbS" id="2Dokkv7k7DV" role="1bW5cS">
                  <node concept="3clFbF" id="2Dokkv7k7Lb" role="3cqZAp">
                    <node concept="1rXfSq" id="2Dokkv7k7La" role="3clFbG">
                      <ref role="37wK5l" node="5JsnGMj1qkH" resolve="getModelDescriptors" />
                      <node concept="37vLTw" id="2Dokkv7k83X" role="37wK5m">
                        <ref role="3cqZAo" node="5JsnGMj1qjC" resolve="result" />
                      </node>
                      <node concept="37vLTw" id="2Dokkv7k8oj" role="37wK5m">
                        <ref role="3cqZAo" node="2Dokkv7k7DW" resolve="it" />
                      </node>
                      <node concept="Xl_RD" id="2Dokkv7kaP4" role="37wK5m">
                        <property role="Xl_RC" value="" />
                      </node>
                      <node concept="10M0yZ" id="2Dokkv7kbAT" role="37wK5m">
                        <ref role="1PxDUh" to="cu2c:~LanguageID" resolve="LanguageID" />
                        <ref role="3cqZAo" to="cu2c:~LanguageID.JAVA" resolve="JAVA" />
                      </node>
                      <node concept="1rXfSq" id="2Dokkv7kcMD" role="37wK5m">
                        <ref role="37wK5l" to="ep0o:~ModelRootBase.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2Dokkv7k7DW" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2Dokkv7k7DX" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Dokkv7keXE" role="3cqZAp">
          <node concept="2OqwBi" id="2Dokkv7keXF" role="3clFbG">
            <node concept="37vLTw" id="2Dokkv7kgLg" role="2Oq$k0">
              <ref role="3cqZAo" node="2Dokkv7iiSR" resolve="cpRootsToLoad" />
            </node>
            <node concept="2es0OD" id="2Dokkv7keXH" role="2OqNvi">
              <node concept="1bVj0M" id="2Dokkv7keXI" role="23t8la">
                <node concept="3clFbS" id="2Dokkv7keXJ" role="1bW5cS">
                  <node concept="3clFbF" id="2Dokkv7keXK" role="3cqZAp">
                    <node concept="1rXfSq" id="2Dokkv7keXL" role="3clFbG">
                      <ref role="37wK5l" node="5JsnGMj1qkH" resolve="getModelDescriptors" />
                      <node concept="37vLTw" id="2Dokkv7keXM" role="37wK5m">
                        <ref role="3cqZAo" node="5JsnGMj1qjC" resolve="result" />
                      </node>
                      <node concept="37vLTw" id="2Dokkv7keXN" role="37wK5m">
                        <ref role="3cqZAo" node="2Dokkv7keXR" resolve="it" />
                      </node>
                      <node concept="Xl_RD" id="2Dokkv7keXO" role="37wK5m">
                        <property role="Xl_RC" value="" />
                      </node>
                      <node concept="10M0yZ" id="2Dokkv7keXP" role="37wK5m">
                        <ref role="1PxDUh" to="cu2c:~LanguageID" resolve="LanguageID" />
                        <ref role="3cqZAo" to="cu2c:~LanguageID.JAVA" resolve="JAVA" />
                      </node>
                      <node concept="1rXfSq" id="2Dokkv7keXQ" role="37wK5m">
                        <ref role="37wK5l" to="ep0o:~ModelRootBase.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2Dokkv7keXR" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2Dokkv7keXS" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Dokkv7jRN1" role="3cqZAp" />
        <node concept="3cpWs6" id="5JsnGMj1qjV" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagT_C4" role="3cqZAk">
            <ref role="3cqZAo" node="5JsnGMj1qjC" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sS5c" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4r96ppgPp9J" role="jymVt">
      <property role="TrG5h" value="collectJarFiles" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="4r96ppgPp9K" role="3clF46">
        <property role="TrG5h" value="file" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4r96ppgPp9L" role="1tU5fm">
          <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="37vLTG" id="2Dokkv7j7Q8" role="3clF46">
        <property role="TrG5h" value="excluded" />
        <node concept="3vKaQO" id="2Dokkv7jrIz" role="1tU5fm">
          <node concept="3uibUv" id="2Dokkv7jrI_" role="3O5elw">
            <ref role="3uigEE" to="e2lb:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2Dokkv7jcHk" role="3clF46">
        <property role="TrG5h" value="files" />
        <node concept="2hMVRd" id="2Dokkv7je0$" role="1tU5fm">
          <node concept="3uibUv" id="2Dokkv7jeGA" role="2hN53Y">
            <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4r96ppgPp9P" role="3clF47">
        <node concept="3clFbJ" id="2Dokkv7j65q" role="3cqZAp">
          <node concept="3clFbS" id="2Dokkv7j65t" role="3clFbx">
            <node concept="3cpWs6" id="2Dokkv7jnv1" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2Dokkv7jjXt" role="3clFbw">
            <node concept="37vLTw" id="2Dokkv7jjmP" role="2Oq$k0">
              <ref role="3cqZAo" node="2Dokkv7j7Q8" resolve="excluded" />
            </node>
            <node concept="3JPx81" id="2Dokkv7jn97" role="2OqNvi">
              <node concept="2OqwBi" id="2Dokkv7jndH" role="25WWJ7">
                <node concept="37vLTw" id="2Dokkv7jncc" role="2Oq$k0">
                  <ref role="3cqZAo" node="4r96ppgPp9K" resolve="file" />
                </node>
                <node concept="liA8E" id="2Dokkv7jnrk" role="2OqNvi">
                  <ref role="37wK5l" to="59et:~IFile.getPath():java.lang.String" resolve="getPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4r96ppgPp9Q" role="3cqZAp">
          <node concept="22lmx$" id="mgJvG$QHPu" role="3clFbw">
            <node concept="2OqwBi" id="4r96ppgPp9R" role="3uHU7B">
              <node concept="2OqwBi" id="4r96ppgPpaD" role="2Oq$k0">
                <node concept="37vLTw" id="4r96ppgPpaC" role="2Oq$k0">
                  <ref role="3cqZAo" node="4r96ppgPp9K" resolve="file" />
                </node>
                <node concept="liA8E" id="4r96ppgPpaE" role="2OqNvi">
                  <ref role="37wK5l" to="59et:~IFile.getPath():java.lang.String" resolve="getPath" />
                </node>
              </node>
              <node concept="liA8E" id="4r96ppgPp9T" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
                <node concept="Xl_RD" id="4r96ppgPp9U" role="37wK5m">
                  <property role="Xl_RC" value=".jar" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="mgJvG$QI58" role="3uHU7w">
              <node concept="2OqwBi" id="mgJvG$QI59" role="2Oq$k0">
                <node concept="37vLTw" id="mgJvG$QI5a" role="2Oq$k0">
                  <ref role="3cqZAo" node="4r96ppgPp9K" resolve="file" />
                </node>
                <node concept="liA8E" id="mgJvG$QI5b" role="2OqNvi">
                  <ref role="37wK5l" to="59et:~IFile.getPath():java.lang.String" resolve="getPath" />
                </node>
              </node>
              <node concept="liA8E" id="mgJvG$QI5c" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
                <node concept="Xl_RD" id="mgJvG$QI5d" role="37wK5m">
                  <property role="Xl_RC" value=".zip" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4r96ppgPp9W" role="3clFbx">
            <node concept="3clFbF" id="4r96ppgPp9X" role="3cqZAp">
              <node concept="2OqwBi" id="4r96ppgPpaH" role="3clFbG">
                <node concept="37vLTw" id="4r96ppgPpaG" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Dokkv7jcHk" resolve="files" />
                </node>
                <node concept="TSZUe" id="2Dokkv7joU3" role="2OqNvi">
                  <node concept="37vLTw" id="2Dokkv7jp6C" role="25WWJ7">
                    <ref role="3cqZAo" node="4r96ppgPp9K" resolve="file" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4r96ppgPpa0" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbJ" id="4r96ppgPpa1" role="3cqZAp">
          <node concept="3fqX7Q" id="4r96ppgPpa2" role="3clFbw">
            <node concept="2OqwBi" id="4r96ppgPpaL" role="3fr31v">
              <node concept="37vLTw" id="4r96ppgPpaK" role="2Oq$k0">
                <ref role="3cqZAo" node="4r96ppgPp9K" resolve="file" />
              </node>
              <node concept="liA8E" id="4r96ppgPpaM" role="2OqNvi">
                <ref role="37wK5l" to="59et:~IFile.isDirectory():boolean" resolve="isDirectory" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4r96ppgPpa5" role="3clFbx">
            <node concept="3cpWs6" id="4r96ppgPpa4" role="3cqZAp" />
          </node>
        </node>
        <node concept="1DcWWT" id="4r96ppgPpa6" role="3cqZAp">
          <node concept="2OqwBi" id="4r96ppgPpaP" role="1DdaDG">
            <node concept="37vLTw" id="4r96ppgPpaO" role="2Oq$k0">
              <ref role="3cqZAo" node="4r96ppgPp9K" resolve="file" />
            </node>
            <node concept="liA8E" id="4r96ppgPpaQ" role="2OqNvi">
              <ref role="37wK5l" to="59et:~IFile.getChildren():java.util.List" resolve="getChildren" />
            </node>
          </node>
          <node concept="3cpWsn" id="4r96ppgPpad" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="child" />
            <node concept="3uibUv" id="4r96ppgPpaf" role="1tU5fm">
              <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
            </node>
          </node>
          <node concept="3clFbS" id="4r96ppgPpa8" role="2LFqv$">
            <node concept="3clFbF" id="4r96ppgPpa9" role="3cqZAp">
              <node concept="1rXfSq" id="4r96ppgPpaa" role="3clFbG">
                <ref role="37wK5l" node="4r96ppgPp9J" resolve="collectJarFiles" />
                <node concept="37vLTw" id="4r96ppgPpab" role="37wK5m">
                  <ref role="3cqZAo" node="4r96ppgPpad" resolve="child" />
                </node>
                <node concept="37vLTw" id="2Dokkv7jpnY" role="37wK5m">
                  <ref role="3cqZAo" node="2Dokkv7j7Q8" resolve="excluded" />
                </node>
                <node concept="37vLTw" id="4r96ppgPpac" role="37wK5m">
                  <ref role="3cqZAo" node="2Dokkv7jcHk" resolve="files" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4r96ppgPpah" role="1B3o_S" />
      <node concept="3cqZAl" id="4r96ppgPpai" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5JsnGMj1qjX" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canCreateModels" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5JsnGMj1qjY" role="1B3o_S" />
      <node concept="10P_77" id="5JsnGMj1qjZ" role="3clF45" />
      <node concept="3clFbS" id="5JsnGMj1qk0" role="3clF47">
        <node concept="3clFbF" id="5JsnGMj1qk1" role="3cqZAp">
          <node concept="3clFbT" id="5JsnGMj1qk2" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sS5g" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qk3" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canCreateModel" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5JsnGMj1qk4" role="1B3o_S" />
      <node concept="10P_77" id="5JsnGMj1qk5" role="3clF45" />
      <node concept="37vLTG" id="5JsnGMj1qk6" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="17QB3L" id="7o5OtEM79J0" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5JsnGMj1qk8" role="3clF47">
        <node concept="3clFbF" id="5JsnGMj1qk9" role="3cqZAp">
          <node concept="3clFbT" id="5JsnGMj1qka" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sS5f" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qkb" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createModel" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5JsnGMj1qkc" role="1B3o_S" />
      <node concept="3uibUv" id="5JsnGMj1qkd" role="3clF45">
        <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
      </node>
      <node concept="37vLTG" id="5JsnGMj1qke" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="17QB3L" id="7o5OtEM79UB" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5JsnGMj1qkg" role="3clF47">
        <node concept="3clFbF" id="5JsnGMj1qkh" role="3cqZAp">
          <node concept="10Nm6u" id="5JsnGMj1qki" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sS5d" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5JsnGMj1qkH" role="jymVt">
      <property role="TrG5h" value="getModelDescriptors" />
      <node concept="37vLTG" id="5JsnGMj1qkI" role="3clF46">
        <property role="TrG5h" value="result" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="5JsnGMj1qkJ" role="1tU5fm">
          <node concept="3uibUv" id="5JsnGMj1qkK" role="_ZDj9">
            <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5JsnGMj1qkL" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="2Dokkv7kpNZ" role="1tU5fm">
          <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="37vLTG" id="5JsnGMj1qkP" role="3clF46">
        <property role="TrG5h" value="prefix" />
        <node concept="17QB3L" id="5JsnGMj1qkQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5JsnGMj1qkR" role="3clF46">
        <property role="TrG5h" value="languageId" />
        <node concept="17QB3L" id="5JsnGMj1qkS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5JsnGMj1qkT" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="5JsnGMj1qkU" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3cqZAl" id="5JsnGMj1qkV" role="3clF45" />
      <node concept="3Tm1VV" id="5JsnGMj1qkW" role="1B3o_S" />
      <node concept="3clFbS" id="5JsnGMj1qkX" role="3clF47">
        <node concept="3cpWs8" id="2Dokkv7kBZl" role="3cqZAp">
          <node concept="3cpWsn" id="2Dokkv7kBZm" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="_YKpA" id="2Dokkv7kCY0" role="1tU5fm">
              <node concept="3uibUv" id="2Dokkv7kCY2" role="_ZDj9">
                <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
              </node>
            </node>
            <node concept="2OqwBi" id="2Dokkv7kBZn" role="33vP2m">
              <node concept="37vLTw" id="2Dokkv7kBZo" role="2Oq$k0">
                <ref role="3cqZAo" node="5JsnGMj1qkL" resolve="file" />
              </node>
              <node concept="liA8E" id="2Dokkv7kBZp" role="2OqNvi">
                <ref role="37wK5l" to="59et:~IFile.getChildren():java.util.List" resolve="getChildren" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5JsnGMj1qkY" role="3cqZAp">
          <node concept="2OqwBi" id="2Dokkv7kDud" role="1DdaDG">
            <node concept="37vLTw" id="2Dokkv7kBZq" role="2Oq$k0">
              <ref role="3cqZAo" node="2Dokkv7kBZm" resolve="children" />
            </node>
            <node concept="3zZkjj" id="2Dokkv7kF4x" role="2OqNvi">
              <node concept="1bVj0M" id="2Dokkv7kF4z" role="23t8la">
                <node concept="3clFbS" id="2Dokkv7kF4$" role="1bW5cS">
                  <node concept="3clFbF" id="2Dokkv7kFbJ" role="3cqZAp">
                    <node concept="2OqwBi" id="2Dokkv7kFfe" role="3clFbG">
                      <node concept="37vLTw" id="2Dokkv7kFbI" role="2Oq$k0">
                        <ref role="3cqZAo" node="2Dokkv7kF4_" resolve="it" />
                      </node>
                      <node concept="liA8E" id="2Dokkv7kFBY" role="2OqNvi">
                        <ref role="37wK5l" to="59et:~IFile.isDirectory():boolean" resolve="isDirectory" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2Dokkv7kF4_" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2Dokkv7kF4A" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5JsnGMj1ql3" role="1Duv9x">
            <property role="TrG5h" value="subdir" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="2Dokkv7kH8u" role="1tU5fm">
              <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
            </node>
          </node>
          <node concept="3clFbS" id="5JsnGMj1ql5" role="2LFqv$">
            <node concept="3cpWs8" id="2Dokkv7kMeB" role="3cqZAp">
              <node concept="3cpWsn" id="2Dokkv7kMeC" role="3cpWs9">
                <property role="TrG5h" value="subchildren" />
                <node concept="_YKpA" id="2Dokkv7kNea" role="1tU5fm">
                  <node concept="3uibUv" id="2Dokkv7kNec" role="_ZDj9">
                    <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2Dokkv7kMeD" role="33vP2m">
                  <node concept="37vLTw" id="2Dokkv7kMeE" role="2Oq$k0">
                    <ref role="3cqZAo" node="5JsnGMj1ql3" resolve="subdir" />
                  </node>
                  <node concept="liA8E" id="2Dokkv7kMeF" role="2OqNvi">
                    <ref role="37wK5l" to="59et:~IFile.getChildren():java.util.List" resolve="getChildren" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2Dokkv7kTIk" role="3cqZAp">
              <node concept="3cpWsn" id="2Dokkv7kTIl" role="3cpWs9">
                <property role="TrG5h" value="rootClasses" />
                <node concept="A3Dl8" id="2Dokkv7kTHX" role="1tU5fm">
                  <node concept="3uibUv" id="2Dokkv7kTI0" role="A3Ik2">
                    <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2Dokkv7kTIm" role="33vP2m">
                  <node concept="37vLTw" id="2Dokkv7kTIn" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Dokkv7kMeC" resolve="subchildren" />
                  </node>
                  <node concept="3zZkjj" id="2Dokkv7kTIo" role="2OqNvi">
                    <node concept="1bVj0M" id="2Dokkv7kTIp" role="23t8la">
                      <node concept="3clFbS" id="2Dokkv7kTIq" role="1bW5cS">
                        <node concept="3clFbF" id="2Dokkv7kTIr" role="3cqZAp">
                          <node concept="1Wc70l" id="2Dokkv7kV5e" role="3clFbG">
                            <node concept="3fqX7Q" id="2Dokkv7kVeQ" role="3uHU7w">
                              <node concept="2OqwBi" id="2Dokkv7kVYY" role="3fr31v">
                                <node concept="2OqwBi" id="2Dokkv7kVua" role="2Oq$k0">
                                  <node concept="37vLTw" id="2Dokkv7kVn2" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2Dokkv7kTIy" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="2Dokkv7kVIz" role="2OqNvi">
                                    <ref role="37wK5l" to="59et:~IFile.getName():java.lang.String" resolve="getName" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2Dokkv7kX59" role="2OqNvi">
                                  <ref role="37wK5l" to="e2lb:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
                                  <node concept="Xl_RD" id="2Dokkv7kXe9" role="37wK5m">
                                    <property role="Xl_RC" value="$" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2Dokkv7kTIs" role="3uHU7B">
                              <node concept="2OqwBi" id="2Dokkv7kTIt" role="2Oq$k0">
                                <node concept="37vLTw" id="2Dokkv7kTIu" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2Dokkv7kTIy" resolve="it" />
                                </node>
                                <node concept="liA8E" id="2Dokkv7kTIv" role="2OqNvi">
                                  <ref role="37wK5l" to="59et:~IFile.getName():java.lang.String" resolve="getName" />
                                </node>
                              </node>
                              <node concept="liA8E" id="2Dokkv7kTIw" role="2OqNvi">
                                <ref role="37wK5l" to="e2lb:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
                                <node concept="Xl_RD" id="2Dokkv7kTIx" role="37wK5m">
                                  <property role="Xl_RC" value=".class" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="2Dokkv7kTIy" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="2Dokkv7kTIz" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5BPdp1DNoAM" role="3cqZAp" />
            <node concept="3cpWs8" id="3oDzK78kSOF" role="3cqZAp">
              <node concept="3cpWsn" id="3oDzK78kSOG" role="3cpWs9">
                <property role="TrG5h" value="pack" />
                <node concept="3uibUv" id="3oDzK78kSOH" role="1tU5fm">
                  <ref role="3uigEE" to="e2lb:~String" resolve="String" />
                </node>
                <node concept="3cpWs3" id="3oDzK78kXcG" role="33vP2m">
                  <node concept="3cpWs3" id="3oDzK78kTWx" role="3uHU7B">
                    <node concept="37vLTw" id="3oDzK78kTP6" role="3uHU7B">
                      <ref role="3cqZAo" node="5JsnGMj1qkP" resolve="prefix" />
                    </node>
                    <node concept="1eOMI4" id="5BPdp1DNv0y" role="3uHU7w">
                      <node concept="3K4zz7" id="5BPdp1DNv0z" role="1eOMHV">
                        <node concept="Xl_RD" id="5BPdp1DNv0$" role="3K4E3e">
                          <property role="Xl_RC" value="" />
                        </node>
                        <node concept="17R0WA" id="5BPdp1DNvsJ" role="3K4Cdx">
                          <node concept="37vLTw" id="5BPdp1DNvzz" role="3uHU7B">
                            <ref role="3cqZAo" node="5JsnGMj1qkP" resolve="prefix" />
                          </node>
                          <node concept="Xl_RD" id="5BPdp1DNv0_" role="3uHU7w">
                            <property role="Xl_RC" value="" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5BPdp1DNv0A" role="3K4GZi">
                          <property role="Xl_RC" value="." />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5BPdp1DNtqj" role="3uHU7w">
                    <node concept="37vLTw" id="5BPdp1DNtqk" role="2Oq$k0">
                      <ref role="3cqZAo" node="5JsnGMj1ql3" resolve="subdir" />
                    </node>
                    <node concept="liA8E" id="5BPdp1DNtql" role="2OqNvi">
                      <ref role="37wK5l" to="59et:~IFile.getName():java.lang.String" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5BPdp1DNmXv" role="3cqZAp" />
            <node concept="3clFbJ" id="5JsnGMj1ql6" role="3cqZAp">
              <node concept="1Wc70l" id="2Dokkv7l51C" role="3clFbw">
                <node concept="17QLQc" id="2Dokkv7l5N0" role="3uHU7w">
                  <node concept="Xl_RD" id="2Dokkv7l5PP" role="3uHU7w">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="37vLTw" id="3oDzK78kYgQ" role="3uHU7B">
                    <ref role="3cqZAo" node="3oDzK78kSOG" resolve="pack" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2Dokkv7kZJ1" role="3uHU7B">
                  <node concept="37vLTw" id="2Dokkv7kZ2z" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Dokkv7kTIl" resolve="rootClasses" />
                  </node>
                  <node concept="3GX2aA" id="2Dokkv7l0Dq" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbS" id="5JsnGMj1qlf" role="3clFbx">
                <node concept="3cpWs8" id="5JsnGMj1qlg" role="3cqZAp">
                  <node concept="3cpWsn" id="5JsnGMj1qlh" role="3cpWs9">
                    <property role="TrG5h" value="modelReference" />
                    <property role="3TUv4t" value="false" />
                    <node concept="2YIFZM" id="1B6odZAMNao" role="33vP2m">
                      <ref role="37wK5l" to="fhgm:~StubHelper.uidForPackageInStubs(org.jetbrains.mps.openapi.module.SModuleReference,java.lang.String):org.jetbrains.mps.openapi.model.SModelReference" resolve="uidForPackageInStubs" />
                      <ref role="1Pybhc" to="fhgm:~StubHelper" resolve="StubHelper" />
                      <node concept="2OqwBi" id="1B6odZAMNar" role="37wK5m">
                        <node concept="37vLTw" id="1B6odZAMNas" role="2Oq$k0">
                          <ref role="3cqZAo" node="5JsnGMj1qkT" resolve="module" />
                        </node>
                        <node concept="liA8E" id="1B6odZAMNat" role="2OqNvi">
                          <ref role="37wK5l" to="88zw:~SModule.getModuleReference():org.jetbrains.mps.openapi.module.SModuleReference" resolve="getModuleReference" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6_lpxsUUepv" role="37wK5m">
                        <ref role="3cqZAo" node="3oDzK78kSOG" resolve="pack" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="5JsnGMj1qli" role="1tU5fm">
                      <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5JsnGMj1qlp" role="3cqZAp">
                  <node concept="3cpWsn" id="5JsnGMj1qlq" role="3cpWs9">
                    <property role="TrG5h" value="smd" />
                    <property role="3TUv4t" value="false" />
                    <node concept="3uibUv" id="4X_MBffIWWK" role="1tU5fm">
                      <ref role="3uigEE" node="5JsnGMj1qd0" resolve="JavaClassStubModelDescriptor" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="2W0JvGXyj2j" role="3cqZAp">
                  <node concept="3SKdUq" id="2W0JvGXyjrR" role="3SKWNk">
                    <property role="3SKdUp" value="FIXME: hack, see comment below" />
                  </node>
                </node>
                <node concept="3cpWs8" id="65B_YDCW8oB" role="3cqZAp">
                  <node concept="3cpWsn" id="65B_YDCW8oC" role="3cpWs9">
                    <property role="TrG5h" value="modelDescriptor" />
                    <node concept="3uibUv" id="65B_YDCW8oq" role="1tU5fm">
                      <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
                    </node>
                    <node concept="1rXfSq" id="65B_YDCW8oD" role="33vP2m">
                      <ref role="37wK5l" node="2W0JvGXxR9L" resolve="getModelAlreadyRegistered" />
                      <node concept="37vLTw" id="65B_YDCW8oE" role="37wK5m">
                        <ref role="3cqZAo" node="5JsnGMj1qkT" resolve="module" />
                      </node>
                      <node concept="37vLTw" id="65B_YDCW8oF" role="37wK5m">
                        <ref role="3cqZAo" node="5JsnGMj1qlh" resolve="modelReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5JsnGMj1qls" role="3cqZAp">
                  <node concept="3y3z36" id="65B_YDCW9r4" role="3clFbw">
                    <node concept="10Nm6u" id="65B_YDCW9zq" role="3uHU7w" />
                    <node concept="37vLTw" id="65B_YDCW8oG" role="3uHU7B">
                      <ref role="3cqZAo" node="65B_YDCW8oC" resolve="modelDescriptor" />
                    </node>
                  </node>
                  <node concept="3eNFk2" id="4Q89v$zGhpX" role="3eNLev">
                    <node concept="2OqwBi" id="4Q89v$zGmbI" role="3eO9$A">
                      <node concept="37vLTw" id="4Q89v$zGl$I" role="2Oq$k0">
                        <ref role="3cqZAo" node="5JsnGMj1qkI" resolve="result" />
                      </node>
                      <node concept="2HwmR7" id="4Q89v$zGpsu" role="2OqNvi">
                        <node concept="1bVj0M" id="4Q89v$zGpsw" role="23t8la">
                          <node concept="3clFbS" id="4Q89v$zGpsx" role="1bW5cS">
                            <node concept="3clFbF" id="4Q89v$zGpVv" role="3cqZAp">
                              <node concept="2OqwBi" id="4Q89v$zGrfd" role="3clFbG">
                                <node concept="2OqwBi" id="4Q89v$zGqrv" role="2Oq$k0">
                                  <node concept="37vLTw" id="4Q89v$zGpVu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4Q89v$zGpsy" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="4Q89v$zGr8i" role="2OqNvi">
                                    <ref role="37wK5l" to="ec5l:~SModel.getModelId():org.jetbrains.mps.openapi.model.SModelId" resolve="getModelId" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4Q89v$zGrDk" role="2OqNvi">
                                  <ref role="37wK5l" to="e2lb:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                                  <node concept="2OqwBi" id="BYH7JC4K7x" role="37wK5m">
                                    <node concept="37vLTw" id="BYH7JC4K3M" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5JsnGMj1qlh" resolve="modelReference" />
                                    </node>
                                    <node concept="liA8E" id="BYH7JC4Kom" role="2OqNvi">
                                      <ref role="37wK5l" to="ec5l:~SModelReference.getModelId():org.jetbrains.mps.openapi.model.SModelId" resolve="getModelId" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="4Q89v$zGpsy" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="4Q89v$zGpsz" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="4Q89v$zGhpZ" role="3eOfB_">
                      <node concept="3clFbF" id="65B_YDCWaIW" role="3cqZAp">
                        <node concept="37vLTI" id="65B_YDCWaLw" role="3clFbG">
                          <node concept="37vLTw" id="65B_YDCWaIU" role="37vLTJ">
                            <ref role="3cqZAo" node="65B_YDCW8oC" resolve="modelDescriptor" />
                          </node>
                          <node concept="2OqwBi" id="4Q89v$zGzfb" role="37vLTx">
                            <node concept="37vLTw" id="4Q89v$zGzfc" role="2Oq$k0">
                              <ref role="3cqZAo" node="5JsnGMj1qkI" resolve="result" />
                            </node>
                            <node concept="1z4cxt" id="4Q89v$zGzfd" role="2OqNvi">
                              <node concept="1bVj0M" id="4Q89v$zGzfe" role="23t8la">
                                <node concept="3clFbS" id="4Q89v$zGzff" role="1bW5cS">
                                  <node concept="3clFbF" id="4Q89v$zGzfg" role="3cqZAp">
                                    <node concept="2OqwBi" id="4Q89v$zGzfh" role="3clFbG">
                                      <node concept="2OqwBi" id="4Q89v$zGzfi" role="2Oq$k0">
                                        <node concept="37vLTw" id="4Q89v$zGzfj" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4Q89v$zGzfn" resolve="it" />
                                        </node>
                                        <node concept="liA8E" id="4Q89v$zGzfk" role="2OqNvi">
                                          <ref role="37wK5l" to="ec5l:~SModel.getModelId():org.jetbrains.mps.openapi.model.SModelId" resolve="getModelId" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="4Q89v$zGzfl" role="2OqNvi">
                                        <ref role="37wK5l" to="e2lb:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                                        <node concept="2OqwBi" id="BYH7JC4JxM" role="37wK5m">
                                          <node concept="37vLTw" id="4Q89v$zGzfm" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5JsnGMj1qlh" resolve="modelReference" />
                                          </node>
                                          <node concept="liA8E" id="BYH7JC4JMD" role="2OqNvi">
                                            <ref role="37wK5l" to="ec5l:~SModelReference.getModelId():org.jetbrains.mps.openapi.model.SModelId" resolve="getModelId" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="4Q89v$zGzfn" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4Q89v$zGzfo" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1gVbGN" id="4Q89v$zGzA$" role="3cqZAp">
                        <node concept="2ZW3vV" id="4Q89v$zGzA_" role="1gVkn0">
                          <node concept="37vLTw" id="65B_YDCWdrc" role="2ZW6bz">
                            <ref role="3cqZAo" node="65B_YDCW8oC" resolve="modelDescriptor" />
                          </node>
                          <node concept="3uibUv" id="4Q89v$zGzAA" role="2ZW6by">
                            <ref role="3uigEE" node="5JsnGMj1qd0" resolve="JavaClassStubModelDescriptor" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4Q89v$zGzKo" role="3cqZAp">
                        <node concept="37vLTI" id="4Q89v$zGzKp" role="3clFbG">
                          <node concept="37vLTw" id="4Q89v$zGzKq" role="37vLTJ">
                            <ref role="3cqZAo" node="5JsnGMj1qlq" resolve="smd" />
                          </node>
                          <node concept="10QFUN" id="4Q89v$zGzKr" role="37vLTx">
                            <node concept="37vLTw" id="65B_YDCWdvP" role="10QFUP">
                              <ref role="3cqZAo" node="65B_YDCW8oC" resolve="modelDescriptor" />
                            </node>
                            <node concept="3uibUv" id="4Q89v$zGzKs" role="10QFUM">
                              <ref role="3uigEE" node="5JsnGMj1qd0" resolve="JavaClassStubModelDescriptor" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="5JsnGMj1qlz" role="9aQIa">
                    <node concept="3clFbS" id="5JsnGMj1ql$" role="9aQI4">
                      <node concept="3clFbF" id="5JsnGMj1ql_" role="3cqZAp">
                        <node concept="37vLTI" id="5JsnGMj1qlA" role="3clFbG">
                          <node concept="2ShNRf" id="5JsnGMj1qlB" role="37vLTx">
                            <node concept="1pGfFk" id="5JsnGMj1qlC" role="2ShVmc">
                              <ref role="37wK5l" node="5JsnGMj1qdf" resolve="JavaClassStubModelDescriptor" />
                              <node concept="37vLTw" id="5JsnGMj1qlD" role="37wK5m">
                                <ref role="3cqZAo" node="5JsnGMj1qlh" resolve="modelReference" />
                              </node>
                              <node concept="2ShNRf" id="5JsnGMj1qlE" role="37wK5m">
                                <node concept="1pGfFk" id="5JsnGMj1qlF" role="2ShVmc">
                                  <ref role="37wK5l" to="ep0o:~FolderSetDataSource.&lt;init&gt;()" resolve="FolderSetDataSource" />
                                </node>
                              </node>
                              <node concept="Xjq3P" id="5JsnGMj1qlG" role="37wK5m" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="5JsnGMj1qlH" role="37vLTJ">
                            <ref role="3cqZAo" node="5JsnGMj1qlq" resolve="smd" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="L8C0ATaOvM" role="3cqZAp">
                        <node concept="2OqwBi" id="L8C0ATaOEZ" role="3clFbG">
                          <node concept="liA8E" id="L8C0ATaPih" role="2OqNvi">
                            <ref role="37wK5l" to="51te:~SModelBase.setModelRoot(org.jetbrains.mps.openapi.persistence.ModelRoot):void" resolve="setModelRoot" />
                            <node concept="Xjq3P" id="L8C0ATaPj7" role="37wK5m" />
                          </node>
                          <node concept="37vLTw" id="L8C0ATaOvL" role="2Oq$k0">
                            <ref role="3cqZAo" node="5JsnGMj1qlq" resolve="smd" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5JsnGMj1qlI" role="3cqZAp">
                        <node concept="2OqwBi" id="5JsnGMj1qlJ" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxgl6tc" role="2Oq$k0">
                            <ref role="3cqZAo" node="5JsnGMj1qkI" resolve="result" />
                          </node>
                          <node concept="TSZUe" id="5JsnGMj1qlL" role="2OqNvi">
                            <node concept="37vLTw" id="3GM_nagTsM4" role="25WWJ7">
                              <ref role="3cqZAo" node="5JsnGMj1qlq" resolve="smd" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="5JsnGMj1qlN" role="3clFbx">
                    <node concept="1gVbGN" id="5JsnGMj1qlV" role="3cqZAp">
                      <node concept="2ZW3vV" id="5JsnGMj1qlW" role="1gVkn0">
                        <node concept="37vLTw" id="65B_YDCWa2c" role="2ZW6bz">
                          <ref role="3cqZAo" node="65B_YDCW8oC" resolve="modelDescriptor" />
                        </node>
                        <node concept="3uibUv" id="5JsnGMj1qlX" role="2ZW6by">
                          <ref role="3uigEE" node="5JsnGMj1qd0" resolve="JavaClassStubModelDescriptor" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5JsnGMj1qlZ" role="3cqZAp">
                      <node concept="37vLTI" id="5JsnGMj1qm0" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTuw3" role="37vLTJ">
                          <ref role="3cqZAo" node="5JsnGMj1qlq" resolve="smd" />
                        </node>
                        <node concept="10QFUN" id="5JsnGMj1qm2" role="37vLTx">
                          <node concept="37vLTw" id="65B_YDCWabF" role="10QFUP">
                            <ref role="3cqZAo" node="65B_YDCW8oC" resolve="modelDescriptor" />
                          </node>
                          <node concept="3uibUv" id="5JsnGMj1qm3" role="10QFUM">
                            <ref role="3uigEE" node="5JsnGMj1qd0" resolve="JavaClassStubModelDescriptor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5JsnGMj1qm5" role="3cqZAp">
                      <node concept="2OqwBi" id="5JsnGMj1qm6" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgmbqn" role="2Oq$k0">
                          <ref role="3cqZAo" node="5JsnGMj1qkI" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="5JsnGMj1qm8" role="2OqNvi">
                          <node concept="37vLTw" id="65B_YDCWa5_" role="25WWJ7">
                            <ref role="3cqZAo" node="65B_YDCW8oC" resolve="modelDescriptor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5JsnGMj1qma" role="3cqZAp">
                  <node concept="2OqwBi" id="5JsnGMj1qmb" role="3clFbG">
                    <node concept="2OqwBi" id="5JsnGMj1qmf" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTriX" role="2Oq$k0">
                        <ref role="3cqZAo" node="5JsnGMj1qlq" resolve="smd" />
                      </node>
                      <node concept="liA8E" id="5JsnGMj1qmh" role="2OqNvi">
                        <ref role="37wK5l" node="5JsnGMj1qdA" resolve="getSource" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5JsnGMj1qmi" role="2OqNvi">
                      <ref role="37wK5l" to="ep0o:~FolderSetDataSource.addPath(java.lang.String,org.jetbrains.mps.openapi.persistence.ModelRoot):void" resolve="addPath" />
                      <node concept="2OqwBi" id="2Dokkv7l2gQ" role="37wK5m">
                        <node concept="37vLTw" id="2Dokkv7l218" role="2Oq$k0">
                          <ref role="3cqZAo" node="5JsnGMj1ql3" resolve="subdir" />
                        </node>
                        <node concept="liA8E" id="2Dokkv7l2rr" role="2OqNvi">
                          <ref role="37wK5l" to="59et:~IFile.getPath():java.lang.String" resolve="getPath" />
                        </node>
                      </node>
                      <node concept="Xjq3P" id="5JsnGMj1qmm" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5JsnGMj1qmn" role="3cqZAp">
              <node concept="1rXfSq" id="5JsnGMj1qmo" role="3clFbG">
                <ref role="37wK5l" node="5JsnGMj1qkH" resolve="getModelDescriptors" />
                <node concept="37vLTw" id="2BHiRxglayp" role="37wK5m">
                  <ref role="3cqZAo" node="5JsnGMj1qkI" resolve="result" />
                </node>
                <node concept="37vLTw" id="2Dokkv7l5SH" role="37wK5m">
                  <ref role="3cqZAo" node="5JsnGMj1ql3" resolve="subdir" />
                </node>
                <node concept="37vLTw" id="3oDzK78kYHy" role="37wK5m">
                  <ref role="3cqZAo" node="3oDzK78kSOG" resolve="pack" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm6vR" role="37wK5m">
                  <ref role="3cqZAo" node="5JsnGMj1qkR" resolve="languageId" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm9wz" role="37wK5m">
                  <ref role="3cqZAo" node="5JsnGMj1qkT" resolve="module" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2W0JvGXxSJB" role="jymVt" />
    <node concept="3clFb_" id="2W0JvGXxR9L" role="jymVt">
      <property role="TrG5h" value="getModelAlreadyRegistered" />
      <node concept="3Tm6S6" id="2W0JvGXxR9M" role="1B3o_S" />
      <node concept="3uibUv" id="65B_YDCW78i" role="3clF45">
        <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
      </node>
      <node concept="37vLTG" id="2W0JvGXxU5p" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="2W0JvGXy4el" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="2W0JvGXxR7u" role="3clF46">
        <property role="TrG5h" value="modelReference" />
        <node concept="3uibUv" id="2W0JvGXxR7v" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="3clFbS" id="2W0JvGXxR57" role="3clF47">
        <node concept="3cpWs6" id="2W0JvGXyfO0" role="3cqZAp">
          <node concept="2OqwBi" id="2W0JvGXyfO3" role="3cqZAk">
            <node concept="37vLTw" id="2W0JvGXyfO4" role="2Oq$k0">
              <ref role="3cqZAo" node="2W0JvGXxU5p" resolve="module" />
            </node>
            <node concept="liA8E" id="2W0JvGXyfO5" role="2OqNvi">
              <ref role="37wK5l" to="88zw:~SModule.getModel(org.jetbrains.mps.openapi.model.SModelId):org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
              <node concept="2OqwBi" id="2W0JvGXyfO6" role="37wK5m">
                <node concept="37vLTw" id="2W0JvGXyfO7" role="2Oq$k0">
                  <ref role="3cqZAo" node="2W0JvGXxR7u" resolve="modelReference" />
                </node>
                <node concept="liA8E" id="2W0JvGXyfO8" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SModelReference.getModelId():org.jetbrains.mps.openapi.model.SModelId" resolve="getModelId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="2W0JvGXygU3" role="lGtFl">
        <node concept="TZ5HA" id="2W0JvGXygU4" role="TZ5H$">
          <node concept="1dT_AC" id="2W0JvGXygU5" role="1dT_Ay">
            <property role="1dT_AB" value="DIRTY_HACK" />
          </node>
        </node>
        <node concept="TZ5HA" id="2W0JvGXyi00" role="TZ5H$">
          <node concept="1dT_AC" id="2W0JvGXyi01" role="1dT_Ay">
            <property role="1dT_AB" value="AlexP:" />
          </node>
        </node>
        <node concept="TZ5HA" id="2W0JvGXyjsy" role="TZ5H$">
          <node concept="1dT_AC" id="2W0JvGXyjsz" role="1dT_Ay">
            <property role="1dT_AB" value="Here we check whether some another classes root is already registered" />
          </node>
        </node>
        <node concept="TZ5HA" id="2W0JvGXyi0o" role="TZ5H$">
          <node concept="1dT_AC" id="2W0JvGXyi0p" role="1dT_Ay">
            <property role="1dT_AB" value="Because of the model's name clash we cannot simply return new model with new root." />
          </node>
        </node>
        <node concept="TZ5HA" id="2W0JvGXyi0$" role="TZ5H$">
          <node concept="1dT_AC" id="2W0JvGXyi0_" role="1dT_Ay">
            <property role="1dT_AB" value="FIXME:" />
          </node>
        </node>
        <node concept="TZ5HA" id="2W0JvGXyi06" role="TZ5H$">
          <node concept="1dT_AC" id="2W0JvGXyi07" role="1dT_Ay">
            <property role="1dT_AB" value="Probably the solution is to get rid of multiple *java_classes* stub roots and" />
          </node>
        </node>
        <node concept="TZ5HA" id="2W0JvGXyi0e" role="TZ5H$">
          <node concept="1dT_AC" id="2W0JvGXyi0f" role="1dT_Ay">
            <property role="1dT_AB" value="Allow user to have only one stub root of this kind" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="65B_YDCWd$8" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
      </node>
    </node>
  </node>
</model>

