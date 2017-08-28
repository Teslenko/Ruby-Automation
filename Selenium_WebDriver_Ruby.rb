require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

driver.navigate.to "https://google.ru"
driver.find_element(:name, 'q').send_keys'watir class'
driver.find_element(:name, 'btnK').click
driver.quit
