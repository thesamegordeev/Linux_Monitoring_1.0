#!/bin/bash

directory=$1
start=$2

total_folders=$(tree $directory | grep directories | awk '{print $1}')
top_folders=$(du -h $directory* | sort -hr | head -n 5 | awk {'size=$1; name=$2; print name ", " size}')
total_files=$(tree $directory | grep directories | awk '{print $3}')
conf_files=$(find $directory -type f -name '*.conf' | wc -l)
text_files=$(find $directory -type f -exec file {} \; | grep -i 'text' | wc -l)
exec_files=$(find $directory -type f -perm /u=x,g=x,o=x | wc -l)
log_files=$(find $directory -type f -name '*.log' | wc -l)
archive_files=$(find $directory -type f -name '*.tar*' -o -name '*.zip' | wc -l)
symbolic_links=$(find $directory -type l | wc -l)
top_files=$(find $directory -type f -exec du -sh {} + | sort -rh | head -n 10 | awk '{print $2 ", " $1}')

IFS=$'\n'
top_files_with_type=""
i=1
for file_info in $top_files; do
    file_path=$(echo "$file_info" | awk -F, '{print $1}')
    file_size=$(echo "$file_info" | awk -F, '{print $2}')

    file_type=$(file -b --mime-type "$file_path")

    top_files_with_type+="$i - $file_info, $file_type$IFS"
    i=$(( $i + 1 ))
done

top_exec_files=$(find $directory -type f -perm /u=x,g=x,o=x -exec du -sh {} + | sort -rh | head -n 10 | awk '{print $2 ", " $1}')
exec_files_with_md5=""
i=1

for file_info in $top_exec_files; do
    file_path=$(echo "$file_info" | awk -F, '{print $1}')
    file_size=$(echo "$file_info" | awk -F, '{print $2}')

    file_hash=$(md5sum "$file_path" | awk '{print $1}')

    exec_files_with_md5+="$i - $file_info, $file_hash$IFS"
    i=$(( $i + 1 ))
done

./print.sh "$total_folders" "$top_folders" "$total_files" "$conf_files" "$text_files" "$exec_files" "$log_files" "$archive_files" "$symbolic_links" "$top_files_with_type" "$exec_files_with_md5" "$start"
