package karate.request;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;

@KarateOptions(features = "classpath:karate/request/1. CreatePet/1. createPet.feature", tags = { "@Scenario","@ScenarioOutline"})
public class CreatePet {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/1. CreatePet/1. createPet.feature").relativeTo(getClass());
    }
}