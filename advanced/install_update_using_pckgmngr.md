# Install and Update Software With a Package Manager

* It is common to use a package manager for installing software on Linux systems
* Different distros use different package managers

### Package Managers by Major Distro
| Distro | Package Manager |
| ------ | --------------- |
| Debian, Ubuntu, etc. | APT |
| Red Hat, CentOS | YUM |
| Fedora | DNF |
| SUSE | YaST |
| Arch Linux | Pacman |

* Package managers have similar features but sometimes implement them in different ways
* Package managers also allow you to search for and install updates for software you are running

## APT

* Search for software: `$ apt search tree` (tree is a program to display directory structures in tree format)
* See information about the package with `$ apt show tree`
* Before installing, run `$ sudo apt update`
* Install a package with `$ sudo apt install [arg packagename]`
* After installing software, the package will usually come with help entries availabe using the `man` command to bring up the manual
* To update your software, first run `$ sudo apt update` which refreshes the list of available packages from the repository mirrors. When it's done, APT knows which packages need updating
* Then run `$ sudo apt upgrade` to install updates
* It's good to do this every so often to keep your software up to date

[Previous](system_hardware_disk_info.md) | [Next](next_steps.md)
