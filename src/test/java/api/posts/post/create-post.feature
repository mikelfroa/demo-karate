Feature: sample karate test script

    Background:
        * url urlJsonplaceholder

    Scenario: create a post
        * def myJson =
        """
        {
          "title": "title title title title title",
          "body": "body body body body body body body"
        }
        """
        Given path '/posts'
        And request myJson
        When method post
        Then status 201
        And  match response.id == 101

