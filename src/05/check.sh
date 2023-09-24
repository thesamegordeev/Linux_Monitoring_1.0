#!/bin/bash

start=$(date +%s.%N)

if [ $# -ne 1 ]; then
  echo "Ошибка: Необходимо указать путь до директории в качестве параметра."
  exit 1
fi

directory=$1

if [ ! -d "$directory" ]; then
  echo "Ошибка: Указанная директория не существует."
  exit 1
fi

./main.sh "$directory" "$start"
