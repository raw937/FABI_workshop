# Metatranscriptomics using read based phylogenetic analysis

1. Today we will used MetaPhlAn 2: Metagenomic/Metatranscriptomic Phylogenetic Analysis
2. We will use a microbial metatranscriptome that was part of iHMP

## Installation

#### MetaPhlAn 2.0 can be obtained Through Bioconda
```conda install metaphlan2```

## MetaPhlAn2 is a computational tool for profiling the composition of microbial communities (Bacteria, Archaea, Eukaryotes and Viruses) from metagenomic shotgun sequencing data (i.e. not 16S) with species-level. With the newly added StrainPhlAn module, it is now possible to perform accurate strain-level microbial profiling.

#### MetaPhlAn 2 relies on ~1M unique clade-specific marker genes  

- Clade marker gene file has ~17,000 reference genomes (~13,500 bacterial and archaeal, ~3,500 viral, and ~110 eukaryotic). 
- This allows for unambiguous taxonomic assignments.
- Accurate estimation of organismal relative abundance.
- Species-level resolution for bacteria, archaea, eukaryotes and viruses.
- Strain identification and tracking
- Orders of magnitude speedups compared to existing methods.
- Metagenomic strain-level population genomics.

## Manuscript
Truong et al., MetaPhlAn2 for enhanced metagenomic taxonomic profiling. Nature Methods 12, 902-903 (2015). [paper](https://www.nature.com/articles/nmeth.3589).

## Download databases place in metaphlan2 inside metaphlan2_databases folder

```wget https://bitbucket.org/biobakery/metaphlan2/downloads/mpa_v20_m200.tar```<br /> 
```wget https://bitbucket.org/biobakery/metaphlan2/downloads/mpa_v20_m200.md5``` 

## Command
```metaphlan2.py ihmp.fastq --input_type fastq --nproc 6 > ihmp_profile.txt```

## For heatmap install hclust
```brew tap biobakery/biobakery```<br /> 
```brew install hclust2```

## Edit ihmp profile file for heatmap
```grep -E "(s__)|(^ID)" ihmp_profile.txt | grep -v "t__" | sed 's/^.*s__//g' > merged_ihmp_profile.txt```

## Heatmap example command
```hclust2.py -i merged_ihmp_profile.txt -o abundance_heatmap_species.png --ftop 25 --f_dist_f braycurtis --s_dist_f braycurtis --cell_aspect_ratio 0.5 -l --flabel_size 6 --slabel_size 6 --max_flabel_len 100 --max_slabel_len 100 --minv 0.1 --dpi 300```
