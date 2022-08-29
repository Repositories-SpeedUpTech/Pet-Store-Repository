function fn(){
    var env = karate.env;
    var properties = read('classpath:karate-properties.json')
    if(!env){
        env ='dev';
    }
    var config = properties[env];
    return config;

    config.faker = Java.type('com.github.javafaker.Faker');
}