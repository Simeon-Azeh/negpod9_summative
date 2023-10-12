#!/bin/bash
# check if the target directory exists or create it if it doesn't.
target_dir="negpod_9-q1"
if [ ! -d "$target_dir" ]; then
mkdir "$target_dir"
echo "created directory: $target_dir"
fi
# move the required files to the target directory
mv main.sh "$target_dir"
mv Students-list_0923.txt "$target_dir"
mv Select-emails.sh "$target_dir"
mv student-emails.txt "$target_dir"
echo "Move files to $target_dir"

