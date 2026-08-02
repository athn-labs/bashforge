# Largest Files

## Scenario

A Linux server is running out of available disk space.

Your task is to quickly identify the largest files inside a selected directory before deciding what can be removed or archived.

## Objective

Create a reusable Bash utility that displays the ten largest files within a specified directory.

## Requirements

The script should:

- accept a directory as a command-line argument
- search recursively
- display the ten largest files
- sort results by file size in descending order
- validate user input

## Validation

The utility should:

- display a usage message if no directory is provided
- display an error message if the directory does not exist

## Learning Outcomes

After completing this challenge you should understand:

- command-line arguments
- recursive file search
- command pipelines
- sorting command output
- building reusable Bash utilities

## Completion Criteria

The challenge is complete when:

- [x] the script works correctly
- [x] invalid input is handled
- [x] the code is readable
- [x] the utility has been tested on Ubuntu Server
- [x] changes have been committed to Git

## Reflection

### What was the biggest challenge?

To correctly check if input was given.

### What did I learn?

How to handle input check and use of **find** and **du** command combination.

### What would I improve?

Better pipeline design, using conditions based on number and length of argument.