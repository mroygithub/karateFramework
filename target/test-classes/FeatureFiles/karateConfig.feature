
#########   https://manual2Automation.com ###############
  #######       Created By :: MITHUN ROY ################

Feature: User wants to check Google URL as GET

  Background:

    * url requestUrl
    * request requestBodyIs

  Scenario: Testing String Concat one

    Given url 'https://jsonplaceholder.typicode.com/posts'
    And header Content-Type = 'application/json; charset=UTF-8'
    And method post
    Then status 201
    And print 'Response is: ', response