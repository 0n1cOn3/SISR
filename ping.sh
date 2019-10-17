#!/bin/bash
cat ip.txt | while read line
do
sudo -A --askpass nmap -sS $line
done
