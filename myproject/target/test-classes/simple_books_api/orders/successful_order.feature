Feature: Order Creation
  Scenario: Verify Successful Order Creation with Available Book
    * def jsonModel = read('classpath:data/modelFile.json')
    Given url baseUrl
    And def getFeature = call read('classpath:simple_books_api/orders/books.feature')
    And path '/orders'
    And header Authorization = 'Bearer ' + authToken
    And request jsonModel
    When method POST
    Then status 201
    And match getFeature.response.available == true