# linux-file-management-automation
Automates Linux file organization using Bash scripting, find, grep, pipes, and redirection.

Project Overview

This project automates the organization of files in a Linux environment using a Bash shell script. It scans a specified directory (such as the Downloads folder), identifies PDF and image files, moves them to appropriate destination folders, logs every file movement, counts the number of files moved, and generates a summary report. The project demonstrates the use of Linux commands, shell scripting, text processing, and output redirection to automate repetitive file management tasks.

Objective

The primary objective of this project is to automate file organization using Linux shell scripting.

The script performs the following tasks:

Searches for all .pdf files and moves them to the Documents/PDFs directory.
Searches for all .jpg and .png files and moves them to the Pictures/Images directory.
Records every moved file in a log file (file_mover.log).
Counts the number of PDF and image files moved using grep and wc.
Generates a summary report (summary.txt) using output redirection.
Validates that all files have been successfully organized.
Skills Covered

This project demonstrates practical Linux administration and shell scripting skills, including:

Linux File Management
Bash Shell Scripting
File Navigation Commands
Directory Management
File Searching
File Movement
Text Processing
Logging
Output Redirection
Command Piping
Automation
Script Execution
Linux Terminal Operations
Technologies Used
Technology	Purpose
Linux (Ubuntu)	Operating System
Bash	Shell scripting
find	Search files recursively
mv	Move files
mkdir	Create directories
grep	Filter log entries
wc	Count matching lines
Redirection (>, >>)	Save outputs to files
Nano	Script editor
Git	Version control
GitHub	Project hosting

Project Folder Structure
linux-file-management-automation/
│
├── README.md
├── scripts/
│   └── file_manager.sh
│
├── output/
│   ├── file_mover.log
│   └── summary.txt
│
└── screenshots/
    ├── create-test-files.png
    ├── destination-folders.png
    ├── script-created.png
    ├── running-script.png
    ├── log-file.png
    ├── summary-output.png
    ├── pdf-folder.png
    └── images-folder.png
Script Explanation

The shell script performs the following operations:

1. Define Variables

The script stores the paths for the Downloads folder, destination folders, and log file using variables. This makes the script easier to maintain and modify.

2. Create Destination Directories

The mkdir -p command creates the required folders if they do not already exist.

Example:

mkdir -p ~/Documents/PDFs
mkdir -p ~/Pictures/Images
3. Search for PDF Files

The find command searches the Downloads directory for all files with the .pdf extension.

Example:

find "$DOWNLOADS" -type f -name "*.pdf"
4. Move PDF Files

Each PDF file found is moved to the Documents/PDFs folder using the mv command.

5. Search for JPG and PNG Files

The script searches for .jpg and .png image files using the find command.

6. Move Image Files

All image files are moved to the Pictures/Images folder.

7. Log Every File Movement

Every successful file movement is recorded in the file_mover.log file using output redirection.

Example log entry:

Moved PDF:
/home/user/Downloads/file1.pdf
8. Count Files

The script uses grep and wc to count how many PDF and image files were moved.

Example:

grep "PDF" file_mover.log | wc -l
9. Generate Summary Report

A summary report is created using output redirection and saved as summary.txt.

Example:

===== SUMMARY =====

PDF Files Moved : 2

Image Files Moved : 2
10. Validate Results

Finally, the project verifies that:

Files are moved successfully.
Log file is generated.
Summary report contains the correct counts.
Commands Used
Command	Description
mkdir	Creates directories
find	Searches for files
mv	Moves files
grep	Filters text
wc	Counts lines
ls	Lists directory contents
cat	Displays file contents
chmod	Makes the script executable
nano	Creates or edits the shell script
touch	Creates sample files
Screenshots

Output:
Screenshots of output are uploaded in output folder

Learning Outcome

By completing this project, I gained hands-on experience in Linux file management and shell scripting. I learned how to automate repetitive tasks using Bash, organize files with Linux commands, process text using grep and wc, create logs and summary reports through output redirection, and structure a project for version control using Git and GitHub. This project strengthened my practical understanding of Linux automation, scripting logic, and command-line tools, which are essential skills for Linux Administration, DevOps, and Cloud Engineering roles.
