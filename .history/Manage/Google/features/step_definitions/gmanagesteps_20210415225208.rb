require_relative '../support/screen_action.rb'
require_relative '../support/hook.rb'

RSpec::Expectations::ExpectationNotMetError

Given('user should see text home screen') do
  homepage("Dashboard")
  waiting(10)
end

Given('user click on Integrated App') do
  element = $driver.find_element(:xpath, '/html/body/div/div/div/div[2]/div/div[2]/ul/li[2]/a')
  $driver.action.move_to(element).perform
  waiting(10)
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[2]/div/div[2]/ul/li[2]/a').click
  sleep(3)
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[2]/div/div[2]/ul/li[2]/div/ul/li[1]/a').click
  sleep(10)
end

Then('user click on View Picardata on Google') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[3]/div/div/div/div[3]/button').click
  sleep(5)
end

Then('user select Manage App') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[1]/div[3]/a').click
  sleep(5)
end

Then('user click on create new user') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[3]/div[3]/div[1]/div[1]/div/div[2]/a').click
  sleep(3)
end

Then('user input first name') do
  $driver.find_element(:name, 'givenName').send_keys "Heri"
  sleep(3)
end

Then('user input last name') do
  $driver.find_element(:name, 'familyName').send_keys "Poter"
  sleep(3)
end

Then('user input email') do
  $driver.find_element(:name, 'primaryEmail').send_keys "heri@shaadandassociates.com"
  sleep(3)
end

Then('user input password') do
  $driver.find_element(:name, 'password').send_keys "Tes1234"
  sleep(3)
end

Then('user click on save button') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[3]/div[3]/div[2]/div/div/div[3]/button[2]').click
  sleep(3)
end