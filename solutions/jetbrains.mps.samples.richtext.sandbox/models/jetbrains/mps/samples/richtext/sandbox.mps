<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:980a0f80-f33e-4bac-bfd7-8fb4ae24fb97(jetbrains.mps.samples.richtext.sandbox)">
  <persistence version="8" />
  <language namespace="0e10c6eb-2b0f-4150-b681-4e5505d8baaf(jetbrains.mps.samples.richtext)" />
  <language namespace="92d2ea16-5a42-4fdf-a676-c7604efe3504(jetbrains.mps.editor.richtext)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" />
  <import index="vydj" modelUID="r:a2505671-3b45-40ec-8073-270e36976c54(jetbrains.mps.samples.richtext.structure)" version="-1" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="87nw" modelUID="r:ca2ab6bb-f6e7-4c0f-a88c-b78b9b31fff3(jetbrains.mps.editor.richtext.structure)" version="6" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <root type="vydj.Document" typeId="vydj.5232239503568939837" id="5232239503568982138" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="demo document" />
    <node role="paragraph" roleId="vydj.5232239503568939900" type="vydj.Paragraph" typeId="vydj.5232239503568939899" id="5232239503569068918" nodeInfo="ng">
      <property name="text" nameId="vydj.5232239503568939962" value="This is the first paragraph." />
    </node>
    <node role="paragraph" roleId="vydj.5232239503568939900" type="vydj.Paragraph" typeId="vydj.5232239503568939899" id="5232239503569152180" nodeInfo="ng">
      <property name="text" nameId="vydj.5232239503568939962" value="Paragraph 2\nwith two lines." />
    </node>
    <node role="paragraph" roleId="vydj.5232239503568939900" type="vydj.Paragraph" typeId="vydj.5232239503568939899" id="5232239503569167458" nodeInfo="ng">
      <property name="text" nameId="vydj.5232239503568939962" value="A paragraph with a long long long long long long long long long long long long long long long long long long long long long l f dfgong long long long text, that wraps automatically." />
    </node>
    <node role="richtext" roleId="vydj.2988247428751020914" type="87nw.Text" typeId="87nw.2557074442922380897" id="2988247428751463963" nodeInfo="ng">
      <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="2988247428751463964" nodeInfo="ng">
        <property name="escapedValue" nameId="87nw.2557074442922438158" value="This is plain text with some\n" />
      </node>
      <node role="words" roleId="87nw.2557074442922392302" type="vydj.EmbeddedCode" typeId="vydj.2988247428751464015" id="2988247428751541877" nodeInfo="sg">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2988247428751541903" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2988247428751541906" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="i" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="2988247428751541902" nodeInfo="in" />
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="2988247428751541926" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580320021" value="10" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2988247428751541955" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.PlusAssignmentExpression" typeId="tpee.1215695189714" id="2988247428751543808" nodeInfo="nn">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="2988247428751543827" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580320021" value="2" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2988247428751541954" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2988247428751541906" resolveInfo="i" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="9038729075800650572" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9038729075800650568" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="9038729075800650569" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9038729075800650570" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="9038729075800682012" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9038729075800682015" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2988247428751541906" resolveInfo="i" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="vydj.MultilineString" typeId="vydj.9038729075800511894" id="9038729075800654490" nodeInfo="ng">
                  <property name="text" nameId="vydj.9038729075800515962" value="A multiline\nString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2988247428751545109" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2988247428751545105" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="2988247428751545106" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2988247428751545107" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="2988247428751545822" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2988247428751545825" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2988247428751541906" resolveInfo="i" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2988247428751545108" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="i = " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="2988247428751541876" nodeInfo="ng">
        <property name="escapedValue" nameId="87nw.2557074442922438158" value="\n" />
      </node>
      <node role="words" roleId="87nw.2557074442922392302" type="vydj.EmbeddedCode" typeId="vydj.2988247428751464015" id="455325956876986308" nodeInfo="sg">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="455325956876992881" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="455325956876992884" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="d" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.DoubleType" typeId="tpee.1070534513062" id="455325956876992880" nodeInfo="in" />
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.FloatingPointConstant" typeId="tpee.1111509017652" id="455325956876993105" nodeInfo="nn">
              <property name="value" nameId="tpee.1113006610751" value="10.0" />
            </node>
          </node>
        </node>
      </node>
      <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="455325956876986307" nodeInfo="ng">
        <property name="escapedValue" nameId="87nw.2557074442922438158" value="dfhfgh \nembedded code.\n" />
      </node>
    </node>
  </root>
</model>

