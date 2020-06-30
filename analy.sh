#!/bin/bash
file="all_ip.log"
grep accepted access.log | awk '{print $3}' | awk -F":" '{print $(NF-1)}' | sort -n | uniq -c | sort -nrk1 | awk '{print $1" "$2}' >$file
python3 analy_json.py
