# User Roles and `sudo`

* Linux is a multi-user environment and users' files are kept separate in their respective home folders
* When working on the command line you can switch between users using the `$ su [login]` where `[login]` is the username
* in Linux there are two main kinds of users: normal users and the **super user**
* Normal users can alter their own files but cannot install software or make changes to the system
* The super user, called **root** (not to be confused with the root directory) can do system administration and install software
* Most Linux distros do not allow you to do system admin tasks without the power of the root user
* This is why generally speaking, when you are using a Linux distro you will be asked for your password when installing software because you must temporarily use the power of root
* Normal users can temporarily use the power of the root user by using the `$ sudo [command]` command
* `sudo` tells Linux to execute what ever command comes after it with root user privileges
* After using `sudo` once there is usually a short grace period where you will still be able to do system admin tasks without having to input your password
* Linux generally blocks root privileges and requires your password to use root because a lot of damage can be done to a system using root user privileges
* Therefore it is good practice not to do work in root and to only use root user privileges when it is really necessary
* After doing something with `sudo` it is good practice to run the command `$ sudo -k` to give up root user privileges immediately
* However, if you really need to do work as the root user and need to spend a lot of time in root, you can fully switch over using `$ sudo -s`
* You will see that your prompt in Bash changes when you do and this is to remind you that you are using root privileges
* E.g:

```
user@computer-name:~/$ sudo -s
[sudo] password for user: [enter password]
root@computer-name:~#
```
* Notice that the `$` is now replaced with a `#` and your username has been replaced with root instead
* This is so that you know you are using root privileges
* When you want to switch back out of root, run `$ exit`

[Previous](files_folders_navigation.md) | [Next](file_permissions.md)
