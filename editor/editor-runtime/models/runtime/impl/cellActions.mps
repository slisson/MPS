<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b9f36c08-4a75-4513-9277-a390d3426e0f(jetbrains.mps.editor.runtime.impl.cellActions)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
  </languages>
  <imports>
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="iwwu" ref="r:2c4d9270-b6d6-44af-aecd-e01a223680db(jetbrains.mps.kernel.model)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="q4oi" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellActions(MPS.Editor/)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="3ahc" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.cells(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="lwvz" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.selection(MPS.Editor/)" />
    <import index="b8lf" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.selection(MPS.Editor/)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure()" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="cavf" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.legacy(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="zce0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.smodel.action(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
      </concept>
    </language>
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
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537397872" name="jetbrains.mps.baseLanguage.javadoc.structure.ThrowsBlockDocTag" flags="ng" index="x0GOo">
        <property id="5858074156537397874" name="text" index="x0GOq" />
        <child id="6832197706140448505" name="exceptionType" index="zrq5$" />
      </concept>
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv">
        <child id="8465538089690917625" name="param" index="TUOzN" />
      </concept>
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8465538089690331492" name="jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag" flags="ng" index="TZ5HI">
        <child id="2667874559098216723" name="text" index="3HnX3l" />
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
      <concept id="5820409030208923287" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingLinkOperation" flags="nn" index="25OxAV" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138676077309" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="nn" index="uoxfO">
        <reference id="1138676095763" name="enumMember" index="uo_Cq" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1146171026731" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum" flags="nn" index="3t7uKx">
        <child id="1146171026732" name="value" index="3t7uKA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1140133623887" name="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" flags="nn" index="1PgB_6" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1237467461002" name="jetbrains.mps.baseLanguage.collections.structure.GetIteratorOperation" flags="nn" index="uNJiE" />
      <concept id="1237467705688" name="jetbrains.mps.baseLanguage.collections.structure.IteratorType" flags="in" index="uOF1S">
        <child id="1237467730343" name="elementType" index="uOL27" />
      </concept>
      <concept id="1237470895604" name="jetbrains.mps.baseLanguage.collections.structure.HasNextOperation" flags="nn" index="v0PNk" />
      <concept id="1237471031357" name="jetbrains.mps.baseLanguage.collections.structure.GetNextOperation" flags="nn" index="v1n4t" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="312cEu" id="1Z_xaSi0b$X">
    <property role="TrG5h" value="CellAction_DeleteEasily" />
    <node concept="3clFbW" id="1Z_xaSi0b_0" role="jymVt">
      <node concept="3clFbS" id="1Z_xaSi0b_5" role="3clF47">
        <node concept="XkiVB" id="1Z_xaSi0bGZ" role="3cqZAp">
          <ref role="37wK5l" to="q4oi:~CellAction_DeleteNode.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="CellAction_DeleteNode" />
          <node concept="37vLTw" id="2BHiRxglkdq" role="37wK5m">
            <ref role="3cqZAo" node="1Z_xaSi0b_3" resolve="semanticNode" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Z_xaSi0b_1" role="1B3o_S" />
      <node concept="3cqZAl" id="1Z_xaSi0b_2" role="3clF45" />
      <node concept="37vLTG" id="1Z_xaSi0b_3" role="3clF46">
        <property role="TrG5h" value="semanticNode" />
        <node concept="3Tqbb2" id="1Z_xaSi0bH1" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="1Z_xaSi0b_8" role="jymVt">
      <property role="TrG5h" value="canExecute" />
      <node concept="3clFbS" id="1Z_xaSi0b_d" role="3clF47">
        <node concept="3cpWs6" id="1Z_xaSi0b_e" role="3cqZAp">
          <node concept="1Wc70l" id="1Z_xaSi0b_f" role="3cqZAk">
            <node concept="1rXfSq" id="4hiugqyyZ1z" role="3uHU7w">
              <ref role="37wK5l" node="1Z_xaSi0bH2" resolve="canBeDeletedEasily" />
            </node>
            <node concept="3nyPlj" id="1Z_xaSi0b_g" role="3uHU7B">
              <ref role="37wK5l" to="q4oi:~CellAction_DeleteNode.canExecute(jetbrains.mps.openapi.editor.EditorContext):boolean" resolve="canExecute" />
              <node concept="37vLTw" id="2BHiRxgm2rB" role="37wK5m">
                <ref role="3cqZAo" node="1Z_xaSi0b_b" resolve="context" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Z_xaSi0b_9" role="1B3o_S" />
      <node concept="10P_77" id="1Z_xaSi0b_a" role="3clF45" />
      <node concept="37vLTG" id="1Z_xaSi0b_b" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="3BuNGkFWu1$" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t4tu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1Z_xaSi0bH2" role="jymVt">
      <property role="TrG5h" value="canBeDeletedEasily" />
      <node concept="3clFbS" id="1Z_xaSi0bH5" role="3clF47">
        <node concept="3cpWs8" id="1Z_xaSi0bHQ" role="3cqZAp">
          <node concept="3cpWsn" id="1Z_xaSi0bHR" role="3cpWs9">
            <property role="TrG5h" value="semanticNode" />
            <node concept="1rXfSq" id="4hiugqyyIvT" role="33vP2m">
              <ref role="37wK5l" to="q4oi:~CellAction_DeleteNode.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
            </node>
            <node concept="3Tqbb2" id="1Z_xaSi0bHS" role="1tU5fm" />
          </node>
        </node>
        <node concept="2Gpval" id="1Z_xaSi0bHd" role="3cqZAp">
          <node concept="2GrKxI" id="1Z_xaSi0bHe" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="1Z_xaSi0bHf" role="2GsD0m">
            <node concept="2OqwBi" id="1Z_xaSi0bHg" role="2Oq$k0">
              <node concept="32TBzR" id="1Z_xaSi0bHi" role="2OqNvi" />
              <node concept="37vLTw" id="3GM_nagT_u2" role="2Oq$k0">
                <ref role="3cqZAo" node="1Z_xaSi0bHR" resolve="semanticNode" />
              </node>
            </node>
            <node concept="3zZkjj" id="1Z_xaSi0bHj" role="2OqNvi">
              <node concept="1bVj0M" id="1Z_xaSi0bHk" role="23t8la">
                <node concept="Rh6nW" id="1Z_xaSi0bHq" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1Z_xaSi0bHr" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="1Z_xaSi0bHl" role="1bW5cS">
                  <node concept="3clFbF" id="1Z_xaSi0bHm" role="3cqZAp">
                    <node concept="3fqX7Q" id="1Z_xaSi0bHn" role="3clFbG">
                      <node concept="2YIFZM" id="1Z_xaSi0bHo" role="3fr31v">
                        <ref role="1Pybhc" to="i8bi:5zEkxuKh8vS" resolve="AttributeOperations" />
                        <ref role="37wK5l" to="i8bi:5zEkxuKhyEz" resolve="isAttribute" />
                        <node concept="37vLTw" id="2BHiRxglBxv" role="37wK5m">
                          <ref role="3cqZAo" node="1Z_xaSi0bHq" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1Z_xaSi0bHs" role="2LFqv$">
            <node concept="3cpWs8" id="1Z_xaSi0bHt" role="3cqZAp">
              <node concept="3cpWsn" id="1Z_xaSi0bHu" role="3cpWs9">
                <property role="TrG5h" value="containingLink" />
                <node concept="3Tqbb2" id="1Z_xaSi0bHv" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                </node>
                <node concept="2OqwBi" id="1Z_xaSi0bHw" role="33vP2m">
                  <node concept="25OxAV" id="1Z_xaSi0bHy" role="2OqNvi" />
                  <node concept="2GrUjf" id="1Z_xaSi0bHx" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1Z_xaSi0bHe" resolve="child" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1Z_xaSi0bHz" role="3cqZAp">
              <node concept="1Wc70l" id="1Z_xaSi0bHB" role="3clFbw">
                <node concept="3fqX7Q" id="1Z_xaSi0bHC" role="3uHU7w">
                  <node concept="2OqwBi" id="1Z_xaSi0bHD" role="3fr31v">
                    <node concept="2OqwBi" id="1Z_xaSi0bHE" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTvfa" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Z_xaSi0bHu" resolve="containingLink" />
                      </node>
                      <node concept="3TrcHB" id="1Z_xaSi0bHG" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:fA0lbG4" resolve="sourceCardinality" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="1Z_xaSi0bHH" role="2OqNvi">
                      <node concept="uoxfO" id="1Z_xaSi0bHI" role="3t7uKA">
                        <ref role="uo_Cq" to="tpce:fLJekj4" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="1Z_xaSi0bHJ" role="3uHU7B">
                  <node concept="10Nm6u" id="1Z_xaSi0bHL" role="3uHU7w" />
                  <node concept="37vLTw" id="3GM_nagTsg8" role="3uHU7B">
                    <ref role="3cqZAo" node="1Z_xaSi0bHu" resolve="containingLink" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1Z_xaSi0bH$" role="3clFbx">
                <node concept="3cpWs6" id="1Z_xaSi0bH_" role="3cqZAp">
                  <node concept="3clFbT" id="1Z_xaSi0bHA" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1Z_xaSi0bHM" role="3cqZAp">
          <node concept="3clFbT" id="1Z_xaSi0bHN" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1Z_xaSi0bH6" role="1B3o_S" />
      <node concept="10P_77" id="1Z_xaSi0bH7" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="1Z_xaSi0b$Y" role="1B3o_S" />
    <node concept="3uibUv" id="1Z_xaSi0bGX" role="1zkMxy">
      <ref role="3uigEE" to="q4oi:~CellAction_DeleteNode" resolve="CellAction_DeleteNode" />
    </node>
  </node>
  <node concept="312cEu" id="1Z_xaSi0wPQ">
    <property role="TrG5h" value="CellAction_DeletePropertyOrNode" />
    <property role="IEkAT" value="true" />
    <node concept="2AHcQZ" id="2klkXdpsewN" role="2AJF6D">
      <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
    </node>
    <node concept="3UR2Jj" id="2klkXdpsevw" role="lGtFl">
      <node concept="TZ5HI" id="2klkXdpsewL" role="3nqlJM">
        <node concept="TZ5HA" id="2klkXdpsewM" role="3HnX3l">
          <node concept="1dT_AC" id="2klkXdpseHy" role="1dT_Ay">
            <property role="1dT_AB" value="use CellActionDeleteSPropertyOrNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="5OMo51zDEdj" role="1zkMxy">
      <ref role="3uigEE" to="3ahc:~AbstractCellAction" resolve="AbstractCellAction" />
    </node>
    <node concept="312cEg" id="1Z_xaSi0wPT" role="jymVt">
      <property role="TrG5h" value="mySemanticNode" />
      <node concept="3Tm6S6" id="1Z_xaSi0wPV" role="1B3o_S" />
      <node concept="3Tqbb2" id="1Z_xaSi0wQZ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1Z_xaSi0wPW" role="jymVt">
      <property role="TrG5h" value="myPropertyName" />
      <node concept="3Tm6S6" id="1Z_xaSi0wPY" role="1B3o_S" />
      <node concept="17QB3L" id="1Z_xaSi0wR0" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="1Z_xaSi0wPZ" role="jymVt">
      <node concept="3Tm1VV" id="1Z_xaSi0wQ0" role="1B3o_S" />
      <node concept="3cqZAl" id="1Z_xaSi0wQ1" role="3clF45" />
      <node concept="37vLTG" id="1Z_xaSi0wQ2" role="3clF46">
        <property role="TrG5h" value="semanticNode" />
        <node concept="3Tqbb2" id="1Z_xaSi0wR1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1Z_xaSi0wQ6" role="3clF47">
        <node concept="3clFbF" id="1Z_xaSi0wQ7" role="3cqZAp">
          <node concept="37vLTI" id="1Z_xaSi0wQ8" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeudhe" role="37vLTJ">
              <ref role="3cqZAo" node="1Z_xaSi0wPT" resolve="mySemanticNode" />
            </node>
            <node concept="37vLTw" id="2BHiRxglGUv" role="37vLTx">
              <ref role="3cqZAo" node="1Z_xaSi0wQ2" resolve="semanticNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Z_xaSi0wQb" role="3cqZAp">
          <node concept="37vLTI" id="1Z_xaSi0wQc" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuktO" role="37vLTJ">
              <ref role="3cqZAo" node="1Z_xaSi0wPW" resolve="myPropertyName" />
            </node>
            <node concept="37vLTw" id="2BHiRxghiCC" role="37vLTx">
              <ref role="3cqZAo" node="1Z_xaSi0wQ4" resolve="propertyName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1Z_xaSi0wQ4" role="3clF46">
        <property role="TrG5h" value="propertyName" />
        <node concept="17QB3L" id="1Z_xaSi0wR2" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="1Z_xaSi0wQf" role="jymVt">
      <property role="TrG5h" value="canExecute" />
      <node concept="10P_77" id="1Z_xaSi0wQh" role="3clF45" />
      <node concept="3Tm1VV" id="1Z_xaSi0wQg" role="1B3o_S" />
      <node concept="37vLTG" id="1Z_xaSi0wQi" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1ZVjBFKGiLW" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="1Z_xaSi0wQk" role="3clF47">
        <node concept="3cpWs6" id="1Z_xaSi0wQl" role="3cqZAp">
          <node concept="3clFbT" id="1Z_xaSi0wQm" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t6Bx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1Z_xaSi0wQn" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="3cqZAl" id="1Z_xaSi0wQp" role="3clF45" />
      <node concept="3Tm1VV" id="1Z_xaSi0wQo" role="1B3o_S" />
      <node concept="37vLTG" id="1Z_xaSi0wQq" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1ZVjBFKGiLZ" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="1Z_xaSi0wQs" role="3clF47">
        <node concept="3clFbJ" id="1Z_xaSi0wQt" role="3cqZAp">
          <node concept="3y3z36" id="1Z_xaSi0xjn" role="3clFbw">
            <node concept="10Nm6u" id="1Z_xaSi0wQz" role="3uHU7w" />
            <node concept="2YIFZM" id="5CFnob0Pb9O" role="3uHU7B">
              <ref role="1Pybhc" to="mhbf:~SNodeAccessUtil" resolve="SNodeAccessUtil" />
              <ref role="37wK5l" to="mhbf:~SNodeAccessUtil.getProperty(org.jetbrains.mps.openapi.model.SNode,java.lang.String):java.lang.String" resolve="getProperty" />
              <node concept="2JrnkZ" id="5CFnob0Pb9P" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeuqQW" role="2JrQYb">
                  <ref role="3cqZAo" node="1Z_xaSi0wPT" resolve="mySemanticNode" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxeuHtM" role="37wK5m">
                <ref role="3cqZAo" node="1Z_xaSi0wPW" resolve="myPropertyName" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1Z_xaSi0wQ$" role="9aQIa">
            <node concept="3clFbS" id="1Z_xaSi0wQ_" role="9aQI4">
              <node concept="3cpWs8" id="1Z_xaSi0xnd" role="3cqZAp">
                <node concept="3cpWsn" id="1Z_xaSi0xne" role="3cpWs9">
                  <property role="TrG5h" value="deleteAction" />
                  <node concept="2ShNRf" id="1Z_xaSi0xnh" role="33vP2m">
                    <node concept="1pGfFk" id="1Z_xaSi0xni" role="2ShVmc">
                      <ref role="37wK5l" node="1Z_xaSi0b_0" resolve="CellAction_DeleteEasily" />
                      <node concept="37vLTw" id="2BHiRxeuNm9" role="37wK5m">
                        <ref role="3cqZAo" node="1Z_xaSi0wPT" resolve="mySemanticNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="1Z_xaSi0xnf" role="1tU5fm">
                    <ref role="3uigEE" node="1Z_xaSi0b$X" resolve="CellAction_DeleteEasily" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1Z_xaSi0wQG" role="3cqZAp">
                <node concept="2OqwBi" id="1Z_xaSi0wQH" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTAtg" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Z_xaSi0xne" resolve="deleteAction" />
                  </node>
                  <node concept="liA8E" id="1Z_xaSi0wQJ" role="2OqNvi">
                    <ref role="37wK5l" node="1Z_xaSi0b_8" resolve="canExecute" />
                    <node concept="37vLTw" id="2BHiRxgmap$" role="37wK5m">
                      <ref role="3cqZAo" node="1Z_xaSi0wQq" resolve="context" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1Z_xaSi0wQL" role="3clFbx">
                  <node concept="3clFbF" id="1Z_xaSi0wQM" role="3cqZAp">
                    <node concept="2OqwBi" id="1Z_xaSi0wQN" role="3clFbG">
                      <node concept="liA8E" id="1Z_xaSi0wQP" role="2OqNvi">
                        <ref role="37wK5l" to="q4oi:~CellAction_DeleteNode.execute(jetbrains.mps.openapi.editor.EditorContext):void" resolve="execute" />
                        <node concept="37vLTw" id="2BHiRxglIQb" role="37wK5m">
                          <ref role="3cqZAo" node="1Z_xaSi0wQq" resolve="context" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTBsk" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Z_xaSi0xne" resolve="deleteAction" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1Z_xaSi0wQR" role="3clFbx">
            <node concept="3clFbF" id="1Z_xaSi0xjw" role="3cqZAp">
              <node concept="2YIFZM" id="5CFnob0Pbgp" role="3clFbG">
                <ref role="1Pybhc" to="mhbf:~SNodeAccessUtil" resolve="SNodeAccessUtil" />
                <ref role="37wK5l" to="mhbf:~SNodeAccessUtil.setProperty(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String):void" resolve="setProperty" />
                <node concept="2JrnkZ" id="5CFnob0Pbgq" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxeu_FP" role="2JrQYb">
                    <ref role="3cqZAo" node="1Z_xaSi0wPT" resolve="mySemanticNode" />
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxeuoV3" role="37wK5m">
                  <ref role="3cqZAo" node="1Z_xaSi0wPW" resolve="myPropertyName" />
                </node>
                <node concept="10Nm6u" id="5CFnob0Pbgt" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t6Bw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1Z_xaSi0wPR" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1Z_xaSi0xnT">
    <property role="TrG5h" value="CellAction_DeleteSmart" />
    <node concept="3uibUv" id="5OMo51zDGHf" role="1zkMxy">
      <ref role="3uigEE" to="3ahc:~AbstractCellAction" resolve="AbstractCellAction" />
    </node>
    <node concept="312cEg" id="1Z_xaSi0xnW" role="jymVt">
      <property role="TrG5h" value="mySource" />
      <node concept="3Tqbb2" id="1Z_xaSi0xq2" role="1tU5fm" />
      <node concept="3Tm6S6" id="1Z_xaSi0xnY" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1Z_xaSi0xnZ" role="jymVt">
      <property role="TrG5h" value="myLink" />
      <node concept="3Tqbb2" id="1Z_xaSi0xq3" role="1tU5fm">
        <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      </node>
      <node concept="3Tm6S6" id="1Z_xaSi0xo1" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1Z_xaSi0xo2" role="jymVt">
      <property role="TrG5h" value="myTarget" />
      <node concept="3Tqbb2" id="1Z_xaSi0xq4" role="1tU5fm" />
      <node concept="3Tm6S6" id="1Z_xaSi0xo4" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5ebN1fWgnEp" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myCanBeNull" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5ebN1fWgnd6" role="1B3o_S" />
      <node concept="10P_77" id="5ebN1fWgnCB" role="1tU5fm" />
      <node concept="3clFbT" id="5ebN1fWgo5A" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="312cEg" id="5ebN1fWgGT6" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myEnabled" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5ebN1fWgGqa" role="1B3o_S" />
      <node concept="10P_77" id="5ebN1fWgGRk" role="1tU5fm" />
      <node concept="3clFbT" id="5ebN1fWgHmA" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="312cEg" id="5ebN1fWh6Ji" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myRole" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5ebN1fWh6gI" role="1B3o_S" />
      <node concept="17QB3L" id="5ebN1fWh6Hw" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="1Z_xaSi0xo5" role="jymVt">
      <node concept="3Tm1VV" id="1Z_xaSi0xo6" role="1B3o_S" />
      <node concept="3cqZAl" id="1Z_xaSi0xo7" role="3clF45" />
      <node concept="37vLTG" id="1Z_xaSi0xo8" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="1Z_xaSi0xpZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1Z_xaSi0xoa" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3Tqbb2" id="1Z_xaSi0xq0" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1Z_xaSi0xoc" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="1Z_xaSi0xq1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1Z_xaSi0xoe" role="3clF47">
        <node concept="3clFbF" id="1Z_xaSi0xof" role="3cqZAp">
          <node concept="37vLTI" id="1Z_xaSi0xog" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuFjU" role="37vLTJ">
              <ref role="3cqZAo" node="1Z_xaSi0xnW" resolve="mySource" />
            </node>
            <node concept="37vLTw" id="2BHiRxglm2I" role="37vLTx">
              <ref role="3cqZAo" node="1Z_xaSi0xo8" resolve="source" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Z_xaSi0xoj" role="3cqZAp">
          <node concept="37vLTI" id="1Z_xaSi0xok" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuTv$" role="37vLTJ">
              <ref role="3cqZAo" node="1Z_xaSi0xnZ" resolve="myLink" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm9TQ" role="37vLTx">
              <ref role="3cqZAo" node="1Z_xaSi0xoa" resolve="link" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Z_xaSi0xon" role="3cqZAp">
          <node concept="37vLTI" id="1Z_xaSi0xoo" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuTpR" role="37vLTJ">
              <ref role="3cqZAo" node="1Z_xaSi0xo2" resolve="myTarget" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm$98" role="37vLTx">
              <ref role="3cqZAo" node="1Z_xaSi0xoc" resolve="target" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5ebN1fWgljG" role="3cqZAp">
          <node concept="3cpWsn" id="5ebN1fWgljH" role="3cpWs9">
            <property role="TrG5h" value="genuineLinkDeclaration" />
            <node concept="3Tqbb2" id="5ebN1fWgljI" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
            </node>
            <node concept="2YIFZM" id="5ebN1fWgljJ" role="33vP2m">
              <ref role="1Pybhc" to="iwwu:i0YipgJ" resolve="SModelUtil" />
              <ref role="37wK5l" to="iwwu:i0YipjE" resolve="getGenuineLinkDeclaration" />
              <node concept="37vLTw" id="5ebN1fWgljK" role="37wK5m">
                <ref role="3cqZAo" node="1Z_xaSi0xnZ" resolve="myLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ebN1fWh7u0" role="3cqZAp">
          <node concept="37vLTI" id="5ebN1fWh7Ss" role="3clFbG">
            <node concept="2OqwBi" id="5ebN1fWh7Z4" role="37vLTx">
              <node concept="37vLTw" id="5ebN1fWh7UH" role="2Oq$k0">
                <ref role="3cqZAo" node="5ebN1fWgljH" resolve="genuineLinkDeclaration" />
              </node>
              <node concept="3TrcHB" id="5ebN1fWh8rc" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
              </node>
            </node>
            <node concept="37vLTw" id="5ebN1fWh7tZ" role="37vLTJ">
              <ref role="3cqZAo" node="5ebN1fWh6Ji" resolve="myRole" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5LtrFRzZ3hm" role="3cqZAp">
          <node concept="3SKdUq" id="5LtrFRzZ3Bw" role="3SKWNk">
            <property role="3SKdUp" value="This action used only for aggregation links" />
          </node>
        </node>
        <node concept="3clFbF" id="5ebN1fWgJu6" role="3cqZAp">
          <node concept="37vLTI" id="5ebN1fWgJQP" role="3clFbG">
            <node concept="1Wc70l" id="5ebN1fWgWVV" role="37vLTx">
              <node concept="1eOMI4" id="5ebN1fWgX0d" role="3uHU7w">
                <node concept="22lmx$" id="5ebN1fWgZ9k" role="1eOMHV">
                  <node concept="2OqwBi" id="5ebN1fWgXZF" role="3uHU7B">
                    <node concept="2OqwBi" id="5ebN1fWgXbh" role="2Oq$k0">
                      <node concept="37vLTw" id="5ebN1fWgX6q" role="2Oq$k0">
                        <ref role="3cqZAo" node="5ebN1fWgljH" resolve="genuineLinkDeclaration" />
                      </node>
                      <node concept="3TrcHB" id="5ebN1fWgXBP" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:fA0lbG4" resolve="sourceCardinality" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="5ebN1fWgYSY" role="2OqNvi">
                      <node concept="uoxfO" id="5ebN1fWgYT0" role="3t7uKA">
                        <ref role="uo_Cq" to="tpce:fLJekj3" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5ebN1fWgZeu" role="3uHU7w">
                    <node concept="2OqwBi" id="5ebN1fWgZev" role="2Oq$k0">
                      <node concept="37vLTw" id="5ebN1fWgZew" role="2Oq$k0">
                        <ref role="3cqZAo" node="5ebN1fWgljH" resolve="genuineLinkDeclaration" />
                      </node>
                      <node concept="3TrcHB" id="5ebN1fWgZex" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:fA0lbG4" resolve="sourceCardinality" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="5ebN1fWgZey" role="2OqNvi">
                      <node concept="uoxfO" id="5ebN1fWgZez" role="3t7uKA">
                        <ref role="uo_Cq" to="tpce:fLJekj4" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5ebN1fWgV_Z" role="3uHU7B">
                <node concept="2OqwBi" id="5ebN1fWgK1N" role="2Oq$k0">
                  <node concept="37vLTw" id="5ebN1fWgJXs" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ebN1fWgljH" resolve="genuineLinkDeclaration" />
                  </node>
                  <node concept="3TrcHB" id="5ebN1fWgVeF" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:fA0lm$B" resolve="metaClass" />
                  </node>
                </node>
                <node concept="3t7uKx" id="5ebN1fWgWGh" role="2OqNvi">
                  <node concept="uoxfO" id="5ebN1fWgWGj" role="3t7uKA">
                    <ref role="uo_Cq" to="tpce:fLJjDmT" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5ebN1fWgJu5" role="37vLTJ">
              <ref role="3cqZAo" node="5ebN1fWgGT6" resolve="myEnabled" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ebN1fWgoCv" role="3cqZAp">
          <node concept="37vLTI" id="5ebN1fWgFKM" role="3clFbG">
            <node concept="2OqwBi" id="5ebN1fWgljQ" role="37vLTx">
              <node concept="2OqwBi" id="5ebN1fWgljR" role="2Oq$k0">
                <node concept="37vLTw" id="5ebN1fWgljS" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ebN1fWgljH" resolve="genuineLinkDeclaration" />
                </node>
                <node concept="3TrcHB" id="5ebN1fWgljT" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:fA0lbG4" resolve="sourceCardinality" />
                </node>
              </node>
              <node concept="3t7uKx" id="5ebN1fWgljU" role="2OqNvi">
                <node concept="uoxfO" id="5ebN1fWgljV" role="3t7uKA">
                  <ref role="uo_Cq" to="tpce:fLJekj3" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5ebN1fWgoCu" role="37vLTJ">
              <ref role="3cqZAo" node="5ebN1fWgnEp" resolve="myCanBeNull" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5ebN1fWh2ze" role="3cqZAp">
          <node concept="3clFbS" id="5ebN1fWh2zh" role="3clFbx">
            <node concept="3clFbF" id="5ebN1fWh2Ta" role="3cqZAp">
              <node concept="37vLTI" id="5ebN1fWh36H" role="3clFbG">
                <node concept="37vLTw" id="5ebN1fWh36K" role="37vLTJ">
                  <ref role="3cqZAo" node="5ebN1fWgGT6" resolve="myEnabled" />
                </node>
                <node concept="1Wc70l" id="5ebN1fWh3nA" role="37vLTx">
                  <node concept="37vLTw" id="5ebN1fWh3cv" role="3uHU7B">
                    <ref role="3cqZAo" node="5ebN1fWgGT6" resolve="myEnabled" />
                  </node>
                  <node concept="3y3z36" id="5ebN1fWh3CJ" role="3uHU7w">
                    <node concept="2OqwBi" id="5ebN1fWh3CL" role="3uHU7B">
                      <node concept="37vLTw" id="5ebN1fWh3CM" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Z_xaSi0xo2" resolve="myTarget" />
                      </node>
                      <node concept="3NT_Vc" id="5ebN1fWh3CN" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="5ebN1fWh3CO" role="3uHU7w">
                      <node concept="37vLTw" id="5ebN1fWh3CP" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Z_xaSi0xnZ" resolve="myLink" />
                      </node>
                      <node concept="3TrEf2" id="5ebN1fWh3CQ" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpce:fA0lvVK" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5ebN1fWh2PG" role="3clFbw">
            <node concept="37vLTw" id="5ebN1fWh2PI" role="3fr31v">
              <ref role="3cqZAo" node="5ebN1fWgnEp" resolve="myCanBeNull" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1Z_xaSi0xor" role="jymVt">
      <property role="TrG5h" value="canExecute" />
      <node concept="3Tm1VV" id="1Z_xaSi0xos" role="1B3o_S" />
      <node concept="10P_77" id="1Z_xaSi0xot" role="3clF45" />
      <node concept="37vLTG" id="1Z_xaSi0xou" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1ZVjBFKGiMf" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="1Z_xaSi0xow" role="3clF47">
        <node concept="3cpWs8" id="1dtM3RGVp0B" role="3cqZAp">
          <node concept="3cpWsn" id="1dtM3RGVp0A" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="myTargetCell" />
            <node concept="3uibUv" id="1dtM3RGVp0C" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="1dtM3RGVp0D" role="33vP2m">
              <node concept="2OqwBi" id="1dtM3RGVp0Q" role="2Oq$k0">
                <node concept="37vLTw" id="1dtM3RGVp0P" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Z_xaSi0xou" resolve="context" />
                </node>
                <node concept="liA8E" id="1dtM3RGVp0R" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                </node>
              </node>
              <node concept="liA8E" id="1dtM3RGVp0F" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.openapi.editor.cells.EditorCell" resolve="findNodeCell" />
                <node concept="37vLTw" id="1dtM3RGVp0G" role="37wK5m">
                  <ref role="3cqZAo" node="1Z_xaSi0xo2" resolve="myTarget" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1dtM3RGVp0H" role="3cqZAp">
          <node concept="1Wc70l" id="1dtM3RGVp0I" role="3cqZAk">
            <node concept="37vLTw" id="1dtM3RGVp0J" role="3uHU7B">
              <ref role="3cqZAo" node="5ebN1fWgGT6" resolve="myEnabled" />
            </node>
            <node concept="3fqX7Q" id="1dtM3RGVp0K" role="3uHU7w">
              <node concept="2YIFZM" id="1dtM3RGVpob" role="3fr31v">
                <ref role="1Pybhc" to="3ahc:~ReadOnlyUtil" resolve="ReadOnlyUtil" />
                <ref role="37wK5l" to="3ahc:~ReadOnlyUtil.isCellOrSelectionReadOnlyInEditor(jetbrains.mps.openapi.editor.EditorComponent,jetbrains.mps.openapi.editor.cells.EditorCell):boolean" resolve="isCellOrSelectionReadOnlyInEditor" />
                <node concept="2OqwBi" id="1dtM3RGVrvX" role="37wK5m">
                  <node concept="37vLTw" id="1dtM3RGVrvW" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Z_xaSi0xou" resolve="context" />
                  </node>
                  <node concept="liA8E" id="1dtM3RGVrvY" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                  </node>
                </node>
                <node concept="37vLTw" id="1dtM3RGVpod" role="37wK5m">
                  <ref role="3cqZAo" node="1dtM3RGVp0A" resolve="myTargetCell" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t6J_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1Z_xaSi0xoz" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="3Tm1VV" id="1Z_xaSi0xo$" role="1B3o_S" />
      <node concept="3cqZAl" id="1Z_xaSi0xo_" role="3clF45" />
      <node concept="37vLTG" id="1Z_xaSi0xoA" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1ZVjBFKGiMj" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="1Z_xaSi0xoC" role="3clF47">
        <node concept="3clFbF" id="1Z_xaSi0$8K" role="3cqZAp">
          <node concept="2OqwBi" id="1Z_xaSi0$8M" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuHrl" role="2Oq$k0">
              <ref role="3cqZAo" node="1Z_xaSi0xo2" resolve="myTarget" />
            </node>
            <node concept="1PgB_6" id="1Z_xaSi0$8Q" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="1Z_xaSi0$8S" role="3cqZAp">
          <node concept="3clFbS" id="1Z_xaSi0$8T" role="3clFbx">
            <node concept="3cpWs8" id="1Z_xaSi2jXi" role="3cqZAp">
              <node concept="3cpWsn" id="1Z_xaSi2jXj" role="3cpWs9">
                <property role="TrG5h" value="defaultTarget" />
                <node concept="3uibUv" id="1Z_xaSi2jXk" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2YIFZM" id="4PZEGlYUqWZ" role="33vP2m">
                  <ref role="37wK5l" to="w1kc:~SModelUtil_new.instantiateConceptDeclaration(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SModel,boolean):jetbrains.mps.smodel.SNode" resolve="instantiateConceptDeclaration" />
                  <ref role="1Pybhc" to="w1kc:~SModelUtil_new" resolve="SModelUtil_new" />
                  <node concept="2OqwBi" id="4PZEGlYUqX0" role="37wK5m">
                    <node concept="37vLTw" id="4PZEGlYUqX1" role="2Oq$k0">
                      <ref role="3cqZAo" node="1Z_xaSi0xnZ" resolve="myLink" />
                    </node>
                    <node concept="3TrEf2" id="4PZEGlYUqX2" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fA0lvVK" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4PZEGlYUqX3" role="37wK5m">
                    <node concept="37vLTw" id="4PZEGlYUqX4" role="2Oq$k0">
                      <ref role="3cqZAo" node="1Z_xaSi0xnW" resolve="mySource" />
                    </node>
                    <node concept="I4A8Y" id="4PZEGlYUqX5" role="2OqNvi" />
                  </node>
                  <node concept="3clFbT" id="4PZEGlYUruv" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2WtH7EQWPVN" role="3cqZAp">
              <node concept="2YIFZM" id="2WtH7EQWPVQ" role="3clFbG">
                <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i8bi:1pwnB5Dj0vT" resolve="setTarget" />
                <node concept="37vLTw" id="2BHiRxeunf8" role="37wK5m">
                  <ref role="3cqZAo" node="1Z_xaSi0xnW" resolve="mySource" />
                </node>
                <node concept="2OqwBi" id="5Z_8g9ZjpWT" role="37wK5m">
                  <node concept="1eOMI4" id="5Z_8g9ZjpQo" role="2Oq$k0">
                    <node concept="10QFUN" id="5Z_8g9ZjpQl" role="1eOMHV">
                      <node concept="3uibUv" id="5Z_8g9ZjpUd" role="10QFUM">
                        <ref role="3uigEE" to="cavf:~ConceptMetaInfoConverter" resolve="ConceptMetaInfoConverter" />
                      </node>
                      <node concept="2OqwBi" id="5Z_8g9ZjpsA" role="10QFUP">
                        <node concept="2JrnkZ" id="5Z_8g9ZjqBr" role="2Oq$k0">
                          <node concept="37vLTw" id="5Z_8g9ZjpoT" role="2JrQYb">
                            <ref role="3cqZAo" node="1Z_xaSi0xnW" resolve="mySource" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5Z_8g9ZjqHU" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5Z_8g9Zjq49" role="2OqNvi">
                    <ref role="37wK5l" to="cavf:~ConceptMetaInfoConverter.convertAggregation(java.lang.String):org.jetbrains.mps.openapi.language.SContainmentLink" resolve="convertAggregation" />
                    <node concept="37vLTw" id="5Z_8g9Zjq6O" role="37wK5m">
                      <ref role="3cqZAo" node="5ebN1fWh6Ji" resolve="myRole" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTr4x" role="37wK5m">
                  <ref role="3cqZAo" node="1Z_xaSi2jXj" resolve="defaultTarget" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5ebN1fWgHNr" role="3clFbw">
            <node concept="37vLTw" id="5ebN1fWgHYy" role="3fr31v">
              <ref role="3cqZAo" node="5ebN1fWgnEp" resolve="myCanBeNull" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t6J$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1Z_xaSi0xnU" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5WMLF8SmE8C">
    <property role="TrG5h" value="CellAction_CreateChildRangeSelection" />
    <property role="1sVAO0" value="false" />
    <node concept="312cEg" id="76xkvoUT9k6" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="76xkvoUT9aJ" role="1B3o_S" />
      <node concept="3Tqbb2" id="76xkvoUT9ik" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="65en6WkZHVN" role="jymVt">
      <property role="TrG5h" value="myEditorContext" />
      <node concept="3Tm6S6" id="65en6WkZHVO" role="1B3o_S" />
      <node concept="3uibUv" id="65en6WkZIbB" role="1tU5fm">
        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
      </node>
    </node>
    <node concept="312cEg" id="65en6WkZK$8" role="jymVt">
      <property role="TrG5h" value="myFilter" />
      <node concept="3Tm6S6" id="65en6WkZK$9" role="1B3o_S" />
      <node concept="3uibUv" id="65en6WkZKQs" role="1tU5fm">
        <ref role="3uigEE" to="b8lf:~NodeRangeSelection$RangeSelectionFilter" resolve="NodeRangeSelection.RangeSelectionFilter" />
      </node>
    </node>
    <node concept="312cEg" id="5pJgs6CAweN" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myNext" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5pJgs6CAvS6" role="1B3o_S" />
      <node concept="10P_77" id="5pJgs6CAwd1" role="1tU5fm" />
      <node concept="3clFbT" id="5pJgs6CAw$5" role="33vP2m" />
    </node>
    <node concept="312cEg" id="1nDbgX0YLf6" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myEmptyCellId" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1nDbgX0YKX5" role="1B3o_S" />
      <node concept="17QB3L" id="1nDbgX0YLd1" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="76xkvoUTg8w" role="jymVt" />
    <node concept="3clFbW" id="76xkvoUS1jt" role="jymVt">
      <node concept="3cqZAl" id="76xkvoUS1jv" role="3clF45" />
      <node concept="3Tm1VV" id="76xkvoUS1jw" role="1B3o_S" />
      <node concept="3clFbS" id="76xkvoUS1jx" role="3clF47">
        <node concept="XkiVB" id="76xkvoUSnGg" role="3cqZAp">
          <ref role="37wK5l" to="3ahc:~AbstractCellAction.&lt;init&gt;(boolean)" resolve="AbstractCellAction" />
          <node concept="3clFbT" id="76xkvoUSnKy" role="37wK5m">
            <property role="3clFbU" value="false" />
          </node>
        </node>
        <node concept="3clFbF" id="76xkvoUT9v9" role="3cqZAp">
          <node concept="37vLTI" id="76xkvoUT9_r" role="3clFbG">
            <node concept="37vLTw" id="76xkvoUT9CZ" role="37vLTx">
              <ref role="3cqZAo" node="76xkvoUT8Se" resolve="node" />
            </node>
            <node concept="37vLTw" id="76xkvoUT9v7" role="37vLTJ">
              <ref role="3cqZAo" node="76xkvoUT9k6" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65en6WkZLfL" role="3cqZAp">
          <node concept="37vLTI" id="65en6WkZLme" role="3clFbG">
            <node concept="37vLTw" id="65en6WkZLq8" role="37vLTx">
              <ref role="3cqZAo" node="65en6WkZL6D" resolve="filter" />
            </node>
            <node concept="37vLTw" id="65en6WkZLfJ" role="37vLTJ">
              <ref role="3cqZAo" node="65en6WkZK$8" resolve="myFilter" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65en6WkZIkE" role="3cqZAp">
          <node concept="37vLTI" id="65en6WkZIQW" role="3clFbG">
            <node concept="37vLTw" id="65en6WkZIUO" role="37vLTx">
              <ref role="3cqZAo" node="65en6WkZHyj" resolve="editorContext" />
            </node>
            <node concept="37vLTw" id="65en6WkZIkC" role="37vLTJ">
              <ref role="3cqZAo" node="65en6WkZHVN" resolve="myEditorContext" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1nDbgX0YLDV" role="3cqZAp">
          <node concept="37vLTI" id="1nDbgX0YLSt" role="3clFbG">
            <node concept="37vLTw" id="1nDbgX0YLYo" role="37vLTx">
              <ref role="3cqZAo" node="1nDbgX0YHq0" resolve="emptyCellId" />
            </node>
            <node concept="37vLTw" id="1nDbgX0YLDT" role="37vLTJ">
              <ref role="3cqZAo" node="1nDbgX0YLf6" resolve="myEmptyCellId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5pJgs6CAwYT" role="3cqZAp">
          <node concept="37vLTI" id="5pJgs6CAxdX" role="3clFbG">
            <node concept="37vLTw" id="5pJgs6CAxjJ" role="37vLTx">
              <ref role="3cqZAo" node="5pJgs6CAwN3" resolve="next" />
            </node>
            <node concept="37vLTw" id="5pJgs6CAwYR" role="37vLTJ">
              <ref role="3cqZAo" node="5pJgs6CAweN" resolve="myNext" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="76xkvoUT8Se" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="76xkvoUT8Xv" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="65en6WkZL6D" role="3clF46">
        <property role="TrG5h" value="filter" />
        <node concept="3uibUv" id="65en6WkZLcu" role="1tU5fm">
          <ref role="3uigEE" to="b8lf:~NodeRangeSelection$RangeSelectionFilter" resolve="NodeRangeSelection.RangeSelectionFilter" />
        </node>
      </node>
      <node concept="37vLTG" id="1nDbgX0YHq0" role="3clF46">
        <property role="TrG5h" value="emptyCellId" />
        <node concept="17QB3L" id="1nDbgX0YHtw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="65en6WkZHyj" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="65en6WkZHBs" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="5pJgs6CAwN3" role="3clF46">
        <property role="TrG5h" value="next" />
        <node concept="10P_77" id="5pJgs6CAwNf" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="76xkvoUSo5i" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canExecute" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="76xkvoUSo5j" role="1B3o_S" />
      <node concept="10P_77" id="76xkvoUSo5l" role="3clF45" />
      <node concept="37vLTG" id="76xkvoUSo5m" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="76xkvoUSo5n" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="76xkvoUSo5o" role="3clF47">
        <node concept="3cpWs8" id="76xkvoUSrhz" role="3cqZAp">
          <node concept="3cpWsn" id="76xkvoUSrh$" role="3cpWs9">
            <property role="TrG5h" value="selectedCell" />
            <node concept="3uibUv" id="76xkvoUSrhy" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="76xkvoUSrh_" role="33vP2m">
              <node concept="37vLTw" id="76xkvoUSrhA" role="2Oq$k0">
                <ref role="3cqZAo" node="76xkvoUSo5m" resolve="context" />
              </node>
              <node concept="liA8E" id="76xkvoUSrhB" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="getSelectedCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="76xkvoUTlsk" role="3cqZAp">
          <node concept="1Wc70l" id="76xkvoUTlXC" role="3cqZAk">
            <node concept="3y3z36" id="76xkvoUTlJx" role="3uHU7B">
              <node concept="37vLTw" id="76xkvoUTlE0" role="3uHU7B">
                <ref role="3cqZAo" node="76xkvoUSrh$" resolve="selectedCell" />
              </node>
              <node concept="10Nm6u" id="76xkvoUTlOD" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="76xkvoUTmkx" role="3uHU7w">
              <node concept="2OqwBi" id="76xkvoUTmkz" role="3uHU7B">
                <node concept="37vLTw" id="76xkvoUTmk$" role="2Oq$k0">
                  <ref role="3cqZAo" node="76xkvoUSrh$" resolve="selectedCell" />
                </node>
                <node concept="liA8E" id="76xkvoUTmk_" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
                </node>
              </node>
              <node concept="37vLTw" id="76xkvoUTmkA" role="3uHU7w">
                <ref role="3cqZAo" node="76xkvoUT9k6" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="76xkvoUSo5p" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="76xkvoUS10k" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="execute" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="76xkvoUS10l" role="1B3o_S" />
      <node concept="3cqZAl" id="76xkvoUS10n" role="3clF45" />
      <node concept="37vLTG" id="76xkvoUS10o" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="76xkvoUS10p" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="76xkvoUS10s" role="3clF47">
        <node concept="3cpWs8" id="5pJgs6CA6ao" role="3cqZAp">
          <node concept="3cpWsn" id="5pJgs6CA6ap" role="3cpWs9">
            <property role="TrG5h" value="selectedCell" />
            <node concept="3uibUv" id="5pJgs6CA6al" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="5pJgs6CA6aq" role="33vP2m">
              <node concept="37vLTw" id="5pJgs6CA6ar" role="2Oq$k0">
                <ref role="3cqZAo" node="65en6WkZHVN" resolve="myEditorContext" />
              </node>
              <node concept="liA8E" id="5pJgs6CA6as" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="getSelectedCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1pK1G3R8jZf" role="3cqZAp">
          <node concept="3cpWsn" id="1pK1G3R8jZg" role="3cpWs9">
            <property role="TrG5h" value="newSelection" />
            <node concept="3uibUv" id="5pJgs6CA7FN" role="1tU5fm">
              <ref role="3uigEE" to="b8lf:~NodeRangeSelection" resolve="NodeRangeSelection" />
            </node>
            <node concept="2ShNRf" id="1pK1G3R8jZi" role="33vP2m">
              <node concept="1pGfFk" id="1otT9lmSPLl" role="2ShVmc">
                <ref role="37wK5l" to="b8lf:~NodeRangeSelection.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorComponent,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.nodeEditor.selection.NodeRangeSelection$RangeSelectionFilter,java.lang.String)" resolve="NodeRangeSelection" />
                <node concept="2OqwBi" id="65en6WkZJ8s" role="37wK5m">
                  <node concept="37vLTw" id="65en6WkZIVD" role="2Oq$k0">
                    <ref role="3cqZAo" node="65en6WkZHVN" resolve="myEditorContext" />
                  </node>
                  <node concept="liA8E" id="65en6WkZJuk" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                  </node>
                </node>
                <node concept="37vLTw" id="65en6WkZJPB" role="37wK5m">
                  <ref role="3cqZAo" node="76xkvoUT9k6" resolve="myNode" />
                </node>
                <node concept="37vLTw" id="65en6WkZJXK" role="37wK5m">
                  <ref role="3cqZAo" node="76xkvoUT9k6" resolve="myNode" />
                </node>
                <node concept="37vLTw" id="65en6WkZKW$" role="37wK5m">
                  <ref role="3cqZAo" node="65en6WkZK$8" resolve="myFilter" />
                </node>
                <node concept="37vLTw" id="1nDbgX0YMja" role="37wK5m">
                  <ref role="3cqZAo" node="1nDbgX0YLf6" resolve="myEmptyCellId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5pJgs6CA6El" role="3cqZAp">
          <node concept="3clFbS" id="5pJgs6CA6Eo" role="3clFbx">
            <node concept="3clFbF" id="6RdI09T9wvg" role="3cqZAp">
              <node concept="37vLTI" id="6RdI09T9x2b" role="3clFbG">
                <node concept="37vLTw" id="6RdI09T9wve" role="37vLTJ">
                  <ref role="3cqZAo" node="1pK1G3R8jZg" resolve="newSelection" />
                </node>
                <node concept="2OqwBi" id="5pJgs6CA7r6" role="37vLTx">
                  <node concept="37vLTw" id="5pJgs6CA7qq" role="2Oq$k0">
                    <ref role="3cqZAo" node="1pK1G3R8jZg" resolve="newSelection" />
                  </node>
                  <node concept="liA8E" id="5pJgs6CAqP7" role="2OqNvi">
                    <ref role="37wK5l" to="b8lf:~NodeRangeSelection.enlargeSelection(boolean):jetbrains.mps.nodeEditor.selection.NodeRangeSelection" resolve="enlargeSelection" />
                    <node concept="37vLTw" id="5pJgs6CAwJr" role="37wK5m">
                      <ref role="3cqZAo" node="5pJgs6CAweN" resolve="myNext" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="5pJgs6CA77v" role="3clFbw">
            <node concept="2OqwBi" id="5pJgs6CA7in" role="3uHU7w">
              <node concept="37vLTw" id="5pJgs6CA7gT" role="2Oq$k0">
                <ref role="3cqZAo" node="5pJgs6CA6ap" resolve="selectedCell" />
              </node>
              <node concept="liA8E" id="5pJgs6CA7oS" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.isBig():boolean" resolve="isBig" />
              </node>
            </node>
            <node concept="3y3z36" id="5pJgs6CA6XW" role="3uHU7B">
              <node concept="37vLTw" id="5pJgs6CA6OG" role="3uHU7B">
                <ref role="3cqZAo" node="5pJgs6CA6ap" resolve="selectedCell" />
              </node>
              <node concept="10Nm6u" id="5pJgs6CA76I" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1pK1G3R8jZp" role="3cqZAp">
          <node concept="2OqwBi" id="1pK1G3R8jZq" role="3clFbG">
            <node concept="2OqwBi" id="1pK1G3R8jZr" role="2Oq$k0">
              <node concept="37vLTw" id="65en6WkZK6E" role="2Oq$k0">
                <ref role="3cqZAo" node="65en6WkZHVN" resolve="myEditorContext" />
              </node>
              <node concept="liA8E" id="1pK1G3R8jZt" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
              </node>
            </node>
            <node concept="liA8E" id="1pK1G3R8jZu" role="2OqNvi">
              <ref role="37wK5l" to="lwvz:~SelectionManager.pushSelection(jetbrains.mps.openapi.editor.selection.Selection):void" resolve="pushSelection" />
              <node concept="37vLTw" id="1pK1G3R8jZv" role="37wK5m">
                <ref role="3cqZAo" node="1pK1G3R8jZg" resolve="newSelection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1pK1G3R8jZw" role="3cqZAp">
          <node concept="2OqwBi" id="1pK1G3R8jZx" role="3clFbG">
            <node concept="37vLTw" id="1pK1G3R8jZy" role="2Oq$k0">
              <ref role="3cqZAo" node="1pK1G3R8jZg" resolve="newSelection" />
            </node>
            <node concept="liA8E" id="1pK1G3R8jZz" role="2OqNvi">
              <ref role="37wK5l" to="b8lf:~NodeRangeSelection.ensureVisible():void" resolve="ensureVisible" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5WMLF8SmE8D" role="1B3o_S" />
    <node concept="3uibUv" id="76xkvoUS0Vz" role="1zkMxy">
      <ref role="3uigEE" to="3ahc:~AbstractCellAction" resolve="AbstractCellAction" />
    </node>
  </node>
  <node concept="312cEu" id="3h3KQO7kxG1">
    <property role="TrG5h" value="CellAction_DeleteSPropertyOrNode" />
    <node concept="3uibUv" id="3h3KQO7kxG2" role="1zkMxy">
      <ref role="3uigEE" to="3ahc:~AbstractCellAction" resolve="AbstractCellAction" />
    </node>
    <node concept="312cEg" id="3h3KQO7kxG3" role="jymVt">
      <property role="TrG5h" value="mySemanticNode" />
      <node concept="3Tm6S6" id="3h3KQO7kxG4" role="1B3o_S" />
      <node concept="3Tqbb2" id="3h3KQO7kxG5" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3h3KQO7kxG6" role="jymVt">
      <property role="TrG5h" value="myProperty" />
      <node concept="3Tm6S6" id="3h3KQO7kxG7" role="1B3o_S" />
      <node concept="3uibUv" id="3h3KQO7kyQY" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
    </node>
    <node concept="3clFbW" id="3h3KQO7kxG9" role="jymVt">
      <node concept="3Tm1VV" id="3h3KQO7kxGa" role="1B3o_S" />
      <node concept="3cqZAl" id="3h3KQO7kxGb" role="3clF45" />
      <node concept="37vLTG" id="3h3KQO7kxGc" role="3clF46">
        <property role="TrG5h" value="semanticNode" />
        <node concept="3Tqbb2" id="3h3KQO7kxGd" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3h3KQO7kxGe" role="3clF47">
        <node concept="3clFbF" id="3h3KQO7kxGf" role="3cqZAp">
          <node concept="37vLTI" id="3h3KQO7kxGg" role="3clFbG">
            <node concept="37vLTw" id="3h3KQO7kxGh" role="37vLTJ">
              <ref role="3cqZAo" node="3h3KQO7kxG3" resolve="mySemanticNode" />
            </node>
            <node concept="37vLTw" id="3h3KQO7kxGi" role="37vLTx">
              <ref role="3cqZAo" node="3h3KQO7kxGc" resolve="semanticNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3h3KQO7kxGj" role="3cqZAp">
          <node concept="37vLTI" id="3h3KQO7kxGk" role="3clFbG">
            <node concept="37vLTw" id="3h3KQO7kxGl" role="37vLTJ">
              <ref role="3cqZAo" node="3h3KQO7kxG6" resolve="myProperty" />
            </node>
            <node concept="37vLTw" id="3h3KQO7kxGm" role="37vLTx">
              <ref role="3cqZAo" node="3h3KQO7kxGn" resolve="property" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3h3KQO7kxGn" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="3h3KQO7kyy0" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3h3KQO7kxGp" role="jymVt">
      <property role="TrG5h" value="canExecute" />
      <node concept="10P_77" id="3h3KQO7kxGq" role="3clF45" />
      <node concept="3Tm1VV" id="3h3KQO7kxGr" role="1B3o_S" />
      <node concept="37vLTG" id="3h3KQO7kxGs" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="3h3KQO7kxGt" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="3h3KQO7kxGu" role="3clF47">
        <node concept="3cpWs6" id="3h3KQO7kxGv" role="3cqZAp">
          <node concept="3clFbT" id="3h3KQO7kxGw" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3h3KQO7kxGx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3h3KQO7kxGy" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="3cqZAl" id="3h3KQO7kxGz" role="3clF45" />
      <node concept="3Tm1VV" id="3h3KQO7kxG$" role="1B3o_S" />
      <node concept="37vLTG" id="3h3KQO7kxG_" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="3h3KQO7kxGA" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="3h3KQO7kxGB" role="3clF47">
        <node concept="3clFbJ" id="3h3KQO7kxGC" role="3cqZAp">
          <node concept="3y3z36" id="3h3KQO7kxGD" role="3clFbw">
            <node concept="10Nm6u" id="3h3KQO7kxGE" role="3uHU7w" />
            <node concept="2YIFZM" id="3h3KQO7kzIM" role="3uHU7B">
              <ref role="37wK5l" to="mhbf:~SNodeAccessUtil.getProperty(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SProperty):java.lang.String" resolve="getProperty" />
              <ref role="1Pybhc" to="mhbf:~SNodeAccessUtil" resolve="SNodeAccessUtil" />
              <node concept="2JrnkZ" id="3h3KQO7kzIN" role="37wK5m">
                <node concept="37vLTw" id="3h3KQO7kzIO" role="2JrQYb">
                  <ref role="3cqZAo" node="3h3KQO7kxG3" resolve="mySemanticNode" />
                </node>
              </node>
              <node concept="37vLTw" id="3h3KQO7kzIP" role="37wK5m">
                <ref role="3cqZAo" node="3h3KQO7kxG6" resolve="myProperty" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3h3KQO7kxGJ" role="9aQIa">
            <node concept="3clFbS" id="3h3KQO7kxGK" role="9aQI4">
              <node concept="3cpWs8" id="3h3KQO7kxGL" role="3cqZAp">
                <node concept="3cpWsn" id="3h3KQO7kxGM" role="3cpWs9">
                  <property role="TrG5h" value="deleteAction" />
                  <node concept="2ShNRf" id="3h3KQO7kxGN" role="33vP2m">
                    <node concept="1pGfFk" id="3h3KQO7kxGO" role="2ShVmc">
                      <ref role="37wK5l" node="1Z_xaSi0b_0" resolve="CellAction_DeleteEasily" />
                      <node concept="37vLTw" id="3h3KQO7kxGP" role="37wK5m">
                        <ref role="3cqZAo" node="3h3KQO7kxG3" resolve="mySemanticNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="3h3KQO7kxGQ" role="1tU5fm">
                    <ref role="3uigEE" node="1Z_xaSi0b$X" resolve="CellAction_DeleteEasily" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3h3KQO7kxGR" role="3cqZAp">
                <node concept="2OqwBi" id="3h3KQO7kxGS" role="3clFbw">
                  <node concept="37vLTw" id="3h3KQO7kxGT" role="2Oq$k0">
                    <ref role="3cqZAo" node="3h3KQO7kxGM" resolve="deleteAction" />
                  </node>
                  <node concept="liA8E" id="3h3KQO7kxGU" role="2OqNvi">
                    <ref role="37wK5l" node="1Z_xaSi0b_8" resolve="canExecute" />
                    <node concept="37vLTw" id="3h3KQO7kxGV" role="37wK5m">
                      <ref role="3cqZAo" node="3h3KQO7kxG_" resolve="context" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="3h3KQO7kxGW" role="3clFbx">
                  <node concept="3clFbF" id="3h3KQO7kxGX" role="3cqZAp">
                    <node concept="2OqwBi" id="3h3KQO7kxGY" role="3clFbG">
                      <node concept="liA8E" id="3h3KQO7kxGZ" role="2OqNvi">
                        <ref role="37wK5l" to="q4oi:~CellAction_DeleteNode.execute(jetbrains.mps.openapi.editor.EditorContext):void" resolve="execute" />
                        <node concept="37vLTw" id="3h3KQO7kxH0" role="37wK5m">
                          <ref role="3cqZAo" node="3h3KQO7kxG_" resolve="context" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3h3KQO7kxH1" role="2Oq$k0">
                        <ref role="3cqZAo" node="3h3KQO7kxGM" resolve="deleteAction" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3h3KQO7kxH2" role="3clFbx">
            <node concept="3clFbF" id="3h3KQO7kxH3" role="3cqZAp">
              <node concept="2YIFZM" id="3h3KQO7kzPP" role="3clFbG">
                <ref role="37wK5l" to="mhbf:~SNodeAccessUtil.setProperty(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SProperty,java.lang.String):void" resolve="setProperty" />
                <ref role="1Pybhc" to="mhbf:~SNodeAccessUtil" resolve="SNodeAccessUtil" />
                <node concept="2JrnkZ" id="3h3KQO7kzPQ" role="37wK5m">
                  <node concept="37vLTw" id="3h3KQO7kzPR" role="2JrQYb">
                    <ref role="3cqZAo" node="3h3KQO7kxG3" resolve="mySemanticNode" />
                  </node>
                </node>
                <node concept="37vLTw" id="3h3KQO7kzPS" role="37wK5m">
                  <ref role="3cqZAo" node="3h3KQO7kxG6" resolve="myProperty" />
                </node>
                <node concept="10Nm6u" id="3h3KQO7kzPT" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3h3KQO7kxH9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3h3KQO7kxHa" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2ETBKOyiRJh">
    <property role="TrG5h" value="CellAction_Comment" />
    <node concept="312cEg" id="5FzO4t9hvqi" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5FzO4t9hvqg" role="1B3o_S" />
      <node concept="3Tqbb2" id="5FzO4t9hvqh" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5FzO4t9hvw9" role="jymVt" />
    <node concept="3clFbW" id="5FzO4t9gKaG" role="jymVt">
      <node concept="3cqZAl" id="5FzO4t9gKaI" role="3clF45" />
      <node concept="3Tm1VV" id="5FzO4t9gKaJ" role="1B3o_S" />
      <node concept="3clFbS" id="5FzO4t9gKaK" role="3clF47">
        <node concept="3clFbF" id="5FzO4t9hvqp" role="3cqZAp">
          <node concept="37vLTI" id="5FzO4t9hvqq" role="3clFbG">
            <node concept="2OqwBi" id="5FzO4t9hvqr" role="37vLTJ">
              <node concept="Xjq3P" id="5FzO4t9hvqs" role="2Oq$k0" />
              <node concept="2OwXpG" id="5FzO4t9hvqt" role="2OqNvi">
                <ref role="2Oxat5" node="5FzO4t9hvqi" resolve="myNode" />
              </node>
            </node>
            <node concept="37vLTw" id="5FzO4t9hvqu" role="37vLTx">
              <ref role="3cqZAo" node="5FzO4t9gKjT" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5FzO4t9gKjT" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5FzO4t9gKjS" role="1tU5fm" />
        <node concept="2AHcQZ" id="5FzO4t9hvuV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5FKjex9ivfx" role="jymVt" />
    <node concept="3clFb_" id="5FKjex9ivvJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canExecute" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5FKjex9ivvK" role="1B3o_S" />
      <node concept="10P_77" id="5FKjex9ivvM" role="3clF45" />
      <node concept="37vLTG" id="5FKjex9ivvN" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="5FKjex9ivvO" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="5FKjex9ivvP" role="3clF47">
        <node concept="3cpWs8" id="5FKjex9iLD3" role="3cqZAp">
          <node concept="3cpWsn" id="5FKjex9iLD4" role="3cpWs9">
            <property role="TrG5h" value="selection" />
            <node concept="3uibUv" id="5FKjex9iLD1" role="1tU5fm">
              <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
            </node>
            <node concept="2OqwBi" id="5FKjex9iLD5" role="33vP2m">
              <node concept="2OqwBi" id="5FKjex9iLD6" role="2Oq$k0">
                <node concept="liA8E" id="5FKjex9iLD7" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
                </node>
                <node concept="37vLTw" id="5FKjex9iLD8" role="2Oq$k0">
                  <ref role="3cqZAo" node="5FKjex9ivvN" resolve="editorContext" />
                </node>
              </node>
              <node concept="liA8E" id="5FKjex9iLD9" role="2OqNvi">
                <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection():jetbrains.mps.openapi.editor.selection.Selection" resolve="getSelection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FKjex9iw1W" role="3cqZAp">
          <node concept="1Wc70l" id="5FKjex9iLNC" role="3clFbG">
            <node concept="1rXfSq" id="5FKjex9iKZY" role="3uHU7w">
              <ref role="37wK5l" node="5FKjex9iBKA" resolve="needToComment" />
              <node concept="37vLTw" id="5FKjex9iL2C" role="37wK5m">
                <ref role="3cqZAo" node="5FKjex9ivvN" resolve="editorContext" />
              </node>
            </node>
            <node concept="1Wc70l" id="5FKjex9iKWO" role="3uHU7B">
              <node concept="1Wc70l" id="5FKjex9izp4" role="3uHU7B">
                <node concept="3y3z36" id="5FKjex9iwfu" role="3uHU7B">
                  <node concept="10Nm6u" id="5FKjex9iwgh" role="3uHU7w" />
                  <node concept="2OqwBi" id="25qAmJN2xKj" role="3uHU7B">
                    <node concept="37vLTw" id="25qAmJN2xKk" role="2Oq$k0">
                      <ref role="3cqZAo" node="5FzO4t9hvqi" resolve="myNode" />
                    </node>
                    <node concept="1mfA1w" id="25qAmJN2xKl" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3y3z36" id="5FKjex9iztI" role="3uHU7w">
                  <node concept="37vLTw" id="5FKjex9iLDa" role="3uHU7B">
                    <ref role="3cqZAo" node="5FKjex9iLD4" resolve="selection" />
                  </node>
                  <node concept="10Nm6u" id="5FKjex9izvi" role="3uHU7w" />
                </node>
              </node>
              <node concept="2ZW3vV" id="5FKjex9iM9i" role="3uHU7w">
                <node concept="3uibUv" id="5FKjex9iMaR" role="2ZW6by">
                  <ref role="3uigEE" to="lwvz:~SingularSelection" resolve="SingularSelection" />
                </node>
                <node concept="37vLTw" id="5FKjex9iLR5" role="2ZW6bz">
                  <ref role="3cqZAo" node="5FKjex9iLD4" resolve="selection" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5FKjex9ivvQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="40AgflwsWgk" role="jymVt" />
    <node concept="3Tm1VV" id="6xmjvvYJWCO" role="1B3o_S" />
    <node concept="3uibUv" id="5FzO4t9hvnD" role="1zkMxy">
      <ref role="3uigEE" to="3ahc:~AbstractCellAction" resolve="AbstractCellAction" />
    </node>
    <node concept="3clFb_" id="5B3NHHiZj02" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="execute" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5B3NHHiZj03" role="1B3o_S" />
      <node concept="3cqZAl" id="5B3NHHiZj05" role="3clF45" />
      <node concept="37vLTG" id="5B3NHHiZj06" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="5B3NHHiZj07" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="5B3NHHiZj0a" role="3clF47">
        <node concept="3cpWs8" id="4ALf1wALegd" role="3cqZAp">
          <node concept="3cpWsn" id="4ALf1wALege" role="3cpWs9">
            <property role="TrG5h" value="selectedCell" />
            <node concept="3uibUv" id="4ALf1wALegb" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="4ALf1wALegf" role="33vP2m">
              <node concept="37vLTw" id="4ALf1wALegg" role="2Oq$k0">
                <ref role="3cqZAo" node="5B3NHHiZj06" resolve="editorContext" />
              </node>
              <node concept="liA8E" id="4ALf1wALegh" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="getSelectedCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4ALf1wAL_H3" role="3cqZAp">
          <node concept="3clFbS" id="4ALf1wAL_H5" role="3clFbx">
            <node concept="3cpWs6" id="4ALf1wALA3L" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4ALf1wAL_Xc" role="3clFbw">
            <node concept="10Nm6u" id="4ALf1wALA33" role="3uHU7w" />
            <node concept="37vLTw" id="4ALf1wAL_QV" role="3uHU7B">
              <ref role="3cqZAo" node="4ALf1wALege" resolve="selectedCell" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="104svWlb9Vr" role="3cqZAp">
          <node concept="3cpWsn" id="104svWlb9Vs" role="3cpWs9">
            <property role="TrG5h" value="cellId" />
            <node concept="3uibUv" id="104svWlb9Vm" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="104svWlb9Vt" role="33vP2m">
              <node concept="37vLTw" id="4ALf1wALegi" role="2Oq$k0">
                <ref role="3cqZAo" node="4ALf1wALege" resolve="selectedCell" />
              </node>
              <node concept="liA8E" id="104svWlb9Vx" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getCellId():java.lang.String" resolve="getCellId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ALf1wALzn4" role="3cqZAp">
          <node concept="3cpWsn" id="4ALf1wALzn7" role="3cpWs9">
            <property role="TrG5h" value="actualSelectedNode" />
            <node concept="3Tqbb2" id="4ALf1wALzn2" role="1tU5fm" />
            <node concept="2OqwBi" id="4ALf1wALA4N" role="33vP2m">
              <node concept="37vLTw" id="4ALf1wALA45" role="2Oq$k0">
                <ref role="3cqZAo" node="4ALf1wALege" resolve="selectedCell" />
              </node>
              <node concept="liA8E" id="4ALf1wALAc0" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ALf1wALdYM" role="3cqZAp">
          <node concept="3cpWsn" id="4ALf1wALdYN" role="3cpWs9">
            <property role="TrG5h" value="isLabel" />
            <node concept="10P_77" id="4ALf1wALdYO" role="1tU5fm" />
            <node concept="2ZW3vV" id="4ALf1wALdYP" role="33vP2m">
              <node concept="3uibUv" id="4ALf1wALdYQ" role="2ZW6by">
                <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
              </node>
              <node concept="37vLTw" id="4ALf1wALdYR" role="2ZW6bz">
                <ref role="3cqZAo" node="4ALf1wALege" resolve="selectedCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ALf1wALdYS" role="3cqZAp">
          <node concept="3cpWsn" id="4ALf1wALdYT" role="3cpWs9">
            <property role="TrG5h" value="startPosition" />
            <node concept="10Oyi0" id="4ALf1wALdYU" role="1tU5fm" />
            <node concept="3K4zz7" id="4ALf1wALdYV" role="33vP2m">
              <node concept="2OqwBi" id="4ALf1wALdYW" role="3K4E3e">
                <node concept="1eOMI4" id="4ALf1wALdYX" role="2Oq$k0">
                  <node concept="10QFUN" id="4ALf1wALdYY" role="1eOMHV">
                    <node concept="37vLTw" id="4ALf1wALdYZ" role="10QFUP">
                      <ref role="3cqZAo" node="4ALf1wALege" resolve="selectedCell" />
                    </node>
                    <node concept="3uibUv" id="4ALf1wALdZ0" role="10QFUM">
                      <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4ALf1wALdZ1" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionStart():int" resolve="getSelectionStart" />
                </node>
              </node>
              <node concept="3cmrfG" id="4ALf1wALdZ2" role="3K4GZi">
                <property role="3cmrfH" value="-1" />
              </node>
              <node concept="37vLTw" id="4ALf1wALdZ3" role="3K4Cdx">
                <ref role="3cqZAo" node="4ALf1wALdYN" resolve="isLabel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ALf1wALdZ4" role="3cqZAp">
          <node concept="3cpWsn" id="4ALf1wALdZ5" role="3cpWs9">
            <property role="TrG5h" value="endPosition" />
            <node concept="10Oyi0" id="4ALf1wALdZ6" role="1tU5fm" />
            <node concept="3K4zz7" id="4ALf1wALdZ7" role="33vP2m">
              <node concept="2OqwBi" id="4ALf1wALdZ8" role="3K4E3e">
                <node concept="1eOMI4" id="4ALf1wALdZ9" role="2Oq$k0">
                  <node concept="10QFUN" id="4ALf1wALdZa" role="1eOMHV">
                    <node concept="37vLTw" id="4ALf1wALdZb" role="10QFUP">
                      <ref role="3cqZAo" node="4ALf1wALege" resolve="selectedCell" />
                    </node>
                    <node concept="3uibUv" id="4ALf1wALdZc" role="10QFUM">
                      <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4ALf1wALdZd" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionEnd():int" resolve="getSelectionEnd" />
                </node>
              </node>
              <node concept="3cmrfG" id="4ALf1wALdZe" role="3K4GZi">
                <property role="3cmrfH" value="-1" />
              </node>
              <node concept="37vLTw" id="4ALf1wALdZf" role="3K4Cdx">
                <ref role="3cqZAo" node="4ALf1wALdYN" resolve="isLabel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="EJgmL$JwrB" role="3cqZAp">
          <node concept="3cpWsn" id="EJgmL$JwrC" role="3cpWs9">
            <property role="TrG5h" value="nodeToSelect" />
            <node concept="3Tqbb2" id="EJgmL$Jwr_" role="1tU5fm" />
            <node concept="2YIFZM" id="EJgmL$JwrD" role="33vP2m">
              <ref role="37wK5l" node="2ETBKOyiRJO" resolve="commentOut" />
              <ref role="1Pybhc" node="5FzO4t9gN3W" resolve="CommentUtil" />
              <node concept="37vLTw" id="EJgmL$JwrE" role="37wK5m">
                <ref role="3cqZAo" node="5FzO4t9hvqi" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="104svWlba1E" role="3cqZAp">
          <node concept="2OqwBi" id="104svWlba39" role="3clFbG">
            <node concept="37vLTw" id="104svWlba1C" role="2Oq$k0">
              <ref role="3cqZAo" node="5B3NHHiZj06" resolve="editorContext" />
            </node>
            <node concept="liA8E" id="104svWlba93" role="2OqNvi">
              <ref role="37wK5l" to="cj4x:~EditorContext.flushEvents():void" resolve="flushEvents" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3YzEBUOPnhb" role="3cqZAp">
          <node concept="3clFbS" id="3YzEBUOPnhd" role="3clFbx">
            <node concept="3cpWs8" id="104svWlbat6" role="3cqZAp">
              <node concept="3cpWsn" id="104svWlbat7" role="3cpWs9">
                <property role="TrG5h" value="newNodeCell" />
                <node concept="3uibUv" id="104svWlbasZ" role="1tU5fm">
                  <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                </node>
                <node concept="2OqwBi" id="104svWlbat8" role="33vP2m">
                  <node concept="2OqwBi" id="104svWlbat9" role="2Oq$k0">
                    <node concept="37vLTw" id="104svWlbata" role="2Oq$k0">
                      <ref role="3cqZAo" node="5B3NHHiZj06" resolve="editorContext" />
                    </node>
                    <node concept="liA8E" id="104svWlbatb" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                    </node>
                  </node>
                  <node concept="liA8E" id="104svWlbatc" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.openapi.editor.cells.EditorCell" resolve="findNodeCell" />
                    <node concept="37vLTw" id="4ALf1wALAe2" role="37wK5m">
                      <ref role="3cqZAo" node="4ALf1wALzn7" resolve="actualSelectedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="EJgmL$JuM0" role="3cqZAp">
              <node concept="3clFbS" id="EJgmL$JuM2" role="3clFbx">
                <node concept="3cpWs8" id="104svWlbcmx" role="3cqZAp">
                  <node concept="3cpWsn" id="104svWlbcmy" role="3cpWs9">
                    <property role="TrG5h" value="cellToSelect" />
                    <node concept="3uibUv" id="104svWlbcmn" role="1tU5fm">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="2YIFZM" id="104svWlbcmz" role="33vP2m">
                      <ref role="1Pybhc" to="g51k:~CellFinderUtil" resolve="CellFinderUtil" />
                      <ref role="37wK5l" to="g51k:~CellFinderUtil.findChildByCondition(jetbrains.mps.openapi.editor.cells.EditorCell,org.jetbrains.mps.util.Condition,boolean,boolean):jetbrains.mps.openapi.editor.cells.EditorCell" resolve="findChildByCondition" />
                      <node concept="37vLTw" id="104svWlbcm$" role="37wK5m">
                        <ref role="3cqZAo" node="104svWlbat7" resolve="newNodeCell" />
                      </node>
                      <node concept="1bVj0M" id="104svWlbcm_" role="37wK5m">
                        <node concept="37vLTG" id="104svWlbcmA" role="1bW2Oz">
                          <property role="TrG5h" value="cell" />
                          <node concept="3uibUv" id="104svWlbcmB" role="1tU5fm">
                            <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="104svWlbcmC" role="1bW5cS">
                          <node concept="3clFbF" id="104svWlbcmD" role="3cqZAp">
                            <node concept="17R0WA" id="104svWlbcmE" role="3clFbG">
                              <node concept="37vLTw" id="104svWlbcmF" role="3uHU7w">
                                <ref role="3cqZAo" node="104svWlb9Vs" resolve="cellId" />
                              </node>
                              <node concept="2OqwBi" id="104svWlbcmG" role="3uHU7B">
                                <node concept="37vLTw" id="104svWlbcmH" role="2Oq$k0">
                                  <ref role="3cqZAo" node="104svWlbcmA" resolve="cell" />
                                </node>
                                <node concept="liA8E" id="104svWlbcmI" role="2OqNvi">
                                  <ref role="37wK5l" to="f4zo:~EditorCell.getCellId():java.lang.String" resolve="getCellId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="104svWlbcmJ" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="104svWlbcmK" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3YzEBUOPnOy" role="3cqZAp">
                  <node concept="3clFbS" id="3YzEBUOPnO$" role="3clFbx">
                    <node concept="3clFbJ" id="4ALf1wALg3d" role="3cqZAp">
                      <node concept="3clFbS" id="4ALf1wALg3e" role="3clFbx">
                        <node concept="3clFbF" id="4ALf1wALg3f" role="3cqZAp">
                          <node concept="2OqwBi" id="4ALf1wALg3g" role="3clFbG">
                            <node concept="2OqwBi" id="4ALf1wALg3h" role="2Oq$k0">
                              <node concept="37vLTw" id="4ALf1wALg3i" role="2Oq$k0">
                                <ref role="3cqZAo" node="5B3NHHiZj06" resolve="editorContext" />
                              </node>
                              <node concept="liA8E" id="4ALf1wALg3j" role="2OqNvi">
                                <ref role="37wK5l" to="cj4x:~EditorContext.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
                              </node>
                            </node>
                            <node concept="liA8E" id="4ALf1wALg3k" role="2OqNvi">
                              <ref role="37wK5l" to="lwvz:~SelectionManager.setSelection(org.jetbrains.mps.openapi.model.SNode,java.lang.String,int,int):void" resolve="setSelection" />
                              <node concept="37vLTw" id="4ALf1wALAii" role="37wK5m">
                                <ref role="3cqZAo" node="4ALf1wALzn7" resolve="actualSelectedNode" />
                              </node>
                              <node concept="37vLTw" id="4ALf1wALg3m" role="37wK5m">
                                <ref role="3cqZAo" node="104svWlb9Vs" resolve="cellId" />
                              </node>
                              <node concept="37vLTw" id="4ALf1wALg3n" role="37wK5m">
                                <ref role="3cqZAo" node="4ALf1wALdYT" resolve="startPosition" />
                              </node>
                              <node concept="37vLTw" id="4ALf1wALg3o" role="37wK5m">
                                <ref role="3cqZAo" node="4ALf1wALdZ5" resolve="endPosition" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4ALf1wALg3p" role="3clFbw">
                        <ref role="3cqZAo" node="4ALf1wALdYN" resolve="isLabel" />
                      </node>
                      <node concept="9aQIb" id="4ALf1wALg3q" role="9aQIa">
                        <node concept="3clFbS" id="4ALf1wALg3r" role="9aQI4">
                          <node concept="3clFbF" id="4ALf1wALg3s" role="3cqZAp">
                            <node concept="2OqwBi" id="4ALf1wALg3t" role="3clFbG">
                              <node concept="2OqwBi" id="4ALf1wALg3u" role="2Oq$k0">
                                <node concept="37vLTw" id="4ALf1wALg3v" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5B3NHHiZj06" resolve="editorContext" />
                                </node>
                                <node concept="liA8E" id="4ALf1wALg3w" role="2OqNvi">
                                  <ref role="37wK5l" to="cj4x:~EditorContext.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
                                </node>
                              </node>
                              <node concept="liA8E" id="4ALf1wALg3x" role="2OqNvi">
                                <ref role="37wK5l" to="lwvz:~SelectionManager.setSelection(org.jetbrains.mps.openapi.model.SNode,java.lang.String):void" resolve="setSelection" />
                                <node concept="37vLTw" id="4ALf1wALAlX" role="37wK5m">
                                  <ref role="3cqZAo" node="4ALf1wALzn7" resolve="actualSelectedNode" />
                                </node>
                                <node concept="37vLTw" id="4ALf1wALg3z" role="37wK5m">
                                  <ref role="3cqZAo" node="104svWlb9Vs" resolve="cellId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="4ALf1wALg0Y" role="3cqZAp" />
                    <node concept="3cpWs6" id="4ALf1wALd$U" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="3YzEBUOPnTk" role="3clFbw">
                    <node concept="10Nm6u" id="3YzEBUOPnTG" role="3uHU7w" />
                    <node concept="37vLTw" id="3YzEBUOPnSE" role="3uHU7B">
                      <ref role="3cqZAo" node="104svWlbcmy" resolve="cellToSelect" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="EJgmL$Jv2P" role="3clFbw">
                <node concept="37vLTw" id="EJgmL$JuR3" role="3uHU7B">
                  <ref role="3cqZAo" node="104svWlbat7" resolve="newNodeCell" />
                </node>
                <node concept="10Nm6u" id="EJgmL$JuS5" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3YzEBUOPnwp" role="3clFbw">
            <node concept="10Nm6u" id="3YzEBUOPn$B" role="3uHU7w" />
            <node concept="37vLTw" id="3YzEBUOPnmG" role="3uHU7B">
              <ref role="3cqZAo" node="104svWlb9Vs" resolve="cellId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EJgmL$JwM2" role="3cqZAp">
          <node concept="2OqwBi" id="EJgmL$JwMT" role="3clFbG">
            <node concept="37vLTw" id="EJgmL$JwM1" role="2Oq$k0">
              <ref role="3cqZAo" node="EJgmL$JwrC" resolve="nodeToSelect" />
            </node>
            <node concept="1OKiuA" id="EJgmL$JwRx" role="2OqNvi">
              <node concept="37vLTw" id="EJgmL$JwS4" role="lBI5i">
                <ref role="3cqZAo" node="5B3NHHiZj06" resolve="editorContext" />
              </node>
              <node concept="2B6iha" id="EJgmL$JwTQ" role="lGT1i">
                <property role="1lyBwo" value="lastEditable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5FKjex9iBKA" role="jymVt">
      <property role="TrG5h" value="needToComment" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5FKjex9iBKC" role="3clF47">
        <node concept="3clFbJ" id="5FKjex9iChb" role="3cqZAp">
          <node concept="3clFbS" id="5FKjex9iChd" role="3clFbx">
            <node concept="3cpWs6" id="QeppD_RDWR" role="3cqZAp">
              <node concept="3clFbT" id="QeppD_RE40" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5FKjex9iCES" role="3clFbw">
            <node concept="2OqwBi" id="5FKjex9iCkX" role="2Oq$k0">
              <node concept="37vLTw" id="5FKjex9iCwl" role="2Oq$k0">
                <ref role="3cqZAo" node="5FzO4t9hvqi" resolve="myNode" />
              </node>
              <node concept="1mfA1w" id="5FKjex9iC_D" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="5FKjex9iCPB" role="2OqNvi">
              <node concept="chp4Y" id="5FKjex9iCQr" role="cj9EA">
                <ref role="cht4Q" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5FKjex9iD2g" role="3eNLev">
            <node concept="2OqwBi" id="5FKjex9iDZT" role="3eO9$A">
              <node concept="2OqwBi" id="5FKjex9iD72" role="2Oq$k0">
                <node concept="37vLTw" id="5FKjex9iD4U" role="2Oq$k0">
                  <ref role="3cqZAo" node="5FzO4t9hvqi" resolve="myNode" />
                </node>
                <node concept="2Xjw5R" id="5FKjex9iDWw" role="2OqNvi">
                  <node concept="1xMEDy" id="5FKjex9iDWy" role="1xVPHs">
                    <node concept="chp4Y" id="5FKjex9iDXo" role="ri$Ld">
                      <ref role="cht4Q" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3w_OXm" id="5FKjex9iEiR" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="5FKjex9iD2i" role="3eOfB_">
              <node concept="3cpWs6" id="QeppD_REdy" role="3cqZAp">
                <node concept="3clFbT" id="QeppD_REkO" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5FKjex9iEs5" role="9aQIa">
            <node concept="3clFbS" id="5FKjex9iEs6" role="9aQI4">
              <node concept="3cpWs8" id="5FKjex9iExW" role="3cqZAp">
                <node concept="3cpWsn" id="63TSWLDEOmL" role="3cpWs9">
                  <property role="TrG5h" value="selection" />
                  <node concept="3uibUv" id="63TSWLDEOmF" role="1tU5fm">
                    <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
                  </node>
                  <node concept="2OqwBi" id="63TSWLDEOmM" role="33vP2m">
                    <node concept="2OqwBi" id="63TSWLDEOmN" role="2Oq$k0">
                      <node concept="liA8E" id="63TSWLDEOmR" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
                      </node>
                      <node concept="37vLTw" id="5FKjex9iwm0" role="2Oq$k0">
                        <ref role="3cqZAo" node="5FKjex9iBLk" resolve="editorContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="63TSWLDEOmS" role="2OqNvi">
                      <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection():jetbrains.mps.openapi.editor.selection.Selection" resolve="getSelection" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5FKjex9iBKV" role="3cqZAp">
                <node concept="3clFbS" id="5FKjex9iBKW" role="3clFbx">
                  <node concept="3cpWs6" id="QeppD_REuv" role="3cqZAp">
                    <node concept="3clFbT" id="QeppD_REzJ" role="3cqZAk">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="5FKjex9iBL2" role="3clFbw">
                  <node concept="1Wc70l" id="5FKjex9iBL3" role="1eOMHV">
                    <node concept="2ZW3vV" id="5FKjex9iBL4" role="3uHU7B">
                      <node concept="3uibUv" id="5FKjex9iBL5" role="2ZW6by">
                        <ref role="3uigEE" to="b8lf:~EditorCellLabelSelection" resolve="EditorCellLabelSelection" />
                      </node>
                      <node concept="37vLTw" id="5FKjex9iFru" role="2ZW6bz">
                        <ref role="3cqZAo" node="63TSWLDEOmL" resolve="selection" />
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="5FKjex9iMfB" role="3uHU7w">
                      <node concept="2OqwBi" id="5FKjex9iMfD" role="3fr31v">
                        <node concept="1eOMI4" id="5FKjex9iMfE" role="2Oq$k0">
                          <node concept="10QFUN" id="5FKjex9iMfF" role="1eOMHV">
                            <node concept="37vLTw" id="5FKjex9iMfG" role="10QFUP">
                              <ref role="3cqZAo" node="63TSWLDEOmL" resolve="selection" />
                            </node>
                            <node concept="3uibUv" id="5FKjex9iMfH" role="10QFUM">
                              <ref role="3uigEE" to="b8lf:~EditorCellLabelSelection" resolve="EditorCellLabelSelection" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5FKjex9iMfI" role="2OqNvi">
                          <ref role="37wK5l" to="b8lf:~EditorCellLabelSelection.hasNonTrivialSelection():boolean" resolve="hasNonTrivialSelection" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="5FKjex9iENC" role="9aQIa">
                  <node concept="3clFbS" id="5FKjex9iEND" role="9aQI4">
                    <node concept="3cpWs6" id="QeppD_REFa" role="3cqZAp">
                      <node concept="3clFbT" id="QeppD_REKz" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5FKjex9iBLh" role="3clF45" />
      <node concept="37vLTG" id="5FKjex9iBLk" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="5FKjex9iBLl" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5FKjex9iBVN" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5FKjex9iBuO" role="jymVt" />
  </node>
  <node concept="312cEu" id="5FzO4t9gN3W">
    <property role="TrG5h" value="CommentUtil" />
    <property role="1sVAO0" value="false" />
    <node concept="3clFbW" id="5FzO4t9hECe" role="jymVt">
      <node concept="3cqZAl" id="5FzO4t9hECg" role="3clF45" />
      <node concept="3Tm6S6" id="5FzO4t9hELh" role="1B3o_S" />
      <node concept="3clFbS" id="5FzO4t9hECi" role="3clF47" />
    </node>
    <node concept="2YIFZL" id="2ETBKOyiRJO" role="jymVt">
      <property role="TrG5h" value="commentOut" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2ETBKOyiRJR" role="3clF47">
        <node concept="3cpWs8" id="3zroDD5Z9h0" role="3cqZAp">
          <node concept="3cpWsn" id="3zroDD5Z9h1" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3Tqbb2" id="3zroDD5Z9gZ" role="1tU5fm" />
            <node concept="2OqwBi" id="3zroDD5Z9h2" role="33vP2m">
              <node concept="37vLTw" id="3zroDD5Z9h3" role="2Oq$k0">
                <ref role="3cqZAo" node="2ETBKOyiRK5" resolve="node" />
              </node>
              <node concept="1mfA1w" id="3zroDD5Z9h4" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="40AgflwsV5G" role="3cqZAp">
          <node concept="3clFbS" id="40AgflwsV5I" role="3clFbx">
            <node concept="YS8fn" id="40AgflwsVVw" role="3cqZAp">
              <node concept="2ShNRf" id="40AgflwsWAE" role="YScLw">
                <node concept="1pGfFk" id="40AgflwsWYO" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="3cpWs3" id="40Agflwt0I3" role="37wK5m">
                    <node concept="2OqwBi" id="40Agflwt1zj" role="3uHU7w">
                      <node concept="2JrnkZ" id="40Agflwt1vi" role="2Oq$k0">
                        <node concept="37vLTw" id="40Agflwt0J4" role="2JrQYb">
                          <ref role="3cqZAo" node="2ETBKOyiRK5" resolve="node" />
                        </node>
                      </node>
                      <node concept="liA8E" id="40Agflwt1Ja" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="40AgflwsYXQ" role="3uHU7B">
                      <node concept="3cpWs3" id="40AgflwsXi3" role="3uHU7B">
                        <node concept="Xl_RD" id="40AgflwsX0x" role="3uHU7B">
                          <property role="Xl_RC" value="Node to comment has no parent. Node: " />
                        </node>
                        <node concept="2OqwBi" id="40AgflwsXmd" role="3uHU7w">
                          <node concept="37vLTw" id="40AgflwsXiE" role="2Oq$k0">
                            <ref role="3cqZAo" node="2ETBKOyiRK5" resolve="node" />
                          </node>
                          <node concept="2qgKlT" id="40AgflwsXO7" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="40AgflwsYYl" role="3uHU7w">
                        <property role="Xl_RC" value=" Node id: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="40AgflwsVQ_" role="3clFbw">
            <node concept="10Nm6u" id="40AgflwsVTC" role="3uHU7w" />
            <node concept="37vLTw" id="40AgflwuxC3" role="3uHU7B">
              <ref role="3cqZAo" node="3zroDD5Z9h1" resolve="parent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2ETBKOyjWTr" role="3cqZAp">
          <node concept="3cpWsn" id="2ETBKOyjWTs" role="3cpWs9">
            <property role="TrG5h" value="containmentLink" />
            <node concept="3uibUv" id="2ETBKOyjWTn" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2OqwBi" id="2ETBKOyjWTt" role="33vP2m">
              <node concept="2JrnkZ" id="2ETBKOyjWTu" role="2Oq$k0">
                <node concept="37vLTw" id="2ETBKOyjWTv" role="2JrQYb">
                  <ref role="3cqZAo" node="2ETBKOyiRK5" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="2ETBKOyjWTw" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink():org.jetbrains.mps.openapi.language.SContainmentLink" resolve="getContainmentLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="40Agflwt1Zl" role="3cqZAp">
          <node concept="3y3z36" id="40Agflwt2ku" role="1gVkn0">
            <node concept="10Nm6u" id="40Agflwt2qT" role="3uHU7w" />
            <node concept="37vLTw" id="40AgflwuyFV" role="3uHU7B">
              <ref role="3cqZAo" node="2ETBKOyjWTs" resolve="containmentLink" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FzO4t9hC9h" role="3cqZAp">
          <node concept="3cpWsn" id="5FzO4t9hC9i" role="3cpWs9">
            <property role="TrG5h" value="newComment" />
            <node concept="3Tqbb2" id="5FzO4t9hC9e" role="1tU5fm" />
            <node concept="2YIFZM" id="5FzO4t9hC9j" role="33vP2m">
              <ref role="1Pybhc" node="5FzO4t9gN3W" resolve="CommentUtil" />
              <ref role="37wK5l" node="5FzO4t9hupd" resolve="createAndInsertNewComment" />
              <node concept="37vLTw" id="5FzO4t9hC9k" role="37wK5m">
                <ref role="3cqZAo" node="3zroDD5Z9h1" resolve="parent" />
              </node>
              <node concept="37vLTw" id="5FzO4t9hC9l" role="37wK5m">
                <ref role="3cqZAo" node="2ETBKOyjWTs" resolve="containmentLink" />
              </node>
              <node concept="37vLTw" id="5FzO4t9hC9m" role="37wK5m">
                <ref role="3cqZAo" node="2ETBKOyiRK5" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FzO4t9hoRH" role="3cqZAp">
          <node concept="3cpWsn" id="5FzO4t9hoRI" role="3cpWs9">
            <property role="TrG5h" value="targetConcept" />
            <node concept="3uibUv" id="5FzO4t9hoRJ" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
            </node>
            <node concept="2OqwBi" id="5FzO4t9hoRK" role="33vP2m">
              <node concept="37vLTw" id="2fcXanZ28cN" role="2Oq$k0">
                <ref role="3cqZAo" node="2ETBKOyjWTs" resolve="containmentLink" />
              </node>
              <node concept="liA8E" id="5FzO4t9hoRL" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SContainmentLink.getTargetConcept():org.jetbrains.mps.openapi.language.SAbstractConcept" resolve="getTargetConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5FzO4t9hoRM" role="3cqZAp">
          <node concept="3clFbS" id="5FzO4t9hoRN" role="3clFbx">
            <node concept="3clFbF" id="5FzO4t9hoRO" role="3cqZAp">
              <node concept="2OqwBi" id="5FzO4t9hoRP" role="3clFbG">
                <node concept="2JrnkZ" id="5FzO4t9hoRQ" role="2Oq$k0">
                  <node concept="37vLTw" id="2fcXanZ25NP" role="2JrQYb">
                    <ref role="3cqZAo" node="3zroDD5Z9h1" resolve="parent" />
                  </node>
                </node>
                <node concept="liA8E" id="5FzO4t9hoRR" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode):void" resolve="addChild" />
                  <node concept="37vLTw" id="2fcXanZ268B" role="37wK5m">
                    <ref role="3cqZAo" node="2ETBKOyjWTs" resolve="containmentLink" />
                  </node>
                  <node concept="2YIFZM" id="5FzO4t9htCr" role="37wK5m">
                    <ref role="1Pybhc" to="zce0:~NodeFactoryManager" resolve="NodeFactoryManager" />
                    <ref role="37wK5l" to="zce0:~NodeFactoryManager.createNode(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SModel):org.jetbrains.mps.openapi.model.SNode" resolve="createNode" />
                    <node concept="37vLTw" id="5FzO4t9htNx" role="37wK5m">
                      <ref role="3cqZAo" node="5FzO4t9hoRI" resolve="targetConcept" />
                    </node>
                    <node concept="10Nm6u" id="5FzO4t9htPU" role="37wK5m" />
                    <node concept="37vLTw" id="5FzO4t9htSW" role="37wK5m">
                      <ref role="3cqZAo" node="3zroDD5Z9h1" resolve="parent" />
                    </node>
                    <node concept="2OqwBi" id="5FzO4t9hu0h" role="37wK5m">
                      <node concept="37vLTw" id="5FzO4t9htX9" role="2Oq$k0">
                        <ref role="3cqZAo" node="3zroDD5Z9h1" resolve="parent" />
                      </node>
                      <node concept="I4A8Y" id="5FzO4t9hua$" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="5FzO4t9hoRS" role="3clFbw">
            <node concept="3fqX7Q" id="5FzO4t9hoRT" role="3uHU7B">
              <node concept="2OqwBi" id="5FzO4t9hoRU" role="3fr31v">
                <node concept="37vLTw" id="2fcXanZ256S" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ETBKOyjWTs" resolve="containmentLink" />
                </node>
                <node concept="liA8E" id="5FzO4t9hoRV" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SContainmentLink.isMultiple():boolean" resolve="isMultiple" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="5FzO4t9hoRW" role="3uHU7w">
              <node concept="2OqwBi" id="5FzO4t9hoRX" role="3fr31v">
                <node concept="37vLTw" id="2fcXanZ25Al" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ETBKOyjWTs" resolve="containmentLink" />
                </node>
                <node concept="liA8E" id="5FzO4t9hoRY" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SContainmentLink.isOptional():boolean" resolve="isOptional" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5FzO4t9hC$P" role="3cqZAp">
          <node concept="37vLTw" id="5FzO4t9hCIP" role="3cqZAk">
            <ref role="3cqZAo" node="5FzO4t9hC9i" resolve="newComment" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2ETBKOyiRJy" role="1B3o_S" />
      <node concept="3Tqbb2" id="5FzO4t9hBc6" role="3clF45" />
      <node concept="37vLTG" id="2ETBKOyiRK5" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2ETBKOyiRK4" role="1tU5fm" />
        <node concept="2AHcQZ" id="40AgflwsXwR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="P$JXv" id="40AgflwsWwI" role="lGtFl">
        <node concept="TZ5HA" id="40AgflwsWwJ" role="TZ5H$">
          <node concept="1dT_AC" id="40AgflwsWwK" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TUZQ0" id="40AgflwsWwL" role="TUOzN">
          <property role="TUZQ4" value="node to comment. This node must have parent" />
          <node concept="zr_55" id="40AgflwsWwN" role="zr_5Q">
            <ref role="zr_51" node="2ETBKOyiRK5" resolve="node" />
          </node>
        </node>
        <node concept="x0GOo" id="40AgflwsWAg" role="3nqlJM">
          <property role="x0GOq" value="if node does not have parent" />
          <node concept="3uibUv" id="5FzO4t9hwaW" role="zrq5$">
            <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5FzO4t9hB$7" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5FcI7Gb1N$y" role="jymVt" />
    <node concept="2tJIrI" id="74g66v1JGaR" role="jymVt" />
    <node concept="2YIFZL" id="74g66v1JYfH" role="jymVt">
      <property role="TrG5h" value="uncomment" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="74g66v1JYfK" role="3clF47">
        <node concept="3cpWs8" id="74g66v1JLso" role="3cqZAp">
          <node concept="3cpWsn" id="74g66v1JLsp" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3Tqbb2" id="74g66v1JLsq" role="1tU5fm" />
            <node concept="2OqwBi" id="74g66v1JLsr" role="33vP2m">
              <node concept="37vLTw" id="74g66v1JLss" role="2Oq$k0">
                <ref role="3cqZAo" node="74g66v1JYyK" resolve="attribute" />
              </node>
              <node concept="1mfA1w" id="74g66v1JLst" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="40AgflwuyK9" role="3cqZAp">
          <node concept="3clFbS" id="40AgflwuyKa" role="3clFbx">
            <node concept="YS8fn" id="40AgflwuyKb" role="3cqZAp">
              <node concept="2ShNRf" id="40AgflwuyKc" role="YScLw">
                <node concept="1pGfFk" id="40AgflwuyKd" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="3cpWs3" id="40AgflwuyKe" role="37wK5m">
                    <node concept="2OqwBi" id="40AgflwuyKf" role="3uHU7w">
                      <node concept="2JrnkZ" id="40AgflwuyKg" role="2Oq$k0">
                        <node concept="37vLTw" id="40AgflwuyKh" role="2JrQYb">
                          <ref role="3cqZAo" node="74g66v1JYyK" resolve="attribute" />
                        </node>
                      </node>
                      <node concept="liA8E" id="40AgflwuyKi" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="40AgflwuyKj" role="3uHU7B">
                      <node concept="3cpWs3" id="40AgflwuyKk" role="3uHU7B">
                        <node concept="Xl_RD" id="40AgflwuyKl" role="3uHU7B">
                          <property role="Xl_RC" value="Node to uncomment has no parent. Node: " />
                        </node>
                        <node concept="2OqwBi" id="40AgflwuyKm" role="3uHU7w">
                          <node concept="37vLTw" id="40AgflwuyKn" role="2Oq$k0">
                            <ref role="3cqZAo" node="74g66v1JYyK" resolve="attribute" />
                          </node>
                          <node concept="2qgKlT" id="40AgflwuyKo" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="40AgflwuyKp" role="3uHU7w">
                        <property role="Xl_RC" value=" Node id: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="40AgflwuyKq" role="3clFbw">
            <node concept="10Nm6u" id="40AgflwuyKr" role="3uHU7w" />
            <node concept="37vLTw" id="40AgflwuyKs" role="3uHU7B">
              <ref role="3cqZAo" node="74g66v1JLsp" resolve="parent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FzO4t9hoSV" role="3cqZAp">
          <node concept="3cpWsn" id="5FzO4t9hoSW" role="3cpWs9">
            <property role="TrG5h" value="containmentLink" />
            <node concept="3uibUv" id="5FzO4t9hoSX" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2OqwBi" id="5FzO4t9hoSY" role="33vP2m">
              <node concept="37vLTw" id="40AgflwuuPH" role="2Oq$k0">
                <ref role="3cqZAo" node="74g66v1JYyK" resolve="attribute" />
              </node>
              <node concept="2qgKlT" id="5FzO4t9hoSZ" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:BpxLfMirzf" resolve="getLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FzO4t9hoT0" role="3cqZAp">
          <node concept="3cpWsn" id="5FzO4t9hoT1" role="3cpWs9">
            <property role="TrG5h" value="commentedNode" />
            <node concept="3Tqbb2" id="5FzO4t9hoT2" role="1tU5fm">
              <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
            </node>
            <node concept="2OqwBi" id="5FzO4t9hoT3" role="33vP2m">
              <node concept="37vLTw" id="40Agflwuun_" role="2Oq$k0">
                <ref role="3cqZAo" node="74g66v1JYyK" resolve="attribute" />
              </node>
              <node concept="3TrEf2" id="40AgflwuunA" role="2OqNvi">
                <ref role="3Tt5mk" to="tpck:2ETBKOyieyt" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5FzO4t9hoT4" role="3cqZAp">
          <node concept="3clFbS" id="5FzO4t9hoT5" role="3clFbx">
            <node concept="3clFbJ" id="5FzO4t9hoTb" role="3cqZAp">
              <node concept="3clFbS" id="5FzO4t9hoTc" role="3clFbx">
                <node concept="3cpWs8" id="5FzO4t9hoTd" role="3cqZAp">
                  <node concept="3cpWsn" id="5FzO4t9hoTe" role="3cpWs9">
                    <property role="TrG5h" value="currentChild" />
                    <node concept="3Tqbb2" id="5FzO4t9hoTf" role="1tU5fm" />
                    <node concept="2OqwBi" id="5FzO4t9hoTg" role="33vP2m">
                      <node concept="2OqwBi" id="5FzO4t9hoTh" role="2Oq$k0">
                        <node concept="37vLTw" id="40Agflwuzr9" role="2Oq$k0">
                          <ref role="3cqZAo" node="74g66v1JLsp" resolve="parent" />
                        </node>
                        <node concept="32TBzR" id="5FzO4t9hoTi" role="2OqNvi">
                          <node concept="1aIX9F" id="5FzO4t9hoTj" role="1xVPHs">
                            <node concept="25Kdxt" id="5FzO4t9hoTk" role="1aIX9E">
                              <node concept="37vLTw" id="5FzO4t9hoTl" role="25KhWn">
                                <ref role="3cqZAo" node="5FzO4t9hoSW" resolve="containmentLink" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1uHKPH" id="5FzO4t9hoTm" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5FzO4t9hoTn" role="3cqZAp">
                  <node concept="3clFbS" id="5FzO4t9hoTo" role="3clFbx">
                    <node concept="3clFbJ" id="301qoOzM_NC" role="3cqZAp">
                      <node concept="3clFbS" id="301qoOzM_NE" role="3clFbx">
                        <node concept="3clFbF" id="301qoOzMAKH" role="3cqZAp">
                          <node concept="2OqwBi" id="301qoOzMAM_" role="3clFbG">
                            <node concept="37vLTw" id="301qoOzMAKF" role="2Oq$k0">
                              <ref role="3cqZAo" node="5FzO4t9hoTe" resolve="currentChild" />
                            </node>
                            <node concept="1PgB_6" id="301qoOzMARl" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="301qoOzMArK" role="3clFbw">
                        <node concept="2OqwBi" id="301qoOzMA2I" role="2Oq$k0">
                          <node concept="2JrnkZ" id="301qoOzMA1A" role="2Oq$k0">
                            <node concept="37vLTw" id="301qoOzM_Qh" role="2JrQYb">
                              <ref role="3cqZAo" node="5FzO4t9hoTe" resolve="currentChild" />
                            </node>
                          </node>
                          <node concept="liA8E" id="301qoOzMAb7" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
                          </node>
                        </node>
                        <node concept="liA8E" id="301qoOzMA$E" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="301qoOzMARD" role="9aQIa">
                        <node concept="3clFbS" id="301qoOzMARE" role="9aQI4">
                          <node concept="3clFbF" id="5FzO4t9huGp" role="3cqZAp">
                            <node concept="1rXfSq" id="5FzO4t9huGo" role="3clFbG">
                              <ref role="37wK5l" node="5FzO4t9hupd" resolve="createAndInsertNewComment" />
                              <node concept="37vLTw" id="5FzO4t9huHz" role="37wK5m">
                                <ref role="3cqZAo" node="74g66v1JLsp" resolve="parent" />
                              </node>
                              <node concept="37vLTw" id="5FzO4t9huJF" role="37wK5m">
                                <ref role="3cqZAo" node="5FzO4t9hoSW" resolve="containmentLink" />
                              </node>
                              <node concept="37vLTw" id="5FzO4t9huM$" role="37wK5m">
                                <ref role="3cqZAo" node="5FzO4t9hoTe" resolve="currentChild" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5FzO4t9hoTu" role="3clFbw">
                    <node concept="37vLTw" id="5FzO4t9hoTv" role="2Oq$k0">
                      <ref role="3cqZAo" node="5FzO4t9hoTe" resolve="currentChild" />
                    </node>
                    <node concept="3x8VRR" id="5FzO4t9hoTw" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5FzO4t9hoTx" role="3clFbw">
                <node concept="2OqwBi" id="5FzO4t9hoTy" role="3fr31v">
                  <node concept="37vLTw" id="5FzO4t9hoTz" role="2Oq$k0">
                    <ref role="3cqZAo" node="5FzO4t9hoSW" resolve="containmentLink" />
                  </node>
                  <node concept="liA8E" id="5FzO4t9hoT$" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SContainmentLink.isMultiple():boolean" resolve="isMultiple" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5FzO4t9hJIe" role="3cqZAp">
              <node concept="3clFbS" id="5FzO4t9hJIg" role="3clFbx">
                <node concept="3clFbF" id="5FzO4t9hoT6" role="3cqZAp">
                  <node concept="2OqwBi" id="5FzO4t9hoT7" role="3clFbG">
                    <node concept="2JrnkZ" id="5FzO4t9hoT8" role="2Oq$k0">
                      <node concept="37vLTw" id="40Agflwt7VM" role="2JrQYb">
                        <ref role="3cqZAo" node="74g66v1JYyK" resolve="attribute" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5FzO4t9hoT9" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.removeChild(org.jetbrains.mps.openapi.model.SNode):void" resolve="removeChild" />
                      <node concept="37vLTw" id="5FzO4t9hoTa" role="37wK5m">
                        <ref role="3cqZAo" node="5FzO4t9hoT1" resolve="commentedNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5FzO4t9htwV" role="3cqZAp">
                  <node concept="1rXfSq" id="5FzO4t9htwT" role="3clFbG">
                    <ref role="37wK5l" node="5FzO4t9hQLx" resolve="insertNodeNearComment" />
                    <node concept="37vLTw" id="5FzO4t9hoTB" role="37wK5m">
                      <ref role="3cqZAo" node="74g66v1JLsp" resolve="parent" />
                    </node>
                    <node concept="37vLTw" id="5FzO4t9hoTE" role="37wK5m">
                      <ref role="3cqZAo" node="74g66v1JYyK" resolve="attribute" />
                    </node>
                    <node concept="37vLTw" id="5FzO4t9hoTD" role="37wK5m">
                      <ref role="3cqZAo" node="5FzO4t9hoSW" resolve="containmentLink" />
                    </node>
                    <node concept="37vLTw" id="5FzO4t9hoTF" role="37wK5m">
                      <ref role="3cqZAo" node="5FzO4t9hoT1" resolve="commentedNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5FzO4t9hJOj" role="3clFbw">
                <node concept="10Nm6u" id="5FzO4t9hJPl" role="3uHU7w" />
                <node concept="37vLTw" id="5FzO4t9hJMq" role="3uHU7B">
                  <ref role="3cqZAo" node="5FzO4t9hoT1" resolve="commentedNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5FzO4t9hoTL" role="3clFbw">
            <node concept="37vLTw" id="5FzO4t9hoTM" role="3uHU7B">
              <ref role="3cqZAo" node="5FzO4t9hoSW" resolve="containmentLink" />
            </node>
            <node concept="10Nm6u" id="5FzO4t9hoTN" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbF" id="5FzO4t9hoTO" role="3cqZAp">
          <node concept="2OqwBi" id="5FzO4t9hoTP" role="3clFbG">
            <node concept="37vLTw" id="5FzO4t9hoTQ" role="2Oq$k0">
              <ref role="3cqZAo" node="74g66v1JYyK" resolve="attribute" />
            </node>
            <node concept="1PgB_6" id="5FzO4t9hoTR" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="5FzO4t9hD9p" role="3cqZAp">
          <node concept="37vLTw" id="5FzO4t9hDtd" role="3cqZAk">
            <ref role="3cqZAo" node="5FzO4t9hoT1" resolve="commentedNode" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="74g66v1K05z" role="1B3o_S" />
      <node concept="3Tqbb2" id="5FzO4t9hCQc" role="3clF45" />
      <node concept="37vLTG" id="74g66v1JYyK" role="3clF46">
        <property role="TrG5h" value="attribute" />
        <node concept="3Tqbb2" id="74g66v1JYyJ" role="1tU5fm">
          <ref role="ehGHo" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
        </node>
        <node concept="2AHcQZ" id="40Agflwt56n" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="P$JXv" id="40Agflwt6g$" role="lGtFl">
        <node concept="TZ5HA" id="40Agflwt6g_" role="TZ5H$">
          <node concept="1dT_AC" id="40Agflwt6gA" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TUZQ0" id="40Agflwt6gB" role="TUOzN">
          <property role="TUZQ4" value="attribute containing commented node. This node must have parent" />
          <node concept="zr_55" id="40Agflwt6gD" role="zr_5Q">
            <ref role="zr_51" node="74g66v1JYyK" resolve="attribute" />
          </node>
        </node>
        <node concept="x0GOo" id="40Agflwt6mz" role="3nqlJM">
          <property role="x0GOq" value="if attribute has no parent   " />
          <node concept="3uibUv" id="5FzO4t9hxNO" role="zrq5$">
            <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5FzO4t9hupd" role="jymVt">
      <property role="TrG5h" value="createAndInsertNewComment" />
      <node concept="3Tm6S6" id="5FzO4t9hupe" role="1B3o_S" />
      <node concept="3Tqbb2" id="5FzO4t9hC5f" role="3clF45" />
      <node concept="37vLTG" id="5FzO4t9hup0" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3Tqbb2" id="5FzO4t9hup1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5FzO4t9hup2" role="3clF46">
        <property role="TrG5h" value="containmentLink" />
        <node concept="3uibUv" id="5FzO4t9hup3" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="5FzO4t9hup4" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3Tqbb2" id="5FzO4t9hup5" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5FzO4t9huoB" role="3clF47">
        <node concept="3cpWs8" id="5FzO4t9huoC" role="3cqZAp">
          <node concept="3cpWsn" id="5FzO4t9huoD" role="3cpWs9">
            <property role="TrG5h" value="newComment" />
            <node concept="3Tqbb2" id="5FzO4t9huoE" role="1tU5fm">
              <ref role="ehGHo" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
            </node>
            <node concept="2ShNRf" id="5FzO4t9huoF" role="33vP2m">
              <node concept="3zrR0B" id="5FzO4t9huoG" role="2ShVmc">
                <node concept="3Tqbb2" id="5FzO4t9huoH" role="3zrR0E">
                  <ref role="ehGHo" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FzO4t9huoI" role="3cqZAp">
          <node concept="1rXfSq" id="5FzO4t9huoJ" role="3clFbG">
            <ref role="37wK5l" node="5FcI7Gb1NaB" resolve="insertInProperPlace" />
            <node concept="37vLTw" id="5FzO4t9hup6" role="37wK5m">
              <ref role="3cqZAo" node="5FzO4t9hup0" resolve="parent" />
            </node>
            <node concept="37vLTw" id="5FzO4t9hup8" role="37wK5m">
              <ref role="3cqZAo" node="5FzO4t9hup4" resolve="anchor" />
            </node>
            <node concept="37vLTw" id="5FzO4t9hupa" role="37wK5m">
              <ref role="3cqZAo" node="5FzO4t9hup2" resolve="containmentLink" />
            </node>
            <node concept="359W_D" id="5FzO4t9huoM" role="37wK5m">
              <ref role="359W_F" to="tpck:4uZwTti3__2" />
              <ref role="359W_E" to="tpck:gw2VY9q" resolve="BaseConcept" />
            </node>
            <node concept="37vLTw" id="5FzO4t9huoO" role="37wK5m">
              <ref role="3cqZAo" node="5FzO4t9huoD" resolve="newComment" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FzO4t9huoP" role="3cqZAp">
          <node concept="2OqwBi" id="5FzO4t9huoQ" role="3clFbG">
            <node concept="37vLTw" id="5FzO4t9huoR" role="2Oq$k0">
              <ref role="3cqZAo" node="5FzO4t9huoD" resolve="newComment" />
            </node>
            <node concept="2qgKlT" id="5FzO4t9huoS" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:BpxLfMirzM" resolve="setLink" />
              <node concept="37vLTw" id="5FzO4t9hup7" role="37wK5m">
                <ref role="3cqZAo" node="5FzO4t9hup2" resolve="containmentLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FzO4t9huoU" role="3cqZAp">
          <node concept="37vLTI" id="5FzO4t9huoV" role="3clFbG">
            <node concept="37vLTw" id="5FzO4t9hup9" role="37vLTx">
              <ref role="3cqZAo" node="5FzO4t9hup4" resolve="anchor" />
            </node>
            <node concept="2OqwBi" id="5FzO4t9huoX" role="37vLTJ">
              <node concept="37vLTw" id="5FzO4t9huoY" role="2Oq$k0">
                <ref role="3cqZAo" node="5FzO4t9huoD" resolve="newComment" />
              </node>
              <node concept="3TrEf2" id="5FzO4t9huoZ" role="2OqNvi">
                <ref role="3Tt5mk" to="tpck:2ETBKOyieyt" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5FzO4t9hBV_" role="3cqZAp">
          <node concept="37vLTw" id="5FzO4t9hC2p" role="3cqZAk">
            <ref role="3cqZAo" node="5FzO4t9huoD" resolve="newComment" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5FzO4t9hBMy" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5FzO4t9hN4b" role="jymVt" />
    <node concept="2tJIrI" id="5FzO4t9hPTz" role="jymVt" />
    <node concept="2YIFZL" id="5FzO4t9hQLx" role="jymVt">
      <property role="TrG5h" value="insertNodeNearComment" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="5FzO4t9hQWU" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3Tqbb2" id="5FzO4t9hQWV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5FzO4t9hQWW" role="3clF46">
        <property role="TrG5h" value="anchorComment" />
        <node concept="3Tqbb2" id="5FzO4t9hQWX" role="1tU5fm">
          <ref role="ehGHo" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
        </node>
      </node>
      <node concept="37vLTG" id="5FzO4t9hQWY" role="3clF46">
        <property role="TrG5h" value="linkToInsert" />
        <node concept="3uibUv" id="5FzO4t9hQWZ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="5FzO4t9hQX0" role="3clF46">
        <property role="TrG5h" value="nodeToInsert" />
        <node concept="3Tqbb2" id="5FzO4t9hQX1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5FzO4t9hQL$" role="3clF47">
        <node concept="3clFbF" id="5FzO4t9hQXK" role="3cqZAp">
          <node concept="1rXfSq" id="5FzO4t9hQXL" role="3clFbG">
            <ref role="37wK5l" node="5FcI7Gb1NaB" resolve="insertInProperPlace" />
            <node concept="37vLTw" id="5FzO4t9hQXM" role="37wK5m">
              <ref role="3cqZAo" node="5FzO4t9hQWU" resolve="parent" />
            </node>
            <node concept="37vLTw" id="5FzO4t9hQXN" role="37wK5m">
              <ref role="3cqZAo" node="5FzO4t9hQWW" resolve="anchorComment" />
            </node>
            <node concept="37vLTw" id="5FzO4t9hQXO" role="37wK5m">
              <ref role="3cqZAo" node="5FzO4t9hQWY" resolve="linkToInsert" />
            </node>
            <node concept="37vLTw" id="5FzO4t9hR21" role="37wK5m">
              <ref role="3cqZAo" node="5FzO4t9hQWY" resolve="linkToInsert" />
            </node>
            <node concept="37vLTw" id="5FzO4t9hTdy" role="37wK5m">
              <ref role="3cqZAo" node="5FzO4t9hQX0" resolve="nodeToInsert" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5FzO4t9hQg6" role="1B3o_S" />
      <node concept="3cqZAl" id="5FzO4t9hQWS" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5FzO4t9hNcY" role="jymVt" />
    <node concept="2YIFZL" id="5FcI7Gb1NaB" role="jymVt">
      <property role="TrG5h" value="insertInProperPlace" />
      <node concept="3Tm6S6" id="5FcI7Gb1NaC" role="1B3o_S" />
      <node concept="3cqZAl" id="5FcI7Gb1NaD" role="3clF45" />
      <node concept="37vLTG" id="5FcI7Gb1Nad" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3Tqbb2" id="5FcI7Gb1Nae" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5FcI7Gb1Naf" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3Tqbb2" id="5FcI7Gb1Nag" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5FcI7Gb1Nah" role="3clF46">
        <property role="TrG5h" value="anchorLink" />
        <node concept="3uibUv" id="5FcI7Gb1Nai" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="5FcI7Gb1PWM" role="3clF46">
        <property role="TrG5h" value="linkToInsert" />
        <node concept="3uibUv" id="5FcI7Gb1Q1f" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="5FcI7Gb1Naj" role="3clF46">
        <property role="TrG5h" value="newChild" />
        <node concept="3Tqbb2" id="5FcI7Gb1Nak" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5FcI7Gb1N9f" role="3clF47">
        <node concept="3cpWs8" id="5FcI7Gb1N9g" role="3cqZAp">
          <node concept="3cpWsn" id="5FcI7Gb1N9h" role="3cpWs9">
            <property role="TrG5h" value="prev" />
            <node concept="3Tqbb2" id="5FcI7Gb1N9i" role="1tU5fm" />
            <node concept="1rXfSq" id="5FzO4t9hspZ" role="33vP2m">
              <ref role="37wK5l" node="62gIjD2KVDC" resolve="getPrevious" />
              <node concept="37vLTw" id="5FzO4t9hsq0" role="37wK5m">
                <ref role="3cqZAo" node="5FcI7Gb1Nad" resolve="parent" />
              </node>
              <node concept="37vLTw" id="5FzO4t9hsq1" role="37wK5m">
                <ref role="3cqZAo" node="5FcI7Gb1Naf" resolve="anchor" />
              </node>
              <node concept="37vLTw" id="5FzO4t9hsq2" role="37wK5m">
                <ref role="3cqZAo" node="5FcI7Gb1Nah" resolve="anchorLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FcI7Gb1N9n" role="3cqZAp">
          <node concept="3cpWsn" id="5FcI7Gb1N9o" role="3cpWs9">
            <property role="TrG5h" value="next" />
            <node concept="3Tqbb2" id="5FcI7Gb1N9p" role="1tU5fm" />
            <node concept="1rXfSq" id="5FzO4t9hsol" role="33vP2m">
              <ref role="37wK5l" node="62gIjD2LKYM" resolve="getNext" />
              <node concept="37vLTw" id="5FzO4t9hsom" role="37wK5m">
                <ref role="3cqZAo" node="5FcI7Gb1Nad" resolve="parent" />
              </node>
              <node concept="37vLTw" id="5FzO4t9hson" role="37wK5m">
                <ref role="3cqZAo" node="5FcI7Gb1Naf" resolve="anchor" />
              </node>
              <node concept="37vLTw" id="5FzO4t9hsoo" role="37wK5m">
                <ref role="3cqZAo" node="5FcI7Gb1Nah" resolve="anchorLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5FcI7Gb1N9E" role="3cqZAp">
          <node concept="3y3z36" id="5FcI7Gb1N9F" role="3clFbw">
            <node concept="37vLTw" id="5FcI7Gb1N9G" role="3uHU7B">
              <ref role="3cqZAo" node="5FcI7Gb1N9h" resolve="prev" />
            </node>
            <node concept="10Nm6u" id="5FcI7Gb1N9H" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5FcI7Gb1N9I" role="3clFbx">
            <node concept="3clFbF" id="5FcI7Gb1N9J" role="3cqZAp">
              <node concept="2OqwBi" id="5FcI7Gb1N9K" role="3clFbG">
                <node concept="2JrnkZ" id="5FcI7Gb1N9L" role="2Oq$k0">
                  <node concept="37vLTw" id="5FcI7Gb1Nay" role="2JrQYb">
                    <ref role="3cqZAo" node="5FcI7Gb1Nad" resolve="parent" />
                  </node>
                </node>
                <node concept="liA8E" id="5FcI7Gb1N9N" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.insertChildAfter(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode):void" resolve="insertChildAfter" />
                  <node concept="37vLTw" id="5FcI7Gb1QcR" role="37wK5m">
                    <ref role="3cqZAo" node="5FcI7Gb1PWM" resolve="linkToInsert" />
                  </node>
                  <node concept="37vLTw" id="5FcI7Gb1Nax" role="37wK5m">
                    <ref role="3cqZAo" node="5FcI7Gb1Naj" resolve="newChild" />
                  </node>
                  <node concept="37vLTw" id="5FcI7Gb1N9Q" role="37wK5m">
                    <ref role="3cqZAo" node="5FcI7Gb1N9h" resolve="prev" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5FcI7Gb1N9R" role="9aQIa">
            <node concept="3clFbS" id="5FcI7Gb1N9S" role="9aQI4">
              <node concept="3clFbF" id="5FcI7Gb1N9T" role="3cqZAp">
                <node concept="2OqwBi" id="5FcI7Gb1N9U" role="3clFbG">
                  <node concept="2JrnkZ" id="5FcI7Gb1N9V" role="2Oq$k0">
                    <node concept="37vLTw" id="5FcI7Gb1Naz" role="2JrQYb">
                      <ref role="3cqZAo" node="5FcI7Gb1Nad" resolve="parent" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5FcI7Gb1N9X" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode):void" resolve="addChild" />
                    <node concept="37vLTw" id="5FcI7Gb1Qfx" role="37wK5m">
                      <ref role="3cqZAo" node="5FcI7Gb1PWM" resolve="linkToInsert" />
                    </node>
                    <node concept="37vLTw" id="5FcI7Gb1Na$" role="37wK5m">
                      <ref role="3cqZAo" node="5FcI7Gb1Naj" resolve="newChild" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5FcI7Gb1Na0" role="3eNLev">
            <node concept="3y3z36" id="5FcI7Gb1Na1" role="3eO9$A">
              <node concept="10Nm6u" id="5FcI7Gb1Na2" role="3uHU7w" />
              <node concept="37vLTw" id="5FcI7Gb1Na3" role="3uHU7B">
                <ref role="3cqZAo" node="5FcI7Gb1N9o" resolve="next" />
              </node>
            </node>
            <node concept="3clFbS" id="5FcI7Gb1Na4" role="3eOfB_">
              <node concept="3clFbF" id="5FcI7Gb1Na5" role="3cqZAp">
                <node concept="2OqwBi" id="5FcI7Gb1Na6" role="3clFbG">
                  <node concept="2JrnkZ" id="5FcI7Gb1Na7" role="2Oq$k0">
                    <node concept="37vLTw" id="5FcI7Gb1Nan" role="2JrQYb">
                      <ref role="3cqZAo" node="5FcI7Gb1Nad" resolve="parent" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5FcI7Gb1Na9" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.insertChildBefore(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode):void" resolve="insertChildBefore" />
                    <node concept="37vLTw" id="5FcI7Gb1QdV" role="37wK5m">
                      <ref role="3cqZAo" node="5FcI7Gb1PWM" resolve="linkToInsert" />
                    </node>
                    <node concept="37vLTw" id="5FcI7Gb1Nap" role="37wK5m">
                      <ref role="3cqZAo" node="5FcI7Gb1Naj" resolve="newChild" />
                    </node>
                    <node concept="37vLTw" id="5FcI7Gb1Nac" role="37wK5m">
                      <ref role="3cqZAo" node="5FcI7Gb1N9o" resolve="next" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5FzO4t9hM3e" role="jymVt" />
    <node concept="2tJIrI" id="5FzO4t9hMlg" role="jymVt" />
    <node concept="2tJIrI" id="5FzO4t9hMbY" role="jymVt" />
    <node concept="2YIFZL" id="62gIjD2KVDC" role="jymVt">
      <property role="TrG5h" value="getPrevious" />
      <node concept="3Tm6S6" id="7lcOzezj3bN" role="1B3o_S" />
      <node concept="3Tqbb2" id="62gIjD2KVDE" role="3clF45" />
      <node concept="37vLTG" id="62gIjD2KVDv" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3Tqbb2" id="62gIjD2KVDw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="32ialFTqJeG" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3Tqbb2" id="32ialFTqJkp" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="62gIjD2KVDx" role="3clF46">
        <property role="TrG5h" value="containmentLink" />
        <node concept="3uibUv" id="62gIjD2KVDy" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="3clFbS" id="62gIjD2KVD1" role="3clF47">
        <node concept="3cpWs8" id="62gIjD2LTYx" role="3cqZAp">
          <node concept="3cpWsn" id="62gIjD2LTYy" role="3cpWs9">
            <property role="TrG5h" value="iterator" />
            <node concept="uOF1S" id="62gIjD2LTYz" role="1tU5fm">
              <node concept="3Tqbb2" id="62gIjD2LTY$" role="uOL27" />
            </node>
            <node concept="2OqwBi" id="62gIjD2LTY_" role="33vP2m">
              <node concept="uNJiE" id="62gIjD2LTYD" role="2OqNvi" />
              <node concept="2YIFZM" id="7lcOzezjygg" role="2Oq$k0">
                <ref role="37wK5l" to="i8bi:7lcOzezjs33" resolve="getChildNodesAndAttributes" />
                <ref role="1Pybhc" to="i8bi:5zEkxuKh8vS" resolve="AttributeOperations" />
                <node concept="37vLTw" id="7lcOzezjyjL" role="37wK5m">
                  <ref role="3cqZAo" node="62gIjD2KVDv" resolve="parent" />
                </node>
                <node concept="37vLTw" id="7lcOzezjyxx" role="37wK5m">
                  <ref role="3cqZAo" node="62gIjD2KVDx" resolve="containmentLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="62gIjD2LUsQ" role="3cqZAp">
          <node concept="3cpWsn" id="62gIjD2LUsT" role="3cpWs9">
            <property role="TrG5h" value="prev" />
            <node concept="3Tqbb2" id="62gIjD2LUsO" role="1tU5fm" />
            <node concept="10Nm6u" id="62gIjD2LU_b" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="62gIjD2LTYG" role="3cqZAp">
          <node concept="3cpWsn" id="62gIjD2LTYH" role="3cpWs9">
            <property role="TrG5h" value="next" />
            <node concept="3Tqbb2" id="62gIjD2LTYI" role="1tU5fm" />
          </node>
        </node>
        <node concept="2$JKZl" id="62gIjD2LTYE" role="3cqZAp">
          <node concept="3clFbS" id="62gIjD2LTYF" role="2LFqv$">
            <node concept="3clFbF" id="301qoOzMGXz" role="3cqZAp">
              <node concept="37vLTI" id="301qoOzMGX_" role="3clFbG">
                <node concept="2OqwBi" id="62gIjD2LTYJ" role="37vLTx">
                  <node concept="37vLTw" id="62gIjD2LTYK" role="2Oq$k0">
                    <ref role="3cqZAo" node="62gIjD2LTYy" resolve="iterator" />
                  </node>
                  <node concept="v1n4t" id="62gIjD2LTYL" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="301qoOzMGXD" role="37vLTJ">
                  <ref role="3cqZAo" node="62gIjD2LTYH" resolve="next" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="62gIjD2LTYM" role="3cqZAp">
              <node concept="3clFbS" id="62gIjD2LTYN" role="3clFbx">
                <node concept="3cpWs6" id="62gIjD2LU_Y" role="3cqZAp">
                  <node concept="37vLTw" id="62gIjD2LUKS" role="3cqZAk">
                    <ref role="3cqZAo" node="62gIjD2LUsT" resolve="prev" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="62gIjD2LTYX" role="3clFbw">
                <node concept="37vLTw" id="32ialFTqJEy" role="3uHU7w">
                  <ref role="3cqZAo" node="32ialFTqJeG" resolve="anchor" />
                </node>
                <node concept="37vLTw" id="62gIjD2LTYZ" role="3uHU7B">
                  <ref role="3cqZAo" node="62gIjD2LTYH" resolve="next" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="301qoOzMGO2" role="3cqZAp">
              <node concept="37vLTI" id="301qoOzMGVr" role="3clFbG">
                <node concept="37vLTw" id="301qoOzMGWQ" role="37vLTx">
                  <ref role="3cqZAo" node="62gIjD2LTYH" resolve="next" />
                </node>
                <node concept="37vLTw" id="301qoOzMGO0" role="37vLTJ">
                  <ref role="3cqZAo" node="62gIjD2LUsT" resolve="prev" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="62gIjD2LTZ0" role="2$JKZa">
            <node concept="37vLTw" id="62gIjD2LTZ1" role="2Oq$k0">
              <ref role="3cqZAo" node="62gIjD2LTYy" resolve="iterator" />
            </node>
            <node concept="v0PNk" id="62gIjD2LTZ2" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="62gIjD2LTZ3" role="3cqZAp">
          <node concept="10Nm6u" id="62gIjD2LTZ4" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="62gIjD2LKYM" role="jymVt">
      <property role="TrG5h" value="getNext" />
      <node concept="3Tm6S6" id="7lcOzezj35H" role="1B3o_S" />
      <node concept="3Tqbb2" id="62gIjD2LKYO" role="3clF45" />
      <node concept="37vLTG" id="62gIjD2LKYP" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3Tqbb2" id="62gIjD2LKYQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="32ialFTqJsS" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3Tqbb2" id="32ialFTqJzh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="62gIjD2LKYR" role="3clF46">
        <property role="TrG5h" value="containmentLink" />
        <node concept="3uibUv" id="62gIjD2LKYS" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="3clFbS" id="62gIjD2LKYT" role="3clF47">
        <node concept="3cpWs8" id="62gIjD2LSpO" role="3cqZAp">
          <node concept="3cpWsn" id="62gIjD2LSpP" role="3cpWs9">
            <property role="TrG5h" value="iterator" />
            <node concept="uOF1S" id="62gIjD2LSp$" role="1tU5fm">
              <node concept="3Tqbb2" id="62gIjD2LSpB" role="uOL27" />
            </node>
            <node concept="2OqwBi" id="62gIjD2LSpQ" role="33vP2m">
              <node concept="uNJiE" id="62gIjD2LSpU" role="2OqNvi" />
              <node concept="2YIFZM" id="7lcOzezjy$M" role="2Oq$k0">
                <ref role="37wK5l" to="i8bi:7lcOzezjs33" resolve="getChildNodesAndAttributes" />
                <ref role="1Pybhc" to="i8bi:5zEkxuKh8vS" resolve="AttributeOperations" />
                <node concept="37vLTw" id="7lcOzezjy$N" role="37wK5m">
                  <ref role="3cqZAo" node="62gIjD2LKYP" resolve="parent" />
                </node>
                <node concept="37vLTw" id="7lcOzezjy$O" role="37wK5m">
                  <ref role="3cqZAo" node="62gIjD2LKYR" resolve="containmentLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="62gIjD2LSIA" role="3cqZAp">
          <node concept="3clFbS" id="62gIjD2LSIC" role="2LFqv$">
            <node concept="3cpWs8" id="62gIjD2LT6Z" role="3cqZAp">
              <node concept="3cpWsn" id="62gIjD2LT70" role="3cpWs9">
                <property role="TrG5h" value="next" />
                <node concept="3Tqbb2" id="62gIjD2LT6Y" role="1tU5fm" />
                <node concept="2OqwBi" id="62gIjD2LT71" role="33vP2m">
                  <node concept="37vLTw" id="62gIjD2LT72" role="2Oq$k0">
                    <ref role="3cqZAo" node="62gIjD2LSpP" resolve="iterator" />
                  </node>
                  <node concept="v1n4t" id="62gIjD2LT73" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="62gIjD2LT9i" role="3cqZAp">
              <node concept="3clFbS" id="62gIjD2LT9k" role="3clFbx">
                <node concept="3clFbJ" id="62gIjD2LTdO" role="3cqZAp">
                  <node concept="3clFbS" id="62gIjD2LTdQ" role="3clFbx">
                    <node concept="3cpWs6" id="62gIjD2LTod" role="3cqZAp">
                      <node concept="2OqwBi" id="62gIjD2LTxY" role="3cqZAk">
                        <node concept="37vLTw" id="62gIjD2LTsK" role="2Oq$k0">
                          <ref role="3cqZAo" node="62gIjD2LSpP" resolve="iterator" />
                        </node>
                        <node concept="v1n4t" id="62gIjD2LTCJ" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="62gIjD2LTgC" role="3clFbw">
                    <node concept="37vLTw" id="62gIjD2LTeV" role="2Oq$k0">
                      <ref role="3cqZAo" node="62gIjD2LSpP" resolve="iterator" />
                    </node>
                    <node concept="v0PNk" id="62gIjD2LTnp" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="62gIjD2LTbJ" role="3clFbw">
                <node concept="37vLTw" id="32ialFTqJD_" role="3uHU7w">
                  <ref role="3cqZAo" node="32ialFTqJsS" resolve="anchor" />
                </node>
                <node concept="37vLTw" id="62gIjD2LTaj" role="3uHU7B">
                  <ref role="3cqZAo" node="62gIjD2LT70" resolve="next" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="62gIjD2LSQ8" role="2$JKZa">
            <node concept="37vLTw" id="62gIjD2LSMA" role="2Oq$k0">
              <ref role="3cqZAo" node="62gIjD2LSpP" resolve="iterator" />
            </node>
            <node concept="v0PNk" id="62gIjD2LSYJ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="62gIjD2LTQc" role="3cqZAp">
          <node concept="10Nm6u" id="62gIjD2LTV6" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="zdLDfNXgfw" role="jymVt">
      <property role="TrG5h" value="isComment" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="zdLDfNXgfz" role="3clF47">
        <node concept="3clFbF" id="zdLDfNXgoU" role="3cqZAp">
          <node concept="2OqwBi" id="zdLDfNXgpL" role="3clFbG">
            <node concept="37vLTw" id="zdLDfNXgoT" role="2Oq$k0">
              <ref role="3cqZAo" node="zdLDfNXgnU" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="zdLDfNXgyh" role="2OqNvi">
              <node concept="chp4Y" id="zdLDfNXg_8" role="cj9EA">
                <ref role="cht4Q" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="zdLDfNXfQk" role="1B3o_S" />
      <node concept="10P_77" id="zdLDfNXgnR" role="3clF45" />
      <node concept="37vLTG" id="zdLDfNXgnU" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="zdLDfNXgnT" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="zdLDfNXhfH" role="jymVt">
      <property role="TrG5h" value="getCommentedNode" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="zdLDfNXhfK" role="3clF47">
        <node concept="3clFbF" id="zdLDfNXhrB" role="3cqZAp">
          <node concept="2OqwBi" id="zdLDfNXhv3" role="3clFbG">
            <node concept="37vLTw" id="zdLDfNXhrA" role="2Oq$k0">
              <ref role="3cqZAo" node="zdLDfNXhpA" resolve="comment" />
            </node>
            <node concept="3TrEf2" id="zdLDfNXhEK" role="2OqNvi">
              <ref role="3Tt5mk" to="tpck:2ETBKOyieyt" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="zdLDfNXgM$" role="1B3o_S" />
      <node concept="3Tqbb2" id="zdLDfNXhpz" role="3clF45" />
      <node concept="37vLTG" id="zdLDfNXhpA" role="3clF46">
        <property role="TrG5h" value="comment" />
        <node concept="3Tqbb2" id="zdLDfNXhp_" role="1tU5fm">
          <ref role="ehGHo" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5FzO4t9gNbi" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5FzO4t9hhJk">
    <property role="TrG5h" value="Cell_Action_Uncomment" />
    <node concept="312cEg" id="5FzO4t9hFUe" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5FzO4t9hFUf" role="1B3o_S" />
      <node concept="3Tqbb2" id="5FzO4t9hFUg" role="1tU5fm">
        <ref role="ehGHo" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
      </node>
    </node>
    <node concept="2tJIrI" id="5FzO4t9hFNh" role="jymVt" />
    <node concept="3clFbW" id="5FzO4t9hFjp" role="jymVt">
      <node concept="3cqZAl" id="5FzO4t9hFjq" role="3clF45" />
      <node concept="3Tm1VV" id="5FzO4t9hFjr" role="1B3o_S" />
      <node concept="3clFbS" id="5FzO4t9hFjs" role="3clF47">
        <node concept="3clFbF" id="5FzO4t9hFjt" role="3cqZAp">
          <node concept="37vLTI" id="5FzO4t9hFju" role="3clFbG">
            <node concept="2OqwBi" id="5FzO4t9hFjv" role="37vLTJ">
              <node concept="Xjq3P" id="5FzO4t9hFjw" role="2Oq$k0" />
              <node concept="2OwXpG" id="5FzO4t9hFjx" role="2OqNvi">
                <ref role="2Oxat5" node="5FzO4t9hFUe" resolve="myNode" />
              </node>
            </node>
            <node concept="37vLTw" id="5FzO4t9hFjy" role="37vLTx">
              <ref role="3cqZAo" node="5FzO4t9hFjz" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5FzO4t9hFjz" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5FzO4t9hFj$" role="1tU5fm">
          <ref role="ehGHo" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
        </node>
        <node concept="2AHcQZ" id="5FzO4t9hFj_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5FKjex9iOIr" role="jymVt" />
    <node concept="3clFb_" id="5FKjex9iOLs" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canExecute" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5FKjex9iOLt" role="1B3o_S" />
      <node concept="10P_77" id="5FKjex9iOLv" role="3clF45" />
      <node concept="37vLTG" id="5FKjex9iOLw" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5FKjex9iOLx" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="5FKjex9iOLy" role="3clF47">
        <node concept="3clFbF" id="5FKjex9iORb" role="3cqZAp">
          <node concept="3y3z36" id="5FKjex9iPdz" role="3clFbG">
            <node concept="10Nm6u" id="5FKjex9iPes" role="3uHU7w" />
            <node concept="2OqwBi" id="5FKjex9iOTD" role="3uHU7B">
              <node concept="37vLTw" id="5FKjex9iORa" role="2Oq$k0">
                <ref role="3cqZAo" node="5FzO4t9hFUe" resolve="myNode" />
              </node>
              <node concept="1mfA1w" id="5FKjex9iP3C" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5FKjex9iOLz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5FKjex9iIFX" role="jymVt" />
    <node concept="3clFb_" id="5FzO4t9hGQX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="execute" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5FzO4t9hGQY" role="1B3o_S" />
      <node concept="3cqZAl" id="5FzO4t9hGQZ" role="3clF45" />
      <node concept="37vLTG" id="5FzO4t9hGR0" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="5FzO4t9hGR1" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="5FzO4t9hGR2" role="3clF47">
        <node concept="3cpWs8" id="4ALf1wALbiD" role="3cqZAp">
          <node concept="3cpWsn" id="4ALf1wALbiE" role="3cpWs9">
            <property role="TrG5h" value="selectedCell" />
            <node concept="3uibUv" id="4ALf1wALbiA" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="4ALf1wALbiF" role="33vP2m">
              <node concept="37vLTw" id="4ALf1wALbiG" role="2Oq$k0">
                <ref role="3cqZAo" node="5FzO4t9hGR0" resolve="editorContext" />
              </node>
              <node concept="liA8E" id="4ALf1wALbiH" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="getSelectedCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4ALf1wALBmx" role="3cqZAp">
          <node concept="3clFbS" id="4ALf1wALBmz" role="3clFbx">
            <node concept="3cpWs6" id="4ALf1wALBIv" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4ALf1wALBBU" role="3clFbw">
            <node concept="10Nm6u" id="4ALf1wALBHL" role="3uHU7w" />
            <node concept="37vLTw" id="4ALf1wALBxD" role="3uHU7B">
              <ref role="3cqZAo" node="4ALf1wALbiE" resolve="selectedCell" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="VL9tlbFcBJ" role="3cqZAp">
          <node concept="3cpWsn" id="VL9tlbFcBK" role="3cpWs9">
            <property role="TrG5h" value="cellId" />
            <node concept="17QB3L" id="4ALf1wALbr3" role="1tU5fm" />
            <node concept="2OqwBi" id="VL9tlbFcBM" role="33vP2m">
              <node concept="37vLTw" id="4ALf1wALbiI" role="2Oq$k0">
                <ref role="3cqZAo" node="4ALf1wALbiE" resolve="selectedCell" />
              </node>
              <node concept="liA8E" id="VL9tlbFcBQ" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getCellId():java.lang.String" resolve="getCellId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ALf1wALAQp" role="3cqZAp">
          <node concept="3cpWsn" id="4ALf1wALAQq" role="3cpWs9">
            <property role="TrG5h" value="actualSelectedNode" />
            <node concept="3Tqbb2" id="4ALf1wALAQr" role="1tU5fm" />
            <node concept="2OqwBi" id="4ALf1wALAQs" role="33vP2m">
              <node concept="37vLTw" id="4ALf1wALAQt" role="2Oq$k0">
                <ref role="3cqZAo" node="4ALf1wALbiE" resolve="selectedCell" />
              </node>
              <node concept="liA8E" id="4ALf1wALAQu" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ALf1wALcnP" role="3cqZAp">
          <node concept="3cpWsn" id="4ALf1wALcnQ" role="3cpWs9">
            <property role="TrG5h" value="isLabel" />
            <node concept="10P_77" id="4ALf1wALcnL" role="1tU5fm" />
            <node concept="2ZW3vV" id="4ALf1wALcnR" role="33vP2m">
              <node concept="3uibUv" id="4ALf1wALcnS" role="2ZW6by">
                <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
              </node>
              <node concept="37vLTw" id="4ALf1wALcnT" role="2ZW6bz">
                <ref role="3cqZAo" node="4ALf1wALbiE" resolve="selectedCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ALf1wALbAp" role="3cqZAp">
          <node concept="3cpWsn" id="4ALf1wALbAs" role="3cpWs9">
            <property role="TrG5h" value="startPosition" />
            <node concept="10Oyi0" id="4ALf1wALbAn" role="1tU5fm" />
            <node concept="3K4zz7" id="4ALf1wALc8x" role="33vP2m">
              <node concept="2OqwBi" id="4ALf1wALcbD" role="3K4E3e">
                <node concept="1eOMI4" id="4ALf1wALcaa" role="2Oq$k0">
                  <node concept="10QFUN" id="4ALf1wALcab" role="1eOMHV">
                    <node concept="37vLTw" id="4ALf1wALca9" role="10QFUP">
                      <ref role="3cqZAo" node="4ALf1wALbiE" resolve="selectedCell" />
                    </node>
                    <node concept="3uibUv" id="4ALf1wALcaP" role="10QFUM">
                      <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4ALf1wALc$F" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionStart():int" resolve="getSelectionStart" />
                </node>
              </node>
              <node concept="3cmrfG" id="4ALf1wALc_d" role="3K4GZi">
                <property role="3cmrfH" value="-1" />
              </node>
              <node concept="37vLTw" id="4ALf1wALcnU" role="3K4Cdx">
                <ref role="3cqZAo" node="4ALf1wALcnQ" resolve="isLabel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ALf1wALcA7" role="3cqZAp">
          <node concept="3cpWsn" id="4ALf1wALcA8" role="3cpWs9">
            <property role="TrG5h" value="endPosition" />
            <node concept="10Oyi0" id="4ALf1wALcA9" role="1tU5fm" />
            <node concept="3K4zz7" id="4ALf1wALcAa" role="33vP2m">
              <node concept="2OqwBi" id="4ALf1wALcAb" role="3K4E3e">
                <node concept="1eOMI4" id="4ALf1wALcAc" role="2Oq$k0">
                  <node concept="10QFUN" id="4ALf1wALcAd" role="1eOMHV">
                    <node concept="37vLTw" id="4ALf1wALcAe" role="10QFUP">
                      <ref role="3cqZAo" node="4ALf1wALbiE" resolve="selectedCell" />
                    </node>
                    <node concept="3uibUv" id="4ALf1wALcAf" role="10QFUM">
                      <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4ALf1wALcAg" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionEnd():int" resolve="getSelectionEnd" />
                </node>
              </node>
              <node concept="3cmrfG" id="4ALf1wALcAh" role="3K4GZi">
                <property role="3cmrfH" value="-1" />
              </node>
              <node concept="37vLTw" id="4ALf1wALcAi" role="3K4Cdx">
                <ref role="3cqZAo" node="4ALf1wALcnQ" resolve="isLabel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="EJgmL$Jp4L" role="3cqZAp">
          <node concept="3cpWsn" id="EJgmL$Jp4M" role="3cpWs9">
            <property role="TrG5h" value="uncommentedNode" />
            <node concept="2YIFZM" id="EJgmL$Jp4N" role="33vP2m">
              <ref role="37wK5l" node="74g66v1JYfH" resolve="uncomment" />
              <ref role="1Pybhc" node="5FzO4t9gN3W" resolve="CommentUtil" />
              <node concept="37vLTw" id="EJgmL$Jp4O" role="37wK5m">
                <ref role="3cqZAo" node="5FzO4t9hFUe" resolve="myNode" />
              </node>
            </node>
            <node concept="3Tqbb2" id="EJgmL$Jp4K" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbF" id="VL9tlbFcBU" role="3cqZAp">
          <node concept="2OqwBi" id="VL9tlbFcBV" role="3clFbG">
            <node concept="37vLTw" id="VL9tlbFcBW" role="2Oq$k0">
              <ref role="3cqZAo" node="5FzO4t9hGR0" resolve="editorContext" />
            </node>
            <node concept="liA8E" id="VL9tlbFcBX" role="2OqNvi">
              <ref role="37wK5l" to="cj4x:~EditorContext.flushEvents():void" resolve="flushEvents" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="VL9tlbFcBY" role="3cqZAp">
          <node concept="3clFbS" id="VL9tlbFcBZ" role="3clFbx">
            <node concept="3cpWs8" id="VL9tlbFcC0" role="3cqZAp">
              <node concept="3cpWsn" id="VL9tlbFcC1" role="3cpWs9">
                <property role="TrG5h" value="newNodeCell" />
                <node concept="3uibUv" id="VL9tlbFcC2" role="1tU5fm">
                  <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                </node>
                <node concept="2OqwBi" id="VL9tlbFcC3" role="33vP2m">
                  <node concept="2OqwBi" id="VL9tlbFcC4" role="2Oq$k0">
                    <node concept="37vLTw" id="VL9tlbFcC5" role="2Oq$k0">
                      <ref role="3cqZAo" node="5FzO4t9hGR0" resolve="editorContext" />
                    </node>
                    <node concept="liA8E" id="VL9tlbFcC6" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                    </node>
                  </node>
                  <node concept="liA8E" id="VL9tlbFcC7" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.openapi.editor.cells.EditorCell" resolve="findNodeCell" />
                    <node concept="37vLTw" id="4ALf1wALBMx" role="37wK5m">
                      <ref role="3cqZAo" node="4ALf1wALAQq" resolve="actualSelectedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="EJgmL$Jxg4" role="3cqZAp">
              <node concept="3clFbS" id="EJgmL$Jxg6" role="3clFbx">
                <node concept="3cpWs8" id="VL9tlbFcC9" role="3cqZAp">
                  <node concept="3cpWsn" id="VL9tlbFcCa" role="3cpWs9">
                    <property role="TrG5h" value="cellToSelect" />
                    <node concept="3uibUv" id="VL9tlbFcCb" role="1tU5fm">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="2YIFZM" id="VL9tlbFcCc" role="33vP2m">
                      <ref role="1Pybhc" to="g51k:~CellFinderUtil" resolve="CellFinderUtil" />
                      <ref role="37wK5l" to="g51k:~CellFinderUtil.findChildByCondition(jetbrains.mps.openapi.editor.cells.EditorCell,org.jetbrains.mps.util.Condition,boolean,boolean):jetbrains.mps.openapi.editor.cells.EditorCell" resolve="findChildByCondition" />
                      <node concept="37vLTw" id="VL9tlbFcCd" role="37wK5m">
                        <ref role="3cqZAo" node="VL9tlbFcC1" resolve="newNodeCell" />
                      </node>
                      <node concept="1bVj0M" id="VL9tlbFcCe" role="37wK5m">
                        <node concept="37vLTG" id="VL9tlbFcCf" role="1bW2Oz">
                          <property role="TrG5h" value="cell" />
                          <node concept="3uibUv" id="VL9tlbFcCg" role="1tU5fm">
                            <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="VL9tlbFcCh" role="1bW5cS">
                          <node concept="3clFbF" id="VL9tlbFcCi" role="3cqZAp">
                            <node concept="17R0WA" id="VL9tlbFcCj" role="3clFbG">
                              <node concept="37vLTw" id="VL9tlbFcCk" role="3uHU7w">
                                <ref role="3cqZAo" node="VL9tlbFcBK" resolve="cellId" />
                              </node>
                              <node concept="2OqwBi" id="VL9tlbFcCl" role="3uHU7B">
                                <node concept="37vLTw" id="VL9tlbFcCm" role="2Oq$k0">
                                  <ref role="3cqZAo" node="VL9tlbFcCf" resolve="cell" />
                                </node>
                                <node concept="liA8E" id="VL9tlbFcCn" role="2OqNvi">
                                  <ref role="37wK5l" to="f4zo:~EditorCell.getCellId():java.lang.String" resolve="getCellId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="VL9tlbFcCo" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="VL9tlbFcCp" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="VL9tlbFcCq" role="3cqZAp">
                  <node concept="3clFbS" id="VL9tlbFcCr" role="3clFbx">
                    <node concept="3clFbJ" id="4ALf1wALcRS" role="3cqZAp">
                      <node concept="3clFbS" id="4ALf1wALcRU" role="3clFbx">
                        <node concept="3clFbF" id="VL9tlbFcCs" role="3cqZAp">
                          <node concept="2OqwBi" id="VL9tlbFcCt" role="3clFbG">
                            <node concept="2OqwBi" id="VL9tlbFcCu" role="2Oq$k0">
                              <node concept="37vLTw" id="VL9tlbFcCv" role="2Oq$k0">
                                <ref role="3cqZAo" node="5FzO4t9hGR0" resolve="editorContext" />
                              </node>
                              <node concept="liA8E" id="VL9tlbFcCw" role="2OqNvi">
                                <ref role="37wK5l" to="cj4x:~EditorContext.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
                              </node>
                            </node>
                            <node concept="liA8E" id="VL9tlbFcCx" role="2OqNvi">
                              <ref role="37wK5l" to="lwvz:~SelectionManager.setSelection(org.jetbrains.mps.openapi.model.SNode,java.lang.String,int,int):void" resolve="setSelection" />
                              <node concept="37vLTw" id="4ALf1wALBQn" role="37wK5m">
                                <ref role="3cqZAo" node="4ALf1wALAQq" resolve="actualSelectedNode" />
                              </node>
                              <node concept="37vLTw" id="4ALf1wALben" role="37wK5m">
                                <ref role="3cqZAo" node="VL9tlbFcBK" resolve="cellId" />
                              </node>
                              <node concept="37vLTw" id="4ALf1wALcXQ" role="37wK5m">
                                <ref role="3cqZAo" node="4ALf1wALbAs" resolve="startPosition" />
                              </node>
                              <node concept="37vLTw" id="4ALf1wALd1O" role="37wK5m">
                                <ref role="3cqZAo" node="4ALf1wALcA8" resolve="endPosition" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4ALf1wALcTv" role="3clFbw">
                        <ref role="3cqZAo" node="4ALf1wALcnQ" resolve="isLabel" />
                      </node>
                      <node concept="9aQIb" id="4ALf1wALd4g" role="9aQIa">
                        <node concept="3clFbS" id="4ALf1wALd4h" role="9aQI4">
                          <node concept="3clFbF" id="4ALf1wALd5v" role="3cqZAp">
                            <node concept="2OqwBi" id="4ALf1wALd5w" role="3clFbG">
                              <node concept="2OqwBi" id="4ALf1wALd5x" role="2Oq$k0">
                                <node concept="37vLTw" id="4ALf1wALd5y" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5FzO4t9hGR0" resolve="editorContext" />
                                </node>
                                <node concept="liA8E" id="4ALf1wALd5z" role="2OqNvi">
                                  <ref role="37wK5l" to="cj4x:~EditorContext.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
                                </node>
                              </node>
                              <node concept="liA8E" id="4ALf1wALd5$" role="2OqNvi">
                                <ref role="37wK5l" to="lwvz:~SelectionManager.setSelection(org.jetbrains.mps.openapi.model.SNode,java.lang.String):void" resolve="setSelection" />
                                <node concept="37vLTw" id="4ALf1wALBTj" role="37wK5m">
                                  <ref role="3cqZAo" node="4ALf1wALAQq" resolve="actualSelectedNode" />
                                </node>
                                <node concept="37vLTw" id="4ALf1wALd5A" role="37wK5m">
                                  <ref role="3cqZAo" node="VL9tlbFcBK" resolve="cellId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="4ALf1wALaK3" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="VL9tlbFcCz" role="3clFbw">
                    <node concept="10Nm6u" id="VL9tlbFcC$" role="3uHU7w" />
                    <node concept="37vLTw" id="VL9tlbFcC_" role="3uHU7B">
                      <ref role="3cqZAo" node="VL9tlbFcCa" resolve="cellToSelect" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="EJgmL$Jxl3" role="3clFbw">
                <node concept="10Nm6u" id="EJgmL$Jxlr" role="3uHU7w" />
                <node concept="37vLTw" id="EJgmL$Jxkp" role="3uHU7B">
                  <ref role="3cqZAo" node="VL9tlbFcC1" resolve="newNodeCell" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="VL9tlbFcCH" role="3clFbw">
            <node concept="10Nm6u" id="VL9tlbFcCI" role="3uHU7w" />
            <node concept="37vLTw" id="VL9tlbFcCJ" role="3uHU7B">
              <ref role="3cqZAo" node="VL9tlbFcBK" resolve="cellId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VL9tlbFcCM" role="3cqZAp">
          <node concept="2OqwBi" id="VL9tlbFcCN" role="3clFbG">
            <node concept="37vLTw" id="EJgmL$JsuS" role="2Oq$k0">
              <ref role="3cqZAo" node="EJgmL$Jp4M" resolve="uncommentedNode" />
            </node>
            <node concept="1OKiuA" id="VL9tlbFcCP" role="2OqNvi">
              <node concept="37vLTw" id="VL9tlbFcCQ" role="lBI5i">
                <ref role="3cqZAo" node="5FzO4t9hGR0" resolve="editorContext" />
              </node>
              <node concept="2B6iha" id="EJgmL$Jsww" role="lGT1i">
                <property role="1lyBwo" value="lastEditable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5FzO4t9hhJJ" role="jymVt" />
    <node concept="3Tm1VV" id="5FzO4t9hhJl" role="1B3o_S" />
    <node concept="3uibUv" id="5FzO4t9hFqk" role="1zkMxy">
      <ref role="3uigEE" to="3ahc:~AbstractCellAction" resolve="AbstractCellAction" />
    </node>
  </node>
</model>

