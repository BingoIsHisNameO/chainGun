#!/bin/bash

# Author: Elliot Franklin
# Creation Date: 4/12/2025

# Font Helper (For me)

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White



# Tool Function to call in case statements

network_case () {

echo -e "0. Exit"
echo -e "\n"


echo -e "\033[1;35mNetwork Map (nmap)\033[1;35m"
echo -e "1. Basic Port Scan\n"
echo -e "2. Stealth Scan\n"
echo -e "3. TCP Scan\n"
echo -e "4. UDP Scan\n"
echo -e "5. Service / Version Scan\n"
echo -e "6. Port Specific Scan (Utilises normal scan)\n"
echo -e "7. Quick Host Scan (no ICMP)"
read net_choice
case $net_choice in 

0)
echo -e "Exiting"
exit 0
;;

1)
echo -e "NMAP Basic Scan Loading...\n"
echo -e "Input Target IP: "
read input
nmap $input
chose_network
;;

2)
echo -e "NMAP Stealth Scan Loading...\n"
echo -e "Input Target IP: "
read input
nmap -sS $input
chose_network
;;

3)
echo -e "NMAP TCP Scan Loading...\n"
echo -e "Input Target IP: "
read input
nmap -sT $input
chose_network
;;

4)
echo -e "NMAP UDP Scan Loading...\n"
echo -e "Input Target IP: "
read input
nmap -sU $input
chose_network
;;

5)
echo -e "NMAP Service Version Scan Loading...\n"
echo -e "Input Target IP: "
read input
nmap -sV $input
chose_network
;;

6)
echo -e "NMAP Port Specific Scan Loading...\n"
echo -e "Input Target IP: "
read input
echo -e "Input which port you would like to scan for on target:"
read port
nmap -p $port $input
chose_network
;;

7)
echo -e "NMAP Quick Scan (No ICMP) Loading\n"
echo -e "Input Target IP: "
read input
nmap -sn $input
chose_network
;;

esac

}

web_case () {

echo -e "- "

}


# Start of file and menu options
menu_options () {
echo -e "\033[1;36mWelcome to The All-In Penetration Testing Automator!\033[1;36m\n";


echo -e "-------------------------------\n"
echo -e "	      MENU\n"
echo -e "-------------------------------\n"
echo -e "Enter your testing of choice: \n"
echo -e "1 = Network Penetration Tools\n"
echo -e "2 = Web Penetration Tools\n"
echo -e "3 = DNS Tools"
echo -e "4 = OSINT Tools"
echo -e "0 = Exit"
read choice
case $choice in 

1)
echo -e "Network Penetration Testing"
echo -e "List of Tools: \n"
network_case
;;

2)
echo -e "Web Penetration Testing"
echo -e "List of Tools: \n "
;;

3)
echo -e "DNS Tools"
echo -e "List of Tools: \n"

4)
echo -e "OSINT Tools"
echo -e "List of Tools: \n"
0)
exit 0
;;

esac
}

chose_network () { 
echo -e "1)"
echo -e "Network Penetration Testing"
echo -e "List of Tools: \n"
network_case

}

menu_options
