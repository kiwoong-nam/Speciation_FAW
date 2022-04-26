#!/bin/bash
#SBATCH --partition=dgimi-eha
#SBATCH --nodes 1
#SBATCH -c 10


module load cv-standard
module load jre

## Variant calling
/nfs/work/faw_adaptation/programs/gatk-4.1.2.0/gatk GenotypeGVCFs -R /nfs/work/faw_adaptation/ref/sfC.ver7.fa --variant merged.Schlum.g.vcf.gz  -O Schlum.vcf3.gz -all-sites

#cd ../vcf

## Selecting only SNPs

/nfs/work/faw_adaptation/programs/gatk-4.1.2.0/gatk SelectVariants -select-type SNP -R /nfs/work/faw_adaptation/ref/sfC.ver7.fa -V Schlum.vcf3.gz -O Schlum.SNP.vcf3.gz

## Annotating bad SNPs
/nfs/work/faw_adaptation/programs/gatk-4.1.2.0/gatk VariantFiltration -R /nfs/work/faw_adaptation/ref/sfC.ver7.fa -V Schlum.SNP.vcf3.gz --filter-expression "QD < 2.0 || FS > 60.0 || MQ < 40.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" --filter-name "my_snp_filter" -O Schlum.SNP.annotated.vcf.gz # Check each SNP is good or not.vcf.gz

## Collecting only good (PASS) SNPs
zcat Schlum.SNP.annotated.vcf.gz | grep -P '#|PASS' | /nfs/work/faw_adaptation/programs/vcftools_0.1.13/bin/vcftools --vcf - --max-missing 0.8 --out Schlum.SNP.filtered --recode #Perform filtering

#compress the new vcf file
/nfs/work/faw_adaptation/programs/htslib-1.9/bgzip Schlum.SNP.filtered.recode.vcf
#index the vcf file
/nfs/work/faw_adaptation/programs/htslib-1.9/tabix -p vcf Schlum.SNP.filtered.recode.vcf.gz


