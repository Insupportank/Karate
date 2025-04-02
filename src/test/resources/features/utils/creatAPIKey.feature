Feature: API key

  @API
  Scenario: API Key
    * header Content-Type = "application/json"
    Given url "https://xray.cloud.getxray.app/api/v2/authenticate"
    And request {client_id : "E577F9CAEC8A4171985D2F82F129D73F", client_secret : "fe3003afe6ef037751c6e1f8321f8145f9f01b274b0ab43bbb609aad7759957a"}
    When method post
    Then print response
    