require 'selenium-webdriver'

# Module Selenium and going to the class WebDriver, created an object in the file.
# Chrome driver quits automatically
driver = Selenium::WebDriver.for :chrome

# Chrome loads google.co.uk
driver.get 'http://www.google.co.uk'

# Inspect the search bar element and find its name.
search_bar = driver.find_element :name => "q"

# Search for something
search_bar.send_keys "Cheese"

# Enter search
search_bar.submit

# Set a 10s waiting period so we can see result.
wait = Selenium::WebDriver::Wait.new(timeout: 10)
wait.until {search_bar.submit}
# wait

# Click search
submit_search = driver.find_element :name => ""


# To make it quit automatically run driver.quit
# driver = Selenium::WebDriver.for :firefox
# driver.get 'http://www.google.co.uk'
# driver.quit

