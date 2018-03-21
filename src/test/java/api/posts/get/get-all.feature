Feature: Posts

    Background:
        * url urlJsonplaceholder

    Scenario: get all posts
        Given path '/posts'
        When method get
        Then status 200
        And match $.[*].title contains "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"


