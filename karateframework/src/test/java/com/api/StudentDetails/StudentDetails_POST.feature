#Author: Vigneswaran
@StudentDetails_POST
Feature: To create new student details

	Background:
	* def last_name = function () { return Math.floor( (100) * Math.random()); }
	

  @Scenario1
  Scenario Outline: JSON
    Given url 'https://thetestingworldapi.com/api/StudentsDetails'
    * def req =
    """
  {
  "first_name": "Vignes",
  "middle_name": "Testing",
  "last_name": '#(last_name())',
  "date_of_birth": "3/6/2022"
  }
    """
    And request req
    When method post
    Then status 201
    And match response.first_name == "Vignes"
    And match response == 
    """
    {
   "id": <id>,
   "first_name": <firstname>,
   "middle_name": #string,
   "last_name": #string,
   "date_of_birth": #string
   }
   """
   Examples:
   | id      | firstname |
   | #number | #string   |

 
