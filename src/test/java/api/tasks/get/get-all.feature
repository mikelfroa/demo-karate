Feature: Posts

    Background:
        * url url

    Scenario: get all tasks
        Given path '/tasks'
        When method get
        Then status 200


