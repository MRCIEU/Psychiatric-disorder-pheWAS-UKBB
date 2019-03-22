#!/bin/bash
#PBS -l walltime=360:00:00,nodes=1:ppn=1
#PBS -S /bin/bash
#PBS -e errors
#-------------------------------------------------------------------------------------------------

module add languages/R-3.3.1-ATLAS

# PHESANT code subdirectory
resultsProcessingDir="${PROJECTDIR}/WAS/resultsProcessing/"

# directory with PHESANT results
resDir="${PROJECTDIR}/results/ADHD_genomewide/"

cd $resultsProcessingDir
Rscript mainCombineResults.r --resDir=${resDir} --numParts=200 --variablelistfile="../variable-info/outcome-info.tsv"