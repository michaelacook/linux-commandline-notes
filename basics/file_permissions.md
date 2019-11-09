# File Permissions

* On Linux, files generally have three sets of permissions that apply to the user, group, and all others in that order
* Permissions refer to a user, group, or other's ability to read, write, and execute a file:
* **Read**: read the file but not write
* **Write**: change the file but not read
* **Execute**: run the file with loading it to another program
* (note: a file is executable when it can be run without being loaded into another program)
* The permissions for a file can be viewed by running `$ ls -l [file]`
* Permissions are displayed symbolically or with octal digits, and they always either take the form of three digits or groups of three characters
* E.g `-rwxrwxrwx`
* In the example above, each section has three letters representing the permissions granted to each entity. In this case it is read, write and execute for all three: user, group, and others
* In octal form, the same permission would read `777` with each digit representing a combination of permissions for each entity
* Permissions can be changed with the `$ chmod [permission] [arg file]` command

## Octal Permissions

* When representing permissions using octal notation, permissions take the form of three digits, each digit representing the read, write and execute permissions for each entity: user, group, others
* Each digit is the sum of the three digits that respectively represent a permission
* **read** = 4, **write** = 2, **execute** = 1
* Therefore, if a file can be read, altered, and executed by the user but no one else, it's octal permission would be 700: \
(4 + 2 + 1) + 0 + 0
* E.g to change the permissions for a file called `example.txt` to allow read, write, execute for users, read and execute for the group, and read only for all others, you would run the following:
`$ chmod 754 example.txt`


### Octal File Permissions
|    | Read (4) | Write (2) | Execute (1) | Result |
| -- | -- | ----- | ------- |  ------  |
| User | r | w | x |  7  |
| Group | r | - | x | 5 |
| Others | r | - | - | 4 |

### Octal Values
| Octal Value | Mode | Octal Value | Mode |
| ----------- | ---- | ----------- | ---- |
| 0 | - - - | 4 | r - - |
| 1 | - - x | 5 | r - x |
| 2 | - w - | 6 | r w - |
| 3 | - w x | 7 | r w x |

## Symbolic Permissions

* When you view permissions for a file, they usually display symbolically by default
* Instead of the permissions for each entity being represented by a single digit, the permissions for each entity, user, group, others, are represented by a combination of up to three symbols: **r** for read, **w** for write, **x** for execute, **-** for no permission
* Each symbolic permission is a string of nine characters not including the dash at the eginning
* E.g `-rwxr--r--` means the user can read, write and execute, the group can read but nothing else, and others can read but nothing else
* Changing permissions with symbolic notation is a bit different from using octal notation
* When using symbolic notation, each entity is specified individually
* **u** stands for user, **g** stands for group, **o** stands for others, **a** stands for all
* A + sign is used to add a permission, a - sign is used to subtract a permission, and the = sign is used to set a permission and erase any others
* E.g if `example.txt` has a permission of `-rwxrw-r--` and we want to change its permissions to 1. take away execution powers for the user, 2. take away writing power for the group, and add execution and write power for all others, we would run the following command:
`$ chmod u-x,g-w,o+wx`
* Permissions for entities can be changed individually as well E.g `$ chmod u=r example.txt`
* This will change only the user's permission but not the group or others
* Using the = sign will erase any other permissions already set and replace them with the permission you specify, so if you want to add or subtract a permission without affecting others use the + or - signs


### Symbolic File Permissions
|    | Read (r) | Write (w) | Execute (x) | Result |
| -- | -- | ----- | ------- |  ------  |
| User (u) | + | + | + |  u+rwx  |
| Group (g) | = | - | - | g=r |
| Others (o) | - | - | - | o-rwx |
| All (a) |  |  |  |  |

\+ adds permission; - removes permissions;
= adds permission but removes others


### Comparing Octal and Symbolic Values
| Octal Value | Symbolic Value | Result |
|-------------|----------------|--------|
| 777 | a+rwx | rwxrwxrwx |
| 755 | u+rwx, g=rx, o=rx | rwxr-xr-x |
| 644 | u=rw, g=r, o=r | rw-r--r-- |
| 700 | u=rwx, g-rwx, o-rwx | rwx------ |

## File and Group Ownership

* In the long form os `ls` there are two columns that show the user and group ownership for each file
* The username in the first column owns the file and is the entity for which the first set of permissions for a file apply to
* The group owner is the second column and the permissions in the second part of a permission apply to that group
* Can change the ownership of a file using the `$ chown [username] [arg file]` command
* E.g `$ sudo chown root example.txt` will change the ownership of the file to the root user
* `sudo` has to be used because you need root privileges to change a file to root ownership
* You can change the group that the file belongs to using the `$ chgrp [groupname] [arg file]` command

[Previous](sudo_user_roles.md) | [Next](linux_file_system.md) 
