#!/bin/bash
while [[ "$selection" != "0" ]]; do
clear
echo "Shodan IP Scan Resulter Core Updater"
echo "==================================="
echo ""
echo "1 - Linux"
echo "2 - Termux"
echo "3 - macOS"
echo "4 - Windows (Not Supported yet)"
echo "==================================="
read -p "Enter selection: " selection
echo ""
case $selection in
1 )
  clear
  echo "Shodan IP Scan Resulter Core Updater"
  echo "==================================="
  echo "Install Requirements"
  echo "==================================="
  sudo apt install -y python3 python3-pip
  echo "Shodan IP Scan Resulter Core Updater"
  echo "==================================="
  echo "Finish"
  echo "==================================="
  sleep 2
  ./megascript
exit;;
2 )
  clear
  echo "Shodan IP Scan Resulter Core Updater"
  echo "==================================="
  echo "Install Requirements"
  echo "==================================="
  apk add --no-cache python3 py3-pip
  echo "Shodan IP Scan Resulter Core Updater"
  echo "==================================="
  echo "Finish"
  echo "==================================="
  sleep 2
  ./megascript
  exit;;
3 )
  clear
  echo "Shodan IP Scan Resulter Core Updater"
  echo "==================================="
  echo "Install Requirements"
  echo "==================================="
  brew install python3
  echo "Shodan IP Scan Resulter Core Updater"
  echo "==================================="
  echo "Finish"
  echo "==================================="
  sleep 2
  ./megascript
  exit;;
 esac
done
