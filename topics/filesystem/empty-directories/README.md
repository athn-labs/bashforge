# Largest Files

## Scenario

A Linux server has been running for years. Many applications have been removed or reconfigured, leaving behind empty directories that are no longer needed.

Before cleaning up the system, the administrator wants to identify all empty directories inside a selected location.

## Objective

Create a reusable Bash utility that lists all empty directories within a specified directory.

## Requirements

The script should:

- accept a directory as a command-line argument
- search recursively
- display only empty directories
- validate user input

## Validation

Handle:

- missing arguments
- invalid directory
- permission errors without interrupting execution

## Learning Outcomes

## Learning Outcomes

After completing this challenge you should understand:

- recursive directory search
- identifying empty directories
- working with directory-specific search criteria
- validating user input
- building reusable Bash utilities

## Completion Criteria

## Completion Criteria

The challenge is complete when:

- [x] the script accepts a directory as a command-line argument
- [x] only empty directories are displayed
- [x] the search is performed recursively
- [x] invalid input is handled correctly
- [x] permission errors do not interrupt the output
- [x] the script has been tested on Ubuntu Server
- [x] the solution has passed code review
- [x] changes have been committed to Git

## Reflection

### What would I improve?    

Using man to search for command options