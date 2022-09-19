function scan() {
    full=$(ip route | grep default)
    array=($(echo $full | tr " " "\n"))
    IP=${array[2]}
    nmap -sn $IP
}
