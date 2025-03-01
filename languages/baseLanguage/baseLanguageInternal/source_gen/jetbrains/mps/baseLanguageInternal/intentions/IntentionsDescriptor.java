package jetbrains.mps.baseLanguageInternal.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.BaseIntentionsDescriptor;
import jetbrains.mps.intentions.IntentionsManager;

public class IntentionsDescriptor extends BaseIntentionsDescriptor {
  public void init() {
    IntentionsManager.getInstance().registerIntentionFactory(new ReplaceWithConstantValue_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new ReplaceWithFieldReference_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new add_parameter_to_InternalClassifierType_Intention());
  }
}
