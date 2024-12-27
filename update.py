import os
import shutil
import subprocess

# Prompt the user for confirmation before updating
user_input = input("Are you sure you want to update? (y/n): ")
if user_input.lower() != "y":
    print("Update cancelled.")
    exit()

# Define the repo URL and directory
repo_url = "https://github.com/0n1cOn3/Shodan-IP-Scan-Resulter"
repo_dir = "Shodan-IP-Scan-Resulter"

# Run the update commands
try:
    subprocess.run(["clear"], check=True)
    os.chdir("..")
    if os.path.exists(repo_dir):
        shutil.rmtree(repo_dir)
    subprocess.run(["git", "clone", repo_url], check=True)
    os.chdir(repo_dir)
    subprocess.run(["chmod", "+x", "megascript.sh"], check=True)
    subprocess.run(["clear"], check=True)
    subprocess.run(["figlet", "Update finished"], check=True)
    subprocess.run(["sleep", "3"], check=True)
    subprocess.run(["echo", "Script will be restarted now"], check=True)
    subprocess.run(["sleep", "5"], check=True)
    subprocess.run(["./megascript.sh"], check=True)
    
except subprocess.CalledProcessError as e:
    print(f"An error occurred during the update process: {e}. Script will not be restarted.")
except Exception as e:
    print(f"Unexpected error: {e}. Script will not be restarted.")
