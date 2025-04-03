package runner;

import com.ibm.icu.impl.Assert;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;


public class ApiTestRunner {

    @org.junit.jupiter.api.Test
    public void testParallel(){
        Results results = Runner.path("classpath:featuresFromXRAY").parallel(1);
        Assert.assrt(results.getFailCount() == 0);
    }


}
