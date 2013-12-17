#require 'capybara'
#require 'capybara/dsl'
#require 'capybara/cucumber'
#require 'selenium-webdriver'
#require 'site_prism'
#
#Capybara.run_server = false
#Capybara.default_driver = :selenium
#Capybara.app_host = 'http://qa.www.seatwave.ie/'
#Capybara.ignore_hidden_elements = true
#Capybara.default_wait_time = 15
#Capybara.match = :first
#
#Capybara.register_driver :selenium do |app|
#  Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
#end






#Capybara.add_selector(:id) do
#  xpath { |id| XPath.descendant[XPath.attr(:id) == id.to_s] }
#end
#
#Capybara.add_selector(:name) do
#  xpath { |name| XPath.descendant[XPath.attr(:name) == name.to_s] }
#end
#
#Capybara.add_selector(:value) do
#  xpath { |value| XPath.descendant[XPath.attr(:value) == value.to_s] }
#end
#
#
require 'capybara'
require 'capybara/cucumber'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'site_prism'
#require 'sauce/cucumber'
#require 'sauce'

url = "http://arnaudlamotte:tbG7gAXvpAJsxnfBnnST@hub.browserstack.com/wd/hub"
capabilities = Selenium::WebDriver::Remote::Capabilities.internet_explorer
capabilities.version = "7"
capabilities.platform = :WINDOWS


Capybara.register_driver :browser_stack do |app|
Capybara::Selenium::Driver.new(app,
:browser => :remote, :url => url,
:desired_capabilities => capabilities)
end
#Capybara.default_wait_time = 15
#Capybara.ignore_hidden_elements = false
Capybara.default_driver = :browser_stack
Capybara.ignore_hidden_elements = true
Capybara.default_wait_time = 15
Capybara.match = :first
capabilities["browserstack.tunnel"] = "true"
capabilities["browserstack.debug"]= "true"

#def sauce_capabilities
#{
#    'username' => 'arnaudl',
#    'access-key' => 'a2848f3b-41e4-42aa-81c9-aacc5cff35d6',
#}
#end
#
##Sauce.config do |c|
##  c[:start_tunnel] = true
##end
#
#Capybara.default_driver = :sauce

