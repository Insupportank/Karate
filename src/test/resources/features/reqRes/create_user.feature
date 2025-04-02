@Reqres
Feature: Create user


  Scenario: Create a specific user
    Given url "https://reqres.in/api/users"
    And request {name : 'morpheus', job : 'leader'}
    When method post
    Then status 201
    And match response.name == "morpheus"
    And match response.job == "leader"
    And match response.id == '#notnull'
    And print response

  Scenario: Verify existence
    Given url "https://reqres.in/api/users"
    And request {name : 'morpheus', job : 'leader'}
    When method post
    Then status 201
    And def id = response.id

    Given url "https://reqres.in/api/users/:"+id
    When method get
    Then status 200

  Scenario: Create a user from a file
    Given def jsonFile = read('../../user.json')
    And url "https://reqres.in/api/users"
    And request jsonFile
    When method post
    Then status 201
    And match response.name == "John Doe"
    And match response.job == "Automation Tester"
    And match response.id == '#notnull'
    And print response


