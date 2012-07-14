Feature: Login to Horizon
  In order to make sure keystone/horizon is configured correctly
  I want to check if I can login

#  Background:
#    Given Logging in as "admin"

  Scenario: Login with an invalid user
    Given I have opened "http://184.106.250.138"
    When I fill in "username" with "admin"
    And I fill in "password" with "password"
    And I press "Sign In"
    Then I should see "Error: Invalid user name or password."

  Scenario: Login with a valid user
    Given I have opened "http://184.106.250.138"
    When I fill in "username" with "admin"
    And I fill in "password" with "secrete"
    And I press "Sign In"
    Then I should see "Logged in as: admin"

  Scenario: Validate Instances Page
    When I click on "Instances"
    Then I should see "Tenant"
    And I should see "Host"
    And I should see "Instance Name"
    And I should see "IP Address"
    And I should see "Size"
    And I should see "Status"
    And I should see "Task"
    And I should see "Power State"
    And I should see "Actions"

  Scenario: Validate Services Page
    When I click on "Services"
    Then I should see "nova"
    And I should see "glance"
    And I should see "keystone"
    And I should see "ec2"
