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
module load SAMtools/1.9-IGB-gcc-4.9.4
# ----------------Commands------------------------
for i in data/stacks/bwa/alignments/*.sam; do
	samtools view -b $i > $i.bam;
done 