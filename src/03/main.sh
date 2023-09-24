#!/bin/bash

BG_N=$1
T_N=$2
BG_V=$3
T_V=$4
END='\033[0m'

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


echo -e "${BG_N}${T_N}HOSTNAME${END} = ${BG_V}${T_V}$HOSTNAME${END}"
echo -e "${BG_N}${T_N}TIMEZONE${END} = ${BG_V}${T_V}$TIMEZONE${END}"
echo -e "${BG_N}${T_N}USER${END} = ${BG_V}${T_V}$USER${END}"
echo -e "${BG_N}${T_N}OS${END} = ${BG_V}${T_V}$OS${END}"
echo -e "${BG_N}${T_N}DATE${END} = ${BG_V}${T_V}$DATE${END}"
echo -e "${BG_N}${T_N}UPTIME${END} = ${BG_V}${T_V}$UPTIME${END}"
echo -e "${BG_N}${T_N}UPTIME_SEC${END} = ${BG_V}${T_V}$UPTIME_SEC${END}"
echo -e "${BG_N}${T_N}IP${END} = ${BG_V}${T_V}$IP${END}"
echo -e "${BG_N}${T_N}MASK${END} = ${BG_V}${T_V}$MASK${END}"
echo -e "${BG_N}${T_N}GATEWAY${END} = ${BG_V}${T_V}$GATEWAY${END}"
echo -e "${BG_N}${T_N}RAM_TOTAL${END} = ${BG_V}${T_V}$RAM_TOTAL${END}"
echo -e "${BG_N}${T_N}RAM_USED${END} = ${BG_V}${T_V}$RAM_USED${END}"
echo -e "${BG_N}${T_N}RAM_FREE${END} = ${BG_V}${T_V}$RAM_FREE${END}"
echo -e "${BG_N}${T_N}SPACE_ROOT${END} = ${BG_V}${T_V}$SPACE_ROOT${END}"
echo -e "${BG_N}${T_N}SPACE_ROOT_USED${END} = ${BG_V}${T_V}$SPACE_ROOT_USED${END}"
echo -e "${BG_N}${T_N}SPACE_ROOT_FREE${END} = ${BG_V}${T_V}$SPACE_ROOT_FREE${END}"
