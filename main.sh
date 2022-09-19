#!/bin/bash
source ./tools.sh
#first menu that give options for the tool you can use
function main_menu() {
#  makes the menu and options
    MAINMENU=$(whiptail --title "Main Menu" --fb --menu "Select Tool" 15 60 4 \
    "Aircrack" "Wifi tool"\
    "Nmap" "network sniffer" 3>&1 1>&2 2>&3)
# sees what option is selected and does accordingly
    case $MAINMENU in
    Aircrack)
      aircrack
     ;;
    Nmap)
      nmap_menu
    ;;
  esac

}
function nmap_menu() {
  NMAP=$(whiptail --title "Nmap" --fb --menu "Select Attack" 15 60 4 \
      "Scan" "scans network for all devices" \
      "UDP-Scan" "Sends UDP packet to target" \
      "Port-Scan" "Probes for open ports of a target" \
      "TCP-Scan" "" \
      "SYN-Scan" ""\
      "Target-Scan" "" \
      "Mac-Address" "Gets mac address of current machine" \
      "ipv4-Address" "Gets ipv4 address of current machine" \
      "Back" "go back a menu " 3>&1 1>&2 2>&3)
      case $NMAP in
      Scan)scan;;
      UDP-Scan)echo "not set up yet";;
      Port-Scan)echo "not set up yet";;
      TCP-Scan)echo "not set up yet";;
      SYN-Scan)echo "not set up yet";;
      Target-Scan)echo "not set up yet";;
      Mac-Address)echo "not set up yet";;
      ipv4-Address)echo "not set up yet";;
      Back)main_menu;;
      esac
}
function aircrack() {
    echo "not set up yet"
}

main_menu