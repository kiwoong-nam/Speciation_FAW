#!/bin/bash
#SBATCH --partition=dgimi-eha
#SBATCH --nodes 1
#SBATCH -c 10
#SBATCH -o weir-fst_kenya.out

module load cv-standard
module load jre



/nfs/work/faw_adaptation/programs/vcftools_0.1.13/bin/vcftools --gzvcf Schlum.SNP.filteredmaf.recode.vcf.gz --weir-fst-pop sfC.txt --weir-fst-pop sfR.txt --fst-window-size 1000000  --out Schlum.SNP.filteredmaf.gst.Sf


/nfs/work/faw_adaptation/programs/vcftools_0.1.13/bin/vcftools --gzvcf Schlum.SNP.filteredmaf.recode.vcf.gz --weir-fst-pop kenya.txt  --weir-fst-pop nokenya.txt --fst-window-size 1000000  --out Schlum.SNP.filteredmaf.gst.kenya
