Feature: Joke
  In tell a joke as a cli

  Scenario: Good one
    When I run `joker tell`
    Then the output should contain a string