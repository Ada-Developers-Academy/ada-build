# The Terminal
_Jump start: Lesson 6_

## Learning Goals
- Vocabulary: Terminal, command line, commands
- To know advantages of the command line and why programmers use it
- To utilize the terminal to navigate, create, delete, and modify files and folders
- To know and utilize basic terminal commands: ls, cd, touch, mkdir, rm, mv, cp, man, pwd, whoami, cat

## Activities
* Review the notes
* Complete [Learn the Command Line](https://www.codecademy.com/en/courses/learn-the-command-line/)
* (Optional) Read [Command Line Crash Course](http://cli.learncodethehardway.org/book/)

## Notes
### Folder Setup
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
1. Verify that the folder structure was created appropriately by running the `pwd` command. The output should include your user name and end with `/ada/jumpstart`.

### The Command Line

As a programmer, you'll need to become fluent with your computer's **terminal** (also called **command line**).

Most of us are used to GUI-based (Graphical User Interface) operating systems like Windows or OS X, but a command line approach is much more effective for many tasks in programming. For example, Terminal will be the place where you'll navigate through and modify your files and folders (also called directories).

#### How to get started
- If you are running OS X, find the program 'Terminal' on your computer and open it
- If you aren't, or would just like to start in a more contained environment where you can test things out without affecting your computer, open http://bellard.org/jslinux/ in your web browser. This is a [virtual machine](https://en.wikipedia.org/wiki/Virtual_machine) that runs in a web browser, simulating a computer, that you can restart at any time to return to its original state (by refreshing the browser)

#### Terminal Terminology
- **Console** - the system as a whole
- **Command Line** - the actual line in the console where you type a command
- **Prompt** - This is the beginning of the command line. It usually provides some contextual information like who you are, where you are and other useful info. It typically ends in a $ (this is represented in these examples). After the prompt is where you will be typing commands.
- **Terminal** - The program we use to interact with the console.

### How the command line works
The terminal operates in a repeating sequence of steps:

1. Displays a single line of text known as a **prompt**
1. Accepts a single line of text known as a **command**
1. When commands are entered, **executes** (or **runs**) them
1. Displays the **output** (or **result**) of executing commands
1. Finally, repeats with step 1

### What is a command?
  * Commands are actions that we wish to take using our computer
  * Examples: Creating a new directory or file, moving a file, deleting a file
  * Commands have a few parts:
    * **Command name** - Specifies the particular command we wish to use
    * **Arguments** - Additional information required for the command to properly execute

### Running a Command
Commands almost always have 3 parts.
```
[command] [options] [arguments]
```

You could think of it as
```
verb adverb noun
```

### Example commands
In UNIX commands are all tiny little programs. They tend to do one small job or task, with a variety of options. We'll be writing our own later on in this program!

#### List Files and Folders ( `ls` )
Let's look at one command
```
$ ls -a .
```

#### Terminal Manual ( `man` )
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

#### Navigation ( `pwd`, `cd`)
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

##### Special Paths

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

### Basic Commands
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


### Example Commands

#### Making and navigating directories

The following series of commands
```
$ mkdir market
$ cd market
$ mkdir fruits
$ mkdir vegetables
$ mkdir sweets
$ cd sweets
$ mkdir chocolate
$ cd ..
$ cd fruits
$ mkdir apples
$ mkdir lychee
$ cd ..
$ cd vegetables
$ mkdir carrots
$ mkdir celery
$ cd ..
$ cd sweets
$ mkdir caramels
$ pwd
```

Creates the following folder structure
```
market/
market/fruits/
market/fruits/apples/
market/fruits/lychee/
market/vegetables/
market/vegetables/carrots/
market/vegetables/celery/
market/sweets/
market/sweets/caramels/
market/sweets/chocolate/
```

`pwd` at the end of the commands, would result in `market/sweets/`

#### Creating and printing files

The following series of commands
```
$ mkdir lessons
$ cd lessons
$ mkdir 00-learning-style
$ mkdir 00-learning-style/assignments
$ mkdir 00-learning-style/notes
$ touch 00-learning-style/assignments/things-to-try.md
$ cd 00-learning-style/notes
$ touch learning-styles.md
$ cat learning-styles.md
$ cd ../..
```

Note that here we used some _directory chaining_ (`00-learning-styles/assignments`, etc) so that we didn't have to change directories before creating new files or folders.

Creates the following file/folder structure
```
lessons/
lessons/assignments/
lessons/assignments/things-to-try.md
lessons/notes/
lessons/notes/learning-styles.md
```

Note that `things-to-try.md` and `learning-styles.md` would be empty since we can assume that this is the initial creation of this directory structure and files. `cat learning-styles.md` would therefore result in nothing printed to the screen, unless we first open that file, edit, and save it.

#### Removing, moving (renaming), and copying files

The following series of commands
```
$ mkdir songs
$ touch songs/song1.md
$ touch songs/song2.md
$ touch songs/song10.md
```

Creates the following file/folder structure
```
songs/
songs/song1.md
songs/song2.md
songs/song10.md
```

If we did
```
rm songs/*1*
```
then we would have:
```
songs/
songs/song2.md
```

If then we did
```
$ cp song2.md song3.md
$ touch song4.md
```
we would then have:
```
songs/
songs/song2.md
songs/song3.md
songs/song4.md
```

In this case, `song4.md` would be an empty file that we just created, whereas `song3.md` would be a copy of `song2.md`, at whatever state it was in when the copy command was made (in this case, probably also empty).

If then we did
```
$ mv song4.md song1.md
```
we would then have:
```
songs/
songs/song1.md
songs/song2.md
songs/song3.md
```

####  Listing, removing, moving (renaming), and copying  directories

The following series of commands
```
$ mkdir card-games
$ cd card-games
$ mkdir war
$ touch war/rules.md
$ touch war/game.txt
$ cp -r war hearts
$ cp -r war blackjack
$ pwd
$ ls
```

`pwd` here would result in `card-games\` because we switched into this folder, but then didn't move out of it before, after, or during making the other folders or files.

`ls` here would result in `blackjack hearts war` because we are inside `card-games\`

Note that we utilized the flag `-r` here. This means 'recursive', which means the first directory argument (`war`) is copied in its entirety to the second argument (`hearts`), including any folder/files inside of it. If you leave off the `-r` flag, then the directory will not be copied because `cp` alone only copies files, not folders.

Creates the following file/folder structure
```
card-games/
card-games/blackjack/
card-games/blackjack/game.txt
card-games/blackjack/rules.md
card-games/hearts/
card-games/hearts/game.txt
card-games/hearts/rules.md
card-games/war/
card-games/war/game.txt
card-games/war/rules.md
```

Then if we did the following:
```
rm hearts/*.md
rm -r blackjack
```

The asterick `*` means wildcard and says that anything can go in its place.

So this would result in:
```
card-games/
card-games/hearts/
card-games/hearts/game.txt
card-games/war/
card-games/war/game.txt
card-games/war/rules.md
```

Note that we used the wildcard (`*`) here to delete any files inside the `hearts` directory that end with '.md'. In this case there was only one file that met this criteria, but if there had been more files with '.md' at their end, they would also have been removed. Relatedly, we can also use multiple wildcards in a command, like `rm *rules*`, which would remove any files with 'rules' in them: for example all of the following (had they exsisted): rules1.md, all-the-rules.txt, somerules.md, rules.doc, ...

Note that we also utilized the flag `-r` here. This means 'recursive', which means to delete the folder you reference as well as any folder/files inside of it. If you leave off the `-r` flag, then the non-empty directory will not be deleted.


