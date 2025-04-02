@RestfulBooker
  Feature: Get booking

    Scenario: Get booking
      Given url "https://restful-booker.herokuapp.com/booking"
      When method get
      Then status 200
      And match response == "#[]"