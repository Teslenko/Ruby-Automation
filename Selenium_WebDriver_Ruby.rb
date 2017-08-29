require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

driver.navigate.to "https://google.ru"                                  - открыть ссылку
driver.find_element(:name, 'q').send_keys'watir class'                  - ввести значение
driver.find_element(:name, 'btnK').click                                - кликнуть по "name"
driver.action.move_to(driver.find_element(:link_text, "Почта")).perform - функция "hover"
sleep (3)                                                               - ожидание
driver.find_element(:link_text, 'css - Check tag classes with watir? - Stack Overflow').click
driver.manage.window.move_to(300,400)                                   - переместить окно браузера (координаты)
driver.quit                                                             - закрыть браузер
