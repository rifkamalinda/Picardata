require_relative '../support/screen_action.rb'

Given('open the website') do
  open_url "https://app.picardata.com/login"
  sleep(5)
end

When('user login correctly') do
  email "michael.sunhaki@emewlabs.com"
  pass "Mikesunhaki1986"
  driver.manage.timeouts.implicit_wait = 20
end

Then('user should see text {string}') do |string|
  string = $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div/h3').text
  string.should == "Overall Statistics"
  sleep(5)
  screenshot("dashboard")
end
