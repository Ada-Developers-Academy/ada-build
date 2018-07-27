# Terminal
_Jump start: Lesson 6_

## Learning Goals
- Understand the terms `Terminal`, `command line`, `commands`
- To know advantages of the command line and why programmers use it
- To utilize the terminal to navigate, create, delete, and modify files and folders
- To know and utilize terminal commands including: `ls`, `cd`, `touch`, `mkdir`, `rm`, `mv`, `cp`, `man`, `pwd`, `whoami`, `cat`

## Activities
* Review the notes
* Read the [Command Line Intro Book](https://hellowebbooks.com/learn-command-line/#cmd-tut) by Tracy Osborn
* Complete [Learn the Command Line](https://www.codecademy.com/learn/learn-the-command-line)
* (Optional) Read [Command Line Crash Course](http://cli.learncodethehardway.org/book/)

## Notes
### Folder Setup
When you are writing code, it is good to have a folder structure which is logical to you so you can quickly find the code and files you are looking for.

1. Create a new folder called `ada` inside of your home directory (you can get to your home directory by typing `cd ~`) to store Ada-related folders and files; once the folder is created, switch into that new folder.
    ```bash
    cd ~
    mkdir ada
    cd ada
    ```

1. Create a new folder called `jumpstart` inside of your new `ada` folder which will store all folders and files related to this Jumpstart work. Once the folder is created, switch into that new folder.
    ```bash
    mkdir jumpstart
    cd jumpstart
    ```

1. Verify that the folder structure was created appropriately by running the `pwd` command, the output should include your home directory and end with `/ada/jumpstart`.

### The Command Line
As a programmer, you should become fluent with your computer's __command line__, in O SX that command line application is called __Terminal__. To get started find the application named 'Terminal', add it to your dock, and then open it.

#### Terminal Terminology
|  Term | Definition |
| :--- | :--- |
| Console | The system as a whole |
| Command | Actions that we want our computer to do |
| Arguments | Any additional information the command needs to execute; not all commands require arguments |
| Prompt | This is the beginning of the command line, it usually provides some contextual information like who you are, where you are and other useful info; after the prompt is where you will be typing commands |
| Terminal | The software application we use to interact with the console |

#### How the command line works
The terminal operates in a repeating sequence of steps:

1. Displays a single line of text (called a prompt)
1. Accepts a single line of text (called a command)
1. Executes or runs the command
1. Displays output (not all commands display output)
1. Repeats, starting from step 1

#### Parts of a command
Commands almost usually have 3 parts

```
[command] [options] [arguments]
```

#### Sample commands
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
| `cd -` | |

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

### Practice making files and folders (i.e., directories)

#### Overview
Each practice example will first list the `commands` followed by the `directory structure` those commands created, followed by any `notes` relative to that example.

1. market
    ##### Commands
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

    ##### Directory structure
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

    ##### Notes
    * `pwd` at the end of the commands should result in `market/sweets/`
    
1. lessons
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

    ##### Directory structure
    ```
    lessons/
    lessons/00-learning-style/
    lessons/00-learning-style/assignments/
    lessons/00-learning-style/assignments/things-to-try.md
    lessons/00-learning-style/notes/
    lessons/00-learning-style/notes/learning-styles.md
    ```
1. songs
    ##### Commands
    ```
    $ mkdir songs
    $ touch songs/song1.md
    $ touch songs/song2.md
    $ touch songs/song10.md
    $ rm songs/*1*
    $ cp song2.md song3.md
    $ touch song4.md
    $ mv song4.md song1.md
    ```

    ##### Directory structure
    ```
    songs/
    songs/song1.md
    songs/song2.md
    songs/song3.md
    ```

1. card games
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
    $ rm hearts/*.md
    $ rm -r blackjack
    ```

    ##### Directory structure
    ```
    card-games/
    card-games/hearts/
    card-games/hearts/game.txt
    card-games/war/
    card-games/war/game.txt
    card-games/war/rules.md
    ```

    ##### Notes
    * The flag `-r` means __recursive__
    * The wild card (`*`) deletes any files inside the `hearts` directory that end with '.md'; in this case there was only one file that met this criteria, but if there had been more files with '.md' at their end, they would also have been removed
    
