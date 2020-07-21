

#########   https://manual2Automation.com ###############
  #######       Created By :: MITHUN ROY ################

Feature: User wants to check Google URL as GET


  Background:

    * def expectedResult = 'Welcome 10'
    * def urlGoogle = 'https://www.google.com'


  @Smoke
  Scenario: Testing String Concat one

    Given def YouAre = 'Welcome '
    And def num = 10
    Then assert YouAre + num == expectedResult

 # Scenario 1 :: using urlGoogle from Background

  Scenario: Testing valid GET endpoint

    Given url urlGoogle
    When method GET
    Then status 200


