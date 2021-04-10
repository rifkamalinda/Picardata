Before do
   options = Selenium::WebDriver::Chrome::Options.new
   #options.add_argument('--headless')
   $driver = Selenium::WebDriver.for :chrome, options: options 
   open_url("https://app.picardata.com/login")
   email("michael.sunhaki@emewlabs.com")
   password("Mikesunhaki1986")
   waiting(10)
end

After do
   $driver.quit
end