require_relative '../support/screen_action.rb'
require_relative '../support/hook.rb'

Given('open the website') do
  open_url "https://app.picardata.com/login"
  sleep(5)
end

When('user login correctly') do
  email "michael.sunhaki@emewlabs.com"
  pass "Mikesunhaki1986"
  sleep(20)
end

Then('user should see text {string}') do |string|
  string = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[1]/div/div/div/div/nav/nav/ol/li/a').text
  string.should == "Dashboard"
  sleep(5)
  screenshot("dashboard")
end
