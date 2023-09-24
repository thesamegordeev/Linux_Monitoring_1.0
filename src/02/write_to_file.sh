#!/bin/bash

read -p "Хотите записать данные в файл? (Y/N): " answer

if [[ $answer == "Y" || $answer == "y" ]]; then
    echo "Запись данных в файл..."
    filename=$(date +%d_%m_%y_%H_%M_%S)

    {
    echo "HOSTNAME = $1"
    echo "TIMEZONE = $2"
    echo "USER = $3"
    echo "OS = $4"
    echo "DATE = $5"
    echo "UPTIME = $6"
    echo "UPTIME_SEC = $7"
    echo "IP = $8"
    echo "MASK = $9"
    echo "GATEWAY = ${10}"
    echo "RAM_TOTAL = ${11}"
    echo "RAM_USED = ${12}"
    echo "RAM_FREE = ${13}"
    echo "SPACE_ROOT = ${14}"
    echo "SPACE_ROOT_USED = ${15}"
    echo "SPACE_ROOT_FREE = ${16}"
    } > $filename.status

else
    echo "Запись данных в файл отклонена."
fi
