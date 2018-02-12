require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

driver.navigate.to "https://google.ru"                                  #- открыть ссылку
driver.find_element(:name, 'q').send_keys'watir class'                  #- ввести значение
driver.find_element(:name, 'btnK').click                                #- кликнуть по "name"
driver.find_element(:css, '.O0WRkf').click                              #- кликнуть по Css локатору
driver.action.move_to(driver.find_element(:link_text, "Почта")).perform #- функция "hover"
driver.switch_to().alert().accept                                       #- перекллючится на Алерт и нажать Ок
sleep (3)                                                               #- ожидание
driver.find_element(:link_text, 'css - Check tag classes with watir? - Stack Overflow').click
driver.manage.window.move_to(300,400)                                   #- переместить окно браузера (координаты)
driver.navigate.back                                                    #- вернуться назад   
driver.manage.window.maximize                                           #- Сделать браузер на все окно
driver.quit                                                             #- закрыть браузер

---------------Загрузить изображение в окно-----------------
element = driver.find_element(:name, 'candidate[image]')                #- Локатор "выбрать изображение"
element.send_keys("C:\\Users\\user\\Pictures\\RAV.png")                 #- Указываем путь фото
driver.find_element(:name, "commit").click                              #- Нажимаем кнопку "Загрузить (Создать)" Пример из СтакОверфлов -https://stackoverflow.com/questions/30352369/uploading-files-using-ruby-selenium
------------------------------------------------------------
