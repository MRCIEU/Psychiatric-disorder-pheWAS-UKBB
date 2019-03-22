#!/bin/bash
#PBS -l walltime=24:00:00,nodes=1:ppn=4
#PBS -S /bin/bash

#------------------------------------------------------------------------------------


cut -d',' -f 1,9,33,6620,6621 ${PROJECTDATADIR}/data.21753.csv > ${PROJECTDIR}/data/confounder/confounderfile.csv