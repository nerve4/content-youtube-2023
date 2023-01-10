#!/bin/bash
# -------------------------------------------------------
# OSSEC - RHEL7.x-8.x Server Installation
# License: MIT
# Maintainer: nerve4
# -------------------------------------------------------

# Run the installer

if grep -q -i "release 7" /etc/redhat-release; then
  echo "Install dependencies on Rhel 7.x"
  sudo yum install -y zlib-devel pcre2-devel make gcc sqlite-devel openssl-devel libevent-devel systemd-devel wget
  echo "Install OSSEC-Server"
  wget -q -O - https://updates.atomicorp.com/installers/atomic | sudo bash
  sudo yum install -y ossec-hids-server
  clear
  echo "OSSEC-Server install has been completed. Enjoy."
elif grep -q -i "release 8" /etc/redhat-release; then
  echo "Install dependencies on Rhel 8.x"
  sudo dnf install -y zlib-devel pcre2-devel make gcc sqlite-devel openssl-devel libevent-devel systemd-devel wget
  echo "Install OSSEC-Server"
  wget -q -O - https://updates.atomicorp.com/installers/atomic | sudo bash
  sudo dnf install -y ossec-hids-server
  clear
  echo "OSSEC-Server install has been completed. Enjoy."
else
  echo ":( no support, this is the end. Run!"
fi

exit 127