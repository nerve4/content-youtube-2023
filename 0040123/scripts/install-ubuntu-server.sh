#!/bin/bash
# -------------------------------------------------------
# OSSEC - Ubuntu 18.x-22.x Server Installation
# License: MIT
# Maintainer: nerve4
# -------------------------------------------------------

# Run the installer

if grep -q -i "Ubuntu 18" /etc/issue; then
  echo "Install dependencies on Rhel 8.x"
  sudo apt-get update
  sudo apt-get install -y build-essential make zlib1g-dev libpcre2-dev libevent-dev libssl-dev
  echo "Install OSSEC-Server"
  wget -q -O - https://updates.atomicorp.com/installers/atomic | sudo bash
  sudo apt-get update
  sudo apt-get install -y ossec-hids-server
  clear
  echo "OSSEC-Server install has been completed. Enjoy."
elif grep -q -i "Ubuntu 2" /etc/issue; then
  echo "Install dependencies on Rhel 8.x"
  sudo apt update
  sudo apt install -y build-essential make zlib1g-dev libpcre2-dev libevent-dev libssl-dev
  echo "Install OSSEC-Server"
  wget -q -O - https://updates.atomicorp.com/installers/atomic | sudo bash
  sudo apt update
  sudo apt install -y ossec-hids-server
  clear
  echo "OSSEC-Server install has been completed. Enjoy."
else
  echo ":( no support, this is the end. Run!"
fi

exit 127