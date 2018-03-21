Feature: sample karate test script

    Background:
        * url urlJsonplaceholder

    Scenario: update the post 1
        * def myJson =
        """
        {
          "title": "title title title title title"
        }
        """
        Given path '/posts/1'
        And request myJson
        When method put
        Then status 200
        And  match response.id == 1

