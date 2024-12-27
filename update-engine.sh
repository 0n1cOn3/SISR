#!/bin/bash

# Enable error handling
set -e

# Function to display a header
function display_header() {
  clear
  echo "Shodan IP Scan Resulter Core Updater"
  echo "==================================="
}

# Function to detect if we are running in WSL2
function is_wsl2() {
  if grep -q "Microsoft" /proc/version; then
    # Check if we're in WSL2
    if grep -q "WSL2" /proc/version; then
      return 0  # True (we're in WSL2)
    fi
  fi
  return 1  # False (not WSL2)
}

# Function to install requirements based on the OS selection
function install_requirements() {
  case $1 in
    1|2)  # Linux or Termux or WSL2 (Debian distros and a like)
      echo "Installing requirements for Linux..."
      if ! sudo apt install -y python3 python3-pip; then
        echo "Error: Failed to install Python3 and pip on Linux."
        return 1
      fi
      ;;
    3)  # macOS
      echo "Installing requirements for macOS..."
      # Check if Homebrew is installed
      if ! command -v brew &> /dev/null; then
        echo "Error: Homebrew is not installed. Please install Homebrew first."
        return 1
      fi
      echo "Homebrew found, proceeding to install Python3..."
      if ! brew install python3; then
        echo "Error: Failed to install Python3 with Homebrew."
        return 1
      fi
      ;;
    *)
      echo "Error: Unsupported selection!"
      return 1
      ;;
  esac
}

# Function to run SISR.sh (formerly megascript.sh)
function run_SISR() {
  echo "Running SISR.sh..."
  if ! ./SISR.sh; then
    echo "Error: Failed to execute SISR.sh."
    return 1
  fi
}

# Main menu loop
while true; do
  display_header
  echo -e "\n1 - Linux\n2 - Termux\n3 - macOS\n4 - WSL2 (Windows Subsystem for Linux 2)\n==================================="
  read -p "Enter selection: " selection

  # Exit condition if user selects "0"
  if [[ "$selection" == "0" ]]; then
    echo "Exiting..."
    break
  fi

  # Handle OS-specific actions
  case $selection in
    1|2|3)  # Linux, Termux, macOS
      display_header
      echo "Install Requirements"
      echo "==================================="
      if install_requirements $selection; then
        echo "Requirements installed successfully."
        echo "==================================="
        sleep 2
        if run_SISR; then
          echo "SISR.sh executed successfully."
          break
        else
          echo "Failed to execute SISR.sh. Exiting."
          break
        fi
      else
        echo "Failed to install requirements. Exiting."
        sleep 2
        break
      fi
      ;;
    4)  # WSL2 (Windows Subsystem for Linux 2)
      if is_wsl2; then
        display_header
        echo "Installing requirements for WSL2 (Linux environment)..."
        echo "==================================="
        if install_requirements 1; then
          echo "Requirements installed successfully."
          echo "==================================="
          sleep 2
          if run_SISR; then
            echo "SISR.sh executed successfully."
            break
          else
            echo "Failed to execute SISR.sh. Exiting."
            break
          fi
        else
          echo "Failed to install requirements. Exiting."
          sleep 2
          break
        fi
      else
        echo "Error: This script is not running in WSL2."
        break
      fi
      ;;
    *)
      echo "Invalid selection. Please try again."
      sleep 2
      ;;
  esac
done
