Feature: get caller

  Scenario: get scenario with static id
    Given url baseUrl
    When method GET
    Then status 200
    And print 'after get', response
