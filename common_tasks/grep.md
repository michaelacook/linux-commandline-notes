# Search for Text with `grep`

* The `grep` tool searches text or files for a given string or pattern of text
* To find specific text in a text file, use `$ grep [arg pattern] [arg textfile]`
* The pattern can either be literal text or a regular expression
* When using `grep` the program will output all lines from the file that contain the text or pattern searched for, and all entities that match the query will be highlighted
* The `-n` option will include the line number of each line of output
* `grep` is case-sensitive by default, but using the `-i` option alters it to be case insensitive
* The `-v` option is used to omit lines containing text you wish not to see
* E.g `$ grep -v "example" example.txt`
* This will output all lines that do not contain the string 'example'

## Regular Expressions

* `grep` is great because it supports regular expressions (regexs)
* Regular expressions are expressions or strings of pattern and text that allow you to search for more complex patterns of text
* The `-E` option is used to specify that you are using a regular expression when running `grep`
* E.g `$ grep -E [hijk] example.txt` will search `example.txt` for text that contains 'h', 'i', 'j' or 'k'
* E.g `$ grep -E "\w{6,}" example.txt` will search for six or more characters considered a word character, or all words longer than 6 characters

[Previous](text_tools.md) | [Next](manipulating_text.md)
