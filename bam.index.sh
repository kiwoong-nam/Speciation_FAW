#!/bin/bash

module load bioinfo/samtools-1.9

for file in /home/knam/work/sfrugi_Schulum/regen/bam/*.bam
do
 echo $file
 samtools index "$file" 
done

