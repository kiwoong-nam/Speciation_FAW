#!/bin/bash
#SBATCH --mem=50G

module load bioinfo/tabix-0.2.5
module load bioinfo/vcftools-0.1.15
module load bioinfo/plink2-v2.0_alpha2

cd /home/knam/work/sfrugi_Schulum/regen/vcf

vcftools --gzvcf Schlum.filtered.vcf.gz --out Schlum.filtered --plink
/home/knam/save/programs/plink1.9/plink  --file Schlum.filtered --make-bed --out Schlum.filtered --allow-extra-chr

plink2 --bfile Schlum.filtered --pca --out ../pca/Schlum.filtered

