Feature: Service client GET
  As QA Automation
  I want to consult a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Get a pet with correct ID
    * def responsesGet = read('classpath:karate/request/responseGet.json')
    Given path 'pet', id
    When method get
    Then status 200
    And match response == responsesGet
    And assert response.id == id
    And assert response.name == name

  Scenario Outline:Get a pet with incorrect ID

    Given path 'pet'
    When request <id>
    And method get
    Then status 405

    Examples:
      | id  |
      | 2   |
      | 225 |
      | ""  |





