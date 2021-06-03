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
  title_form()
  sleep(10)
end
  
Then('user fill form description') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[1]/div/div[3]/input').click
  sleep(3)
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[1]/div/div[3]/input').send_keys('only for testing')
  sleep(5)
end
  
Then('user fill question field') do
  $driver.find_element(:name, 'question').send_keys('Test01?')
  sleep(5)
end
  
Then('user select short answer type') do
  short_answer() 
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
  #$driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[1]/div/a').click
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[1]/div/div/div/div/nav/nav/ol/li[2]/a').click
  sleep(10)
end
  
Then('verify form already appears') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]').text.include?("TEST301")
  log("true")
  sleep(5)
end

And('user click share on the form selected') do
  form = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]/div[1]').text.include?('Share')
  if form == true
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]/div[1]/div/div/div[2]/div[1]/button').click
  end  
  sleep(5)
end

And('user input email address') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[4]/div/div/div/div/div[2]/div[3]/span/span[1]/input').send_keys('tesmike111@gmail.com')
  sleep(3)
end

And('user input subject') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[4]/div/div/div/div/div[2]/div[3]/span/span[2]/input').send_keys('Tes Share')
  sleep(3)
end

And('user input massage') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[4]/div/div/div/div/div[2]/div[3]/span/span[3]/input').send_keys('Tes Share Forms') 
  sleep(3)
end

And('user click on send button') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[4]/div/div/div/div/div[3]/button').click 
  sleep(5)
end

And('user click on link menus') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[4]/div/div/div/div/div[2]/div[2]/span[5]').click
  sleep(3)
end  

And('user click on copy button') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[4]/div/div/div/div/div[3]/button').click
  sleep(3)
end  

Then('verify text already copied') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[1]').text.include?('Success copy link to your clipboard')
  log("true")
  sleep(5)
end  

And('user click on open') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div/div[2]/div[5]/div[1]/div/div/div[2]/div[2]/a').click
  sleep(3)
end

And('user change title') do
  title_form()
  sleep(8)
end

And('user change question') do
  $driver.find_element(:name, 'question').send_keys(" edit")
  sleep(3)
end

And('user change answer type') do
  multiple_choice()
  sleep(3)
end

And('user change description') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[1]/div/div[3]/input').click
  sleep(3)
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[1]/div/div[3]/input').send_keys('update')
  sleep(3)
end

And('user add image') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[3]/div[1]/div/div[3]/button').click
  sleep(8)
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[2]/div[2]/button').click
  sleep(8)
  filename = 'groot.jpeg'
  file = File.join(Dir.pwd, filename)
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[2]/div[2]/div/div').send_keys file
  sleep(10)
end

Then('user select to back to menus') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[1]/div/a').click
  sleep(5)
end