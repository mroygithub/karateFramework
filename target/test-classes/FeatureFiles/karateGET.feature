

#########   https://manual2Automation.com ###############
  #######       Created By :: MITHUN ROY ################

Feature: User wants to check Google URL as GET


  Background:

    * def serviceURL = 'https://jsonplaceholder.typicode.com/posts/1'


 # Scenario 2 :: Example of GET

  Scenario: Testing valid GET endpoint

    Given url serviceURL
    When method GET
    Then status 200
    And match responseType == 'json'
    And assert responseTime < 5000
    And match response ==

    """
    {
      "userId": 1,
      "id": 1,
      "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
      "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    }
    """
    And response.title == 'sunt aut facere repellat provident occaecati excepturi optio reprehenderit'


