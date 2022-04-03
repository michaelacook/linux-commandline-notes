# Working With `.tar` and `.zip` Archives

* Data that need to be archived for safe keeping are recorded to backup tapes and stored in a secure location
* Tapes need files to be put together sequentially in a linear fashion to be recorded onto the tape
* Archives are files containing sequences of files that can be written to another disk or to a tape drive
* Archives are also very useful for distributing files and software over the internet because they allow many files to travel all together in one archive file, and they can be compressed to reduce their size

## `.tar` Files

* `.tar` (tape archive) files are a common way to package and distribute software and data for Linux and Mac OS
`.tar` files, unlike `.zip` files do not offer compression themselves, but can be compressed
* Compression: reducing the size of a file using mathematical techniques
* Compressed formats: `.tar.gz`, `.tgz`, `.tar.bz2`
* To create a regular `.tar` archive, first go up a level `$ cd ../` and then run the command `$ tar cvf [arg filename.tar] [arg target/dir]`
* This will create an archive with the name specified from the target directory specified
* The `-c` option creates the archive, the `-v` option is for verbose, so it outputs each file that gets added to the archive (good for creating an index of the archive's contents), and the `-f` option tells the command to output the archive to a file, rather than outputting it as text on the screen
* To use the default gzip compression use the `-z` option and use the file extension `.tar.gz` or `.tgz`
* To create a compressed archive with another algorithm use the `-a` option and then specify the particular compression file extension you want to use
* E.g `$ tar -caf example.tar.gz Example/Directory` will create an archive, output it to the filename specified, and use the gz compression
* (note: bz2 compression can reduce file size a bit more than gz but takes longer to create)
* To unpack an archive, create a directory you want to extract your archive to and `mv` your archive into it, then `cd` into that directory and run `$ tar xf [archivename|file]`
  * To extract files from an archive using globbing you must use the `--wildcards` option
* To extract a single file from an archive run `tar xzf [archive] [file]`
* To unpack an archive to a directory other than the working directory, use the `-C` option and specify a target directory: `$ tar xf [archivename] -C [target/dir]`
* To remove (not unpack, but just remove) a file from an archive, run `tar --delete --file=[archive.tar] [file]`
* `-C` specifies a target directory for unpacking an archive
* To append a file to a `.tar` archive use the `-r` option: `tar -rf [archive file] [file]`
* To read the list of files in an archive run `tar -tf [archive file]`
* `tar` has a huge number of options that should be explored in the `man` pages

### Compression Types 
- **gzip**: the default compression used by tar via (-z), a good balance of speed and size reduction
- **bzip2**: an alternative compression algorithm, typically slower than gzip due to higher compression
- **zip**: the algorithm used by the `zip` command, and all-in-one compression and archiving utility popular with other operating systems


## `.zip`

* Data compression: the `zip` and `unzip` commands can create and open compressed data archive files
* A bit more cross-platform friendly than `.tar`, working seamlessly across Linux, Windows and Mas OS
* To create a `.zip` archive run `$ zip -r [archivename] [target/dir]`
* (Note: you must use the `-r` recursive option or `zip` will create an archive of an empty folder)
* When the command is executed, it will output a list of files and how much each file was reduced in size to the screen
* To extract a `.zip` file, `mv` the file into the directory you want to extract it to, then `cd` into that directory and run `$ unzip [archivename]`

## `gzip` 
- it's own command 
- zip and unzip files 
- refer to man pages


[Previous](nano.md) | [Next](output_redirection.md)
