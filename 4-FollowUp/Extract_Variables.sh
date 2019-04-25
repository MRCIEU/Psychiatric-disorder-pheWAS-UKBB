#!/bin/bash
#PBS -l walltime=24:00:00,nodes=1:ppn=4
#PBS -S /bin/bash

#------------------------------------------------------------------------------------

cut -d ',' -f 1,9,871,532,1000,32,36,8510,874,8496,5404,9595,1051,799,757,9556,6493,26,6374,9628,26,6374,9628,1143,9616,730,9628,9631,9640,6462,9631,586,589,9556,6493 ${HOME}/Phesant_ageatschool/data/data_21753-phesant_header.csv > ${HOME}/Phesant_cross_disorder/data/FollowUp_variables.csv