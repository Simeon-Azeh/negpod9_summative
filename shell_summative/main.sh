#!/bin/bash

# Define the filename for storing student records
filename="students-list_0923.txt"
emails_file="student-emails.txt"

# Function to create a student record
create_student() {
    echo "Enter student email:"
    read email
    echo "Enter student age:"
    read age
    echo "Enter student ID:"
    read id

    # Check if the student already exists in the file
    if grep -q "$id" "$filename"; then
        echo "Student with ID $id already exists."
    else
        echo "$email, $age, $id" >> "$filename"
        echo "Student record created successfully."
    fi
}

# Function to view all students
view_students() {
    if [ -s "$filename" ]; then
        echo "List of students:"
        cat "$filename"
    else
        echo "No students found in the list."
    fi
}

# Function to delete a student by ID
delete_student() {
    echo "Enter student ID to delete:"
    read id
    if grep -q "$id" "$filename"; then
        sed -i "/$id/d" "$filename"
        echo "Student with ID $id deleted successfully."
    else
        echo "Student with ID $id not found."
    fi
}

# Function to update a student record by ID
update_student() {
    echo "Enter student ID to update:"
    read id
    if grep -q "$id" "$filename"; then
        echo "Enter updated student email:"
        read new_email
        echo "Enter updated student age:"
        read new_age

        # Use sed to update the student record
        sed -i "s/$id.*,/$new_email, $new_age, $id/" "$filename"
        echo "Student with ID $id updated successfully."
    else
        echo "Student with ID $id not found."
    fi
}

#Function to select just the emails of the students and save them in a file 
select_emails() {
	cut -d '' -f 1 "$students_file" > "$emails_file"
	echo "Emails of the students saved in $emails_file"
}	

# Main menu
while true; do
    echo "Main Menu:"
    echo "1. Create Student Record"
    echo "2. View All Students"
    echo "3. Delete Student"
    echo "4. Update Student Record"
    echo "5. Select emails of students"
    echo "6. Exit"
    read choice
 
    case "$choice" in
    1)
        create_student
        ;;
    2)
        view_students
        ;;
    3)
        delete_student
        ;;
    4)
        update_student
        ;;

    5)  select_email
        ;;

    6)
        echo "Exiting the application."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please select a valid option."
        ;;
    esac
done

