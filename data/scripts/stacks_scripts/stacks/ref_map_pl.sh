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
ref_map.pl --samples data/stacks/bwa/alignments_sorted_bam/ --popmap data/stacks/info/HiSeq2159_stacks_population_map.txt -o data/stacks/ref_map_pl/ 