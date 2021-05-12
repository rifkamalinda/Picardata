def screenshot(name)
    $driver.save_screenshot("ss/#{name}.png")
    attach("ss/#{name}.png","image/png")
end

def open_url(url)
    $driver.navigate.to url
end

def email(username)
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[1]/div/div/div[1]/div[2]/input').send_keys username
end

def pass(password)
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[1]/div/div/div[1]/div[3]/input').send_keys password
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[1]/div/div/div[1]/button').click
end

def waiting(int)
    $driver.manage.timeouts.implicit_wait = int
end

def homepage()
    home_page = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div/div[1]/div/div[1]/div/div[1]').text
    home_page.should == "Dashboard"
    sleep(5)
    screenshot("dashboard")
end

