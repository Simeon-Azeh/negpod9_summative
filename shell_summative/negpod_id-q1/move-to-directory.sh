#!/bin/bash
# Moving 4 files from question 1
# Check if the target directory exists, if not, create it
target_dir="negpod_id-q1"
if [ ! -d "$target_dir" ]; then
    mkdir "$target_dir"
fi

# Move all four files created in Question 1 to the target directory
mv main.sh students-list_0923.txt select-emails.sh student-emails.txt "$target_dir"

echo "Files moved to $target_dir successfully!"
