# Mercat tutorial for database independant analysis

## python code for versatile k-mer counting and diversity estimation for database independent property analysis (DIPA) for genomic, metagenomic and metatranscriptomic data

## Paper for Mercat
White III RA, Panyala A, Glass K, Colby S, Glaesemann KR, Jansson C, Jansson JK. (2017) MerCat: a versatile k-mer counter and diversity estimator for database-independent property analysis obtained from metagenomic and/or metatranscriptomic sequencing data. PeerJ Preprints 5:e2825v1 [paper](https://doi.org/10.7287/peerj.preprints.2825v1)

## Command options:

- -i,    path-to-input-file
- -f,    path-to-folder-containing-input-files
- -k,    kmer length
- -n,    no of cores [default = all]
- -c,    minimum kmer count [default = 10]
- -pro,  run mercat on protein input file specified as .faa
- -q,    mercat that input file provided are raw nucleotide reads as [.fq, .fastq]
- -p,    prodigal on nucleotide assembled contigs. Must be one of ['.fa', '.fna', '.ffn', '.fasta']
- -t,    Trimmomatic options
- -h,    show this help message

## Running mercat on a test sequence (with 2-mers)

```mercat -i test_mercat.fasta -k 2 -n 8```<br />
```mv mercat_results/ mercat_2mers/```

## Running mercat on a test sequence (with 3-mers)

```mercat -i test_mercat.fasta -k 3 -n 8```<br />
```mv mercat_results/ mercat_3mers/```

## Running mercat on a test sequence (with 4-mers)

```mercat -i test_mercat.fasta -k 4 -n 8```<br />
```mv mercat_results/ mercat_4mers/```

## Running mercat on a test sequence (with 10-mers)

```mercat -i test_mercat.fasta -k 10 -n 8```<br />
- Why doesn't it work?

### Compare result plots

## Run mercat on many samples
```mkdir unknowns``` <br />
```mv seq* unknowns/```

- With 2-mers <br />
```mercat -f unknown/ -k 2 -n 8 -c 10```

- With 3-mers <br />
```mercat -f unknown/ -k 3 -n 8 -c 10```

- With 4-mers <br />
```mercat -f unknown/ -k 4 -n 8 -c 10```

### Compare result plots

### Special Bonus
- Tell me the organism these sequences come from using BLAST (webpage or command line).
