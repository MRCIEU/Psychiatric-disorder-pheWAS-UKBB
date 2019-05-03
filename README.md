# Psychiatric-disorder-pheWAS-UKBB

This repository includes the code for a pheWAS of genetic liability for 5 psychiatric disorders on ~23000 traits in UK Biobank and accompanies the article "A cross-disorder MR-pheWAS of 5 major psychiatric disorders in UK Biobank". 

The 5 psychiatric disorders are : attention deficit / hyperactivity disorder (ADHD), autism spectrum disorder (ASD), schizophrenia (SCZ), major depression (MDD) and bipolar disorder (BP). 

The phenome scan was conducted using the open source, automated PHESANT v0.17 package (https://github.com/MRCIEU/PHESANT).

## Filestructure

There are some environmental variables that have been specified beforehand:

PROJECTDIR : including SCRIPTS, DATA and RESULTS directories.

UKBBDIR: includes the UK Biobank genetic data. UKBBDATADIR and UKBBSAMPLESTATSDIR are more specific paths directly to the genetic data in .bgen format and related SNP-sample files.

PROJECTDATADIR: contains the UK Biobank phenotypic data.


## 1-Polygenic risk scores

Polygenic risk scores (PRS) were generated using PRSice v2.0 at various thresholds. The genome-wide (p<5x10-8) score was used for the main analysis.

### Step 1: Compute PRS
PRS were calculated as the weighted sum of risk alleles per chromosome and will be averaged and standardized in step 4. GWAS summary stats used to compute the weighted PRS are :

-Demontis D, Walters RK, Martin J, Mattheisen M, Als TD, Agerbo E, et al. Discovery of the first genome-wide significant risk loci for attention deficit/hyperactivity disorder. Nat Genet. 2019;51(1):63-75. 
-Ripke S, Consortium SWGotPG. Biological insights from 108 schizophrenia-associated genetic loci. Nature. 2014;511(7510):421-7. 
-Grove J, Ripke S, Als TD, Mattheisen M, Walters RK, Won H, et al. Identification of common genetic risk variants for autism spectrum disorder. Nat Genet. 2019;51(3):431-44. 
-Wray NR, Ripke S, Mattheisen M, Trzaskowski M, Byrne EM, Abdellaoui A, et al. Genome-wide association analyses identify 44 risk variants and refine the genetic architecture of major depression. Nat Genet. 2018;50(5):668-81.
-Ruderfer DM, Ripke S, McQuillin A, Boocock J, Stahl EA, Pavlides JMW, et al. Genomic Dissection of Bipolar Disorder and Schizophrenia, Including 28 Subphenotypes. Cell. 2018;173(7):1705-15.e16.

### Step 2: Mapping identifiers
As the phenotypic and genetics datasets have different identifiers, they have to be mapped after generating the PRS.

### Step 3: Exclusion criteria
Next, we exclude everyone who :

i - has withdrawn consent (as has not yet been removed from the dataset)
ii - is not of white British ancestry 
ii - has a sex mismatch between reported and genetic sex
iii - is related to any of the other participants in the dataset
iiii- has a putative sex chromosom aneiploidy
iiiii - is an outlier in heterozygosity and missing rates

### Step 4: Generate standardized mean PRS
Create a new PRS-file with average, standardized scores that will serve as our exposure in the Phesant scan.

## 2-Confounder
Age, sex and the first 10 principal components were included in all regression models.
Sensitivity and follow-up analysis were additionally adjusted for the location of the assessment centre and genetic batch.

## 3-PHESANT
The pheWAS scan was run according to the scripts provided here : https://github.com/MRCIEU/PHESANT
Please clone the PHESANT WAS (including the outcome-info.tsv and data-coding-ordinal-info.csv files as well as the phenomeScan.r code) in you working directory.
In the results processing step - all PHESANT results (usually submitted as job-array of 100-200 parts) are combined, variable descriptions are added and forest plots of the top hits are generated automatically.

## 4-Follow-Up
Follow-up analysis were done for selected continious outcomes that pass the multiple testing threshold to get estimates on their orginal scale for better interpretation of the results. In addition, regressions were also adjusted for assessment centre and genotype batch to address potential confounding.
