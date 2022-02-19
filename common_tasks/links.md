# Links
- Special kind of file that references another file
- Used to avoid having duplicate files 
- A link establishes a pointer in one place to a destination file in another place 
- Two types: hard links and soft or symbolic links (symlink)
  - Hard links point to specific data (by inode) on the disk
  - Soft links point to another file 
- When you view files in a directory and you see an arrow pointing from one file to another, this indicates a link

## Symlinks 
- To create a symlink for a file, use the command `ln -s [source file] [link name]`
- I.e `ls -s poems.txt writing.txt`
- The symbolic link is relative - moving it elsewhere in the file system will break it
  - This is the case unless you specify an absolute path when creating the symlink
  - Moving the original file however, will lead to an absolute symlink being broken for obvious reasons

## Hard links 
- A pointer to the original data on the hard disk
- Every file viewable in a shell is a hard link to data on disk
- Can be moved around the file system without breaking