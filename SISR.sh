#!/bin/bash

# Trap Ctrl+C (SIGINT) to abort the script
trap 'echo "Aborted by user. Exit now... Goodbye!"' SIGINT

while true; do
    clear
    echo "=============================="
    echo "Shodan IP Scan Resulter V1.0.1"
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
            echo "Starting Apache search..."
            # Check if search.py exists before running
            if [[ -f "search.py" ]]; then
                python search.py search apache >> ip.txt
                if [[ $? -eq 0 ]]; then
                    echo "Apache search completed. Results saved to ip.txt."
                else
                    echo "Error occurred during Apache search."
                fi
            else
                echo "Error: search.py not found."
            fi
            echo "Loading, please wait..."
            sleep 2
            ;;
        2)
            echo "Starting IP scan..."
            # Ensure ip-temp.txt exists before scanning
            if [[ -f "ip-temp.txt" ]]; then
                sudo -S python search.py scan ip-temp.txt
                if [[ $? -eq 0 ]]; then
                    echo "IP scan completed successfully."
                else
                    echo "Error occurred during IP scan."
                fi
            else
                echo "Error: ip-temp.txt not found. Please generate it first."
            fi
            ;;
        0)
            echo "Exiting..."
            cleanup
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac

    read -n 1 -s -r -p "Press any key to continue..."
done
