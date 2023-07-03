#Author: Vigneswaran S

Feature: StudentDetails

  @StudentDetails_GET
  Scenario: To get all the details of Student
    Given url 'https://thetestingworldapi.com'
    And path '/api/studentsDetails'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response contains deep {"middle_name": "ul"}
    #And match response.[0].middle_name == 'ul'
    And match response == '#[100]'
    #And match response.[*].middle_name contains 'priyanka'
    And match response.[0].middle_name == '#string? _.length >= 2'
    #And match response.$[?(@.id == 7614501)].first_name contains "update"
    * def mainschema = {"id":'#number',"first_name":'##string',"middle_name":'##string',"last_name":'##string',"date_of_birth":'##string'}
    And match response == 
    """
    '#[] ##(mainschema)'
    """
    * def firstname = karate.jsonPath(response,"$[?(@.id == 7620833)].first_name")
    * print firstname + " this"
    
    
  @StudentDetails_GET_Xml
  Scenario: To get all the details of Student in Xml format
    Given url 'https://thetestingworldapi.com'
    And path '/api/studentsDetails'
    And header Accept = 'application/xml'
    When method get
    Then status 200
    And print response
    And match response/ArrayOfstudentsDetail/studentsDetail[3]/middle_name == '#string'
    
