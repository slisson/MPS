package jetbrains.mps.lang.editor.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.BaseIntentionsDescriptor;
import jetbrains.mps.intentions.IntentionsManager;

public class IntentionsDescriptor extends BaseIntentionsDescriptor {
  public void init() {
    IntentionsManager.getInstance().registerIntentionFactory(new AddDominance_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new AddExtendsClause_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new AddIndent_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new AddNewLine_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new AddOnNewLine_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new AddRemoveNewLineForChildren_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new BooleanQuery_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new ChangeNonEmptyProperty_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new ChangeOrientationAlternation_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new ChangeOrientationCollection_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new ChangeOrientationList_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new ChangeProperty_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new ChangePropertyWithNonEmpty_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new ChangeTransactionalProperty_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new ColorQuery_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new ExtractComponent_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new FontStyleQuery_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new GenerateMultiLineDefaultEditor_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new GenerateSingleLineDefaultEditor_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new MigrateToIndentLayout_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new RemoveIndent_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new RemoveNewLine_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new RemoveOnNewLine_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new SplitConstantCellIntoWords_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new SurroundWithHorizontalCollection_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new SurroundWithIndentCollection_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new SurroundWithVerticalCollection_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new TrimConstantCell_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new UseIndentLayoutInCollection_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new UseIndentLayoutInRefNodeList_Intention());
  }
}
