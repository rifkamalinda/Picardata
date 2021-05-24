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
    home_page = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[1]/div/div[1]/div').text.include?("Apps")
    if home_page == true
        return
    end 
    log("true")   
    sleep(5)
    #screenshot("dashboard")
end

def list_before()
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[3]/div[2]/div[2]/div/ul').size
end 

def list_after()
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[2]/div[3]/div[2]/div[2]/div/ul').size
end 

def confirm_deleted()
    if list_before() != list_after()
        return
    end
end  

def form_title()


def short_answer()
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/button').click
    sleep(5)
    sat = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/div')
    text_sat = sat.text.include?('Short answer')
    if text_sat == true
      sat.click
    end
end 

def para_graph()
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/button').click
    sleep(5)
    para = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/div')
    text_para = par.text.include?('Paragraph')
    if text_para == true
      para.click
    end
end

def multiple_choice()
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/button').click
    sleep(5)
    mucho = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/div')
    text_mucho = mucho.text.include?('Multiple Choice')
    if text_mucho == true
      mucho.click
    end
end

def check_boxes()
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/button').click
    sleep(5)
    check = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/div')
    text_check = check.text.include?('Checkboxes')
    if text_check == true
      check.click
    end
end

def drop_down()
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/button').click
    sleep(5)
    drop = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/div')
    text_drop = mucho.text.include?('Drop-down')
    if text_drop == true
      drop.click
    end
end

def file_upload()
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/button').click
    sleep(5)
    filup = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/div')
    text_filup = mucho.text.include?('File upload')
    if text_filup == true
      filup.click
    end
end

def linear_scale()
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/button').click
    sleep(5)
    lines = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/div')
    text_lines = mucho.text.include?('Linear scale')
    if text_lines == true
      lines.click
    end
end

def date_up()
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/button').click
    sleep(5)
    date = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/div')
    text_date = mucho.text.include?('Date')
    if text_date == true
      date.click
    end
end

def time_up()
    $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/button').click
    sleep(5)
    time = $driver.find_element(:xpath, '//*[@id="__layout"]/div/div[3]/div/div/div[2]/div[4]/form/div[2]/div/div/div[1]/div/div')
    text_time = mucho.text.include?('File upload')
    if text_time == true
      time.click
    end
end