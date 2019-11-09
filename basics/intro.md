# Introduction to the Linux Command Line

* Most software regular users interact with has a graphical user interface (GUI)
* Some software does not need a GUI, especially software that runs on servers, utilies, etc
* The commandline, which by default is a program called Bash in Linux, provides a text-based interface to interact with non-GUI software
* Bash is a shell program, or commandline interpreter
* The first shell in Unix-like systems was the [Thompson shell](https://en.wikipedia.org/wiki/Thompson_shell) developed in 1971
* The shell you are using is likely the Bourne-again shell (Bash for short)

## General Command Syntax

* Though some commands are longer or shorter than others, commands generally have three parts:
1. Program name and command
2. Options
3. Argument(s)
* E.g
`$ git commit -m "Example commit"`
* `git add` is the command, with 'git' being the program name and 'add' being the command
* '-m' is the option (`-m` option refers to message, so it is followed by a message)
* Don't worry about the specifics of this example and what it means, it is intended only to illustrate the general structure of a command
* Some commands require no options or arguments to function properly
* E.g `$ ls`
* This command will print a list of all the files and directories inside the directory you are currently in (called the "working directory")
* First real command: `$ cd [path/to/dir]`
* The `cd` command is used for changing directories into the folder you want to be in
* `ls` can take options and arguments however, in order to modify its default behaviour
* E.g
`$ ls -a [path/to/different/dir]`
* By giving `ls` the option of `-a` we are telling it to list all files including hidden files, and by giving it a path to another directory as
an argument, it will list all the files and directories including hidden in the directory it was given as an argument
* Multiple options can be given to a command at the same time, and generally their order does not matter
* E.g
`$ ls -l -a`
* This command will list all files including hidden files and display them in long form to give more information such as permissions, author, etc
* When multiple options are given, they can be specified without spaces. `$ ls -l -a` will work the same as `$ ls -la`
* There are two kinds of options: shorthand and long-form. Shorthand options start with a single dash (-) and long-form start with two dashes (--)
* Long-form options cannot be combined without spaces the same way that shorthand options can

## Common Helpful Shortcuts

* Tab completion: using the `tab` key when typing a command or a file name or path will cause Bash to autocomplete it for you, if there is
only one thing you could be typing
* `ctrl` + `c`: cancel a command
* `[letter]` + `tab tab`: display all the commands that start with the specified letter
* `ctrl` + `a`: move to the beginning of a line
* `ctrl` + `e`: move to the end of a line
* `ctrl` + `left arrow`: move left one word
* `ctrl` + `right arrow`: move right one word
* `ctrl` + `u`: remove (crop) from cursor to start
* `ctrl` + `k`: remove (crop) from cursor to end
* `ctrl` + `shift` + `c`: copy to clipboard
* `ctrl` + `shift` + `v`: paste from clipboard
* `up arrow`: recall previous commands
* `down arrow`: scroll previous command history
* `ctrl` + `r`: search command history
* note: `^` caret character is shorthand for for `ctrl` key

## Finding Help for Commands

* There is no need to memorize all commands, this would not be practical
* Use the `$ man [command]` command to open the manual and read about how to use a certain command
* You can also use the `--help` option with a command to view information about the specified command
* E.g
`$ ls --help` will display information on the `ls` command, including all possible options
* You can also type `$ help` to view all Bash-specific commands as well as the Bash version you are using
* If you do not know the name of the command you need, you can search it using a program called apropos
* Search for the kind of function or command you need using plain English and apropos will search for commands and descriptions that
match the text you provide as an argument
* E.g
`$ apropos "list"`
* You will get a list of results that match "list" and you should be able to find what you are looking for if it exists

[Next](files_folders_navigation.md)
