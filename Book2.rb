require 'rubygems'
require 'selenium-webdriver'


Selenium::WebDriver::Chrome.driver_path="C:\\Workplace\\chromedriver\\chromedriver.exe"
caps = Selenium::WebDriver::Remote::Capabilities.chrome(:chrome_options => {detach: true})
driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps
driver.manage.window.maximize

driver.get "http://booksget.herokuapp.com/"
sleep (0.7)
#----------------------------------------------------------
# Login
driver.find_element(:link_text, 'Sign in').click
sleep (0.7)
driver.find_element(:id, 'user_email').send_keys'teslnorsedigital@gmail.com'
sleep (0.7)
driver.find_element(:id, 'user_password').send_keys'12345678'
sleep (0.7)
driver.find_element(:name, 'commit').send_keys :enter
sleep (1.7)
#----------------------------------------------------------
# Resgister
driver.find_element(:link_text, 'Books').click
sleep (0.7)
driver.find_element(:link_text, 'Back').click
sleep (0.7)
driver.find_element(:link_text, 'Locations').click
sleep (0.7)
driver.find_element(:link_text, 'Back').click
sleep (0.7)
driver.find_element(:link_text, 'Genres').click
sleep (0.7)
driver.find_element(:link_text, 'Back').click
sleep (0.7)
driver.find_element(:link_text, 'Authors').click
sleep (0.7)
driver.find_element(:link_text, 'Back').click
sleep (0.7)
driver.find_element(:link_text, 'IQspace').click
sleep (0.7)
#----------------------------------------------------------
#Update Profile
driver.find_element(:link_text, 'Profile').click
sleep (0.7)
driver.find_element(:link_text, 'Edit profile').click
sleep (0.7)
driver.find_element(:name, 'user[name]').clear
sleep (0.7)
driver.find_element(:name, 'user[name]').send_keys'Vova'
sleep (0.7)
driver.find_element(:name, 'user[surname]').clear
sleep (0.7)
driver.find_element(:name, 'user[surname]').send_keys'Tesl'
sleep (0.7)
driver.find_element(:name, 'user[phone]').clear
sleep (0.7)
driver.find_element(:name, 'user[phone]').send_keys'+380957714568'
sleep (0.7)
driver.find_element(:name, 'user[password]').clear
sleep (0.7)
driver.find_element(:name, 'user[password]').send_keys'12345678'
sleep (0.7)
driver.find_element(:name, 'user[password_confirmation]').clear
sleep (0.7)
driver.find_element(:name, 'user[password_confirmation]').send_keys'12345678'
sleep (0.7)
driver.find_element(:name, 'commit').click
sleep (1.7)
driver.find_element(:link_text, 'Sign out').click
sleep (0.7)
driver.switch_to().alert().accept
sleep (0.7)
#----------------------------------------------------------

#Forgot your password?
driver.find_element(:link_text, 'Sign in').click
sleep (0.7)
driver.find_element(:link_text, 'Forgot your password?').click
sleep (0.7)
driver.find_element(:name, 'teslnorsedigital@gmail.com').click
sleep (0.7)
driver.navigate.to "https://gmail.com"
sleep (0.7)

puts driver.manage.logs.get :browser
driver.quit
