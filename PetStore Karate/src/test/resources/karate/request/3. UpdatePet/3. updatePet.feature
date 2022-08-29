Feature: Service client PUT
  AS QA Automation
  I want to update a client
  To validate the status code and response

  Background:
    * url url

  @Scenario
  Scenario: check the service PUT method
    * def requestPut = read('classpath:karate/request/3. UpdatePet/requestPut.json')
    * def responsePut = read('classpath:karate/request/3. UpdatePet/responsePut.json')

    Given path 'pet'
    And request requestPut
    When method put
    Then status 200
    And match response == responsePut

  @ignoreScenarioOutline
  Scenario Outline:Update a pet with incorrect data

    Given path 'pet'
    When request <id>
    And method put
    Then status 415

    Examples:
      | id     |
      | "hola" |
      | 225    |
      | ""     |