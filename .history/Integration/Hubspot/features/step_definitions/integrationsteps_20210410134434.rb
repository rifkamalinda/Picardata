require_relative '../support/screen_action.rb'
require_relative '../support/hook.rb'

RSpec::Expectations::ExpectationNotMetError

And('user should see text home screen') do 
  homepage("Dashboard")
end
  
When('user click on App Library') do
  $driver.find_element(:xpath, '/html/body/div/div/div/div[2]/div/div[2]/ul/li[2]/a').click
  sleep(3)
  $driver.find_element(:xpath, '/html/body/div/div/div/div[2]/div/div[2]/ul/li[2]/div/ul/li[3]/a').click
  $driver.manage.timeouts.implicit_wait = 5
end
  
Then('user should see Homepage') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]/div/div/div[1]/img').displayed?
end
  
Then('user click on Add to Picardata') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]/div/div/div[3]/button').click
  $driver.manage.timeouts.implicit_wait = 5
end
  
Then('user click on Integrate button') do
  original_window = driver.window_handle
  assert(driver.windows_handles.length ==1, 'Expected one window')
  driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[7]/div/div/div[3]/a').click
  wait.until { driver.window_handles.length == 2 }
  driver.windows_handles.each do |handle|
    if handle != original_window
      driver.switch_to.window_handle
      break
    end
  end
end