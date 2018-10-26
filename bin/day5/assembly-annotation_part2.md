# *De novo* assembly of metagenomic reads - part2

1. Assembly of Clinton Creek Yukon Microbialite metagenome using metaspades
- phiX174 has been removed 
- You can double check with bowtie2
- You should trim the reads and use fastqc
2. Spades is an excellent assembler for metagenomic, metatranscriptomic, genomes and even moleculo reads
3. Metaspades is a version of spades for metagenomes

## About the data
RA White III, IM Power, GM Dipple, G Southam, CA Suttle. Metagenomic analysis reveals that modern microbialites and polar microbial mats have similar taxonomic and functional potential. Frontiers in microbiology 6, 966 [paper](https://www.frontiersin.org/articles/10.3389/fmicb.2015.00966/full)

## SPAdes – St. Petersburg genome assembler – is an assembly toolkit containing various assembly pipelines. 
- SPAdes version 3.13.0 was released under GPLv2 [current version](http://cab.spbu.ru/software/spades/)

## Papers on Spades
Lapidus et al.,  New Frontiers of Genome Assembly with SPAdes 3.0.	(poster), 2014
Bankevich et al., SPAdes: A New Genome Assembly Algorithm and Its Applications to Single-Cell Sequencing.	Journal of Computational Biology, 2012

## Paper metaspades

metaSPAdes: a new versatile de novo metagenomics assembler. Sergey Nurk, Dmitry Meleshko, Anton Korobeynikov, Pavel Pevzner. [paper](https://genome.cshlp.org/content/27/5/824.long). 
- While metagenomics has emerged as a technology of choice for analyzing bacterial populations, 
assembly of metagenomic data remains difficult thus stifling biological discoveries. 
- MetaSPAdes is a new assembler that addresses the challenge of metagenome analysis and capitalizes on 
computational ideas that proved to be useful in assemblies of single cells and highly polymorphic 
diploid genomes. 
- We benchmark metaSPAdes against other state-of-the-art metagenome assemblers across 
diverse datasets and demonstrate that it results in high-quality assemblies. 

#### Note for the metaspades option 
--meta   (same as metaspades.py)
This flag is recommended when assembling metagenomic data sets. 
Currently metaSPAdes supports only a single library which has to be paired-end (we hope to remove this restriction soon). 
It does not support careful mode (mismatch correction is not available). In addition, you cannot specify coverage cutoff 
for metaSPAdes. Note that metaSPAdes might be very sensitive to presence of the technical sequences remaining in the data 
(most notably adapter readthroughs), please run quality control and pre-process your data accordingly. 

## Check for phiX174
- Try this on your own

## Trim reads and check with fastqc
- Try this on your own

## Assembly of our data

#### Standard example
```metaspades.py -t 6 --s YukonMB.all.PhiR.fastq.gz -o yukonMB/```

#### Annotate with Prokka
- Try to do this on your own.
