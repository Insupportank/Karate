@JsonPlaceholder
  Feature: Post a user

    Scenario post a user and check the creation
      * def jsonFile = read('user.json')
      Given url "https://jsonplaceholder.typicode.com/posts"
      And request jsonFile
      When method post
      Then status 201
      And response.id == '#notnull'
      And response.userId == 10
      And response.title == "This is a post about the POEI"
      And response.body == "In this post I want to talk about all the tarots games we made"
