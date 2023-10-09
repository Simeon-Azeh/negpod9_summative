#!/usr/bin/env bash
# command to select just the emails of the students and save them in a file student-emails.txt
awk '/@/{print $0}' students-list_0923.txt > student-emails.txt
