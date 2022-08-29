package karate.request;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;

@KarateOptions(features = "classpath:karate/request/2. GetPet/2. getPet.feature", tags = {"@Scenario", "@ignoreScenarioOutline"})
public class GetPet {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/2. GetPet/2. getPet.feature").relativeTo(getClass());
    }
}
