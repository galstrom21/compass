require 'webrat'

World(Webrat::Matchers)

require 'watir-webdriver'
require 'headless'
headless = Headless.new
headless.start
browser = Watir::Browser.new :firefox

Before do
  @browser = browser
end

at_exit do 
  browser.close
  headless.destroy
end
