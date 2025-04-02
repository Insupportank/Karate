@JsonPlaceholder
Feature: Test the user structure

  Scenario: Test the user 1 structure
    * def jsonFile = read("structure.json")
    Given url "https://jsonplaceholder.typicode.com/users/1"
    When  method get
    Then status 200
    And match response == jsonFile
