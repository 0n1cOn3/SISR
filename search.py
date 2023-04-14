import sys
import os
import shodan
import argparse
from dotenv import load_dotenv

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

if args.command == "search":
    api = shodan.Shodan(SHODAN_API_KEY)
    try:
        results = api.search(args.query)
        with open("ip-temp.txt", "w") as f:
            for result in results["matches"]:
                ip = result["ip_str"]
                print("Found IP:", ip)
                f.write(ip + "\n")
    except shodan.exception.APIError as e:
        print("Error occurred:", e)
        sys.exit(1)
elif args.command == "scan":
    try:
        with open(args.file, "r") as f, open("results.txt", "w") as results_file:
            for i, line in enumerate(f):
                ip = line.strip()
                print("Scanning {} out of {} IPs: {}".format(i+1, len(f), ip))
                os.system("nmap -sS {} >> results.txt".format(ip))
    except FileNotFoundError:
        print("File not found:", args.file)
        sys.exit(1)
    except Exception as e:
        print("Error occurred:", e)
        sys.exit(1)
