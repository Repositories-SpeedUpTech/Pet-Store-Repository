package karate.request;

import com.intuit.karate.junit5.Karate;

public class DeletePet {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/deletePet.feature").relativeTo(getClass());
    }
}