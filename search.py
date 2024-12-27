import sys
import os
import shodan
import argparse
from dotenv import load_dotenv
import subprocess

def search(api, query):
    try:
        results = api.search(query)
        with open("ip-temp.txt", "w") as f:
            for result in results["matches"]:
                ip = result["ip_str"]
                print(f"Found IP: {ip}")
                f.write(ip + "\n")
    except shodan.exception.APIError as e:
        print(f"Error occurred during search: {e}")
        sys.exit(1)

def scan(file):
    try:
        with open(file, "r") as f, open("results.txt", "w") as results_file:
            ip_list = f.readlines()
            for i, line in enumerate(ip_list):
                ip = line.strip()
                print(f"Scanning {i + 1} out of {len(ip_list)} IPs: {ip}")
                # Instead of using os.system, consider using subprocess.run for better control
                subprocess.run(["nmap", "-sS", ip], stdout=results_file, stderr=subprocess.PIPE)
    except FileNotFoundError:
        print(f"File not found: {file}")
        sys.exit(1)
    except Exception as e:
        print(f"Error occurred during scanning: {e}")
        sys.exit(1)

if __name__ == "__main__":
    load_dotenv()
    SHODAN_API_KEY = os.environ.get("API_KEY")

    if SHODAN_API_KEY is None:
        print("API key not found in environment variables.")
        sys.exit(1)

    parser = argparse.ArgumentParser()
    subparsers = parser.add_subparsers(dest="command", required=True)

    search_parser = subparsers.add_parser("search")
    search_parser.add_argument("query", type=str)

    scan_parser = subparsers.add_parser("scan")
    scan_parser.add_argument("file", type=str)

    args = parser.parse_args()

    api = shodan.Shodan(SHODAN_API_KEY)

    if args.command == "search":
        search(api, args.query)
    elif args.command == "scan":
        scan(args.file)
