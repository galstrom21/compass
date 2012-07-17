Feature: Create a test user

Scenario: Login with a valid user
  Given I have opened "http://184.106.144.18"
  When I fill in "username" with "admin"
    And I fill in "password" with "secrete"
    And I press "Sign In"
  Then I should see "Logged in as: admin"

Scenario: GoTo Users Page
  When I click on "Users"
  Then I should see "admin"
    And I should see "demo"
    And I should see "nova"
    And I should see "glance"

Scenario: Create Compass User
  Given I click on "Create User"
  When I wait for "create_user_form"
    And I fill in "name" with "compass"
    And I fill in "email" with "compass@example.com"
    And I fill in "password" with "password"
    And I fill in "confirm_password" with "password"
    And I select "demo" from "tenant_id"
    And I press "Create User"
#   Then I should see "Success: User"
  Then I should see "compass@example.com"

Scenario: Delete Compass User
  Given I click on "Users"
  When I delete the user "compass"
  Then I should not see "compass@example.com"
  Then I should see "Success: Deleted User"

Scenario: Logout
  Given I click on "Sign Out"
  Then I should see "Log In"
