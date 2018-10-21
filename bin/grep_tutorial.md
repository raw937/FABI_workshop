## Global regular expression print -> grep
### Power hand of the gods

### Basic syntex 
```grep [OPTIONS] PATTERN [FILE...]```

#### Examples for sequence files 
- ```grep ">" <sequencefile.fasta> | more```
- ```grep -i ">" <sequencefile.fasta> | more```
- ```grep -v ">" <sequencefile.fasta> | more```
