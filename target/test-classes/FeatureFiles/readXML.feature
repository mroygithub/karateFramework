


#########   https://manual2Automation.com ###############
  #######       Created By :: MITHUN ROY ################


Feature: Learn How To Read XML File



 # Scenario 2 :: Example of POST , read XML from Classpath

  Scenario: Read classpath XML File


    * def requestXMLBody = karate.readAsString('classpath:my.xml')


    Given url 'http://dummy.restapiexample.com/api/v1/create'
    When request requestXMLBody
    And method post
    Then status 200
