package karate.request;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;

@KarateOptions(features = "classpath:karate/request/3. UpdatePet/3. updatePet.feature", tags = {"@Scenario", "@ignoreScenarioOutline"})
public class UpdatePet {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/3. UpdatePet/3. updatePet.feature").relativeTo(getClass());
    }
}