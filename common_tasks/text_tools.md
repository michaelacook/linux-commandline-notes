# View Text Files with `cat`, `head`, `tail` and `less`

* A lot of what you'll be working with at the command line is text and text files, it is important to know how to use programs for viewing and manipulating text

## `cat`

* Used to concatenate text
* More commonly `$ cat [arg textfile]` is used to print text to the screen from a file
* Also useful to pass the output of a text file to another command line program or series of piped commands

## `head` and `tail`

* Using `$ cat [arg textfile]` is useful but if there is more text than space in the terminal window then viewing all the lines at once is impossible and will require scrolling
* The `head` and `tail` commands allow you to view lines from the beginning or end of a file
* `$ head [arg textfile]` allows you to view the first ten lines of a text file
* `$ tail [arg textfile]` allows you to view the last ten lines of a text file
* By default both will show ten lines, but the `-n[number]` option can be used to customize how many lines of text it will show you
* E.g `$ head -n5 example.txt` will output the first five lines of text
* E.g `$ tail -n17 example.txt` will output the last seventeen lines of text

## Combining Commands

* Text commands can be combined to do anything you want
* E.g `$ cat example.txt | cat -n | tail -n5`
* This will output the last five lines of text from `example.txt` numbered since the `-n` option for `cat` numbers the lines
* Note that the order in which commands are piped together affects their output
* In a series of pipes commands, the programs run from left to right

## `less`

* Paginates text and provides navigation tools
* Used to viewing longer text files
* Can be used by itself with a single file or can receive input from another commad
* `$ less [arg textfile]`
* Scroll up and down with arrow keys
* Scroll down one line at a time with enter
* Scroll down one screen/page at a time with spacebar
* Navigate forward and backward with the 'f' and 'b' keys
* 'h' for help
* 'q' to quit

[Previous](pipes.md) | [Next](grep.md)
