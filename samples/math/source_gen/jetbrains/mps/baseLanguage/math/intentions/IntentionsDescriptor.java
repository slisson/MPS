package jetbrains.mps.baseLanguage.math.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.BaseIntentionsDescriptor;
import jetbrains.mps.intentions.IntentionsManager;

public class IntentionsDescriptor extends BaseIntentionsDescriptor {
  public void init() {
    IntentionsManager.getInstance().registerIntentionFactory(new DeleteMathContext_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new DivExpressionDivToFraction_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new DivExpressionFractionToDiv_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new SpecifyMathContext_Intention());
  }
}
