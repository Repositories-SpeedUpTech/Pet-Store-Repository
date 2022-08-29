Feature: Service client GET
  As QA Automation
  I want to consult a pet
  To validate the status code and response

  Background: consume service
    * url url

  @Scenario
  Scenario: Get a pet with correct ID
    * def responsesGet = read('classpath:karate/request/2. GetPet/responseGet.json')
    * def requestCreate = read('classpath:karate/request/1. CreatePet/requestCreate.json')
    Given path 'pet', requestCreate.id
    When method get
    Then status 200
    And match response == responsesGet
    And assert response.id == requestCreate.id

  @ignoreScenarioOutline
  Scenario Outline:Get a pet with incorrect ID

    Given path 'pet', id
    When request <id>
    And method get
    Then status 404

    Examples:
      | id   |
      | "ab" |
      | 225  |
      | ""   |





