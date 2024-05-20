Feature: Order Creation
  Scenario: Verify unSuccessful Order Creation with unAvailable Book
    * def jsonModel = read('classpath:data/not_valid.json')
    Given url baseUrl
    And def getFeature = call read('classpath:simple_books_api/orders/unvalid_books.feature')
    And path '/orders'
    And header Authorization = 'Bearer ' + authToken
    And request jsonModel
    When method POST
    Then status 404
    And match getFeature.response.available == false