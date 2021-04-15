require_relative '../support/screen_action.rb'
require_relative '../support/hook.rb'

RSpec::Expectations::ExpectationNotMetError

Given('user should see text home screen') do
  homepage("Dashboard")
  waiting(10)
end

Given('user click on Integrated App') do
  element = $driver.find_element(:xpath, '/html/body/div/div/div/div[2]/div/div[2]/ul/li[2]/a'
  $driver.action.move_to(element).perform
  waiting(5)
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[2]/div/div[2]/ul/li[2]/div/ul/li[1]/a').click
  sleep(3)
end

Then('user click on View Picardata on Google') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('user select Manage App') do
  pending # Write code here that turns the phrase above into concrete actions
end