require 'selenium-webdriver'
require 'rubygems'
require 'rspec'
require 'rubygems'


options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless')
driver = Selenium::WebDriver.for :chrome, options: options 
RSpec::Expectations::ExpectationNotMetError

Given('user login using correct username and password') do
  driver.navigate.to "https://app.picardata.com/login"
  sleep(5)
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[1]/input').send_keys "michael.sunhaki@emewlabs.com"
  sleep(5)
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[2]/input').send_keys "Mikesunhaki1986"
  sleep(5)
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/button').click
  driver.manage.timeouts.implicit_wait = 5
end
  
And('user should see text {string}') do |string|
  string = driver.find_element(:xpath, '//*[@id="content-wrapper"]/footer/div/div/span').text
  string.should == "Copyright © Picardata 2021"
end
  
When('user click on App Library') do
  driver.find_element(:xpath, '/html/body/div/div/div/nav/div/ul[1]/li[3]').click
  driver.manage.timeouts.implicit_wait = 5
end
  
Then('user should see Homepage') do
  driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]/div/div/div[1]/img').displayed?
end
  
Then('user click on Add to Picardata') do
  driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]/div/div/div[3]/button').click
end
  
Then('user click on Integrate button') do
  pending # Write code here that turns the phrase above into concrete actions
end