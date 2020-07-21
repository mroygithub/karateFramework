package testRunner.com;


import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;
import com.intuit.karate.KarateOptions;
import org.junit.BeforeClass;


@RunWith(Karate.class)
@KarateOptions(features = "classpath:FeatureFiles/FeatureJava.feature")
public class TestRunner {

    @BeforeClass
    public static void before() {
        System.setProperty("karate.env", "STG");
    }

}
