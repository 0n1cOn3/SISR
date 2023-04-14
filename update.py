#!/usr/bin/env python3
import subprocess

# Prompt the user for confirmation before updating
user_input = input("Are you sure you want to update? (y/n): ")
if user_input.lower() != "y":
    print("Update cancelled.")
    exit()

# Run the update commands
try:
    subprocess.run(["clear"])
    subprocess.run(["cd", ".."])
    subprocess.run(["rm", "-rf", "Shodan-IP-Scan-Resulter/"])
    subprocess.run(["git", "clone", "https://github.com/0n1cOn3/Shodan-IP-Scan-Resulter"])
    subprocess.run(["cd", "Shodan-IP-Scan-Resulter/"])
    subprocess.run(["chmod", "+x", "megascript.sh"])
    subprocess.run(["clear"])
    subprocess.run(["figlet", "Update finished"])
    subprocess.run(["sleep", "3"])
    subprocess.run(["echo", "Script will be restarted now"])
    subprocess.run(["sleep", "5"])
    subprocess.run(["./megascript.sh"])
except subprocess.CalledProcessError:
    print("An error occurred during the update process. Script will not be restarted.")
