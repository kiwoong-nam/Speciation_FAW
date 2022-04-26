#!/bin/bash

module load bioinfo/tabix-0.2.5
module load bioinfo/vcftools-0.1.15

cd /home/knam/work/sfrugi_Schulum/regen/vcf/splits

vcf-concat k*.vcf.gz | gzip -f > ../Schulum.all.vcf.gz


