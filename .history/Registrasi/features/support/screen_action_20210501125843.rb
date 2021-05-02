def screenshot(name)
    $driver.save_screenshot("features/ss/#{name}.png")
    embed("features/ss/#{name}.png","image/png")
end

def open_url(url)
    $driver.navigate.to url
end

def email(username)
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[1]/div/div/div[1]/div[2]/input').send_keys username
end

def pass(userpass)
    $driver.find_element(:css, '[placeholder='Password'][type='password']').send_keys userpass
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[1]/div/div/div[1]/button').click
end

def waiting(int)
    $driver.manage.timeouts.implicit_wait = int
end