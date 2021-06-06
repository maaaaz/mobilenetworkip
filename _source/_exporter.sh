#!/usr/bin/env bash

echo "> Exporting IPv4"
find . -iname "*_IPv4.txt" -print0 | while read -d $'\0' entry
do
    ISP=$(awk -F_ '{print $1}' <<< "$entry" | sed 's/[./]//g')  
    
    echo "File: $entry"
    echo "ISP:  $ISP"
    
    cmd=$(nmap -n -sL -iL "$entry" | grep 'Nmap scan report for' | cut -f 5 -d ' ' | sed "s/$/;\"$ISP\"/g" >> ./France_mobile_IPv4.csv)
    echo "----------------"
done

echo
echo "> Exporting IPv6"
find . -iname "*_IPv6.txt" -print0 | while read -d $'\0' entry
do
    ISP=$(awk -F_ '{print $1}' <<< "$entry" | sed 's/[./]//g')  
    
    echo "File: $entry"
    echo "ISP:  $ISP"
    
    cmd=$(cat "$entry" | sed "s/$/;\"$ISP\"/g" >> ./France_mobile_IPv6.csv)
    echo "----------------"
done