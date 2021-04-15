require_relative '../support/screen_action.rb'
require_relative '../support/hook.rb'

RSpec::Expectations::ExpectationNotMetError

And('user should see text home screen') do 
  homepage("Dashboard")
  waiting(10)
end
  
When('user click on App Library') do
  element = $driver.find_element(:xpath, '/html/body/div/div/div/div[2]/div/div[2]/ul/li[2]/a')
  $driver.action.move_to(element).perform
  waiting(5)
  $driver.find_element(:xpath, '/html/body/div/div/div/div[2]/div/div[2]/ul/li[2]/a').click
  sleep(3)
  $driver.find_element(:xpath, '/html/body/div/div/div/div[2]/div/div[2]/ul/li[2]/div/ul/li[3]/a').click
  waiting(10)
end
  
Then('user should see Homepage') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]/div/div/div[1]/img').displayed?
  waiting(10)
end
  
Then('user click on Add to Picardata') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]/div/div/div[3]/button').click
  sleep(5)
  screenshot("hubspot-intg01")
  sleep(5)
  original_window = $driver.window_handle
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[7]/div/div/div[3]/a').click
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  window = wait.until { $driver.window_handle.length == 2 }
  $driver.window_handle.each do |handle|
    if handles != original_window
      $driver.switch_to.window_handle
      return
    end
  end
end
  
Then('user click on Integrate button') do
  #$driver.manage.timeouts.page_load = 50
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  window = wait.until { $driver.title == "Connecting Picardata Demo App to HubSpot" }
  waiting(5)
end