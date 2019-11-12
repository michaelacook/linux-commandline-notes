# Find System Hardware and Disk Information

* If you are using a workstation computer then in most cases you will know what sort of hardware you are working with
* But this may not always be the case if you're accessing a remote computer or server
* To find out how much RAM the system you're using has, use the `$ free -h` command
* `-h` option gives numbers in human-readable format
* To view the processor resources for your machine, you can access the `cpuinfo` file in the `proc` directory: `$ cat /proc/cpuinfo`
* To view space on the hard drive, run the `$ df -h`
* Use the `$ sudo du [arg directory] -d[level]` disk usage command to see how much space files and folders take up on your system
* The `-d[level]` option tells the `du` command how many levels deep to show
* Use the `$ sudo lshw` command to list hardware
* This command outputs a lot of information so it is useful to view it in a text editor or redirect it to a file for easy browsing: `$ sudo lshw>my_hardware.txt`
* To find out networking information, use the `$ ip -a` command to find out address information for each of your network adapters

[Previous](kernel_and_distro_info.md) | [Next](install_update_using_pckgmngr.md)
