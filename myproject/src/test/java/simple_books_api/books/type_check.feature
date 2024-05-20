Feature: verify that 'type' filter works correctly  on the list of books endpoint
  Scenario: check the case 'fiction' and 'non-fiction'
    * def isValid = function(x){ return x.type == 'fiction' || x.type == 'non-fiction' }
    Given url baseUrl
    And path 'books'
    When method GET
    Then status 200
    And match each response  == '#? isValid(_)'
