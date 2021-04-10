Before do
   $driver = Selenium::WebDriver.for:chrome
   open_url("https://app.picardata.com/login")
   email("michael.sunhaki@emewlabs.com")
   password("Mikesunhaki1986")
end

After do
   $driver.quit
end