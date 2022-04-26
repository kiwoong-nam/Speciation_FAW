#!/bin/bash
#SBATCH -p workq
#SBATCH -c 32
cd /work/knam/temp/Schlum_FQ
/home/knam/save/programs/adapterremoval-2.1.7/build/AdapterRemoval --file1 /work/knam/temp/Schlum_FQ/$1_1.fastq.gz --file2 /work/knam/temp/Schlum_FQ/$1_2.fastq.gz --basename $1 --trimns --trimqualities --minquality 20 --gzip --gzip-level 9 --threads 32

