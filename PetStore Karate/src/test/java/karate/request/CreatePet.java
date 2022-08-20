package karate.request;

import com.intuit.karate.junit5.Karate;

public class CreatePet {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/createPet.feature").relativeTo(getClass());
    }
}