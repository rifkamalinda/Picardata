require_relative '../support/screen_action.rb'
require_relative '../support/hook.rb'

RSpec::Expectations::ExpectationNotMetError

And('user should see text {string}') do |string|
  homepage("Dashboard")
end
  
When('user click on App Library') do
  driver.find_element(:xpath, '/html/body/div/div/div/nav/div/ul[1]/li[3]/a').click
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
  windows = driver.window_handles
  windows.each do |window|
    if main_window != window
      new_window = window
    end
  end
end
driver.switch_to.window(main_window)
driver.title.should_not =~ /New Window/
driver.switch_to.window(new_window)
driver.title.should =~ /New Window/