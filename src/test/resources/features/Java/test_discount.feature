Feature: Check the discount

  Scenario: Check the discount
    * def calculateDiscount =
  """
  function(arg) {
    var DiscountCalculator = Java.type('utils.JavaDiscountCalculator');
    var dc = new DiscountCalculator();
    return dc.calculateDiscount(arg);
  }
  """
    * def result1 = call calculateDiscount 1500
    * def result2 = call calculateDiscount 25
    * assert result1 == 75
    * assert result2 == 0.5