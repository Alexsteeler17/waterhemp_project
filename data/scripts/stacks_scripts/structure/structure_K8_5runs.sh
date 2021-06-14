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
module load structure/2.3.4-IGB-gcc-4.9.4
# ----------------Commands------------------------
for i in 1 2 3 4 5
do
structure -m /home/a-m/csuf_lopez/waterhemp_project/data/stacks/structure_2/admix/mainparams.txt -e /home/a-m/csuf_lopez/waterhemp_project/data/stacks/structure_2/admix/extraparams.txt -i /home/a-m/csuf_lopez/waterhemp_project/data/stacks/structure_2/admix/populations.structure -o /home/a-m/csuf_lopez/waterhemp_project/data/stacks/structure_2/admix/output_K8_run$i -K 8
done 