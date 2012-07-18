require 'webrat'

World(Webrat::Matchers)

require 'watir-webdriver'
require 'headless'
headless = Headless.new
headless.start
browser = Watir::Browser.new :firefox

# Set BASE_URL, can be overrided on the cli
ENV['BASE_URL'] = "http://localhost" unless ENV['BASE_URL']

Before do
  @browser = browser
end

at_exit do 
  browser.close
  headless.destroy
end
