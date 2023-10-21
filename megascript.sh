#!/bin/bash

while true; do
    clear
    echo "=============================="
    echo "Shodan IP Scan Resulter V1.0RC"
    echo "=============================="
    echo "Made with <3 by 0n1cOn3"
    echo "Script only for test purposes"
    echo "=============================="
    echo "Github: https://github.com/0n1cOn3/ShodanIPScanResulter"
    echo "=============================="

    echo "Setup Menu:"
    echo "1 - Search Apache"
    echo "2 - Scan IPs"
    echo "0 - Exit"

    read -p "Enter your choice: " selection
    echo ""

    case $selection in
        1)
            python search.py search apache >> ip.txt
            echo "Loading, please wait..."
            sleep 5
            ;;
        2)
            # Replace "sudo" if not necessary
            sudo -S python search.py scan ip-temp.txt
            ;;
        0)
            echo "Exiting..."
            exit
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac

    read -n 1 -s -r -p "Press any key to continue..."
done
