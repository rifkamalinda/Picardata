def screenshot(name)
    $driver.save_screenshot("ss/#{name}.png")
    embed("ss/#{name}.png","image/png")
end

def open_url(url)
    $driver.navigate.to url
end

def email(username)
    $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[1]/input').send_keys username
end

def pass(password)
    $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[2]/input').send_keys password
    $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/button').click
end

def waiting(int)
    $driver.manage.timeouts.implicit_wait = int
end

def homepage(string)
    string = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[1]/div/div/div/div/nav/nav/ol/li/a').text
    string.should == "Dashboard"
    sleep(5)
    screenshot("dashboard")
end
