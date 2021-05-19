require_relative '../support/screen_action.rb'
require_relative '../support/hook.rb'

Given('user should see text home screen') do
  sleep(10)
  homepage()
  sleep(10)
end
  
Given('user click on Forms menus') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[2]/div/div[2]/ul/li[3]').click
  sleep(5)  
end
  
Then('select on create menus') do
  $driver.find_element(:xpath, '//*[@id="list-tab"]/a/div[1]/a/p').click
  sleep(5)
end
  
Then('user change title Forms') do
  title = $driver.find_element(:name, 'name')
  title.click
  title.clear
  title.send_keys('TEST01')
  sleep(10)
end
  
Then('user fill form description') do
  $driver.find_element(:name, 'description').click
  sleep(3)
  $driver.find_element(:name, 'description').send_keys('only for testing')
  sleep(5)
end
  
Then('user fill question field') do
  $driver.find_element(:name, 'question').send_keys('Test01?')
  sleep(5)
end
  
Then('user select short answer type') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/button').click
  sleep(5)
  $driver.find_element(:name, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/div/a[1]').click
  sleep(5)
end
  
Then('user fill short answer field') do
  $driver.find_element(:name, 'text-desc').send_keys('test01')
  sleep(5)
  $driver.find_element(:name, 'input-answer').send_keys('yes, test01')
  sleep(5)
end
  
Then('user click on see preview form') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[3]/div[1]/div/div[1]/div/label/span').click    ###Required Button
  sleep(5)
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[3]/div[2]/span/a[1]').click
  sleep(5)
end
  
Then('user click on close preview') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div/div/nav/div/div[2]/a').click
  sleep(5)
end
  
Then('user select to back') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[1]/div/a').click
  sleep(10)
end
  
Then('verify form already appears') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]').text.include?("TEST01")
  log("true")
  sleep(5)
end