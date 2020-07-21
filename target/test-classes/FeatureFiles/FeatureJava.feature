




#########   https://manual2Automation.com ###############
  #######       Created By :: MITHUN ROY ################

Feature: Call a Java Method From Feature File



  # Call Java Function Using JavaScripts:

  Scenario Outline: Verify that a new employee is successfully getting created

    Given url 'https://jsonplaceholder.typicode.com/posts'
    * def JavaDemo = Java.type('supportingjson.jsonbody')
    * def result = JavaDemo.bodyis('<Title>' , '<Body>' , <UserId>)
    And print result
    And header Content-Type = 'application/json; charset=UTF-8'
    And request result
    And method post
    Then status 201
    And assert responseTime < 3000
    And match responseType == 'json'
    And print 'Response is: ', response
    Then match response.title == '<Title>'
    Then match response.body == '<Body>'
    Then match response.userId == '<UserId>'

    ## Starting of PUT

    * def newURL = 'https://jsonplaceholder.typicode.com/posts/'+<UserId>

    Given url newURL
    And header Content-Type = 'application/json; charset=UTF-8'
    And method delete
    Then status 200

    Examples:
      |Title|Body|UserId|
      |Java Feature File |Karate Framework|10|
