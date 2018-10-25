# Core and Pan genome analysis tutorial

## Introduction
- We will learn how to make a bash shell script using a for loop
- We will generate annotations of various genomes using Prokka into a gene feature format (.gff)
- We will use the gff files from each genome to calculate the core and pan genome across five *Exiguobacterium* genomes
- We will use python and R ggplot2 to plot the results

## More infomation about Prokka - rapid prokaryotic genome annotation

Whole genome annotation is the process of identifying features of interest in a set of genomic DNA sequences, and labeling them with useful information. Prokka is a software tool to annotate bacterial, archaeal and viral genomes quickly and produce standards-compliant output files.

### Paper for Prokka
Torsten Seemann. Prokka: rapid prokaryotic genome annotation. Bioinformatics, 2014, 30 (14) 2068–2069, [paper](https://doi.org/10.1093/bioinformatics/btu153)

## Standard outputs from Prokka

| Extension| Description                                                                               |
|----------|:----------------------------------------------------------------------------------------- |
| .gff     | 	This is the master annotation in GFF3 format, containing both sequences and annotations. |
| .gbk     |  This is a standard Genbank file derived from the master .gff.                            |
| .fna     |  Nucleotide FASTA file of the input contig sequences.                                     |
| .ffn     |  Nucleotide FASTA file of all the prediction transcripts (CDS, rRNA, tRNA, tmRNA, misc)   |
| .faa     |  Protein FASTA file of the translated CDS sequences.                                      |
| .sqn     |  An ASN1 format "Sequin" file for submission to Genbank.                                  |
| .faa     |  Protein FASTA file of the translated CDS sequences.                                      |
| .fsa     |  Nucleotide FASTA file of the input contig sequences, used by "tbl2asn" to make .sqn file |                                  | .tbl 	   |  Feature Table file, used by "tbl2asn" to create the .sqn file.                           |
| .err 	   |  Unacceptable annotations - the NCBI discrepancy report.                                  |
| .log     |  This is a record of what settings you used and outputs produced.                         |
| .txt 	   |  Statistics relating to the annotated features found.                                     |
| .tsv 	   |  Tab-separated file of all features: locus_tag,ftype,len_bp,gene,EC_number,COG,product    |

## More infomation about Roary

Roary is a high speed stand alone pan genome pipeline, which takes annotated assemblies in GFF3 format (produced by Prokka (Seemann, 2014) and calculates the pan genome. Using a standard desktop PC, it can analyse datasets with thousands of samples, something which is computationally infeasible with existing methods, without compromising the quality of the results. 128 samples can be analysed in under 1 hour using 1 GB of RAM and a single processor. To perform this analysis using existing methods would take weeks and hundreds of GB of RAM. Roary is not intended for meta-genomics or for comparing extremely diverse sets of genomes. 

### Paper for Roary
Andrew J. Page, Carla A. Cummins, Martin Hunt, Vanessa K. Wong, Sandra Reuter, Matthew T. G. Holden, Maria Fookes, Daniel Falush, Jacqueline A. Keane, Julian Parkhill. Roary: Rapid large-scale prokaryote pan genome analysis. Bioinformatics, 2015, 31 (22) 3691-3693 [paper](doi:10.1093/bioinformatics/btv421)

## Create input for Roary using Prokka

### Make a shell batch script for Prokka 

#### Make Bash shell header with printf command

```printf '#!/bin/bash\n' >prokka.sh```<br/>
```more prokka.sh```

#### Compare to echo command

```echo '#!/bin/bash' >prokka.sh```<br/>
```more prokka.sh```

- Any difference?

#### Use a for loop in Bash for Prokka batch shell script

```for i in *fasta; do echo "prokka "$i" --outdir "$(basename "$i" .fasta)" --genus Exiguobacterium --prefix "$(basename "$i" .fasta)"" >>prokka.sh; done```<br/>

```head prokka.sh```
<br/>
```
#!/bin/bash
prokka 255-15.fasta --outdir 255-15 --genus Exiguobacterium --prefix 255-15
prokka 7-3.fasta --outdir 7-3 --genus Exiguobacterium --prefix 7-3
prokka GIC31.fasta --outdir GIC31 --genus Exiguobacterium --prefix GIC31
prokka N139.fasta --outdir N139 --genus Exiguobacterium --prefix N139
prokka RW2.fasta --outdir RW2 --genus Exiguobacterium --prefix RW2
```
#### Make the Bash shell batch script executable

```chmod a+x prokka.sh```

#### Run shell script

```./prokka.sh```

#### Use the find command to grab gff files

```mkdir roary```<br/>
```find . -name "*gff" -type f -exec cp {} ./. \;```<br/>
```mv *gff roary/```<br/>

#### Run Roary with MAFFT

```roary -e --mafft -p 8 *.gff```

## While Roary is running learn how to wrangle gff formatted files 

#### Make a quick copy of your gff

```cp RW2.gff RW2_copy.gff```

#### Print all sequences annotated in a gff file.

```cut -s -f 1,9 RW2_copy.gff | grep $'\t' | cut -f 1 | sort | uniq >RW2_printed-seq.fasta```

#### Determine all feature types annotated in a gff file.

```grep -v '^#' RW2_copy.gff | cut -s -f 3 | sort | uniq >RW2.printed-features.txt```

#### Extract all gene IDs from a gff file.

```grep $'\tgene\t' RW2_copy.gff | perl -ne '/ID=([^;]+)/ and printf("%s\n", $1)' >RW2_geneIDs.txt```

#### Print length of each gene in a gff file.

```grep $'\tgene\t' RW2_copy.gff | cut -s -f 4,5 | perl -ne '@v = split(/\t/); printf("%d\n", $v[1] - $v[0] + 1) >RW2_genelengths.txt```

### When run completes plotting functions in R and python for Roary

#### Obtain roary R plots

```roary-create_pan_genome_plots.R *Rtab```

#### Install dependances for roary python plotting script

- ```pip install numpy```
- ```pip install pandas```
- ```pip install matplotlib```
- ```pip install seaborn```

#### Make Plots with roary python script

```python roary_plots.py accessory_binary_genes.fa.newick gene_presence_absence.csv``` 

- Compare and contrast the analysis

#### Re-run Roary using MAFFT including mystery genomes 

- Mystery genomes are labeled DJ, CA, CA6 (in .gff)
- You will have to edit to bash for loop to give them the right prefix
- You must remove the --genus Exiguobacterium in your loop

- Create directories and move files <br/>
```cd roary``` <br/>
```mkdir mystery_genomes``` <br/>
```mv *gff mystery_genomes/``` <br/>

- Re-run roary using MAFFT <br/>
```roary -e --mafft -p 8 *.gff```

- Recreate plots in R and python <br/>
```roary-create_pan_genome_plots.R *Rtab```<br/>
```python roary_plots.py accessory_binary_genes.fa.newick gene_presence_absence.csv``` 

#### Special Bonus
- Extract RecA, 16S, gyrB sequence from the .gff file (using bash, grep, sed or other).
- Blast the sequences (webpage or command line) tell me what CA, CA6, and DJ are.
- Tell me what the other genomes genus is. 

