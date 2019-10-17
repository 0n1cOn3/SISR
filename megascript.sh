#!/bin/bash

clear
echo                Shodan IP Scan Resulter V0.1.1
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
echo      Made by 0n1cOn3
echo      		Script only for
echo				test purposes
echo      		!Automated Script!
echo ""
selection=
until [ "$selection" = "0"]; do
	clear
	 echo "               Shodan IP Scan Resulter V0.1.1                 "
	 echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
	 echo "    Made by 0n1cOn3                                         "
	 echo "     	Script only for                                    "
	 echo "				   test purposes                   "
	 echo "     		        !Automated Script!                 "
	 echo ""
     echo "Setup Menu:"
     echo ""
	 echo "Choose your current Operating System (OS)"
	 echo ""
     echo "1 - Linux"
     echo "2 - MacOS"
     echo "3 - Windows (planned)"
	 echo ""
	 echo "4 - Open Results Text Document"
     echo ""
     echo "0 - Exit program"
     echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
     echo -n "Enter Selection:"
     read selection
     echo ""
     case $selection in
         2 ) say Shodan IP Scan Resulter V0.1.1
		 		sleep 0.1
				say made by 0n1cOn3
				sleep 0.1
				say using this script only for testing environment!
				sleep 0.1
				say Lets grab some IPs from Shodan.io
				sleep 0.5
#				echo "PASSWORD" |python search.py search apache >> ip.txt | say loading, please wait
				python search.py search apache >> ip.txt | say loading, please wait.
				clear
				sleep 0.4
	echo                Shodan IP Scan Resulter V0.1.1
	echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
	say IPs loaded, lets start scan! This will take really some time! Be Patience!
	echo IPs Loaded! Continue Script...
	sleep 1
	echo This Script is running in background.
	sleep 1
	echo Might take a while till the screen continues.
	sleep 1
	sudo -S python search.py scan ip-temp.txt
	clear
		sleep 0.1
echo                Shodan IP Scan Resulter V0.1.1
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
echo Scan finished!
say Scan finished!
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
sleep 2
clear
echo                Shodan IP Scan Resulter V0.1.1
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
echo The result will be loaded into nano. Just a second please.
say The result will be loaded into nano. Just a second please..
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
sleep 1
nano results.txt
clear
echo                Shodan IP Scan Resulter V0.1.1
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
echo   Github: https://github.com/0n1cOn3/ShodanIPScanResulter
echo   Whatsapp: https://cutt.ly/meaORzg 
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
              read -p " Press any Key ... ";;
         1 ) echo                Shodan IP Scan Resulter V0.1.1
echo                Shodan IP Scan Resulter V0.1.1
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
echo   Github: https://github.com/0n1cOn3/ShodanIPScanResulter
echo   Whatsapp: https://cutt.ly/meaORzg 
echo                   " Press any Key ... "
echo ∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞
            exit;;
         3 ) echo "Windows is currently not yet supported. Stay tuned!"
                exit;;
		 4 ) echo "nano results.txt"
		 		exit;;
				0 ) exit;;
         * ) echo "Please enter 1,2,3,4 or 0"
     esac
done
