#!/bin/bash
#PBS -l walltime=360:00:00,nodes=1:ppn=1
#PBS -S /bin/bash
#PBS -e errors
#PBS -t 1-200
#------------------------------------------------------------------------------------

module add languages/R-3.3.1-ATLAS

cd ${PROJECTDIR}/PHESANT_GIT/3-Phesant \

pIdx=${PBS_ARRAYID}
np=200

Rscript ${PROJECTDIR}/PHESANT_GIT/3-Phesant/WAS/phenomeScan.r \

--phenofile="${PROJECTDIR}/data/data.21753-phesant_header.csv" \
--traitofinterestfile="${PROJECTDIR}/data/PRS/exclusion/SCZ_snp-score-p1-withPhenIds-subset.csv" \
--confounderfile="${PROJECTDIR}/data/confounder/confounders-PHESANT-10pcs.csv" \
--variablelistfile="${PROJECTDIR}/data/variable-info/outcome-info.tsv" \
--datacodingfile="${PROJECTDIR}/data/variable-info/data-coding-ordinal-info.csv" \
--resDir="${PROJECTDIR}/results/SCZ_genomewide" \
--userId="eid" \
--traitofinterest="std.p1" \
--genetic=TRUE \
--partIdx=$pIdx \
--numParts=$np \