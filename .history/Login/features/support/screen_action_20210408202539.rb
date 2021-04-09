def screenshot(name)
    $driver.save_screenshot("ss/#{name}.png")
    embed("ss/#{name}.png","image/png")
end

def open_url(url)
    $driver.navigate.to url
end

def login_as(username, password)
    $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[1]/input').send_keys (username)  ###format "abc"
    $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/div[2]/input').send_keys (password)  ###format "abc"
    $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/button').click
end
