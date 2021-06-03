Before do
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument('--start-maximized')
    $driver = Selenium::WebDriver.for :chrome, options: options 
    open_url("https://app.dev.picardata.com/login")
    sleep(5)
    email("shaad@shaadandassociates.com")
    pass("Aa12345!")
    sleep(10)
end

After do
    $driver.quit
end