#!/bin/bash
#SBATCH --mem=50G

module load bioinfo/tabix-0.2.5
module load bioinfo/vcftools-0.1.15
module load bioinfo/bcftools-1.9

cd /home/knam/work/sfrugi_Schlum/regen/vcf/indi/
 
bcftools merge -Ov -m all *bcf | vcftools --recode --vcf - --remove-indv SRR12044616.bam --remove-indv SRR12044617.bam --remove-indv SRR12044614.bam --remove-indv SRR12044618.bam -c | gzip -f > /home/knam/work/sfrugi_Schlum/regen/vcf/indi.raw.vcf.gz


