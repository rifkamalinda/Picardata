require_relative '../support/screen_action.rb'
require_relative '../support/hook.rb'

Given('open the website') do
  open_url "https://app.dev.picardata.com/login"
  sleep(5)
end

When('user login correctly') do
  email "shaad@shaadandassociates.com"
  sleep(3)
  pass "Aa12345!"
  sleep(10)
end

Then('user should see text {string}') do |string|
  string = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div/div[1]/div/div[1]/div/div[1]/div').text
  string.should == "Dashboard"
  log("true")
  sleep(5)
  screenshot("dashboard")
end