require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

options = Selenium::WebDriver::Chrome::Options.new
#options.add_argument('--headless')
driver = Selenium::WebDriver.for :chrome, options: options 
RSpec::Expectations::ExpectationNotMetError 

Given('open the website') do
  $driver.navigate.to "https://app.picardata.com/login"
  sleep(3)
end

Then('user click on sign up') do
    $driver.find_element(:xpath,'//*[@id="__layout"]/div/div[1]/div/div/div[3]/div/a').click
    sleep(3)
end

Then('user input Email') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div/div/div/div[1]/div[2]/input').send_keys 'terustees1238@gmail.com'
  sleep(3)
end

Then('user input password') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div/div/div/div[1]/div[3]/input').send_keys 'Te$1214!'
  sleep(3)
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div/div/div/div[1]/div[4]/input').send_keys 'Te$1214!'
  sleep(5)
end

Then('user click on Register button') do
  $driver.find_element(:xpath, '/html/body/div/div/div/div/div/div/div[1]/button').click
  sleep(10)
end

Then('user should see {string}') do |string|
  string = $driver.find_element(:xpath,'//*[@id="content-wrapper"]/div/div/div/div[3]/div[1]/div/h3').text
  string.should == "Welcome to Picardata!"
  $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[4]/div/button[2]').click
  sleep(10)
end

Then('user continue to complete profile and should see {string}') do |string|
  string = $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]').text
  string.should == "How Picardata works?"
  $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[5]/div/button[2]').click
  sleep(10)
end

Then('user fill the fields and should see {string}') do |string|
  string = $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div[1]/div/div/div').text
  string.should == "Complete your Profile"
  $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div[2]/span/form/div/div[2]/span[1]/input').send_keys "Dilan"
  sleep(2)
  $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div[2]/span/form/div/div[3]/span[1]/select').click
  sleep(2)
  $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div[2]/span/form/div/div[3]/span[1]/select/option[3]').click
  sleep(2)
  $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div[2]/span/form/div/div[3]/span[2]/input').send_keys "QA"
  sleep(50)
  $driver.find_element(:id, 'MazPhoneNumberInput-46_country_selector').click
  sleep(5)
  idn = $driver.find_element(:id, 'MazPhoneNumberInput-25_country_selector')
  idn.click
  sleep(2)
  $driver.find_element(:id, 'MazPhoneNumberInput-25_phone_number').send_keys "85912345678"
  sleep(2)
  $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div[2]/span/form/div/div[3]/span[3]/input').send_keys "EMEWLabs"
  sleep(2)
  $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div[2]/span/form/div/div[2]/span[4]/input').send_keys "Yogyakarta"
  sleep(2)
  $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div[2]/span/form/div/div[3]/span[4]/input').send_keys "Jogja"
  sleep(2)
  $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[4]/span/form/div[2]/button[2]').click
end

Then('user should see Homepage') do
  al = $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[2]/div/div[2]/div[1]/div[1]/div/div').text
  al.should == "App Library"
  sleep(2)
  $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/a').click
  sleep(10)
end