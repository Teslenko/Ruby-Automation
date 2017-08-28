require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

driver.navigate.to "https://google.ru"
driver.find_element(:name, 'q').send_keys'watir class'
driver.find_element(:name, 'btnK').click
sleep (3)
driver.find_element(:link_text, 'css - Check tag classes with watir? - Stack Overflow').click
driver.quit
