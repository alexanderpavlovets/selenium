#!/bin/sh


#Versions
SELENIUM_STANDALONE_VERSION=3.8.1
SELENIUM_SUBDIR=$(echo "$SELENIUM_STANDALONE_VERSION" | cut -d"." -f-2)

#Downloading selenium-server-standalone
#curl https://selenium-release.storage.googleapis.com/$SELENIUM_SUBDIR/selenium-server-standalone-$SELENIUM_STANDALONE_VERSION.jar > ../selenium/selenium-standalone.jar


#Running selenium GRID
java -jar ../selenium/selenium-standalone.jar -role hub &
java -jar ../selenium/selenium-standalone.jar -role node -hub http://localhost:4444/grid/register &


#getting WINPID from all java processes, that were run by files with 'selenium' in name 
#jps -v | grep selenium-standalone | awk '{print $1}' 






#kill $(ps | grep sel.jar | grep -v grep | awk '{print $1}')

#Tricky: kill $(ps au | grep '[s]leep' | awk '{print $2}')
