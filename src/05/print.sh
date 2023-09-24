#!/bin/bash
start=${12}
echo "Total number of folders (including all nested ones) = $1"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$2"
echo "Total number of files = $3"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $4"
echo "Text files = $5"
echo "Executable files = $6"
echo "Log files (with the extension .log) = $7"
echo "Archive files = $8"
echo "Symbolic links = $9"
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
echo "${10}"
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"
echo "${11}"
end=$(date +%s.%N)
echo "Script execution time (in seconds) = $(echo "$end - $start" | bc -l)"
