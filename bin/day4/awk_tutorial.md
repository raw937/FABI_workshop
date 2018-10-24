# AWK Tutorial for text wrangling
##### With help from Prateek Shetty

## Extracting contents from blast results

### Extract column 1 
```awk '{print $1}' PGA1_viral_nr.txt > PGA1_viral_nr_C1p.txt```

### Extract column 1 and 2 
```awk '{print $1,$2}' PGA1_viral_nr.txt > PGA1_viral_nr_C1-2p.txt```

### Extract fields 2, 4, and 5 
```awk '{print $2, $4, $5}' PGA1_viral_nr.txt >PGA1_viral_nr_f245.txt```
<br />
```more PGA1_viral_nr_f245.txt```

### Get unique entries based on column 2 (takes only the first instance):
```awk '!arr[$2]++' PGA1_viral_nr.txt >PGA1_viral_nr_2c-unique.txt```
<br />
```more PGA1_viral_nr_2c-unique.txt```

### Print rows where column 3 is larger than column 5
```awk '$3>$5' PGA1_viral_nr.txt >PGA1_viral_nr_3L.txt```

### Count unique database matches in column 2
```awk '{print $2}' PGA1_viral_nr.res | sort | uniq | wc -l```
- The first column is the query and the second column is the match to the database

### Sum column 1 
```awk '{sum+=$1} END {print sum}' PGA1_viral_nr.txt | more```
- What is the answer?

### Sum column 4 
```awk '{sum+=$1} END {print sum}' PGA1_viral_nr.txt | more```
- What is the answer?

### Sum column 4 plus 5
```awk '{sum+=$4+$5} END {print sum}' PGA1_viral_nr.txt | more```
- What is the answer?

### Sum column 4 minus 5
```awk '{sum+=$4-$5} END {print sum}' PGA1_viral_nr.txt | more```
- What is the answer?

### Sum column 5 minus 4
```awk '{sum+=$5-$4} END {print sum}' PGA1_viral_nr.txt | more```
- What is the answer?

Compute the mean of column 2
```awk '{x+=$2}END{print x/NR}' PGA1_viral_nr.txt | more```
- What is the answer?

Compute the mean of column 3
```awk '{x+=$3}END{print x/NR}' PGA1_viral_nr.txt | more```
- What is the answer?

### Separate column five by underscore
```awk '{print $1}' PGA1_viral_nr.txt | uniq| awk -F"_" '{print $5" = "$6}'```
- By default awk separates by tab and newline.
- We can change these defaults by using -F option which changes fields/dafaults

### Find matches to a particular reference sequence in blast using awk/grep
```awk '{print $2}' PGA1_viral_nr.txt | grep -c "NC_031073.1"```

### Find matches to a particular reference sequence in blast using awk only (no grep)
awk '$2=="NC_031073.1" {print $2}' PGA1_viral_nr.txt | wc -l

### Find matches to a particular reference sequence in blast using awk only (no grep/wc)
awk '($2 == "NC_031073.1") {count++ } END { print count }' PGA1_viral_nr.txt | more

