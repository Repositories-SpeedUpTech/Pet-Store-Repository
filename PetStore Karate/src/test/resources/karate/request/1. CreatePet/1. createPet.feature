Feature: Service client POST
  AS QA Automation
  I want to create a pet
  To validate the status code and response

  Background:
    * url url

  @Scenario
  Scenario: check the service POST method
    * def requestCreate = read('classpath:karate/request/1. CreatePet/requestCreate.json')
    * def responsePost = read('classpath:karate/request/1. CreatePet/responsePost.json')

    Given path 'pet'
    And request requestCreate
    When method post
    Then status 200
    And match response == responsePost
    And assert response.name == requestCreate.name
    And assert response.id == requestCreate.id

  @ScenarioOutline
  Scenario Outline: Validate the id using unsupported data types.

    Given path 'pet'
    And request <id>
    When method post
    Then status 415

    Examples:
      | id          |
      | 0.578955544 |
      | "@##$"      |
      | "ABCDVB"    |
      | "******"    |

