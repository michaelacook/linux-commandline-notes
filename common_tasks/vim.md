# Edit Text with Vim

* Vim is a command line text editor
* Vi was a popular Unix text editor, and Vim stands for Vi-Improved
* Linux comes with a truncated version of Vim already installed, but to run the full version of Vim download and install: `$ sudo apt install vim`
* To start Vim, use run `$ vim` or to open a text file, run `$ vim [arg file]`
* There are two modes in Vim: **insertion mode** and **command mode**
* Insertion mode is for actually typing and editing text
* Command mode is for running commands like saving, searching, etc and is the default mode when you start Vim
* use the `i` key to enter insertion mode, and use the `Esc` key to enter back into command mode
* Keys do different things in the two modes
* If you want to enter insertion mode but type text at the beginning of the line use `shift` + `i`
* To enter insertion mode with a new line, use `o` instead of `i`
* To save, go back into command mode and use `:w` to save, or write the file and enter a name
* E.g `Esc` + `:w new.txt` + `Enter`
* To save and quit at the same time run `:wq` for write and quit

## Shortcuts
* `shift` + `g`: move to bottom of the file
* `1` + 'shift' + `G`: move to top of the file
* `)` and `(`: move back and forward by sentence
* '{' and `}`: move back and forward by paragraph
* `:q!`: quit without saving (must be in command mode: `Esc`)

[Previous](manipulating_text.md) | [Next](nano.md)
