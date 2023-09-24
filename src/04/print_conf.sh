#!/bin/bash

echo

case $1 in
    "1")
	BG_N=white ;;
    "2")
        BG_N=red ;;
    "3")
        BG_N=green ;;
    "4")
        BG_N=blue ;;
    "5")
        BG_N=purple ;;
    "6")
        BG_N=black ;;
esac

case $2 in
    "1")
        T_N=white ;;
    "2")
        T_N=red ;;
    "3")
        T_N=green ;;
    "4")
        T_N=blue ;;
    "5")
        T_N=purple ;;
    "6")
        T_N=black ;;
esac

case $3 in
    "1")
        BG_V=white ;;
    "2")
        BG_V=red ;;
    "3")
        BG_V=green ;;
    "4")
        BG_V=blue ;;
    "5")
        BG_V=purple ;;
    "6")
        BG_V=black ;;
esac

case $4 in
    "1")
        T_V=white ;;
    "2")
        T_V=red ;;
    "3")
        T_V=green ;;
    "4")
        T_V=blue ;;
    "5")
        T_V=purple ;;
    "6")
        T_V=black ;;
esac

if [ "$1" == "$5" ]; then
    echo "Column 1 background = default (${BG_N})"
else
    echo "Column 1 background = $1 (${BG_N})"
fi

if [ "$2" == "$6" ]; then
    echo "Column 1 font color = default (${T_N})"
else
    echo "Column 1 font color = $2 (${T_N})"
fi

if [ "$3" == "$7" ]; then
    echo "Column 2 background = default (${BG_V})"
else
    echo "Column 2 background = $3 (${BG_V})"
fi

if [ "$4" == "$8" ]; then
    echo "Column 2 font color = default (${T_V})"
else
    echo "Column 2 font color = $4 (${T_V})"
fi
