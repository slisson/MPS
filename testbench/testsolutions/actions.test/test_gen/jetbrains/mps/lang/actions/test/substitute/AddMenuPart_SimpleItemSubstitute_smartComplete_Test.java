package jetbrains.mps.lang.actions.test.substitute;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import junit.framework.Assert;

@MPSLaunch
public class AddMenuPart_SimpleItemSubstitute_smartComplete_Test extends BaseTransformationTest {
  public AddMenuPart_SimpleItemSubstitute_smartComplete_Test() {
  }
  @Test
  public void test_AddMenuPart_SimpleItemSubstitute_smartComplete() throws Throwable {
    this.initTest("${mps_home}", "r:0d47ccef-2a97-4a7c-8ede-5adeaac0a5a7(jetbrains.mps.lang.actions.test.substitute@tests)");
    this.runTest("jetbrains.mps.lang.actions.test.substitute.AddMenuPart_SimpleItemSubstitute_smartComplete_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("5164819300891972345", "5164819300891972348");
      this.typeString("new");
      this.pressKeys(ListSequence.fromListAndArray(new ArrayList<String>(), "ctrl SPACE"));
      Assert.assertTrue(this.getEditorComponent().getNodeSubstituteChooser().isVisible());
      this.getEditorComponent().getNodeSubstituteChooser().setVisible(false);
      this.pressKeys(ListSequence.fromListAndArray(new ArrayList<String>(), "ctrl shift SPACE"));

    }
  }
}
