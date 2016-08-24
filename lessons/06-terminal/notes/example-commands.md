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

## Example 3: Removing, moving (renaming), and copying files

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

## Example 4: Listing, removing, moving (renaming), and copying  directories

The following series of commands
```
$ mkdir card-games
$ cd card-games
$ mkdir war
$ touch war/rules.md
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
card-games/blackjack/rules.md
card-games/hearts/
card-games/hearts/rules.md
cards-games/war/
cards-games/war/rules.md
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

Note that the `*` is a wildcard, which means anything can go in its place. In this case, that 'anything' is each of the directories.

Then if we did the following:
```
rm hearts/game*
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
