Before do
    options = Selenium::WebDriver::Chrome::Options.new
    #options.add_argument('--headless')
    $driver = Selenium::WebDriver.for :chrome, options: options 
    open_url("https://app.picardata.com/login")
    #$driver.manage.window.maximize
    sleep(5)
    email("shaad@shaadandassociates.com ")
    pass("Aa12345!")
    sleep(10)
 end
 
 After do
    $driver.quit
 end