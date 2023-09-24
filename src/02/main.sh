#!/bin/bash

#HOSTNAME = $HOSTNAME"
TIMEZONE=$(./timezone.sh)
#USER = $USER
OS=$(lsb_release -s -d)
DATE=$(date +"%d %b %Y %H:%M:%S")
UPTIME=$(uptime -p)
UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
IP=$(ifconfig enp0s3 | awk '/inet /{print $2}')
MASK=$(ifconfig enp0s3 | awk '/netmask/{print $4}')
GATEWAY=$(ip route | awk '/via/{print $3}')
RAM_TOTAL=$(free -m | grep "Mem:" | awk '{printf "%.3f GB\n", $2/1024}')
RAM_USED=$(free -m | grep "Mem:" | awk '{printf "%.3f GB\n", $3/1024}')
RAM_FREE=$(free -m | grep "Mem:" | awk '{printf "%.3f GB\n", $4/1024}')
SPACE_ROOT=$(df -BM / | grep "/$" | awk '{printf "%.2f MB\n", $2}')
SPACE_ROOT_USED=$(df -BM / | grep "/$" | awk '{printf "%.2f MB\n", $3}')
SPACE_ROOT_FREE=$(df -BM / | grep "/$" | awk '{printf "%.2f MB\n", $4}')


echo "HOSTNAME = $HOSTNAME"
echo "TIMEZONE = $TIMEZONE"
echo "USER = $USER"
echo "OS = $OS"
echo "DATE = $DATE"
echo "UPTIME = $UPTIME"
echo "UPTIME_SEC = $UPTIME_SEC"
echo "IP = $IP"
echo "MASK = $MASK"
echo "GATEWAY = $GATEWAY"
echo "RAM_TOTAL = $RAM_TOTAL"
echo "RAM_USED = $RAM_USED"
echo "RAM_FREE = $RAM_FREE"
echo "SPACE_ROOT = $SPACE_ROOT"
echo "SPACE_ROOT_USED = $SPACE_ROOT_USED"
echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE"

./write_to_file.sh "$HOSTNAME" "$TIMEZONE" "$USER" "$OS" "$DATE" "$UPTIME" "$UPTIME_SEC" "$IP" "$MASK" "$GATEWAY" "$RAM_TOTAL" "$RAM_USED" "$RAM_FREE" "$SPACE_ROOT" "$SPACE_ROOT_USED" "$SPACE_ROOT_FREE"
