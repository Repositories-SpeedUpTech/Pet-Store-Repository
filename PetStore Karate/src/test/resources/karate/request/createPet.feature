Feature: Service client POST
  AS QA Automation
  I want to create a pet
  To validate the status code and response

  Background:
    * url url

  Scenario: check the service POST method
    * def requestCreate = {"id": "#(id)", "category": {"id": "#(idCategory)", "name": "#(nameCategory)"},"name": "#(name)","photoUrls": ["#(photoUrls)"],"tags": [{"id": "#(idTags)","name": "#(nameTags)"}],"status": "#(status)"}
    * def responsePost = read('classpath:karate/request/responsePost.json')

    Given path 'pet'
    And request requestCreate
    When method post
    Then status 200
    And assert response.name == name
    And assert response.id == id

