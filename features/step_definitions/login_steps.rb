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

When /^I change to "([^"]*)" project$/ do |text|
  @browser.link(:class, "dropdown-toggle").click
  @browser.ul(:id, "tenant_list").link(:text, text).click
end
