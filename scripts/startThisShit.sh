#!/bin/sh

#Running selenium GRID hub with default config
java -jar ../selenium/selenium-standalone.jar -role hub &

#Running selenium GRID Chrome node with:
# - chrome driver at ../drivers/chromedriver.exe
# - node config at ../selenium/nodeChromeConf.json
java -Dwebdriver.chrome.driver=../drivers/chromedriver.exe -jar ../selenium/selenium-standalone.jar -role node -nodeConfig ../selenium/nodeChromeConf.json &

#Running selenium GRID FF node with:
# - gecko driver at ../drivers/chromedriver.exe
# - node config at ../selenium/nodeFFConf.json
java -Dwebdriver.gecko.driver=../drivers/geckodriver.exe -jar ../selenium/selenium-standalone.jar -role node -nodeConfig ../selenium/nodeFFConf.json &




# Just note - how to set each driver: 
# -Dwebdriver.chrome.driver="chromedriver.exe" -Dwebdriver.ie.driver="IEDriverServer.exe" -Dwebdriver.gecko.driver="geckodriver.exe"