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

The following series of commands
```
$ mkdir card-games
$ cd card-games
$ mkdir war
$ touch war/rules.md
$ cp war hearts
$ cp war blackjack
```

Creates the following file/folder structure
```
card-games/
card-games/blackjack/
card-games/blackjack/rules.md
card-games/hearts/
card-games/hearts/rules.md
cards-games/war/
cards-games/war/rules.md
```

If we wanted to then rename (move) all the rules.md files at once, we could do:
```
mv */rules.md */game-rules.md
```

Which would result in:
```
card-games/
card-games/blackjack/
card-games/blackjack/game-rules.md
card-games/hearts/
card-games/hearts/game-rules.md
cards-games/war/
cards-games/war/game-rules.md
```

Note that the `*` is a wildcard, which means anything can go in it's place. In this case, that 'anything' is each of the directories.

Then if we did the following:
```
rm card-games/hearts/game*
rm -r blackjack
```

Which would result in:
```
card-games/
card-games/hearts/
cards-games/war/
cards-games/war/game-rules.md
```

Note that we used the wildcard (`*`) here again to delete any files inside the `hearts` directory that began with 'game'. In this case there was only one file that met this criteria, but if there had been more files with 'game' at their start, they would also have been removed. Relatedly, we can also use multiple wildcards in a command, like `rm *rules*`, which would remove any files with 'rules' in them: for example all of the following (had they exsisted): rules1.md, all-the-rules.txt, somerules.md, rules.doc, ...

Note that we also utilized the flag `-r` here. This means 'recursive', which means to delete the folder you reference as well as any folder/files inside of it. If you leave off the `-r` flag, then the non-empty directory will not be deleted.

## Example 4: Listing, removing, moving, and copying  directories
