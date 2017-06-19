# Reach Twitter homepage.

require 'selenium-webdriver'

# Module Selenium and going to the class WebDriver, created an object in the file.
# Chrome driver quits automatically
driver = Selenium::WebDriver.for :chrome

# Chrome loads twitter.com
driver.get 'https://www.bbc.co.uk'

# Inspect the search bar element and find its name.
search_bar = driver.find_element :id => "orb-search-q"

# Search for something
search_bar.send_keys "Local news"

# Set a 10s waiting period so we can see result.
wait = Selenium::WebDriver::Wait.new(timeout: 10)
wait.until {search_bar.send_keys}

# # # Enter search
# search_bar.submit

button = driver.find_element :data => ".2fvssx2jgg.0.0.0.0.1.0.3".click
# button.click()

wait = Selenium::WebDriver::Wait.new(timeout: 10)
wait.until {button.click}

# Select the News button
# driver.find_element(:id => "responsive-news").click


require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(timeout: 10)
driver.get 'https://www.bbc.co.uk'

your_account_login = driver.find_element(:id => 'idcta-link')
your_account_login.click

wait.until {/Sign out/.match(driver.page_source)}

username = driver.find_element(:id => 'username-input')
password = driver.find_element(:id => 'password-input')

username.send_keys "test"
password.send_keys "test"

wait.until {driver.page_source.match(/Sign out/)}