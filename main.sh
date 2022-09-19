#!/bin/bash

function main_menu() {
    MAINMENU=$(whiptail --title "Main Menu" --fb --menu "Select Tool" 15 60 4 \
    "Aircrack" "Wifi tool"\
    "Nmap" "network sniffer" 3>&1 1>&2 2>&3)

    case $MAINMENU in
    Aircrack)
     echo "not set up yet"
     ;;
    Nmap)
       NMAP=$(whiptail --title "Nmap" --fb --menu "Select Attack" 15 60 4 \
      "Scan" "uses network card to scan for network nearby" 3>&1 1>&2 2>&3)
      case $NMAP in
      Scan)
        full=$(ip route | grep default)
        array=($(echo $full | tr " " "\n"))
        IP=${array[2]}
        nmap -sn $IP
        ;;
      esac
    ;;
  esac

}
main_menu