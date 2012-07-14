Given /^I have opened "([^"]*)"$/ do |url|
  webrat.adapter.mechanize.user_agent_alias = "Mac Safari"
  visit url
end

When /^I search for "([^"]*)"$/ do |query|
  fill_in "q", :with => query
  click_button "Google Search"
end

Then /^I should see a link to "([^"]*)" with text "([^"]*)"$/ do |url, text|
  pp(response_body)
  response_body.should have_selector("a[href='#{ url }']") do |element|
    element.should contain(text)
  end
end
