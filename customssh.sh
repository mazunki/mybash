function s() {
  scp ~/.bashrc $1:/tmp/.bashrc_temp > /dev/null
  ssh -t $1 "clear; bash --rcfile /tmp/.bashrc_temp; rm /tmp/.bashrc_temp"
  clear
  echo $motd | sh
}