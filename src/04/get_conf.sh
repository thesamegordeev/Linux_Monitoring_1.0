#!/bin/bash

file_path="./colors.conf"

if [ ! -f "$file_path" ]; then
    echo "Ошибка: Файл не существует или недоступен."
    exit 1
fi

default_column1_background="1"
default_column1_font_color="2"
default_column2_background="1"
default_column2_font_color="2"

column1_background=$(grep "column1_background=" "$file_path" | cut -d'=' -f2)
column1_font_color=$(grep "column1_font_color=" "$file_path" | cut -d'=' -f2)
column2_background=$(grep "column2_background=" "$file_path" | cut -d'=' -f2)
column2_font_color=$(grep "column2_font_color=" "$file_path" | cut -d'=' -f2)


if [ -z "$column1_background" ]; then
    column1_background="$default_column1_background"
fi

if [ -z "$column1_font_color" ]; then
    column1_font_color="$default_column1_font_color"
fi

if [ -z "$column2_background" ]; then
    column2_background="$default_column2_background"
fi

if [ -z "$column2_font_color" ]; then
    column2_font_color="$default_column2_font_color"
fi

./check.sh "$column1_background" "$column1_font_color" "$column2_background" "$column2_font_color" "$default_column1_background" "$default_column1_font_color" "$default_column2_background" "$default_column2_font_color"
# ./print_conf.sh "$column1_background" "$column1_font_color" "$column2_background" "$column2_font_color" "$default_column1_background" "$default_column1_font_color" "$default_column2_background" "$default_column2_font_color"
