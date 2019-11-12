# Manipulate Text with `awk`, `sed`, and `sort`

* One of the tasks of a system administrator or systems analyst is to make use of data from various logs or outputs
* There are several tools for extracting and presenting data in various ways
* `awk` and `sed` commands can both be used to programmatically manipulate text in streams or files

## `awk`

* `awk` is used for extracting programmatically determined data
*  Write an awk program in a shell file or at the command line to get certain data out of a file or stream
* Data is considered in terms of delimiters or field separators: breaks or characters that determine divisions in the data (spaces, tabs, or another specified string)
* Defaults are tabs and spaces
* E.g `$ awk '{print $2}' example_data.txt`
* Single quotes contain the `awk` program
* This command will print out the second column of data in a file that contains a table of data
* E.g:

```
$ cat simple_data.txt

Name	ID	Team
Scott   314	Purple
Ananti  991     Orange
Jian    3127    Purple
Miguel  671     Green
Wes	1337	Orange
Anne	556	Green

$ awk '{print $2}' simple_data.txt

ID
314
991
3127
671
1337
556
```
* You can include other delimiters and items of data as well
* E.g `$ awk '{print $2 "\t" $1}'` will print out column two followed by a tab and then column one


## `sed`

* Another command for modifying data from a file or stream
* Stands for "stream editor"
* `sed` is helpful for changing data: the most basic function of `sed` is replacing one string with another
* `$ sed [arg "character/entity/replacement/"] [arg file]`
* `$ sed "s/Orange/Red" example.txt` will substitute each instance of "Orange" with "Red"
* The 's' at the beginning stands for "substitute"


## `sort`

* Used to sort data passed to it in various ways
* By default will sort text in alphabetical order
* `$ sort [arg textfile]`
* Using the `-k[key]` option you can specify a sort key to use to sort the data according to your needs
* E.g `$ sort -k2 example.txt` will sort the data by the second column of data
* Using the `-n` option will give a numeric sort rather than a sort based on text
* `sort` can also be used to output unique lines of a file or remove duplicates from output using the -`u` option
* E.g `$ sort -u example.txt` will output all unique lines and leave out any duplicates
* The `sort` command can be used to reorder lines of text according to different criteria
* Makes a helpful step in a set of pipes commands especially working with data where order matters, such as dates or timestamps


## Other Commands

* `rev` - prints a file in reverse
* `tac` - concatenates or prints files in reverse (`cat` backwards)
* `tr` - translates or modifies individual characters according to paramters

[Previous](grep.md) | [Next](vim.md)
