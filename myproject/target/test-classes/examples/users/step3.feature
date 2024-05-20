Feature: step 3 senarios
  @sce1
  Scenario: Read JSON model from file
    * def jsonModel = read('classpath:/data/modelFile.json')
    * print jsonModel
  Scenario: Read JSON model from file and post it
    Given url 'https://petstore.swagger.io/v2'
    And path 'pet'
    And def jsonBody = read('classpath:data/petData.json')
    And request jsonBody
    When method POST
    Then status 200

  Scenario Outline: Data table printing <id>
    * print 'current id is ->', id
    Examples:
      | id |
      | 10 |
      | 20 |
      | 30 |

  Scenario Outline: GET request with CSV table - <id>
    Given url baseUrl
    And path 'posts', id
    When method GET
    Then status 200
    Examples:
      | read('data/data.csv')|
  @skipme
  Scenario: caller feature usage
    Given url baseUrl
    And path 'posts' , 70
    And def getFeature = call read('classpath:callers/callerGet.feature')
    And getFeature.response.title = 'newTitle'
    And request getFeature.response
    When method PUT
    Then status 200
    And print 'after put', response