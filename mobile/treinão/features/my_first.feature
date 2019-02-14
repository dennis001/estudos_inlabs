# language pt
# utf-8

Feature: Area Online

  Scenario: As a valid user I can log into my app
    When I press "Login"
    Then I see "Welcome to coolest app ever"
