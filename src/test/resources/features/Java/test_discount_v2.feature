Feature: Check the discount

  Scenario: Check the discount

    * def DiscountCalculatorClass = Java.type('utils.JavaDiscountCalculator')
    * def DiscountCalculator = new DiscountCalculatorClass()

    * def result1 = DiscountCalculator.calculateDiscount(1500)
    * def result2 = DiscountCalculator.calculateDiscount(25)
    * match result1 == 75
    * match result2 == 0.5