import sys
import os
import shodan
import argparse
from dotenv import load_dotenv

def search(query):
    try:
        results = api.search(query)
        with open("ip-temp.txt", "w") as f:
            for result in results["matches"]:
                ip = result["ip_str"]
                print("Found IP:", ip)
                f.write(ip + "\n")
    except shodan.exception.APIError as e:
        print("Error occurred during search:", e)
        sys.exit(1)

def scan(file):
    try:
        with open(file, "r") as f, open("results.txt", "w") as results_file:
            for i, line in enumerate(f):
                ip = line.strip()
                print("Scanning {} out of {} IPs: {}".format(i+1, len(f), ip))
                os.system("nmap -sS {} >> results.txt".format(ip))
    except FileNotFoundError:
        print("File not found:", file)
        sys.exit(1)
    except Exception as e:
        print("Error occurred during scanning:", e)
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
        search(args.query)
    elif args.command == "scan":
        scan(args.file)
