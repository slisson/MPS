package jetbrains.mps;

/*Generated by MPS */

import jetbrains.mps.tool.environment.Environment;
import org.junit.BeforeClass;
import jetbrains.mps.testbench.junit.runners.MpsTestsSupport;
import org.junit.AfterClass;

public class CoreMpsTest {
  private static Environment CREATED_ENV;

  @BeforeClass
  public static void setup() {
    CREATED_ENV = MpsTestsSupport.initEnv(false);
    if (CREATED_ENV != null) {
      MpsTestsSupport.makeAllInCreatedEnvironment();
    }
  }

  @AfterClass
  public static void cleanup() {
    if (CREATED_ENV != null) {
      // FIXME in suites we need this environment later, cannot dispose it 
      // <node> 
    }
  }
}
