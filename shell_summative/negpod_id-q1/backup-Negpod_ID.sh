#!/bin/bash

#remote server details

remote_host="2f05c1f8800b.3be8ebfc.alu-cod.online"
remote_username="2f05c1f8800b"
remote_password="d4a1d225d0abda9549d8"
remote_location="/summative/0923-2023S"

directory="backup_dir"


scp -r $directory $remote_username@$remote_host:$remote_location
echo "Backup Done successfully!"
