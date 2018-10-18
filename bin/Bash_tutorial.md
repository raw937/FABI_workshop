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

### Best ls command 
```ls -thor``` 

- -t sort by modification time, newest first                      
###### -h human-readable
######

### Creates symbolic link to file                       
```ln -s <filename> <link>```       
touch <filename>              # creates or updates your file
cat > <filename>              # places standard input into file
more <filename>               # shows the first part of a file (move with space and type q to quit)
head <filename>               # outputs the first 10 lines of file
tail <filename>               # outputs the last 10 lines of file (useful with -f option)
emacs <filename>              # lets you create and edit a file
mv <filename1> <filename2>    # moves a file
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

