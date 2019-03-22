#!/bin/bash
#PBS -l walltime=72:00:00,nodes=1:ppn=4
#PBS -S /bin/bash

#------------------------------------------------------------------------------------

cd ${PROJECTDIR}/PHESANT_GIT/2-Confounder_Exposure_Files/2-Confounder \

Rscript makeConfounderFiles.r \