Feature: sample karate test script

    Background:
        * url urlJsonplaceholder

    Scenario: delete the post 1
        Given path '/posts/1'
        When method delete
        Then status 200
