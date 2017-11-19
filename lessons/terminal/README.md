# The Terminal
_Jump start: Lesson 6_

## Learning Goals
- Vocabulary: Terminal, command line, commands
- To know advantages of the command line and why programmers use it
- To utilize the terminal to navigate, create, delete, and modify files and folders
- To know and utilize basic terminal commands: ls, cd, touch, mkdir, rm, mv, cp, man, pwd, whoami, cat

## Resources
1. [Notes: The Command Line](notes/command-line-interface.md)
1. [Notes: Example commands](notes/example-commands.md)
1. [Assignment: Setup Your Folder Structure](assignments/folder-setup.md)
1. [Assignment: Learn the Command Line @ Codecademy.com](https://www.codecademy.com/en/courses/learn-the-command-line/)

## Further Reading (optional)
- [The Command Line Crash Course @ learncodethehardway.org](http://cli.learncodethehardway.org/book/)

# Folder Setup

When you are writing code, it is good to have a folder structure which is logical to you so you can quickly find code and files you are looking for.

1. Create a new folder called "ada" inside of your _home directory_ to store Ada-related folders and files. Once the folder is created, switch into that new folder:    
```bash
cd ~
mkdir ada
cd ada
```
1. Create a new folder called "jumpstart" which will store all folders and files related to this Jumpstart work. Once the folder is created, switch into that new folder:  
```bash
mkdir jumpstart
cd jumpstart
```
1. Verify that the folder structure was created appropriately by running the `pwd` command. The output should include your username and end with `/ada/jumpstart`.

