# Files Folders and Navigation

## Files

* `$ file [arg file]` will output file type
* `$ stat [arg file]` will display file ownership, modification, permissions, and other extended information
* `$ ls [option] [arg dir]` will list files and folders inside the working directory by default
* An option of `-l` will list information about files and directories in long form with more information
* Specifying a path will list information about the files and folders of the path specified
* Using the `-r` option for recursive will list not only files and folders, but recursively list all subfolders and their files as well
* When navigating to a directory that has a space in it's name, you must either surround the name in quotation marks or escape the space with the `\` escape character
* E.g `$ cd "Example Directory"` or `$ cd Example\ Directory` will work
* If you want to return to the home directory, using `$ cd ~/` will bring you back to your user's home no matter where you are in the filesystem
* E.g:

```
$ pwd
/home/user/documents/financial/this_month
$ cd ~/
$ pwd
/home/user
```

### The `ls` Command

* Lists the contents of a directory
* Can list the contents of a directory recursively with the `-r` option
* Can view more information in a list with the `-l` option
* Long-form option `--color=always` that tells `ls` to list information colour-coded
* Long-form:

```
$ ls -l
user@computer-name:~/Desktop/commandlinebasics/Exercise Files total 148
drwxr-xr-x 8 username group   4096 Nov  3 14:18 departments
---xr--r-- 1 username group    160 Nov  2 13:02 dupes.txt
-rw-r--r-- 1 username group      0 Nov  3 14:53 example.txt
-rw-r--r-- 1 username group 130340 Nov  2 13:02 log.tar.gz
-rw-r--r-- 1 username group   1474 Nov  2 13:02 poems.txt
-rw-r--r-- 1 username group    129 Nov  2 13:02 simple_data.txt
-rwxr-xr-x 1 username group     64 Nov  2 13:02 test.sh
```

* From left to right:
1. Whether item is a file (-) or directory (d)
2. Permissions
3. Owner and group ownership
4. size in bytes (use `-h` option to see file size in appropriate unit of measure)
5. Date and time of last modification
6. Name of file, directory or link and what it points to


## Creating and Deleting Directories

* `$ mkdir [path/to/name]` to make a new directory
* By default `mkdir` will create a directory in the working directory, but you can specify a path to another folder to make your folder there
* E.g `$ mkdir newFolder` will create a folder called "newFolder" in the working directory, and `$ mkdir ../newFolder` will create a folder called "newFolder" one level up toward `/`
* To make a parent directory with any number of child subdirectories use the `-p` option
* E.g `$ mkdir -p newFolder/child/grandchild`
* Delete a directory with `$ rmdir [path/to/dir]`
* `rmdir` only works on empty folders. A better way will be discussed below


## Copy, Move and Delete Files and Folders

* `$ cp [arg file] [arg path/to/destination]` is used to copy a file from one location to another
* If the destination is a file name that does not exist, then `cp` will create the new file and copy the contents of the first into it
* `$ mv [arg file] [arg path/to/destination]` will move a file
* `mv` can also be used to rename a file by specifying a new name within the current working directory
* E.g:
```
$ mv example.txt test.txt
$ ls
test.txt
```
* (note: a single dot '.' represents the working directory and can be used as a shorthand for it's path)
* To find current working directory, use `$ pwd` for print working directory
* To delete a file use `$ rm [arg file]` but be aware that unlike managing files with a GUI file browser, there is no recycle bin in Bash so deleting a file is permanent
* To delete a directory and all it's contents use `$ rm -r [arg path/to/dir]`
* `rmdir` only works on empty folders, but using `rm` with the `-r` option for recursive will delete all files and folders inside a directory, and then the directory itself

### Wildcards

* Wildcards are characters that can be used to stand for a pattern or a character
* \* is used to stand for any number of characters
* ? is used to stand for a single character
* Those who have used SQL will recognize these characters: ? is frequently used as a stand-in for variables in SQL when using the PHP `PDOStatement` object, and * is frequently used to run a query that returns data from all columns in a table E.g `SELECT * FROM table;`
* E.g
`$ cp *.txt path/to/dir` will copy all files with any name and a .txt file extension
* Another e.g `$ mv example_*.txt path/to/dir` will move all files that begin with 'example_' and end with .txt to the path specified
* If \* is used without any text then it represents all files in the working directory
* `$ cp example?.txt path/to/dir` will move all files that start with 'example' and have any character directly after, and end with .txt
* E.g:

```
$ ls
example1.txt example2.txt example3.txt
$ cp example?.txt ../
$ cd ../
$ ls
example1.txt example2.txt example3.txt  
```

* The main difference between \* and ? is that \* can stand for as many characters as you want, but ? can stand for only one
* When working with large numbers of files wildcards can come in handy and make what would be tedious tasks more efficient

### Finding Files

* To find a file, use the `$ find [arg scope] [option] [arg pattern]` command
* The scope is the directory to start searching in
* There are a number of options but a common one is `-name`
* Using the `-name` pattern you can then specify a file name and the `find` program will search for a file starting in the given scope that matches the specified name
* Here wildcards can start to come in handy
* E.g `$ find . -name "test"` this will search the working directory and it's subdirectories for a file with the name "test"
* E.g `$ find ~/ -name "anything*"` this will search the home directory and it's subdirectories for a file with the name "anything" that has any file extension

[Previous](intro.md) | [Next](sudo_user_roles.md) 
