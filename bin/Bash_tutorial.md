# A. Bash Basics.

### Displays all environment variables
```export```

### Displays the shell you're using
```echo $SHELL```

### Displays bash version 
```echo $BASH_VERSION```  

### To call bash shell (or exit another shell) 
```bash```

### Locates bash on your system
```whereis bash```  

### Clears terminal content (hides previous lines)
```clear```             

# A1. Unix, Unix-like, Bash commands

## A1.1 List command -> 1s

### List directory contents
```ls```

### Lists your files (long format, gives file sizes, permissions, owner, last modification)
```ls -l```

### Lists all files, including hidden files                        
```ls -a```   

### List all files and folders (adds \ to separate folders)
```ls -F```

### Recursively list Sub-Directories                       
```ls -R```   

### Best ls command 
```ls -thor``` 

- -t  sort by modification time, newest first                      
- -h  --human-readable
- -o  like -l, but do not list group information
- -r  --reverse, reverse order while sorting

## A1.2 change directory command -> cd

### Basic syntax
```cd folder/```

### Up a directory
```cd folder/ ../```

### Working directory
```cd ./```

### Back to home                    
```cd``` 

## A1.3 print working directory -> pwd

### Basic syntax
```pwd```

### Print the name of the working directory (with names)
```pwd -P```

## A1.4 Touch command -> touch

### creates or updates your file (just creates)
```touch <filename>```

## A1.5 View a file 

### Views file from the beginning - allows scrolling down a file
```more <filename>```

### Views file from the end - allows scrolling up a file
```less <filename>```

### Views file from the beginning - first 10 lines
```head <filename>```

### Views file from the beginning - first 100 lines
```head -100 <filename>```

### Views file from the beginning - first 1000 lines
```head -1000 <filename>```

### Views file from the end - last 10 lines
```tail <filename>```

### Views file from the end - last 100 lines
```tail -100 <filename>```

### Views file from the beginning - last 1000 lines
```tail -1000 <filename>```

### View, create and edit a line (main text editors)
- ```vim <filename>```
- ```nano <filename>```
- ```gedit <filename>```
- ```emacs <filename>```  

## A1.6 make a directory -> mkdir

### Basic syntax 
```mkdir newfolder/```

## A1.7 move (rename) command -> mv

### Move (rename) files
```mv```

### Move file
```mv <filename>  directory/```

### Rename file
```mv <filename> <newfilename>```

### Rename directory
```mv directory/```

## A1.8 Concatenate command for print standard output -> cat

### Print file
```cat <filename>```

### View multiple files at once
```cat <filename> <filename1>```

### Create a file
```cat > <filename>```

### View for large files
- ```cat <filename> | more```
- ```cat <filename> | less```

### Print files (with override)
```cat <filename> > <newfile>```

### Print file or append file (without override)
```cat <filename> >> <newfile>```

### Combine files (with override)
```cat <filename> <filename1> > <newfile>```

### Combine files (without override)
```cat <filename> <filename1> >> <newfile>```

### Print with number of lines
```cat -n <filename>```

### Prints with end of the line ('$' is the end)
```cat -e <filename>```

### Prints with tab visable within the line ('^I' showing the tab)
```cat -T <filename>```

## A1.9 Copying files and directories -> cp, scp, rsync

### Copies a file
```cp <filename1> <filename2>```   
  
### Copying files recursively
```cp -R <filename1> <filename2>```  

### Copy multiple files into another directory  
```cp file* /directory/subdirectory```

### Copy an entire directory structure to another location
```cp -R /directory/ /directory1/``` 

### Copy all files in new directory unless they already exist
```cp -u *<filename1> newdir/```

### Backs up files
```cp --backup <origfile> <newfile>```

### Backs up files with numbering
```cp --backup=numbered <origfile> <newfile>```

### Secure copy basic syntax 
```scp source_file_name username@destination_host:destination_folder``` 
```scp source_folder/ username@destination_host:destination_folder```

### Secure copy file with debug
```scp -v <filename1> username@destination_host:destination_folder```
- -v: parameter to print debug information
 
### Secure copy file with estimated time/connection speed
```scp -p <filename1> username@destination_host:destination_folder```
- -p: with estimated time and the connection speed

### Best scp with debug, estimated time/connection speed and compression 
```scp -Cpv <filename1> username@destination_host:destination_folder```
- -C: with compression 
- -p: with estimated time and the connection speed
- -v: parameter to print debug information

### Basic syntax of rsync command
```rsync options source destination```
- -v : verbose
- -r : copies data recursively (but don’t preserve timestamps and permission while transferring data
- -a : archive mode, archive mode allows copying files recursively and it also preserves symbolic links, file permissions, user & group ownerships and timestamps
- -z : compress file data
- -h : human-readable, output numbers in a human-readable format

### Best syntax rsync command
```rsync avP folder/ username@destination_host:destination_folder```

## A1.10 Removing files and directories -> rm

### Removes a file
```rm <filename>```

### Removes whole folder (dangerous, use it carefully)
```rm -r folder/```

## A1.11 Link command -> 1n

### Creates symbolic link to file                       
```ln -s <filename> <link>``` 

## A1.12 File compress/uncompression -> gunzip, tar, 

### compresses files (.gz)
```gzip <filename> ``` 
- results in <filename>.gz
  
### Uncompresses files compressed by gunzip (.gz)
```gunzip <filename>.gz``` 
- results in <filename>

### Compresses files compressed by tar (tar.gz)
```tar -cvzf <foldername.tar.gz>```
- -z: gzip compression
- -c: Creates a new .tar archive file.
- -v: Verbosely show the .tar file progress.
- -f:  File name type of the archive file.

### List contents of tar.gz 
```tar -tvf <foldername.tar.gz>```

### Prints a zipped file without opening it
- ```gzcat <filename.gz> | more```
- ```gzcat <filename.gz> | less```

### Uncompresses files compressed by tar (tar.gz) 
```tar -zxvf <foldername.tar.gz>```
- -z: many files
- -x: extract gzip 
- -v: Verbosely show the .tar file progress.
- -f:  File name type of the archive file.

### Compresses files compressed by tar (tar.bz2, more compression)
```tar -cvjf <foldername.tar.gz>```
- -j: bz2 compression
- -c: Creates a new .tar archive file.
- -v: Verbosely show the .tar file progress.
- -f:  File name type of the archive file.

### Uncompresses files compressed by tar (tar.bz2) 
```tar -xjvf <foldername.tar.bz2>```
- -j: bz2 file
- -x: extract gzip 
- -v: Verbosely show the .tar file progress.
- -f:  File name type of the archive file.
   
## A1.13 alias command to make command short cuts -> alias

### Basic syntax
```alias command='command opition'```

#### Examples
- ```alias squeue=squeue -u username```
- ```alias ls="ls -l"```
- ```alias cp='cp -i'```
- ```alias l.='ls -d .* --color=auto'```
- ```alias ll='ls -l --color=auto'```
- ```alias ls='ls --color=auto'```
- ```alias mv='mv -i'```
- ```alias rm='rm -i'```

### Remove alias command
```unalias ls```

## A1.14 compares files, and shows where they differ

### Basic syntax 
```diff <filename1> <filename2>```  

## A1.15 count things with -> wc

### Basic syntax 
```wc <filename>```

### Options wc
- -l : Prints the number of lines in a file.
- -w : prints the number of words in a file.
- -c : Displays the count of bytes in a file.
- -m : prints the count of characters from a file.
- -L : prints only the length of the longest line in a file.

### Examples of wc 
- ```wc -l <filename1>``` # of lines
- ```wc -w <filename1>``` # of words
- ```wc -c <filename1>``` # of bytes
- ```wc -m <filename1>``` # of characters
- ```wc -L <filename1>``` # display longest line

## A1.16 use the manual -> man

### Basic syntax
```man command```

### Examples of man
- ```man wc``` 
- ```man cd``` 
- ```man grep``` 

## A1.17 read, write, and execute permissions on your files

### Basic syntax 
```chmod -options <filename>```

### Command chmod to make a bash script active
```chmod a+x script.sh```
