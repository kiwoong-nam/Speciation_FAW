#!/bin/bash
#SBATCH --partition=dgimi-eha
#SBATCH --nodes 1
#SBATCH -c 10


module load cv-standard
module load jre


zcat Schlum.SNP.annotated.vcf.gz | grep -P '#|PASS' | /nfs/work/faw_adaptation/programs/vcftools_0.1.13/bin/vcftools --vcf - --max-missing 0.8 --maf 0.01 --out  Schlum.SNP.filteredmaf --recode #Perform filtering

#compress the new vcf file
/nfs/work/faw_adaptation/programs/htslib-1.9/bgzip Schlum.SNP.filteredmaf.recode.vcf
#index the vcf file
/nfs/work/faw_adaptation/programs/htslib-1.9/tabix -p vcf Schlum.SNP.filteredmaf.recode.vcf.gz


