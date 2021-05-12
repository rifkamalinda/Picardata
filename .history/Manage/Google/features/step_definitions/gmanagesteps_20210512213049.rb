require_relative '../support/screen_action.rb'
require_relative '../support/hook.rb'

RSpec::Expectations::ExpectationNotMetError

Given('user should see text home screen') do
  sleep(10)
  homepage()
  sleep(10)
end

Given('user click on Integrated App') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[2]/div/div[2]/ul/li[2]/a').click
  sleep(10)
  $driver.find_element(:xpath, '//*[@id="list-tab"]/a/div[1]/a').click
  sleep(5)
end

Then('user click on View Picardata on Google') do
  menus = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[3]/div/div[2]/div[4]').text.include?("Google")
  if menus == true
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[3]/div/div[2]/div[4]/div[1]/div/div/div/div/div[3]/button').click  
  elsif menus == false
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[5]/div/div/span[2]').click
    return menus
  end
  #sleep(3)  
  #$driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/div/div/div/div/div/div[3]/button').click
  sleep(5)
end

Then('user select Manage App') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[1]/div[4]/a').click
  sleep(10)
end

Then('user click on create new user') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[3]/div[1]/div[1]/div/div[2]/a').click
  sleep(3)
end

Then('user input first name') do
  $driver.find_element(:name, 'givenName').send_keys "Herman"
  sleep(3)
end

Then('user input last name') do
  $driver.find_element(:name, 'familyName').send_keys "Poter"
  sleep(3)
end

Then('user input email') do
  $driver.find_element(:name, 'primaryEmail').send_keys "herman@shaadandassociates.com"
  sleep(3)
end

Then('user input password') do
  $driver.find_element(:name, 'password').send_keys "Tes$2345"
  sleep(3)
end

Then('user click on save button') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/button[2]').click
  sleep(3)
end

Then('user click on create new group') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[4]/div[1]/div[1]/div/div[2]/a').click
  sleep(3)
end

Then('user input group name') do
  $driver.find_element(:name, 'name').send_keys "testing team"
  sleep(3)
end

Then('user input email group') do
  $driver.find_element(:name, 'email').send_keys "testing@shaadandassociates.com"
  sleep(3)
end

Then('user input description') do
  des = $driver.find_element(:name, 'description')
  $driver.execute_script("arguments[0].value='This is for testing';", des)
  sleep(3)
end

Then('user click on save') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[4]/div[2]/div/div/div[3]/button[2]').click
  sleep(5)
end

Then('new group should be appears') do
  title = $driver.find_element(:class, 'text-dark').text
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until { $driver.find_element(:class, 'text-dark') }
  $driver.title.include?("testing@shaadandassociates.com")
end

And('user click on add user') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[4]/div[1]/div[2]/div/ul/li[1]/div/div[2]/a[2]').click
  sleep(3)
end

And('user click on add on selected user') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[4]/div[3]/div/div/div[2]/div/di/div/ul/li[1]/div/div[2]/a').click
  sleep(3)
end

And('click on close button') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[4]/div[3]/div/div/div[3]/button').click
  sleep(3)
end

And('click on View') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[4]/div[1]/div[2]/div/ul/li[4]/div/div[2]/a[1]').click
  sleep(3)
end

Then('Verify user already added') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[4]/div[2]/div/div/div[2]/div/div[4]/table').text.include?("Little Groot")
  log("true")
  sleep(3)
end

Then('user click remove on selected user') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[4]/div[3]/div/div/div[2]/div/di/div/ul/li[5]/div/div[2]/a').click
  sleep(5)
end

Then('user click on selected user') do
  sleep(10)
  list_before()
  sleep(3)
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[3]/div[2]/div[2]/div/ul/li[3]/a').click
  sleep(5)
end

Then('user click on delete') do
  $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/button[2]').click
  sleep(3)
end

Then('verify user already deleted') do
  confirm_deleted()
  sleep(5)
end