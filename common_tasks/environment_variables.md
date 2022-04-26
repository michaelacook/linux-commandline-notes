# Exploring Environment Variables and `PATH`

* The shell environment has a number of variables or paramters that set different information and options that usually go unnoticed
* Environment variables can be viewed by running `$ env`
* For the purpose of this command line introduction most of the variables are not important, except the `PATH` variable

## `PATH`

* View the `PATH` env variable with `echo $PATH`
* Causes problems some times and you may need to be able to update this variable
* In bash and other shells, `PATH` is a list of paths where the shell is told to look for files outisde the working directory
* Bash uses the paths in the `PATH` variable to look for files needed to run programs even when the working directory is not in the directory where command line program files are located
* To find the path where the executable or binary is for a program is located, run `which [command/program/script]`
* Without the data in the `PATH` variable it would be necessary to provide the path to the program for every command you run
* When you run a command, Bash looks for the files for the command you are running in the paths contained in the `PATH` environment variable
* To find the path for a command's file run `$ which [commandname]`
* In most cases, install software with a package manager installs the software in a directory that is already in the list contained in `PATH`, but there could be some cases where this may not be true and you will need to add the path to your program to your `PATH` variable to allow you to run that tool on the command line
* To add a path to `PATH`, edit `.profile` which is a hidden file in the `home` directory
* Navigate to the `home` folder `$ cd ~` and run `$ nano .profile`
* Once you have opened `.profile` go to the bottom of the file and type
`PATH="$PATH:/path/to/tool"` and give the path to the software that you want to be able to use on the command line
* Save and close nano and restart your shell and you should be able to use your command line tool
* on my Ubuntu 20.04 LTS installation system-wide PATH file is set in `/etc/environment`

[Previous](output_redirection.md)| [Next](links.md)
