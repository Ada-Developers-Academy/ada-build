# Notes: The Command Line

As a programmer, you'll need to become fluent with your computer's **terminal** (also called **command line**).

Most of us are used to GUI-based (Graphical User Interface) operating systems like Windows or OS X, but a command line approach is much more effective for many tasks in programming. For example, Terminal will be the place where you'll navigate through and modify your files and folders (also called directories).

## How to get started
- If you are running OS X, find the program 'Terminal' on your computer and open it
- If you aren't, or would just like to start in a more contained environment where you can test things out without affecting your computer, open http://bellard.org/jslinux/ in your web browser. This is a [virtual machine](https://en.wikipedia.org/wiki/Virtual_machine) that runs in a web browser, simulating a computer, that you can restart at any time to return to its original state (by refreshing the browser)

## Terminal Terminology
- **Console** - the system as a whole
- **Command Line** - the actual line in the console where you type a command
- **Prompt** - This is the beginning of the command line. It usually provides some contextual information like who you are, where you are and other useful info. It typically ends in a $ (this is represented in these examples). After the prompt is where you will be typing commands.
- **Terminal** - The program we use to interact with the console.

## How the command line works
The terminal operates in a repeating sequence of steps:

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

## Running a Command
Commands almost always have 3 parts.
```
[command] [options] [arguments]
```

You could think of it as
```
verb adverb noun
```

## Example commands
In UNIX commands are all tiny little programs. They tend to do one small job or task, with a variety of options. We'll be writing our own later on in this program!

### List Files and Folders ( `ls` )
Let's look at one command
```
$ ls -a .
```

### Terminal Manual ( `man` )
In your Terminal, type

```
$ man ls
```
`man` is short for manual.

\*using `man`, will enter a reading mode, a couple things to note about this mode:
- Normal commands will no longer work.
- `q` (for quit) exits this mode
- Up and down keys scroll.
- Space bar is page down

### Navigation ( `pwd`, `cd`)
Getting around the directories of our computer is a snap!

```
$ pwd
/Users/Bookis/work/ada
```
`pwd` returns the present working directory. Use this command to find in which directory you are currently "in".

```
$ cd <some path>
```
`cd` is change directory. It's followed by some directory, if I were in `/Users/Bookis/work`:

```
$ pwd
/Users/Bookis/work
$ cd ada
$ pwd
/Users/Bookis/work/ada
```

#### Special Paths

```
$ cd ~
```
"~" represents your Home directory, for me this is "/Users/Bookis". As a shortcut, you can also just type `cd` with no directory at all.
```
$ cd .
```
A single "." represents the current directory, so cd . goes to where you already are.
```
$ cd ..
```
".." represents the parent directory, ".." from /Users/Bookis/work/ada is /Users/Bookis/work
```
$ cd ../../
```
Directories can be chained together, this goes up two directories.
```
$ cd -
```
A single "-" means to go back to the prior directory that you were in. This is different from the parent directory and more like the back button except it only keeps one directory of history. Running `cd -` again will toggle back and forth between the same two directories. This can be useful if you have two directories that you need to switch back and forth between.

## Basic Commands
Let's take a few minutes and use `man` to explore these commands.

| command | what it does
|---------|--------------
| `man`   | Manual: Open the manual for a specific command ('q' to quit out of manual mode)
| `pwd`   | Present Working Directory: Display the current location as a "path" (sequence of child directories separated by `/`) starting with the root directory `/`
| `ls`    | List Directory: Display all of the child files and directories for the current location
| `cd`    | Change Directory: Move to a different location, all further commands execute at that location
| `mkdir` | Make Directory: Create a new directory with the name specified
| `touch` | Create new file or update timestamp of existing file: If the file argument does not exist, create it as an empty file. If the file argument does exist, 'touch' it's timestamp (last modified date/time) to be the current date/time.
| `cp`    | Copy: Copy argument1 to argument2
| `mv`    | Move: Move argument1 to argument2 (removes argument1). This is like renaming.
| `rm`    | Remove: Delete the file or folder passed to `rm`
| `less`  | Print the contents of the argument to the screen with the ability to scroll through (also [`more`; less is more, more or less](https://en.wikipedia.org/wiki/Less_(Unix)))
| `cat`   | Print the contents of the argument to the screen (no scrolling)
| `whoami`| Tells you what user you are currently working as



What Did We Learn?
==================
* Show folders and files in your current directory
* Show your current location
* Change directories
* Open files
* Create new files and directories
* Copy files to different directories
* Move files to different directories
* Remove files and directories
