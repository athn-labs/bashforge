# Backup Directory

## Scenario

A system administrator wants to create a quick backup of an important directory before making changes to the system.

Instead of manually creating archives every time, they need a reusable Bash utility that creates compressed backups with a timestamp in the filename.

## Objective

Create a Bash script that creates a compressed `.tar.gz` archive of a specified directory.

## Expected Usage

```bash
./backup_directory.sh <source_directory> <destination_directory>
```

Example:

```bash
./backup_directory.sh /etc ~/backups
```

## Expected Output

```text
Creating backup...

Backup created successfully:
/home/user/backups/etc_2026-08-04_18-35-12.tar.gz
```

## Requirements

The script should:

- accept a source directory as the first argument
- accept a destination directory as the second argument
- create a compressed `.tar.gz` archive
- automatically include the current date and time in the archive name
- validate user input
- display a success message

## Validation

The script should handle:

- missing arguments
- non-existing source directory
- non-existing destination directory
- permission errors

## Learning Outcomes

After completing this challenge you should understand:

- creating compressed archives
- working with timestamps
- validating multiple arguments
- generating dynamic filenames
- building reusable administration utilities

## Completion Criteria

The challenge is complete when:

- [x] the script accepts two command-line arguments
- [x] a compressed archive is created successfully
- [x] the archive filename contains a timestamp
- [x] invalid input is handled correctly
- [x] permission errors are handled correctly
- [x] the script has been tested on Ubuntu Server
- [x] the solution has passed code review
- [x] changes have been committed to Git