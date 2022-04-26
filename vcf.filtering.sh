#!/bin/bash
#SBATCH --mem=50G

module load bioinfo/tabix-0.2.5
module load bioinfo/vcftools-0.1.15

cd /home/knam/work/sfrugi_Schulum/regen/vcf/

vcftools --recode --gzvcf Schulum.all.vcf.gz --remove-indels --maf 0.05 --max-missing 0.5 --remove-indv SRR12044616.bam --remove-indv SRR12044617.bam --remove-indv SRR12044614.bam --remove-indv SRR12044618.bam -c | gzip -f > Schlum.filtered.vcf.gz

