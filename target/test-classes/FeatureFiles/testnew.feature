

Feature: Check Karate Examples:



  Scenario Outline: Verify that a new employee is successfully getting created


    Given url 'http://dummy.restapiexample.com/api/v1/create'
    * def JavaDemo = Java.type('supportingjson.jsonbody')
    * def result = JavaDemo.bodyis('<name>' , <sal> , <age>)
    And request result
    And method post
    Then assert responseStatus == 200
    And assert responseTime < 3000
    And match responseType == 'json'
    And print 'Response is: ', response
    Then match response.data.name == '<name>'
    Then match response.data.name == '#notnull'
    * def result = JavaDemo.writenotepad(response)
    #And match response == {"data.name": "name_001","data.salary": "53001","data.age": "23"}
  Examples:
    |name|sal|age|
    |Mit |200000|50|
