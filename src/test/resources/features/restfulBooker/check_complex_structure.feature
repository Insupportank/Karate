Feature: Create a booking with complex schema

  Scenario: Create a booking with complex schema
    * def today =
  """
  function() {
    var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
    var sdf = new SimpleDateFormat('yyyy-MM-dd');
    return sdf.format(new java.util.Date());
  }
  """
    * print today