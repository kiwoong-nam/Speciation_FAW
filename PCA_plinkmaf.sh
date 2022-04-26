#!/bin/bash
#SBATCH --partition=dgimi-eha
#SBATCH --nodes 1
#SBATCH -c 10


module load cv-standard




/nfs/work/faw_adaptation/programs/plink1.9/plink --vcf /lustre/durandk/Schlum/vcf/Schlum.SNP.filteredmaf.recode.vcf.gz --allow-extra-chr   --pca --out /lustre/durandk/Schlum/vcf/pca_schlum_maf
