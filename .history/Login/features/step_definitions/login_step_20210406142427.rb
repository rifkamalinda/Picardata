require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome  


Given('open the website') do
  driver.navigate.to "https://app.picardata.com/login"
  sleep(5)
end

When('user input Email') do
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[1]/input').send_keys "michael.sunhaki@emewlabs.com"
end

And('user input password') do
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[2]/input').send_keys "Mikesunhaki1986"
end

And('user click on login button') do
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/button').click
  sleep(5)
  #assert(driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div/h3').text.include?("Overall Statistics"))
end

Then('user should see text {string}') do |string|
  string = driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div/h3').text
  string.should == "Overall Statistics"
end
