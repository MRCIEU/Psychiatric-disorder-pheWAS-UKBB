#!/bin/bash
#PBS -l walltime=72:00:00,nodes=1:ppn=4
#PBS -S /bin/bash
#PBS -t 10-23

#------------------------------------------------------------------------------------

pIdx=${PBS_ARRAYID}

cd ${PROJECTDIR}/PHESANT_GIT/1-PRS \

Rscript PRSice.R \
--prsice ${PROJECTDIR}/PHESANT_GIT/1-PRS/PRSice_linux \
--dir . \
--base ${HOME}/GWAS_discovery/BDvsCONT.sumstats \
--binary-target F \
--stat OR \
--type bgen \
--target ${UKBBDATADIR}/data.chr0$pIdx,${UKBBSAMPLESTATSDIR}/data.chr0$pIdx.sample \
--clump-p 1 \
--clump-r2 0.1 \
--clump-kb 500 \
--fastscore T \
--bar-levels 1,0.5,0.1,0.2,0.05,0.01,0.001,0.0001,0.00001,0.00001,0.00000005 \
--score sum \
--all-score T \
--no-regress T \
--print-snp T \
--out ${PROJECTDIR}/data/PRS/BP_CHR$pIdx \
--extract ${PROJECTDIR}/data/PRS/BP_CHR$pIdx.valid \