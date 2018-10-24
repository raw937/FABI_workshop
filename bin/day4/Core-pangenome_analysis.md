# Core and Pan genome analysis tutorial

## Introduction
- We will generate annotations of various genomes using Prokka into a gene feature format (.gff)
- We will use the gff files from each genome to calculate the core and pan genome across five *Exiguobacterium* genomes
- We will use python and R ggplot2 to plot the results

## More infomation about Prokka - rapid prokaryotic genome annotation

Whole genome annotation is the process of identifying features of interest in a set of genomic DNA sequences, and labelling them with useful information. Prokka is a software tool to annotate bacterial, archaeal and viral genomes quickly and produce standards-compliant output files.

## Standard outputs from Prokka

| Extension| Description           |
|----------|:---------------------:|
| .gff     |  left-aligned | $1600 |
| col 2 is |    centered   |   $12 |
| col 3 is | right-aligned |    $1 |

Extension 	Description
-  	This is the master annotation in GFF3 format, containing both sequences and annotations. It can be viewed directly in Artemis or IGV.
- .gbk 	This is a standard Genbank file derived from the master .gff. If the input to prokka was a multi-FASTA, then this will be a multi-Genbank, with one record for each sequence.
.fna 	Nucleotide FASTA file of the input contig sequences.
.faa 	Protein FASTA file of the translated CDS sequences.
.ffn 	Nucleotide FASTA file of all the prediction transcripts (CDS, rRNA, tRNA, tmRNA, misc_RNA)
.sqn 	An ASN1 format "Sequin" file for submission to Genbank. It needs to be edited to set the correct taxonomy, authors, related publication etc.
.fsa 	Nucleotide FASTA file of the input contig sequences, used by "tbl2asn" to create the .sqn file. It is mostly the same as the .fna file, but with extra Sequin tags in the sequence description lines.
.tbl 	Feature Table file, used by "tbl2asn" to create the .sqn file.
.err 	Unacceptable annotations - the NCBI discrepancy report.
.log 	Contains all the output that Prokka produced during its run. This is a record of what settings you used, even if the --quiet option was enabled.
.txt 	Statistics relating to the annotated features found.
.tsv 	Tab-separated file of all features: locus_tag,ftype,len_bp,gene,EC_number,COG,product

## More infomation about Roary

Roary is a high speed stand alone pan genome pipeline, which takes annotated assemblies in GFF3 format (produced by Prokka (Seemann, 2014) and calculates the pan genome. Using a standard desktop PC, it can analyse datasets with thousands of samples, something which is computationally infeasible with existing methods, without compromising the quality of the results. 128 samples can be analysed in under 1 hour using 1 GB of RAM and a single processor. To perform this analysis using existing methods would take weeks and hundreds of GB of RAM. Roary is not intended for meta-genomics or for comparing extremely diverse sets of genomes. 

Paper for Roary
Andrew J. Page, Carla A. Cummins, Martin Hunt, Vanessa K. Wong, Sandra Reuter, Matthew T. G. Holden, Maria Fookes, Daniel Falush, Jacqueline A. Keane, Julian Parkhill, "Roary: Rapid large-scale prokaryote pan genome analysis", Bioinformatics, 2015;31(22):3691-3693 doi:10.1093/bioinformatics/btv421
