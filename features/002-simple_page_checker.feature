Feature: Check all pages look right
  I want to do a simple check on all pages

Scenario: Login with a valid user
  Given I have opened "http://184.106.144.18"
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

Scenario: Validate Admin Services Page
  When I click on "Services"
  Then I should see "nova"
    And I should see "glance"
    And I should see "keystone"
    And I should see "ec2"
    And I should see "volume"

Scenario: Validate Admin Flavors Page
  When I click on "Flavors"
  Then I should see "m1.xlarge"
    And I should see "m1.large"
    And I should see "m1.medium"
    And I should see "m1.small"
    And I should see "m1.tiny"
    And I should see "Create Flavor"
    And I should see "Delete Flavors"

Scenario: Validate Admin Images Page
  When I click on "Images"
  Then I should see "tty-image"
    And I should see "cirros-image"
    And I should see "Delete Images"

Scenario: Validate Admin Projects Page
  When I click on "Projects"
  Then I should see "admin"
    And I should see "service"
    And I should see "demo"
    And I should see "Create New Project"
    And I should see "Delete Projects"

Scenario: Validate Admin Users Page
  When I click on "Users"
  Then I should see "admin"
    And I should see "demo"
    And I should see "nova"
    And I should see "glance"
    And I should see "Create User"
    And I should see "Delete Users"

Scenario: Validate Project Overview Page
  When I click on "Project"
    And I change to "admin" project
  Then I should see "Usage Summary"

Scenario: Validate Instances & Volumes Page
  When I click on "Instances & Volumes"
  Then I should see "Launch Instance"
    And I should see "Create Volume"

Scenario: Validate Images & Snapshots Page
  When I click on "Images & Snapshots"
  Then I should see "Delete Images"
    And I should see "Instance Snapshots"
    And I should see "Volume Snapshots"

Scenario: Validate Access & Security Page
  When I click on "Access & Security"
  Then I should see "Floating IPs"
    And I should see "Allocate IP To Project"
    And I should see "Security Groups"
    And I should see "Create Security Group"
    And I should see "Keypairs"
    And I should see "Create Keypair"

Scenario: Logout
  Given I click on "Sign Out"
  Then I should see "Log In"
