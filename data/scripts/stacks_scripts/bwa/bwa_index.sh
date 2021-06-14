#!/bin/bash
# ----------------SLURM Parameters----------------
#SBATCH -p normal
#SBATCH -n 1
#SBATCH --mem=10g
#SBATCH -N 1
#SBATCH --mail-user=alexsteeler17@mail.fresnostate.edu
#SBATCH --mail-type=ALL
#SBATCH -J Alex_GBS
# ----------------Load Modules--------------------
module load BWA/0.7.17-IGB-gcc-8.2.0
# ----------------Commands------------------------
bwa index -p data/stacks/bwa/bwa_index_wh data/seqs/reference/Amaranthus_tuberculatus.faa 2>&1 | tee data/stacks/logs/bwa_index_$(date +%Y%m%d-%Hh%Mm%Ss).txt