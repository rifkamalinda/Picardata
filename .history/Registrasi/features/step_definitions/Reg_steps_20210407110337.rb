require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

options = Selenium::WebDriver::Chrome::Options.new
#options.add_argument('--headless')
driver = Selenium::WebDriver.for :chrome, options: options 
RSpec::Expectations::ExpectationNotMetError 

Given('open the website') do
  driver.navigate.to "https://app.picardata.com/login"
  sleep(3)
end

Then('user click on sign up') do
    driver.find_element(:xpath,'//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/div/div/a').click
    sleep(3)
end

Then('user input Email') do
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[1]/input').click
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[1]/input').send_keys 'tesmike1232@gmail.com'
  sleep(3)
end

Then('user input password') do
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[2]/input').click
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[2]/input').send_keys 'Mike4441'
  sleep(3)
end

Then('user click on signup button') do
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[3]/button').click
  sleep(10)
end

Then('user should see {string}') do |string|
  string = driver.find_element(:xpath,'//*[@id="content-wrapper"]/div/div/div/div[3]/div/h3').text
  string.should == "Welcome to Picardata!"
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[5]/div/button[2]').click
  sleep(10)
end

Then('user continue to complete profile and should see {string}') do |string|
  string = driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]').text
  string.should == "How Picardata works?"
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[5]/div/button[2]').click
end

Then('user fill the fields and should see {string}') do |string|
  string = driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/h3').text
  string.should == "Complete your Profile"
  driver.find_element(:name, 'name').send_keys "Mike"
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[4]/span/form/div[1]/div[2]/span[1]/div/select').click
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[4]/span/form/div[1]/div[2]/span[1]/div/select/option[4]').click
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[4]/span/form/div[1]/div[2]/span[2]/div/input').send_keys "QA"
  driver.find_element(:id, 'MazPhoneNumberInput-92_country_selector').click
  driver.find_element(:id, 'MazPhoneNumberInput-92_country_selector').send_keys "Indonesia"
  driver.find_element(:xpath, '//*[@id="MazPhoneNumberInput-92_phone_number"]').send_keys "85912345678"
  driver.find_element(:id, 'job').send_keys "EMEWLabs"
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[4]/span/form/div[1]/div[1]/span[4]/div/select').click
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[4]/span/form/div[1]/div[1]/span[4]/div/select/option[106]').click
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[4]/span/form/div[1]/div[2]/span[4]/div/select').click
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[4]/span/form/div[1]/div[2]/span[4]/div/select/option[106]').click
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[4]/span/form/div[2]/button[2]').click
end

Then('user should see Homepage') do
  pending # Write code here that turns the phrase above into concrete actions
end