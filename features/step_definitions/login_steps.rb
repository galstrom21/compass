Given /^I have opened "([^"]*)"$/ do |url|
   @browser.goto(url)
end

Given /^the user "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

# When /^I fill in "([^"]*)" with "([^"]*)"$/ do |username, password|
When /^I fill in "([^"]*)" with "([^"]*)"$/ do |name, value|
  @browser.text_field(:name, name).set(value)
end

When /^I press "([^"]*)"$/ do |button|
  @browser.button(:value, button).click
end

When /^I click on "([^"]*)"$/ do |text|
  @browser.link(:text, text).click
end

Then /^I should see "([^"]*)"$/ do |text|
  @browser.text.should contain(text)
end

Given /^I have logged in$/ do
  steps %Q{
    Given I have opened "http://184.106.250.138"
    When I fill in "username" with "admin"
    And I fill in "password" with "secrete"
    And I press "Sign In"
    Then I should see "Logged in as: admin"    
  }
end
