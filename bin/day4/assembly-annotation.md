# *De novo* assembly of metagenomic reads

1. We will use the phiX174 free and trimmed reads as input to the spades assembler
2. Spades is an excellent assembler for metagenomic, metatranscriptomic, genomes and even moleculo reads

## SPAdes – St. Petersburg genome assembler – is an assembly toolkit containing various assembly pipelines. 
- SPAdes version 3.13.0 was released under GPLv2 [current version](http://cab.spbu.ru/software/spades/)

## Papers on Spades
Lapidus et al.,  New Frontiers of Genome Assembly with SPAdes 3.0.	(poster), 2014
Bankevich et al., SPAdes: A New Genome Assembly Algorithm and Its Applications to Single-Cell Sequencing.	Journal of Computational Biology, 2012

#### Cat of single end

```cat seq1_R1_single.fastq seq1_R2_single.fastq >seq1_single-end.fastq```

## Assembly of our data

#### Standard example
     ```spades.py -t 6 --pe1-1 seq1_R1_paired.fastq --pe1-2 seq1_R2_paired.fastq --pe1-s seq1_single-end.fastq --careful -o output/```

#### Annotate with Prokka
- Try to do this on your own.
