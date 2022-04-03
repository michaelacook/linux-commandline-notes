# Using Pipes `|` to Connect Commands

* The pipe `|` operator is used to take the output of one command and send it to another command
* E.g `$ command1 | command2`
* You can think of commands as individual processing nodes that output data, and pipes as connections between them
* Another e.g `$ cat users.txt | sort -u | ...`
* The pipe operator works whether there is a space between it and the command or not
* The `$ echo [arg text]` command outputs text passed to it as an argument
* The `$ wc [arg text]` command outputs the number of lines, words, and characters to text passed to it as an argument
* `echo` and `wc` can be combined:

```
$ echo "hello" | wc
    1   1   6
```
* There is one line of text, one word, and six characters
* The output of `echo` which was 'hello' was sent to the `wc` command, which then output the word count
* (note: `wc` counts an invisible character at the end of a line called a newline character)
* You can pipe the output of any command to any other command to combine commands in infinite ways
* note: You can re-run the last command by running `![command]` and all your arguments and options will be remembered

[Previous](unix_philosophy.md) | [Next](text_tools.md)
