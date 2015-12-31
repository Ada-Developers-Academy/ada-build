# Notes: Example Commands

## Example 1: Making and navigating directories

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

## Example 2: Creating and printing files

The following series of commands
```
$ mkdir lessons
$ cd lessons
$ mkdir 00-learning-style
$ mkdir 00-learning-style/assignments
$ mkdir 00-learning-style/notes
$ touch 00-learning-style/assignments/things-to-try.md
$ cd 00-learning-styles/notes
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

## Example 3: Removing, moving, and copying files

## Example 4: Listing, removing, moving, and copying  directories
