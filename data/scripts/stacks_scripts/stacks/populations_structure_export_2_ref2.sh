#!/bin/bash
# ----------------SLURM Parameters----------------
#SBATCH -p normal
#SBATCH -n 1
#SBATCH --mem=20g
#SBATCH -N 1
#SBATCH --mail-user=alexsteeler17@mail.fresnostate.edu
#SBATCH --mail-type=ALL
#SBATCH -J Alex_GBS
# ----------------Load Modules--------------------
module load Stacks/2.54-IGB-gcc-8.2.0
# ----------------Commands------------------------
populations -P data/stacks/ref_map_pl_2/ --popmap data/stacks/info/HiSeq2159_stacks_population_map.txt --smooth -p 10 -r 0.85 -f p_value -t 8 --structure --genepop --write-single-snp --ordered-export -O data/stacks/ref_map_pl_2/populations_2/