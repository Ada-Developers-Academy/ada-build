# The Terminal
_Jump start: Lesson 6_

## Learning Goals
- Vocabulary: Terminal, command line, commands
- To know advantages of the command line and why programmers use it
- To utilize the terminal to navigate, create, delete, and modify files and folders
- To know and utilize basic terminal commands including: `ls`, `cd`, `touch`, `mkdir`, `rm`, `mv`, `cp`, `man`, `pwd`, `whoami`, `cat`

## Activities
* Review the notes
* Complete [Learn the Command Line](https://www.codecademy.com/en/courses/learn-the-command-line/)
* (Optional) Read [Command Line Crash Course](http://cli.learncodethehardway.org/book/)

## Notes
### Folder Setup
When you are writing code, it is good to have a folder structure which is logical to you so you can quickly find the code and files you are looking for.

1. Create a new folder called `ada` inside of your __home directory__ to store Ada-related folders and files. Once the folder is created, switch into that new folder.
```bash
cd ~
mkdir ada
cd ada
```
1. Create a new folder called `jumpstart` which will store all folders and files related to this Jumpstart work. Once the folder is created, switch into that new folder.
```bash
mkdir jumpstart
cd jumpstart
```
1. Verify that the folder structure was created appropriately by running the `pwd` command, the output should include your user name and end with `/ada/jumpstart`.

### The Command Line

As a programmer, you should become fluent with your computer's __command line__, in O SX that command line application is called __Terminal__. A command line approach is much more effective for many tasks in programming.

#### How to get started
- Find the program 'Terminal' on your computer, add it to your dock, and then and open it

#### Terminal Terminology

|  Term | Definition |
| :--- | :--- |
| Console | The system as a whole |
| Command | Actions that we want our computer to do |
| Arguments | Any additional information the command needs to execute; not all commands require arguments |
| Prompt | This is the beginning of the command line, it usually provides some contextual information like who you are, where you are and other useful info; after the prompt is where you will be typing commands |
| Terminal | The software application we use to interact with the console |

### How the command line works
The terminal operates in a repeating sequence of steps:

1. Displays a single line of text (called a prompt)
1. Accepts a single line of text (called a command)
1. Executes or runs the command
1. Displays output (not all commands display output)
1. Repeats, starting from step 1

### Running a Command
Commands almost usually have 3 parts

```
[command] [options] [arguments]
```

### Commands
Try out these commands first, and record what happened.

| Command | What happened? |
| :--- | :--- |
| `ls -a .` | | 
| `man ls` | |
| `q` | |
| `pwd` | |
| `cd ~` | |
| `cd .` | |
| `cd ..` | |
| 'cd -' | |


Then use `man` to explore these commands.

| Command | Explanation |
| :--- | :--- |
| `man` | Manual: Open the manual for a specific command ('q' to quit out of manual mode) |
| `pwd` | Present Working Directory: Display the current location as a "path" (sequence of child directories separated by `/`) starting with the root directory `/` |
| `ls`  | List Directory: Display all of the child files and directories for the current location |
| `cd` | Change Directory: Move to a different location, all further commands execute at that location |
| `mkdir` | Make Directory: Create a new directory with the name specified |
| `touch` | Create new file or update timestamp of existing file: If the file argument does not exist, create it as an empty  |file. If the file argument does exist, 'touch' it's timestamp (last modified date/time) to be the current date/time. |
| `cp` | Copy: Copy argument1 to argument2 |
| `mv` | Move: Move argument1 to argument2 (removes argument1). This is like renaming. |
| `rm` | Remove: Delete the file or folder passed to `rm` |
| `less` | Print the contents of the argument to the screen with the ability to scroll through (also [`more`; less is more, more or less](https://en.wikipedia.org/wiki/Less_(Unix))) |
| `cat` | Print the contents of the argument to the screen (no scrolling) |
| `whoami` | Tells you what user you are currently working as |


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

##### Commands
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

##### File/folder structure
```
lessons/
lessons/assignments/
lessons/assignments/things-to-try.md
lessons/notes/
lessons/notes/learning-styles.md
```

#### Removing, moving (renaming), and copying files

##### Commands
```
$ mkdir songs
$ touch songs/song1.md
$ touch songs/song2.md
$ touch songs/song10.md
```

##### File/folder structure
```
songs/
songs/song1.md
songs/song2.md
songs/song10.md
```

##### Command
```
rm songs/*1*
```

##### File/folder structure
```
songs/
songs/song2.md
```

##### Commands
```
$ cp song2.md song3.md
$ touch song4.md
```

##### File/folder structure
```
songs/
songs/song2.md
songs/song3.md
songs/song4.md
```

##### Command
```
$ mv song4.md song1.md
```

##### File/folder structure
```
songs/
songs/song1.md
songs/song2.md
songs/song3.md
```

####  Listing, removing, moving (renaming), and copying  directories

##### Commands
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

##### File/folder structure
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

##### Commands
```
rm hearts/*.md
rm -r blackjack
```

##### File/folder structure
```
card-games/
card-games/hearts/
card-games/hearts/game.txt
card-games/war/
card-games/war/game.txt
card-games/war/rules.md
```

The flag `-r` means __recursive__.

Note that we used the wild card (`*`) here to delete any files inside the `hearts` directory that end with '.md'. In this case there was only one file that met this criteria, but if there had been more files with '.md' at their end, they would also have been removed. Relatedly, we can also use multiple wildcards in a command, like `rm *rules*`, which would remove any files with 'rules' in them: for example all of the following (had they exsisted): rules1.md, all-the-rules.txt, somerules.md, rules.doc, ...
