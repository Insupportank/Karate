@JsonPlaceholder
  Feature: Use response in request

    Scenario: Double request
      Given url "https://jsonplaceholder.typicode.com/users"
      When  method get
      Then status 200
      And def id = response[0].id

      Given url "https://jsonplaceholder.typicode.com/posts?userId=" + id
      When method get
      Then status 200
      And print response
      And match response[*].userId contains id