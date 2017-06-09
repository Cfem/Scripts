#!/bin/bash
echo 'Please enter the filepath of the file exported from a nmap scan.'
read filepath
echo -e 'Specify which one do you want. Use a number'
cat $filepath | grep "MAC Address" | awk -F " " '{print $3}' | awk '{ print FNR " " $0 }'
read m
curl http://api.macvendors.com/`cat $filepath | grep "MAC Address" | awk -F " " '{print $3}' | sed ''$m'q;d'`
