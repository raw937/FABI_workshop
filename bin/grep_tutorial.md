## Global regular expression print -> grep
### Powerful hand of the gods

### Basic syntex 
```grep [OPTIONS] PATTERN [FILE...]```

- -c: print a count of the number of lines that match
- -i: ignore case 
- -v: print out the lines that don't match the pattern
- -n printout the line number before printing the matching line

### Looks for the string in the files
```grep <pattern> <filenames>```    
  
### Search recursively for pattern in directory
```grep -r <pattern> <dir>``` 

### Gives line number for the string match (great for debugging)
grep –n “stringpatten” script.sh

#### Examples for sequence files 
- ```grep ">" <sequencefile.fasta> | more```
- ```grep -i ">" <sequencefile.fasta> | more```
- ```grep -v ">" <sequencefile.fasta> | more```

### Practical examples 

#### Removes spaces between text lines (empty lines)
```grep -P -v '^\s*$' <file1.txt> > <outfile2.txt>```

#### Remove lines with only whitespace
```grep -P -v '^\s*$' <infile.txt> > <outfile.txt>```

#### Word count specific character
```grep -o ">" <infile.txt> | wc -w```

