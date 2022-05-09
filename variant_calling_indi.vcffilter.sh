#!/bin/bash

module load bioinfo/tabix-0.2.5
module load bioinfo/vcftools-0.1.15

cd /home/knam/work/sfrugi_Schlum/regen/vcf
 
vcftools --gzvcf indi.raw.vcf.gz --remove-indels --recode --recode-INFO-all -c | gzip -c > indi.noindel.vcf.gz
vcftools --gzvcf indi.noindel.vcf.gz --maf 0.05 --max-missing 0.50 --recode --recode-INFO-all -c | gzip -c > indi.snp.vcf.gz

