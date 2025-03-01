package jetbrains.mps.console.blCommand.actions;

/*Generated by MPS */

import jetbrains.mps.openapi.actions.descriptor.ActionAspectDescriptor;
import java.util.Collection;
import jetbrains.mps.openapi.actions.descriptor.NodeFactory;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.Arrays;
import java.util.Collections;

public class ActionAspectDescriptorImpl implements ActionAspectDescriptor {
  private static final String LANGUAGE_FQ_NAME = "jetbrains.mps.console.blCommand";

  public Collection<NodeFactory> getFactories(SAbstractConcept concept) {
    if (LANGUAGE_FQ_NAME.equals(concept.getLanguage().getQualifiedName())) {
      switch (Arrays.binarySearch(stringSwitchCases_tpto26_a0a0a0c, concept.getName())) {
        case 0:
          return Collections.<NodeFactory>singletonList(new printStatement_NodeFactories.NodeFactory_7284872370241013667());
        case 1:
          return Collections.<NodeFactory>singletonList(new ScopeParameterLiteral_factories.NodeFactory_3492877759609298945());
        case 2:
          return Collections.<NodeFactory>singletonList(new ScopeParameterLiteral_factories.NodeFactory_3492877759608986170());
        case 3:
          return Collections.<NodeFactory>singletonList(new ScopeParameterLiteral_factories.NodeFactory_3492877759608901705());
        case 4:
          return Collections.<NodeFactory>singletonList(new QueryExpression_NodeFactories.NodeFactory_4307205004138627840());
        default:
      }
    }
    return Collections.<NodeFactory>emptyList();
  }
  private static String[] stringSwitchCases_tpto26_a0a0a0c = new String[]{"AbstractPrintExpression", "CustomScope", "ModelScope", "ModulesScope", "QueryExpression"};
}
