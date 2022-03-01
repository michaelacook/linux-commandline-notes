# Find Distro and Kernel Information

* Information about the Linux distribution you are using is kept in the `/etc` directory
* The specific file containing information about your distribution varies by distribution, but you can use a wildcard to find it: `$ ls -lah etc/*release` and then view the file with `cat`
* In Ubuntu, a very popular Linux distribution that you may well be running, the file is probably called `os-release` and is located in `/usr/lib/os-release`
* To find out the Linux kernel you are using, you can run the `$ uname -a`
* The `-a` option specifies that the command should show all information
* Running this command should output something like the following to your screen: `Linux [username]-[computername]-generic #34~18.04.2-Ubuntu SMP Thu Oct 10 10:36:02 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux`

[Next](system_hardware_disk_info.md)
