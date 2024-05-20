Feature: Order Creation
  @books
  Scenario: Getting books to check their availability
    * def jsonModel = read('classpath:data/not_valid.json')
    * def id = jsonModel.bookId
    Given url baseUrl
    And path '/books', id
    When method GET
    Then status 200