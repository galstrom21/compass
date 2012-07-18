Feature: Login to Horizon with an invalid user
  In order to make sure keystone/horizon is configured correctly
  I want to check if I can login

  Scenario: Login with an invalid user
    Given I have opened horizon
    When I fill in "username" with "admin"
    And I fill in "password" with "password"
    And I press "Sign In"
    Then I should see "Error: Invalid user name or password."
