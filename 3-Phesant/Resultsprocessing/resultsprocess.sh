#!/bin/bash
#PBS -l walltime=360:00:00,nodes=1:ppn=1
#PBS -S /bin/bash
#PBS -e errors
#-------------------------------------------------------------------------------------------------

module add languages/R-3.3.1-ATLAS

# PHESANT code subdirectory
resultsProcessingDir="${PROJECTDIR}/WAS/resultsProcessing/"

# directory with PHESANT results
resDir_ADHD="${PROJECTDIR}/results/ADHD_genomewide/"
resDir_ASD="${PROJECTDIR}/results/ASD_genomewide/"
resDir_SCZ="${PROJECTDIR}/results/SCZ_genomewide/"
resDir_BP="${PROJECTDIR}/results/BP_genomewide/"
resDir_MDD="${PROJECTDIR}/results/MDD_genomewide/"

cd $resultsProcessingDir
Rscript mainCombineResults.r --resDir=${resDir_ADHD} --numParts=200 --variablelistfile="../variable-info/outcome-info.tsv"
Rscript mainCombineResults.r --resDir=${resDir_ASD} --numParts=200 --variablelistfile="../variable-info/outcome-info.tsv"
Rscript mainCombineResults.r --resDir=${resDir_SCZ} --numParts=200 --variablelistfile="../variable-info/outcome-info.tsv"
Rscript mainCombineResults.r --resDir=${resDir_BP} --numParts=200 --variablelistfile="../variable-info/outcome-info.tsv"
Rscript mainCombineResults.r --resDir=${resDir_MDD} --numParts=200 --variablelistfile="../variable-info/outcome-info.tsv"
