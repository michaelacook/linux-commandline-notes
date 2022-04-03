# Output Redirection

* Output of a program can be redirected to different files or **streams**
* There are three main streams that output can be redirected to:
  * Standard input - keyboard input
  * Standard output - output of commands to the terminal screen
  * Standard error - output of commands when an error occurs

### Streams

| Stream | Number | Usage |
| ------ | ------ | ----- |
| Standard input (`stdin`) | 0 | Text input |
| Standard output (`stdout`) | 1 | Normal text output |
| Standard error (`stderr`) | 2 | Error text |

## Redirecting Output

* To redirect the output of a command to a file, you specify your command and any options, then specify the current stream number and use the `>` operator and then the file you wish to redirect output to
* E.g `$ ls 1>filelist.txt` will redirect the output of the `ls` command in the `stdout` to a new file named `filelist.txt`
* The result of running the `ls` program therefore does not print to the `stdout`
* Redirecting the `stdout` is very common, so there is a shorthand way to do it that leaves out the stream number: `$ ls > filelist.txt`
* An error message outputted to the `stderr` can also be redirected
* E.g:

```
$ ls notReal
ls: cannot access 'notReal': No such file or directory

$ ls notReal 2>errorlog.txt

$ cat errorlog.txt
ls: cannot access 'notReal': No such file or directory
```

* You can have more than one redirection at a time
* For example, redirecting the `stdout` for a list of successfully copied files to a log file and redirecting the `stderr` messages for any unsuccessful files to an error log
* The redirection operator can be dangerous because it will redirect anything even empty space to a file and overwrite that file
* To append a stream output to a file rather than overwrite it, use `>>` rather than `>`
* E.g `$ echo "some text" >> example.txt`

## Passing file contents to a command
- Just as you can redirect stdout to another stream or to a file, you can also pipe the contents of a file into a command 
- E.g `grep lorem < lorem.txt`
- You simply specify the command and then a left-pointing arrow and the file to read from
- This can be useful but is less common than redirecting output to a file

[Previous](archives.md) | [Next](environment_variables.md)
