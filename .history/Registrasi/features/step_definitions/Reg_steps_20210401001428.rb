require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome  

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
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[1]/input').send_keys 'tesmike111@gmail.com'
  sleep(3)
end

Then('user input password') do
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[2]/input').click
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[2]/input').send_keys 'Mike1234'
  sleep(3)
end

Then('user click on signup button') do
  driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[3]/button').click
  sleep(5)
end