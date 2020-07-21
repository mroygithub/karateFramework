

#########   https://manual2Automation.com ###############
  #######       Created By :: MITHUN ROY ################

Feature: Read JSON From Classpath Using Karate


  Background:

    * def serviceURL = 'http://dummy.restapiexample.com/api/v1/create'


 # Scenario 2 :: Example of POST

  Scenario: Verify that a new employee is successfully getting created

    * def readJsonAsBody = karate.readAsString('classpath:my.json')

    Given url serviceURL
    And request readJsonAsBody
    And method post
    Then status 200
    And match responseType == 'json'
    And print 'Response is: ', response


