# Largest Files

## Scenario

A server contains thousands of files. Some of them haven’t been modified for months and may no longer be needed.

Your task is to identify files that have not been modified for a specified number of days.

## Objective

Create a reusable Bash utility that lists files older than the number of days provided by the user.

## Requirements

The script should:

- accept a directory as the first argument
- accept the number of days as the second argument
- search recursively
- display matching files
- validate both arguments

## Validation

Handle:

- dmissing arguments
- invalid directory
- invalid number of days

## Learning Outcomes

After completing this challenge you should understand:

- search by modify date
- multiple arguments validation
- data type testing
- advanced **find** options

## Completion Criteria

The challenge is complete when:

- [x] the script accepts two command-line arguments
- [x] only regular files are displayed
- [x] files are filtered by modification time
- [x] invalid input is handled correctly
- [x] permission errors do not interrupt the output
- [x] the script has been tested on Ubuntu Server
- [x] the solution has passed code review
- [x] changes have been committed to Git

## Reflection

### What was the biggest challenge?

Write regex to check if second argument is number

### What did I learn?

Nesting conditions

### What would I improve?    

Using **find** command