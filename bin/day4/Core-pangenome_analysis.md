# Core and Pan genome analysis tutorial

## Introduction
- We will generate annotations of various genomes using Prokka into a gene feature format (.gff)
- We will use the gff files from each genome to calculate the core and pan genome across five *Exiguobacterium* genomes
- We will use python and R ggplot2 to plot the results

## More infomation about Prokka

## More infomation about Roary

Roary is a high speed stand alone pan genome pipeline, which takes annotated assemblies in GFF3 format (produced by Prokka (Seemann, 2014) and calculates the pan genome. Using a standard desktop PC, it can analyse datasets with thousands of samples, something which is computationally infeasible with existing methods, without compromising the quality of the results. 128 samples can be analysed in under 1 hour using 1 GB of RAM and a single processor. To perform this analysis using existing methods would take weeks and hundreds of GB of RAM. Roary is not intended for meta-genomics or for comparing extremely diverse sets of genomes. 

Paper for Roary
Andrew J. Page, Carla A. Cummins, Martin Hunt, Vanessa K. Wong, Sandra Reuter, Matthew T. G. Holden, Maria Fookes, Daniel Falush, Jacqueline A. Keane, Julian Parkhill, "Roary: Rapid large-scale prokaryote pan genome analysis", Bioinformatics, 2015;31(22):3691-3693 doi:10.1093/bioinformatics/btv421
