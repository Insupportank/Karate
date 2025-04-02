package runner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Assert;
import org.junit.Test;


public class ApiTestRunner {

    @Test
    public void testParallel(){
        Results results = Runner.path("classpath:featuresFromXRAY").parallel(1);
        Assert.assertTrue(results.getFailCount() == 0);
    }


}
