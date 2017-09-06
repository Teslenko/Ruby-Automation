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
