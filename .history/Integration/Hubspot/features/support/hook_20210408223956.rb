Before (@Main) do
   $driver = Selenium::WebDriver.for:chrome
end

Before (@Second) do
   $driver = Selenium::WebDriver.for:chrome
   $driver.manage.timeouts.implicit_wait = 5
end

After (@Second)do
   $driver.manage.timeouts.implicit_wait = 5
end
After (@Main) do
   $driver.quit
end