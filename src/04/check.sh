#!/bin/bash

check_arguments() {
    local arg1="$1"
    local arg2="$2"
    local arg3="$3"
    local arg4="$4"

    if ((arg1 < 1 || arg1 > 6)); then
        echo "Ошибка: Первый аргумент должен быть числом от 1 до 6."
        exit 1
    fi

    if ((arg2 < 1 || arg2 > 6)); then
        echo "Ошибка: Второй аргумент должен быть числом от 1 до 6."
        exit 1
    fi

    if ((arg3 < 1 || arg3 > 6)); then
        echo "Ошибка: Третий аргумент должен быть числом от 1 до 6."
        exit 1
    fi

    if ((arg4 < 1 || arg4 > 6)); then
        echo "Ошибка: Четвертый аргумент должен быть числом от 1 до 6."
        exit 1
    fi

    if ((arg1 == arg2 || arg3 == arg4)); then
	echo "Ошибка: Цвет фона и текста не должен совпадать. Вызовите скрипт повторно."
	exit 1
    fi
}


# if (( $# != 4 )); then
#     echo "Ошибка: Неверное количество аргументов."
#     echo "Используйте: script.sh <аргумент1> <аргумент2> <аргумент3> <аргумент4>"
#     exit 1
# fi


arg1="$1"
arg2="$2"
arg3="$3"
arg4="$4"
arg5="$5"
arg6="$6"
arg7="$7"
arg8="$8"

check_arguments "$arg1" "$arg2" "$arg3" "$arg4"
./color_interpretator.sh $arg1 $arg2 $arg3 $arg4
./print_conf.sh "$arg1" "$arg2" "$arg3" "$arg4" "$arg5" "$arg6" "$arg7" "$arg8"
