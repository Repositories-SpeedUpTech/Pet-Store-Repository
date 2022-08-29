package karate.request;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;

@KarateOptions(features = "classpath:karate/request/4. DeletePet/4. deletePet.feature", tags = {"@ignoreScenario", "@ScenarioOutline"})
public class DeletePet {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/4. DeletePet/4. deletePet.feature").relativeTo(getClass());
    }
}
