require_relative '../support/screen_action.rb'

Given('open the website') do
  open_url "https://app.picardata.com/login"
  sleep(5)
end

When('user login correctly') do
  email "michael.sunhaki@emewlabs.com"
  pass "Mikesunhaki1986"
  sleep(10)
end

Then('user should see text {string}') do |string|
  string = $driver.find_element(:xpath, '//*[@id="content-wrapper"]/footer/div/div').text
  string.should == "Copyright © Picardata 2021"
  screenshot("dashboard")
end
