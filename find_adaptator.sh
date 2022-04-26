#!/bin/bash
cd /work/knam/temp/Schlum_FQ


/home/knam/save/programs/adapterremoval-2.1.7/build/AdapterRemoval --identify-adapters --file1 /work/knam/temp/Schlum_FQ/$1"_1.fastq.gz" --file2 /work/knam/temp/Schlum_FQ/$1"_2.fastq.gz" >> "log"$1

