@Reqres
Feature: Get users
  Scenario: Get users
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    And print response
    And match response.page == 2
    And match response.data == '#[6]'
    And match response.data[0].id == 7

    Scenario: Check schema
      Given url "https://reqres.in/api/2"
      When method get
      Then status 200
      And print response
      And match response == {per_page : '#number', total : '#number', data : '#[]', page : '#number', total_pages : '#number',support : {text : '#string', url : '#string'}}
