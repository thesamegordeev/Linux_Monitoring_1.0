#!/bin/bash

case $1 in
    "1")
	BG_COL_NM='\033[107m' ;; # БЕЛЫЙ
    "2")
	BG_COL_NM='\033[101m' ;; # КРАСНЫЙ
    "3")
	BG_COL_NM='\033[102m' ;; # ЗЕЛЕНЫЙ
    "4")
	BG_COL_NM='\033[106m' ;; # ГОЛУБОЙ
    "5")
	BG_COL_NM='\033[105m' ;; # ФИОЛЕТОВЫЙ
    "6")
	BG_COL_NM='\033[40m' ;; # ЧЕРНЫЙ
    *)
	BG_COL_NM='\033[49m' ;;
esac

case $2 in
    "1")
        T_COL_NM='\033[97m' ;; # БЕЛЫЙ
    "2")
        T_COL_NM='\033[91m' ;; # КРАСНЫЙ
    "3")
        T_COL_NM='\033[92m' ;; # ЗЕЛЕНЫЙ
    "4")
        T_COL_NM='\033[96m' ;; # ГОЛУБОЙ
    "5")
        T_COL_NM='\033[95m' ;; # ФИОЛЕТОВЫЙ
    "6")
        T_COL_NM='\033[30m' ;; # ЧЕРНЫЙ
    *)
        T_COL_NM='\033[39m' ;;
esac

case $3 in
    "1")
        BG_COL_VAL='\033[107m' ;; # БЕЛЫЙ
    "2")
        BG_COL_VAL='\033[101m' ;; # КРАСНЫЙ
    "3")
        BG_COL_VAL='\033[102m' ;; # ЗЕЛЕНЫЙ
    "4")
        BG_COL_VAL='\033[106m' ;; # ГОЛУБОЙ
    "5")
        BG_COL_VAL='\033[105m' ;; # ФИОЛЕТОВЫЙ
    "6")
        BG_COL_VAL='\033[40m' ;; # ЧЕРНЫЙ
    *)
        BG_COL_VAL='\033[49m' ;;
esac

case $4 in
    "1")
        T_COL_VAL='\033[97m' ;; # БЕЛЫЙ
    "2")
        T_COL_VAL='\033[91m' ;; # КРАСНЫЙ
    "3")
        T_COL_VAL='\033[92m' ;; # ЗЕЛЕНЫЙ
    "4")
        T_COL_VAL='\033[96m' ;; # ГОЛУБОЙ
    "5")
        T_COL_VAL='\033[95m' ;; # ФИОЛЕТОВЫЙ
    "6")
        T_COL_VAL='\033[30m' ;; # ЧЕРНЫЙ
    *)
        T_COL_NVAL='\033[39m' ;;
esac

./main.sh "$BG_COL_NM" "$T_COL_NM" "$BG_COL_VAL" "$T_COL_VAL"