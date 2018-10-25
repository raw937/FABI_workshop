# Decontaminate metagenomic files

1. Remove phiX174 from metagenomic sequencing fastq files
2. Use fastqc to figure out the initial quality of the reads (pre/post phiX174 removal)
2. We will use bowtie2 to map reads to phiX174 reference genome
3. Calculate mapping statistics
4. Then remove the unmapped reads (phiX174-free reads) using samtools

#### Count the number of sequences in both fastq files

```grep ">" seq1_R1.fastq | wc -l```
```grep ">" seq1_R2.fastq | wc -l```

- What is the R1 and R2 read in Illumina sequencing?

#### Quick quiz
1. Tell me the size of each file (in bytes)?
2. Tell me the number of characters in each file?

#### Run fastq on raw files

```fastqc seq1_R1.fastq```
```fastqc seq1_R2.fastq```

#### Format phiX174 into a bowtie2 database

```bowtie2-build phiX174.fa phiX174```

- Produces 6 database files

#### Map reads to phiX174 database using bowtie2 (local alignment)

```bowtie2 -p 8 -x phiX174 -q seq1_R1.fastq -S seq1_R1.sam --very-sensitive-local```
```bowtie2 -p 8 -x phiX174 -q seq1_R2.fastq -S seq1_R2.sam --very-sensitive-local```

#### Convert to bam then unmapped fastq using samtools

- Convert to sam to bam

```samtools view -bS seq1_R1.sam >seq1_R1.bam```
```samtools view -bS seq1_R2.sam >seq1_R2.bam```

- Pull unmapped reads from bam

```samtools view -b -f 4 seq1_R1.bam > seq1_R1_unaligned.bam```
```samtools view -b -f 4 seq1_R2.bam > seq1_R2_unaligned.bam```

- Convert bam into fastq

```samtools bam2fq seq1_R1_unaligned.bam > seq1_R1_unaligned.fastq```
```samtools bam2fq seq1_R2_unaligned.bam > seq1_R2_unaligned.fastq```

- Try grep parser for samtools bam into fastq

```samtools view seq1_R1_unaligned.bam | awk 'BEGIN {FS="\t"} {print "@" $1 "\n" $10 "\n+\n" $11}' > seq1_R1_unaligned.fastq```
```samtools view seq1_R2_unaligned.bam | awk 'BEGIN {FS="\t"} {print "@" $1 "\n" $10 "\n+\n" $11}' > seq1_R2_unaligned.fastq```

#### Run fastqc on unaligned reads

```fastqc seq1_R1_unaligned.fastq```
```fastqc seq1_R2_unaligned.fastq```
