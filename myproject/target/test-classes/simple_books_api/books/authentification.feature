Feature: Simple Books API
  Scenario: verify the creation of token after an authentication
    * def jsonBody =
    """
    {
   "clientName": "ayouble",
   "clientEmail": "ayouble@example.com"
    }
    """
    Given url baseUrl
    And path '/api-clients'
    And request jsonBody
    When method POST
    Then status 201
    And match response.accessToken == '#present'