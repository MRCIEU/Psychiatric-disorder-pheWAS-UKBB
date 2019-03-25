# Psychiatric-disorder-pheWAS-UKBB

This repository includes the code for a pheWAS of genetic liability for ADHD on ~23000 traits in UK Biobank and accompanies (PAPER HERE). It can serve as a template for the other pheWAS conducted in this paper for genetic liability for autism spectrum disorder, schizophrenia, major depressive disorder and bipolar disoder.

I used the automated PHESANT v0.15 package to conduct the pheWAS (LINK HERE).

## Filestructure

There are some environmental variables that have been specified beforehand:

PROJECTDIR : including SCRIPTS, DATA and RESULTS directories.

UKBBDIR: includes the UK Biobank genetic data. UKBBDATADIR and UKBBSAMPLESTATSDIR are more specific paths directly to the genetic data in .bgen format and related SNP-sample files.

PROJECTDATADIR: contains the UK Biobank phenotypic data.


## 1-Polygenic risk scores

Polygenic risk scores (PRS) were generated using PRSice v2.0 at various thresholds. The genome-wide (p<5x10-8) score was used for the main analysis.

As the phenotypic and genetics datasets have different identifiers, they have to be mapped after generating the PRS.

Next, we exclude everyone who :

i - has withdrawn consent (as has not yet been removed from the dataset)
ii - is not of white British ancestry 
ii - has a sex mismatch between reported and genetic sex
iii - is related to any of the other participants in the dataset
iiii- has a putative sex chromosom aneiploidy
iiiii - is an outlier in heterozygosity and missing rates

... and create a new PRS-file that will serve as our exposure in the Phesant scan.

## 2-Confounder
