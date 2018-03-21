Feature: Posts

    Background:
        * url urlJsonplaceholder

    Scenario: get posts with id 1
        Given path '/posts/1'
        When method get
        Then status 200
        And match response.title == "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"
