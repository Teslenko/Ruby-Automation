Ruby-Automation

You can read https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings

How install geckodriver?

Go in your RubyMine, open Terminal and Enter:

- -go to https://gorails.com/setup/ ;
- -select need you version Ubuntu or Windiws and install some dependencies for Ruby; 
- -Select "From source" Tab and install;  

  Next:
  
- sudo apt install npm          
- sudo npm install geckodriver *or*

- cd /tmp
- wget https://github.com/mozilla/geckodriver/releases/download/v0.11.1/geckodriver-v0.11.1-linux64.tar.gz
- tar -xvzf geckodriver-v0.11.1-linux64.tar.gz
- rm geckodriver-v0.11.1-linux64.tar.gz
- sudo mv geckodriver /usr/bin
- sudo chmod +x /usr/bin/geckodriver
///////////////////////////////////////////////////////

Windows: 
- If you have programm bash on windows - enter in "bash terminal" *cd /mnt/c* - this is Navigate to the C: drive on Windows. Do this every time you open the Linux console.

1. Download https://rubyinstaller.org/downloads/
2. Watch from 1 to 4 https://www.youtube.com/watch?v=BU9TdMqLAIg 
3. ChromeDriver - https://sites.google.com/a/chromium.org/chromedriver/downloads or
4. FireFox_geckodriver - https://github.com/mozilla/geckodriver/releases

-require 'rubygems'
-require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path="C:\\Workplace\\chromedriver\\chromedriver.exe"
caps = Selenium::WebDriver::Remote::Capabilities.chrome(:chrome_options => {detach: true})
driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps

Selenium::WebDriver::Firefox.driver_path="C:\\Workplace\\geckodriver\\geckodriver.exe"
driver = Selenium::WebDriver.for :firefox

- in Terminal RubyMine:

- ruby --version

- gem install selenium-webdriver
