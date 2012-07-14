require 'webrat'

#Webrat.configure do |config|
#  config.mode = :mechanize
#end

#World(Webrat::Methods)
World(Webrat::Matchers)

require 'watir-webdriver'
browser = Watir::Browser.new :firefox

Before do
  @browser = browser
end

at_exit do 
  browser.close
end
