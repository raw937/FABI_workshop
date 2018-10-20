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

## A1.2 Link command -> 1n

### Creates symbolic link to file                       
```ln -s <filename> <link>``` 

## A1.3 Touch command -> touch

### creates or updates your file (just creates)
```touch <filename>```

## A1.4 View a file 

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
  
## A1.5 move (rename) command -> mv

### move (rename) files
```mv```

### move file
```mv <filename>  directory/```

### rename file
```mv <filename> <newfilename>```

## A1.6 concatenate command files and print on the standard output command -> cat

### concatenate command files and print
```cat```

### print file
```cat <filename>```

### view multiple files at once
```cat <filename> <filename1>```


### rename file
```mv <filename> <newfilename>```


cp <filename1> <filename2>    # copies a file
rm <filename>                 # removes a file
diff <filename1> <filename2>  # compares files, and shows where they differ
wc <filename>                 # tells you how many lines, words and characters there are in a file
chmod -options <filename>     # lets you change the read, write, and execute permissions on your files
gzip <filename>               # compresses files
gunzip <filename>             # uncompresses files compressed by gzip
gzcat <filename>              # lets you look at gzipped file without actually having to gunzip it
lpr <filename>                # print the file
lpq                           # check out the printer queue
lprm <jobnumber>              # remove something from the printer queue
genscript                     # converts plain text files into postscript for printing and gives you some options for formatting
dvips <filename>              # print .dvi files (i.e. files produced by LaTeX)
grep <pattern> <filenames>    # looks for the string in the files
grep -r <pattern> <dir>       # search recursively for pattern in directory

