Ruby-Automation

How install geckodriver?

Go in your RubyMine, open Terminal and Enter:

- sudo apt install npm          
- sudo npm install geckodriver
- cd /tmp
- wget https://github.com/mozilla/geckodriver/releases/download/v0.11.1/geckodriver-v0.11.1-linux64.tar.gz
- tar -xvzf geckodriver-v0.11.1-linux64.tar.gz
- rm geckodriver-v0.11.1-linux64.tar.gz
- sudo mv geckodriver /usr/bin
- sudo chmod +x /usr/bin/geckodriver
///////////////////////////////////////////////////////

Windows:

1. Download https://rubyinstaller.org/downloads/
2. from 1 to 4 https://www.youtube.com/watch?v=BU9TdMqLAIg 
3. ChromeDriver - https://sites.google.com/a/chromium.org/chromedriver/downloads or
4. FireFox_geckodriver - https://github.com/mozilla/geckodriver/releases

-require 'rubygems'
-require 'selenium-webdriver'

-Selenium::WebDriver::Chrome.driver_path="C:\\Workplace\\chromedriver\\chromedriver.exe"
caps = Selenium::WebDriver::Remote::Capabilities.chrome(:chrome_options => {detach: true})
driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps

-Selenium::WebDriver::Firefox.driver_path="C:\\Workplace\\geckodriver\\geckodriver.exe"
caps = Selenium::WebDriver::Remote::Capabilities.firefox(:firefox_options => {detach: true})
driver = Selenium::WebDriver.for :firefox, desired_capabilities: caps

