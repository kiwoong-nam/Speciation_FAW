#!/bin/bash
#SBATCH --partition=dgimi-eha
#SBATCH --nodes 1
#SBATCH -c 10


module load cv-standard
module load jre



/nfs/work/faw_adaptation/programs/vcftools_0.1.13/bin/vcftools --gzvcf      Schlum.SNP.filteredmaf.recode.vcf.gz  --out Schlum.SNP.filteredmaf --plink
