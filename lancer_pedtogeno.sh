#!/bin/bash
#SBATCH --partition=dgimi-eha
#SBATCH --nodes 1
#SBATCH -c 10



/nfs/work/faw_adaptation/programs/sNMF_CL_v1.2/bin/ped2geno Schlum.SNP.filteredmaf.ped slittoralis.geno


