def screenshot(name)
    $driver.save_screenshot("features/ss/#{name}.png")
    attach("features/ss/#{name}.png","image/png")
end

def open_url(url)
    $driver.navigate.to url
end

def email(username)
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[1]/div/div/div[1]/div[2]/input').send_keys username
end

def pass(password)
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[1]/div/div/div[1]/div[3]/input').send_keys password
    $driver.find_element(:xpath, '//*[@id="content-wrapper"]/div/div/div/div[3]/div/div/form/button').click
end
