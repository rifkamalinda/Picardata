require_relative '../support/screen_action.rb'
require_relative '../support/hook.rb'

RSpec::Expectations::ExpectationNotMetError

Given('user should see text home screen') do
  homepage()
  sleep(10)
end

Given('user click on Integrated App') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[2]/div/div[2]/ul/li[2]/a').click
  sleep(10)
  $driver.find_element(:xpath, '//*[@id="list-tab"]/a/div[1]/a').click
  sleep(10)
end

Then('user click on View Picardata on Google') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/div[4]/div/div/div/div/div[3]/button').click
  sleep(5)
end

Then('user select Manage App') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[1]/div[3]/a').click
  sleep(5)
end

Then('user click on create new user') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[3]/div[1]/div[1]/div/div[2]/a').click
  sleep(3)
end

Then('user input first name') do
  $driver.find_element(:name, 'givenName').send_keys "Herman"
  sleep(3)
end

Then('user input last name') do
  $driver.find_element(:name, 'familyName').send_keys "Poter"
  sleep(3)
end

Then('user input email') do
  $driver.find_element(:name, 'primaryEmail').send_keys "herman@shaadandassociates.com"
  sleep(3)
end

Then('user input password') do
  $driver.find_element(:name, 'password').send_keys "Tes$2345"
  sleep(3)
end

Then('user click on save button') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/button[2]').click
  sleep(3)
end

Then('user click on create new group') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[4]/div[1]/div[1]/div/div[2]/a').click
  sleep(3)
end

Then('user input group name') do
  $driver.find_element(:name, 'name').send_keys "testing team"
  sleep(3)
end

Then('user input email group') do
  $driver.find_element(:name, 'email').send_keys "testing@shaadandassociates.com"
  sleep(3)
end

Then('user input description') do
  des = $driver.find_element(:name, 'description')
  $driver.execute_script("arguments[0].value='This is for testing';", des)
  sleep(3)
end

Then('user click on save') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[4]/div[2]/div/div/div[3]/button[2]').click
  sleep(5)
end

Then('new group should be appears') do
  title = $driver.find_element(:class, 'text-dark').text
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until { $driver.find_element(:class, 'text-dark') }
  $driver.title.include?("testing@shaadandassociates.com")
end

Then('user click on add user') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('user click on add on selected user') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('click on close button') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('click on View') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('user click on selected user') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('user click on delete') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('verify user already deleted') do
  pending # Write code here that turns the phrase above into concrete actions
end