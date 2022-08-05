#!/bin/bash
## function for creating folder and file outline for design projects
## file should be stored in /bin, else PATH should point to it for quick access

# defining the "help" argument
if [[ $1 == "help" ]]; then
    echo "First argument should be directory for operation to take place in."
    echo "Second argument is optional, and is for defining a parent directory for creation."

# checking if first argument is a valid directory
if [[ -d "$1" ]]; then
    # continue code
    if [[ -z "$2"  ]]; then 
        # creates directories and files, then echos after each
        mkdir _assets && echo "made _assets directory"
        mkdir _colors && echo "made _color directory"
        mkdir Exports && echo "made Exports directory"
        mkdir _fonts && echo "made _fonts directory"
        mkdir project-files && echo "made project-files directory"
        touch _colors/master-colors.css && echo "created master-colors.css file"
        touch project-notes.md && echo "created project-notes.md file"
        echo "Operation complete."
    else
        # creates directories and files, then echos after each
        mkdir $2 && echo "made parent directory $2"
        mkdir $2/_assets && echo "made _assets directory"
        mkdir $2/_colors && echo "made _color directory"
        mkdir $2/Exports && echo "made Exports directory"
        mkdir $2/_fonts && echo "made _fonts directory"
        mkdir $2/project-files && echo "made project-files directory"
        touch $2/_colors/master-colors.css && echo "created master-colors.css file"
        touch $2/project-notes.md && echo "created project-notes.md file"
        echo "Operation complete."
    fi
else
    # if the directory is invalid
    echo "Not a valid directory. Please pass a valid directory, or pass . for current directory."
fi
