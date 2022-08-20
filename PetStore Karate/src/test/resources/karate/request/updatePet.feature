Feature: Service client PUT
  AS QA Automation
  I want to update a client
  To validate the status code and response

  Background:
    * url url

  Scenario: check the service PUT method
    * def requestUpdate = {"id": "#(id)", "category": {"id": "#(idCategory)", "name": "#(nameCategory)"},"name": "#(name)","photoUrls": ["#(photoUrls)"],"tags": [{"id": "#(idTags)","name": "#(nameTags)"}],"status": "#(status)"}
    * def responsePut = read('classpath:karate/request/responsePut.json')

    Given path 'pet'
    And request requestUpdate
    When method put
    Then status 200
    And match response == responsePut

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