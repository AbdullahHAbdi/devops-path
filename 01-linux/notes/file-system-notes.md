# Linux File System Navigation

## Key Concepts

- There is a hierarchial structure in Linux when it comes to the file system starting from the root directory `/`.
- Basic commands like `cd`, `ls`, and `pwd` help navigate through directories.
- Various commands are used to create, copy, move and delete files and directories like `mkdir`, `touch`, `cp`, `rmdir`,`mv` and `rm`. 

## Commands

`pwd` - Shows your current/present working directory.

`cp` - Copies directories or files.

`cd` - Changes your current directory.

`mkdir -p` - Creates a directory. With the `-p` flag it creates a parent directory if it doesn't exist.

`touch` - Creates a new file.

## Examples

`cd /var/log`  - Changes your current directory, to the directory that stores system, service and application log files. 

`mkdir -p projects/demo` - Creates directory `/demo` with parent directory `projects`.

`touch test.txt` - Creates a file called test.txt

`cp test.txt project/demo` - Copies file test.txt to directory `project/demo`.
## What I Learned

Through these exercises, I've learned how to confidently navigate the Linux file system using basic commands to move between directories and locate files.

I have also learned how to inspect and monitor file contents, using commands like `head` and `tail` to view the beginning or end of a file quickly. In addition, I have explored managing file permissions using the octal method with `chmod`, for example `chmod 456`, which assigns different read, write, and execute permissions to the owner, group, and others (`r--r-xrw-`). 

Learning these skills is fundamental for working efficiently in Linux systems and is commonly used when managing servers and troubleshooting issues.  



