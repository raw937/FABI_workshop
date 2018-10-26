# Metagenomic assembled genomes (MAGS) using *de novo* assembly

1. We will start with the Maxbin2 test data
2. Today we will use the CAMI data for a low complexity sample to use MaxBin2 to do metagenomic assembled bins
3. We will use prokka to annotate the bins

## Maxbin2
MaxBin2 is software for binning assembled metagenomic sequences based on an Expectation-Maximization algorithm. 
Users can understand the underlying bins (genomes) of the microbes in their metagenomes by simply providing assembled
metagenomic sequences and the reads coverage information or sequencing reads. For users' convenience MaxBin will report 
genome-related statistics, including estimated completeness, GC content and genome size in the binning summary page.

## Manuscripts for Maxbin and Maxbin2

#### Maxbin
Wu YW, Tang YH, Tringe SG, Simmons BA, and Singer SW, MaxBin: an automated binning method to recover individual 
genomes from metagenomes using an expectation-maximization algorithm, Microbiome, 2:26, 2014.

##### Maxbin2 
Wu YW, Simmons BA, and Singer SW, MaxBin 2.0: an automated binning algorithm to recover genomes 
from multiple metagenomic datasets, Bioinformatics, 32(4): 605-607, 2016.

## CAMI data

#### CAMI challenge datasets

CAMI (Critical Assessment of Metagenome Interpretation) is a community-led initiative designed to help tackle the 
problems faced by metagenomics analyses, aiming for an independent, comprehensive and bias-free evaluation of these 
metagenomics pipelines [source]. As part of the challenge, several simulated datasets were generated in order to evaluate 
each of the assembly, profiling, and binning tools submitted for review. Three distinct datasets were generated simulating 
microbiomes of varying complexities: low, medium, and high complexity.
[paper] (http://biorxiv.org/content/early/2017/01/09/099127). 
This blog post contains links to the binning and profiling results for those datasets.

#### Our data data
Low	Simulated Illumina HiSeq data, 15Gbp	2 x 150bp	270bp

#### Fast test data set for Maxbin2
run_MaxBin.pl -contig 80x.scaffold -abund 80x.abund -out 80x_bins

#### Low complexity Maxbin2 test data set
run_MaxBin.pl -contig simLC+.scaffolds -abund simLC+.abund -out simLC+_bins

#### CAMI with read mapping 
run_MaxBin.pl -contig RL_S001_insert_270.fa -abund gs_read_mapping.binning -out cami_lc

#### CAMI with reads and contigs complete maxbin2
run_MaxBin.pl -contig RL_S001_insert_270.fa -reads RL_S001_insert_270.fq -out cami_lc_reads
