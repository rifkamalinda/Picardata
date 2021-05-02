Before do
    #$driver = Selenium::WebDriver.for:chrome
    options = Selenium::WebDriver::Chrome::Options.new
    #options.add_argument('--headless')
    options.add_argument('--no-sandbbox')
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument('--start-maximized')
    $driver = Selenium::WebDriver.for :chrome, options: options 
end

After do
   $driver.quit
end