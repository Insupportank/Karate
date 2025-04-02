Feature: Send test results

  @SendResults
  Scenario: Send test results
    * def jsonFile = read("cucumber.json")
    Given url "https://xray.cloud.getxray.app/api/v2/import/execution/cucumber"
    And header Content-Type = "application/json"
    And header Authorization = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZW5hbnQiOiJiNmNhZGQwNS1lMzQxLTNmMTctYjU1Zi00OTM0MTI4MWQ4MmEiLCJhY2NvdW50SWQiOiI3MTIwMjA6ZGFlMjMzMmUtODUwMC00NTJjLWEwYWUtNzM1NjI2OWU0ZjQ5IiwiaXNYZWEiOmZhbHNlLCJpYXQiOjE3NDM0MTgwMzgsImV4cCI6MTc0MzUwNDQzOCwiYXVkIjoiRTU3N0Y5Q0FFQzhBNDE3MTk4NUQyRjgyRjEyOUQ3M0YiLCJpc3MiOiJjb20ueHBhbmRpdC5wbHVnaW5zLnhyYXkiLCJzdWIiOiJFNTc3RjlDQUVDOEE0MTcxOTg1RDJGODJGMTI5RDczRiJ9.GqnApq5sWkBi17AfksXSbhOUomeGaCFHhC2bUnopTRY"
    When request jsonFile
    And method post
    Then status 200
    Then print response