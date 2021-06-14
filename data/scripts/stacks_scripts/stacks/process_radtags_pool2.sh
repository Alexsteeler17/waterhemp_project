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
module load Stacks/2.54-IGB-gcc-8.2.0
# ----------------Commands------------------------
process_radtags -p data/seqs/Project_KWKW_L3_H2159P_Waselkov/raw_seqs/pool2 -o data/stacks/reads/pool2 -b data/seqs/Project_KWKW_L3_H2159P_Waselkov/HiSeq2159_barcode_key_stacks_pool2.txt --inline_null -e ApeKI -r -c -q 2>&1 | tee data/stacks/logs/Log_process_radtags_$(date +%Y%m%d-%Hh%Mm%Ss).txt