package karate.request;

import com.intuit.karate.junit5.Karate;

public class GetPet {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/getPet.feature").relativeTo(getClass());
    }
}
