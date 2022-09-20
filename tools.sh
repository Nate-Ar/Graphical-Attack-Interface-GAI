# Nmap tools
function scan() {
    full=$(ip route | grep default)
    array=($(echo $full | tr " " "\n"))
    IP=${array[2]}
    nmap -sn $IP
    exit
}
function udp() {
  echo "not functional"
  exit
}
function port() {
  echo "not functional"
  exit
}
function tcp() {
  echo "not functional"
  exit
}
function syn() {
  echo "not functional"
  exit
}
function target() {
  echo "not functional"
  exit
}
function mac() {
  echo "not functional"
  exit
}
function ip() {
  echo "not functional"
  exit
}
# Aircrack tools
function deauth() {
  sudo airmon-ng check kill
  name=($(sudo /usr/sbin/airmon-ng ))
  sudo airmon-ng start ${name[5]}
  name=($(sudo /usr/sbin/airmon-ng ))
  timeout 3s sudo airodump-ng ${name[5]}
}
function crack() {
  echo "not functional"
  exit
}