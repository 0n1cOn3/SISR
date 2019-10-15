#!/bin/bash

#Adding To bin
cp $0 /usr/bin/shodan-scan
cp search.py /usr/bin
chmod +x /usr/bin/shodan-scan
#Now You Can Type 
#   shodan-scan apache
#To scan Apache shodan results


clear
echo                Shodan IP Scan Resulter V0.1
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
echo      Made by 0n1cOn3
echo      		Script only for
echo					test purposes
echo      		!Automated Script!
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
say Shodan IP Scan Resulter V0.1
sleep 0.1
say made by 0n1cOn3
sleep 0.1
say using this script only for testing environment!
sleep 0.1
say Lets grab some IPs from Shodan.io
sleep 0.5
say loading, please wait.
python3 search.py search $1
clear
sleep 0.4
echo                Shodan IP Scan Resulter V0.1
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
say IPs loaded, lets start scan! This will take really some time! Be Patience!
echo IPs Loaded! Continue Script...
sleep 1
echo This Script is running in background.
sleep 1
echo Might take a while till the screen continues.
sleep 1
sudo python3 search.py scan ip-temp.txt
clear
sleep 0.1
echo                Shodan IP Scan Resulter V0.1
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
echo Scan finished!
say Scan finished!
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
sleep 2
clear
echo                Shodan IP Scan Resulter V0.1
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
echo The result will be loaded into nano. Just a second please.
say The result will be loaded into nano. Just a second please..
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
sleep 2
nano results.txt
clear
echo                Shodan IP Scan Resulter V0.1
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
echo   Github: https://github.com/0n1cOn3/ShodanIPScanResulter
echo   Whatsapp: https://cutt.ly/meaORzg 
echo           "Drücken Sie eine beliebige Taste ... "
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
stty -icanon -echo min 1 time 0
dd bs=1 count=1 >/dev/null 2>&1
stty stty -g
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
clear
