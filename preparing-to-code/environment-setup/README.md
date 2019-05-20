# Environment Setup

_JumpStart: Lesson 7_

## Learning Goals

* To setup a development environment
* Gain confidence in using interactive Ruby (`irb`)
* Gain confidence in using VS Code

## Activities

* Review notes
* Complete install fest
* (Optional) [Creating a gist from VS Code](gist-from-vscode.md)

## Notes

### Interactive Ruby

Interactive Ruby (`irb`) is a computer program that allows the user to enter Ruby code and get results of that code immediately. It is a feature known as a REPL(read, evaluate, print loop). These kinds of programs are great for trying out new commands, practicing syntax, and evaluating solutions to small problems. It's one of the two primary ways to use Ruby to interact with a computer. The other is to put Ruby code into a file and then ask the computer to read and execute the code in the file. We will do lots of both.

### Text Editors

A text editor is a computer program that allows you to create and edit files that contain plain text. This is different than a robust word processing program like Microsoft Word, or Google Docs. When you're writing computer code, you don't need or want any special formatting to be part of the file. In fact, your code probably won't work at all unless it was written and saved in a plain text environment.

Text editors are commonly used by web designers and developers because it provides maximum flexibility to create just about anything. A text editor is not the same thing as an integrated development environment(IDE). While almost every IDE has the capability of creating and editing plain text documents, they also include a wealth of other features and powerful capabilities.

## Installfest

The purpose of these notes is to help you install and configure the software we need. It is really, really important to install everything in this list.

### Required software

*  [MacOS 10.12 Sierra](https://support.apple.com/en-us/HT208202) or [Mac OS 10.13 High Sierra] (https://support.apple.com/en-us/HT208969) or the newer version [[OS X 10.14 Mojave](https://support.apple.com/en-us/HT209149)
* [Xcode Command Line Tools](#xcode-command-line-tools)
* [Google Chrome (web browser)](#google-chrome)
* [VS Code (text editor)](#vscode)
* [Homebrew Package Manager](#homebrew-package-manager)
* [Ruby Version Manager (rvm) (package manager)](#ruby-version-manager)
* [Ruby (latest stable version of Ruby)](#ruby)

#### _macOS High Sierra_, _macOS Sierra_, or _OS X El Capitan_

_macOS_ (previously called _OS X_ and _Mac OS X_) is the name of the operating system found on Apple computers. Apple likes to give the versions of their operating systems odd names. They used to be big cats (Cheetah, Puma, Jaguar, Panther, Tiger, Leopard, Snow Leopard, Lion, and Mountain Lion). Now it's... I don't even know. Anyway, the three most recent versions are _macOS Mojave_, _macOS High Sierra_, and _macOS Sierra_. For Ada, your computer must be running one of these versions of macOS/OS X, with preference given to _Mojave_.

To check your version of macOS/OS X, click the Apple icon at the far left edge of toolbar at the top of the screen. From there, choose _About This Mac_. That'll open a window with lots and lots of information about your computer. Right at the top, in big type, is the current version of macOS/OS X.

![About This Mac](./images/about-this-mac.png)

![OS X Version](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macos/macos-high-sierra-about-this-mac-overview-version-build.jpg)

If your Mac isn't running _Mojave_, _High Sierra_, or _Sierra_, please use the App Store to update. You can open the desktop App Store by going back to the Apple menu and selecting __App Store...__. Operating System upgrades are free, and [Apple's got a detailed guide on updating](http://www.apple.com/osx/how-to-upgrade/).

#### Xcode Command Line Tools

_Xcode_ is the name of the collection of software tools used to create programs for _macOS_ and _iOS_ (the operating system on Apple's mobile devices like the iPhone and iPad). We'll need some parts of _Xcode_, but not the whole thing. The part we need is called the _Xcode Command Line Tools_. We won't be using them during the Jumpstart curriculum, but it makes sense to install them now. They can take a long time to download and install, so doing it now will save us lots of time in the classroom later.

We'll use the Terminal to install the _Command Line Tools_. Open Terminal and start the installation by typing `$ xcode-select --install`. Follow the instructions and wait for the installation to finish (Protip: have a snack and maybe go for a walk while it's downloading and installing).

After it finishes, verify the installation by typing `xcode-select -p`. It should respond with something very similar to `/Library/Developer/CommandLineTools` (the directory where they were installed).

#### Google Chrome

We will use the Chrome web browser by Google in class, because it provides more developer tools for us to use.

##### Google Chrome installation steps

* Download [Chrome](https://www.google.com/chrome/browser/desktop/index.html) to your Applications folder
* Open the downloaded application package and follow the instructions
* Drag Chrome to your dock

#### VS Code

At Ada Developers Academy, we will be using [Visual Studio Code](https://code.visualstudio.com/), a text editor, to write our code.  It is a popular code editor and has a number of features for debugging, and using Git.

##### VS Code installation steps

* Navigate to the [VS Code](https://code.visualstudio.com/) website
* Download the zip to your Applications folder
* Unzip the folder, by double-clicking, or right-click _Open_
* Drag VS Code to your Applications folder and open it up
* Press `F1` and type `Shell Command: install 'code' command in PATH`.  This will allow you to invoke VS code from the terminal. 

#### Homebrew Package Manager

[Homebrew Package Manager](http://brew.sh) makes it easy to install a variety of software packages, and is used by the following Ruby Version Manager (rvm).  

Installing Homebrew involves copying and pasting `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

You may need to enter your computer password to complete the installation.

##### Trust but Verify

Run `$ brew doctor`. Brew is super great at telling you what else it may need. Sometimes there are file permissions to fix. Sometimes there's a warning that can be ignored. If there's anything ever wrong with Brew, `brew doctor` will usually be able to tell you what it is and how to fix it.


#### Ruby Version Manager

[Ruby Version Manager (rvm)](https://rvm.io/) makes it easy to install, manage, and switch between Ruby versions. _rvm_ is a _package manager_; it's software to help us install other software. Most _package managers_ are just for installing, updating, and removing software packages, but _rvm_ has a lot of really useful features specifically for working with Ruby that we'll use throughout Ada.

Installing _rvm_ is done in the Terminal: `\curl -sSL https://get.rvm.io | bash -s stable`

The installation won't take long. When it's done, **close your Terminal (⌘-Q)** and then reopen it. You can find the ⌘ or 'Command' key next to your spacebar.    On a Mac pressing both command and 'Q' will quit the active application.

Verify all's well by running `$ rvm -v`. You should see something like `RVM version 1.29.8 (latest)`.

#### Ruby

Finally! Whew! Ruby is the first programming language we'll learn in the classroom. It's also my personal favorite, but that's just a happy accident.

Now that we've got _rvm_ handy, we can install Ruby by typing the following into our terminal: `rvm install 2.5.5`

<!-- ![Installing Ruby with rvm](../images/ruby-install.png) -->

Installing Ruby can take awhile, so feel free to take a break or go for a walk while _rvm_ gets things sorted. In short, _rvm_ will download the ruby version you specified (2.5.5), compile it (prepare it to work specifically on your computer's hardware), install the compiled code in the right place, and do some housekeeping in the (really likely) chance you'll encounter/create code that requires a different Ruby version.

When it's done, you can verify that everything succeeded by typing `$ ruby -v` into your terminal. The return should say something like `ruby 2.5.5p111 (2018-04-22 revision 53290) [x86_64-darwin16]`.

##### References

* [A Convincing Case for Visual Studio Code](https://blog.bitsrc.io/a-convincing-case-for-visual-studio-code-c5bcc18e1693)