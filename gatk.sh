#!/bin/bash
#SBATCH -c 4
#SBATCH --mem=40G
#SBATCH -p unlimitq
#SBATCH -J gatk
#for i in `cat SRR_Acc_List.txt`

 /home/knam/save/programs/samtools-1.9/samtools index /work/kdurand/dgimi/FAW/bam.1/$1.bam

/home/knam/save/programs/gatk-4.1.2.0/gatk HaplotypeCaller -R /work/knam/temp/ref/sfC.ver7.fa -I /work/kdurand/dgimi/FAW/bam.1/$1.bam -O /work/kdurand/dgimi/FAW/vcf/$1".g.vcf.gz" -ERC GVCF



