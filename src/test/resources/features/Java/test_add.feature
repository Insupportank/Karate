Feature: Test add function

  @Java
  Scenario: Test add function
    * def Calculator = Java.type('utils.Calculator')
    * def result = Calculator.add(1,3)
    * assert result == 4