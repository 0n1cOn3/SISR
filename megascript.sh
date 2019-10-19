#!/bin/bash

clear
if [[ -s update.bin ]];then
	echo "All requirements are installed..."
else
echo 'Installing requirements...'

selection=
until [ "$election" = "0"]; do
	echo "1 - macOS"
	echo "2 - Linux/Emulator"
	echo "9 - Help"
	echo -n "Enter Selection: "
	read selection
   	 	echo ""
    	case $selection in
		1 ) "/usr/bin/ruby -e" "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		"brew install figlet"
		"brew install git"
		"brew install python3"
		pip3 install shodan
		sleep 2
		exit;;
		2 ) echo "Sudo will be used!" | sudo -S apt install figlet git python3 -y
		pip3 install shodan
		exit;;
		9 ) 
		echo "Please enter 1 or 2"
		echo ""
		echo "This menu is for updating Shodan-IP-Scan-Resulter"
		read -p " Press any Key ... ";;
     esac
done
		
selection=
until [ "$selection" = "0"]; do
	clear
	 echo "    Shodan IP Scan Resulter V0.1.1.    " > update.bin
	 echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
	 figlet Made by
	 figlet 0n1cOn3
	 echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
	  sleep 3
	  clear
	 echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
	 echo "!Automated Script!                 	   "
	 echo ""
     echo "Setup Menu:"
     echo ""
	 echo "Choose your current Operating System (OS)"
	 echo ""
     echo "1 - Linux & Emulators"
     echo "2 - MacOS"
     echo "3 - Windows (planned)"
	 echo "4 - Open Results Text Document"
	 echo "5 - Update Shodan-IP-Scan-Resulter"
     echo ""
     echo "0 - Exit Shodan-IP-Scan-Resulter"
     echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
     echo -n "Enter OS Selection:"
     echo "0 - Exit program"
     echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
     echo -n "Enter Selection:"
     read selection
     echo ""
     case $selection in
	     5 )
			 clear
			 apt install git -y
			 echo "Downloading Latest Files..."
			 git clone https://github.com/0n1c0n3/Shodan-IP-Scan-Resulter
			 if [[ -s Shodan-IP-Scan-Resulter/megascript.sh ]];then
			 cd Shodan-IP-Scan-Resulter
			 cp -r -f * .. > temp
			 cd ..
			 rm -rf  Shodan-IP-Scan-Resulter >> temp
			 rm temp
			 echo "Shodan-IP-Scan-Resulter Will Restart Now..."
			 sleep 3
			 chmod +x megascipt.sh && ./megascript.sh
		     fi
		 2 )
			 clear 
	 	echo      Shodan IP Scan Resulter V0.1.1
	 	echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
		 say Shodan IP Scan Resulter V0.1.1
		 		sleep 0.1
				echo "Made by 0n1cOn3"
				say made by 0n1cOn3
				sleep 0.1
				echo "using this script only for testing purposes!"
				say using this script only for testing purposes!
				sleep 0.1
				echo "Let's grab some IP's from Shodan.io"
				say Lets grab some IPs from Shodan.io
		echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
				sleep 0.2
				python search.py search apache >> ip.txt | say loading, please wait.
				clear
				sleep 0.2
	echo                "Shodan IP Scan Resulter V0.1.1"
	echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
	echo "IPs loaded, lets start scan! This will take really some time! Be Patience!"
	say IPs loaded, lets start scan! This will take really some time! Be Patience!
	echo "IPs Loaded! Continue Script..."
	sleep 1
	echo "This Script is running in background."
	sleep 1
	echo "Might take a while till the screen continues."
	echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
	sleep 0.5
	sudo -S python search.py scan ip-temp.txt
	clear
		sleep 0.5
echo                "Shodan IP Scan Resulter V0.1.1"
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
echo "Scan finished!"
say Scan finished!
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
sleep 2
clear
echo                "Shodan IP Scan Resulter V0.1.1"
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
echo "The results will be loaded into nano. Just a second please."
say The results will be loaded into nano. Just a second please..
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
sleep 1
nano results.txt
clear
echo                "Shodan IP Scan Resulter V0.1.1"
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
echo "  Github: https://github.com/0n1cOn3/ShodanIPScanResulter "
echo "  Whatsapp: https://cutt.ly/meaORzg "
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
              read -p " Press any Key ... ";;
         1 ) clear
echo                "Shodan IP Scan Resulter V0.1.1"
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
echo "     Made by 0n1cOn3 "
echo "     		Script only for "
echo "				test purposes "
echo "		  		!Automated Script!"
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
sleep 2
clear
echo                "Shodan IP Scan Resulter V0.1.1"
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
echo "Lets grab some IPs from Shodan.io"
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
				sleep 0.2
				python search.py search apache >> ip.txt
				clear
				sleep 0.2
	echo                "Shodan IP Scan Resulter V0.1.1"
	echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
	echo "IPs loaded, lets start scan! This will take really some time! Be Patience!"
	sleep 1
	echo "This Script is running in background."
	sleep 0.6
	echo "Might take a while till the screen continues."
	echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
	echo ""
	sleep 2
	
	sudo -S python search.py scan ip-temp.txt
	clear
		sleep 0.1
echo "               Shodan IP Scan Resulter V0.1.1"
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
echo "Scan finished!"
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
sleep 2
clear
echo                "Shodan IP Scan Resulter V0.1.1"
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
echo "The result will be loaded into nano. Just a second please."
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
sleep 1
nano results.txt
sleep 0.5
clear
echo                "Shodan IP Scan Resulter V0.1.1"
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
echo   "Github: https://github.com/0n1cOn3/ShodanIPScanResulter"
echo   "Whatsapp: https://cutt.ly/meaORzg "
echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
            read -p " Press any Key ... ";;
			exit;;
         3 ) echo "Windows is currently not yet supported. Stay tuned!"
                exit;;
		 4 ) echo "Open Results"
		 		nano results.txt
		 		exit;;
				0 ) exit;;
	            * ) echo "Please enter 1,2,3,4,5 or 0"
	        esac
	   done