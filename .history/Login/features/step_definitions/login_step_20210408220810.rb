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
 
When('user click on App Library') do
  driver.find_element(:xpath, '//*[@id="__layout"]/div/div[2]/div/div[2]/ul/li[2]/a').click
  driver.find_element(:xpath, '//*[@id="__layout"]/div/div[2]/div/div[2]/ul/li[2]/div/ul/li[3]/a').click
  driver.manage.timeouts.implicit_wait = 5
end
  
Then('user should see Homepage') do
  driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]/div/div/div[1]/img').displayed?
end
  
Then('user click on Add to Picardata') do
  driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]/div/div/div[3]/button').click
  driver.manage.timeouts.implicit_wait = 5
end
  
Then('user click on Integrate button') do
  main_window = driver.window_handle
  driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[7]/div/div/div[3]/a').click
  driver.manage.timeouts.implicit_wait = 5
end