Before do
    options = Selenium::WebDriver::Chrome::Options.new
    #options.add_argument('--headless')
    $driver = Selenium::WebDriver.for :chrome, options: options 
    $driver.manage().window().setSize(1200, 800)
    $driver.manage().window().maximize()
    open_url("https://app.picardata.com/login")
    email("shaad@shaadandassociates.com ")
    pass("Aa12345!")
    waiting(10)
 end
 
 After do
    $driver.quit
 end