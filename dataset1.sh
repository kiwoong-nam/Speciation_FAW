#!/bin/bash
#SBATCH --mem=50G
#SBATCH -p unlimitq
#SBATCH -c 10
#
module load system/Java8
module load bioinfo/samtools-1.9
module load bioinfo/bwa-0.7.17

cd /home/knam/work/sfrugi_Schulum/regen/bam


/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044646.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044646.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044646.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044645.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044645.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044645.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044620.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044620.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044620.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044632.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044632.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044632.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044635.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044635.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044635.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044621.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044621.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044621.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044642.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044642.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044642.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044639.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044639.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044639.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044637.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044637.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044637.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044638.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044638.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044638.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044633.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044633.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044633.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044628.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044628.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044628.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044626.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044626.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044626.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044616.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044616.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044616.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044647.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044647.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044647.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044614.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044614.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044614.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044629.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044629.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044629.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044640.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044640.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044640.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044618.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044618.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044618.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044619.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044619.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044619.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044643.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044643.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044643.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044631.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044631.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044631.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044623.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044623.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044623.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044625.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044625.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044625.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044622.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044622.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044622.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044615.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044615.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044615.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044617.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044617.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044617.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044630.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044630.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044630.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044636.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044636.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044636.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044634.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044634.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044634.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044641.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044641.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044641.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044624.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044624.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044624.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044644.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044644.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044644.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044627.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq1/SRR12044627.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044627.bam
rm P1 P2
