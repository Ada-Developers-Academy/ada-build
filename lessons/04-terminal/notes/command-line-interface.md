# Command Line Interface 

# Instructions
* Open http://bellard.org/jslinux/ in your web browser

# Outline
1. Command Line Interface
  1. What is the CLI?
  1. What is a command?
1. Directores
  1. What is a directory?
  1. Directory trees
  1. Directory commands

# Command Line Interface
## What is the CLI?
  * Text-based rather than graphical (GUI)
  * Uses a program called a **terminal**
  * The terminal operates in a repeating sequence of steps:
    1. Displays a single line of text known as a **prompt**
    1. Accepts a single line of text known as a **command**
    1. When commands are entered, **executes** (or **runs**) them
    1. Displays the **output** (or **result**) of executing commands
    1. Finally, repeats with step 1

## What is a command?
  * Commands are actions that we wish to take using our computer
  * Examples: Creating a new directory or file, moving a file, deleting a file
  * Commands have a few parts:
    * **Command name** - Specifies the particular command we wish to use
    * **Arguments** - Additional information required for the command to properly execute

# Directories
## What is a directory?
  * **Directories** are also commonly known as **folders**
  * They represent a location within your computer, and have a **name** to indicate their purpose/contents
  * They act as containers -- **files** and other directories can be placed "inside" of them

## Directory trees
  * A "family tree" diagram is a great metaphor for visualizing the organization of directories. One major difference however, is that in our "directory tree", each directory has only ONE **parent**
  * Because directories have names just like people do, we can create a tree diagram showing all of the directories on a computer:
![Directory Tree Diagram](../problem-solving-interview/ada-102-dir_tree.png)
  * There exists a special short-hand directory name which always refers to the parent directory. This directory is known as `..` (two periods)
  * There is also a single **root** directory, which has no parent directory. This directory is known as `/` (forward slash)

## Directory commands
  * When using the CLI, our commands always execute at a particular location -- within a particular directory
  * Here are just a few of the many commands we can use in our terminal:
    * `pwd` - <b>P</b>resent <b>W</b>orking <b>D</b>irectory: Display the current location as a "path" (sequence of child directories separated by `/`) starting with the root directory `/`
    * `ls` - <b>L</b>i<b>s</b>t Directory: Display all of the child files and directories for the current location
    * `mkdir` - <b>M</b>a<b>k</b>e <b>Dir</b>ectory: Create a new directory with the name specified
    * `cd` - <b>C</b>hange <b>D</b>irectory: Move the terminal to a different location, all further commands execute at that location
