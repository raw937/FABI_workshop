# Trim decontaminated reads 

1. We are going to remove low quality sequences from reads using Trimmomatic using the Decon reads as input
2. This ensures the highest quality reads are used for *de novo* assembly

## Trimmomatic performs a variety of useful trimming tasks for illumina paired-end and single ended data.
- The selection of trimming steps and their associated parameters are supplied on the command line.

## Manuscript for Trimmomatic
Bolger AM, Lohse M, & Usadel B. 2014. Trimmomatic: A flexible trimmer for Illumina Sequence Data. Bioinformatics, btu170. 
[paper](https://academic.oup.com/bioinformatics/article/30/15/2114/2390096)

## The current trimming steps are:
- ILLUMINACLIP: Cut adapter and other illumina-specific sequences from the read.
- SLIDINGWINDOW: Perform a sliding window trimming, cutting once the average quality within the window falls below a threshold.
- LEADING: Cut bases off the start of a read, if below a threshold quality
- TRAILING: Cut bases off the end of a read, if below a threshold quality
- CROP: Cut the read to a specified length
- HEADCROP: Cut the specified number of bases from the start of the read
- MINLEN: Drop the read if it is below a specified length
- TOPHRED33: Convert quality scores to Phred-33
- TOPHRED64: Convert quality scores to Phred-64

It works with FASTQ (using phred + 33 or phred + 64 quality scores, depending on the Illumina pipeline used), 
either uncompressed or gzipp'ed FASTQ. Use of gzip format is determined based on the .gz extension.

For single-ended data, one input and one output file are specified, plus the processing steps. 
For paired-end data, two input files are specified, and 4 output files, 2 for the 'paired' 
output where both reads survived the processing, and 2 for corresponding 'unpaired' output where a read survived, 
but the partner read did not.

## Standard options -> phred score of 25
```java -jar trimmomatic-0.33.jar SE -phred33 seq1_R1_unaligned.fastq seq1_PhiR_trim_p25_R1.fastq ILLUMINACLIP:adapters/TruSeq3-SE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:25 MINLEN:50```<br/>

```java -jar trimmomatic-0.33.jar SE -phred33 seq1_R2_unaligned.fastq seq1_PhiR_trim_p25_R2.fastq ILLUMINACLIP:adapters/TruSeq3-SE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:25 MINLEN:50```<br/>

## Standard options -> phred score of 30
```java -jar trimmomatic-0.33.jar SE -phred33 seq1_R1_unaligned.fastq seq1_PhiR_trim_p30_R1.fastq ILLUMINACLIP:adapters/TruSeq3-SE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:50```<br/>

```java -jar trimmomatic-0.33.jar SE -phred33 seq1_R2_unaligned.fastq seq1_PhiR_trim_p30_R2.fastq ILLUMINACLIP:adapters/TruSeq3-SE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:50```<br/>

## Standard options -> phred score of 30, phred64
```java -jar trimmomatic-0.33.jar SE -phred64 seq1_R1_unaligned.fastq seq1_PhiR_trim_p30_p64_R1.fastq ILLUMINACLIP:adapters/TruSeq3-SE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:50```<br/>

```java -jar trimmomatic-0.33.jar SE -phred64 seq1_R2_unaligned.fastq seq1_PhiR_trim_p30_p64_R2.fastq ILLUMINACLIP:adapters/TruSeq3-SE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:50```<br/>

- Based on the headers is this a phred33 or 64?

## Run fastqc

```fastqc seq1_PhiR_trim_p25_R1.fastq```<br/>
```fastqc seq1_PhiR_trim_p25_R2.fastq```<br/>
```fastqc seq1_PhiR_trim_p30_R1.fastq```<br/>
```fastqc seq1_PhiR_trim_p30_R2.fastq```<br/>
```fastqc seq1_PhiR_trim_p30_p64_R1.fastq```<br/>
```fastqc seq1_PhiR_trim_p30_p64_R2.fastq```<br/>
