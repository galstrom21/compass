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

Then /^I should not see "([^"]*)"$/ do |text|
  @browser.text.should_not contain(text)
end

When /^I change to "([^"]*)" project$/ do |text|
  @browser.link(:class, "dropdown-toggle").click
  @browser.ul(:id, "tenant_list").link(:text, text).click
end

When /^I wait for "([^"]*)"$/ do |name|
  @browser.wait_until { @browser.form(:id, name).exists? }
end

When /^I select "([^"]*)" from "([^"]*)"$/ do |name,drop_down|
  @browser.select_list(:name, drop_down).select(name)
end

When /^I delete the user "([^"]*)"$/ do |username|
  tmp = @browser.td(:text, username).parent
  tmp.a(:href, "#").click
  tmp.button(:text, "Delete User").click
  @browser.link(:text, "Delete User").click
end
