@JsonPlaceholder
  Feature: Get info

    Scenario: Get info
      Given url "https://jsonplaceholder.typicode.com/posts/1"
      When method get
      Then status 200
      And match response.id == 1
      And match response.title == "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"