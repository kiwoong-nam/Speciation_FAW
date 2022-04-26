#!/bin/bash
#SBATCH --mem=50G
#SBATCH -p unlimitq
#SBATCH -c 10
#
module load system/Java8
module load bioinfo/samtools-1.9
module load bioinfo/bwa-0.7.17

cd /home/knam/work/sfrugi_Schulum/regen/bam


/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044660.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044660.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044660.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044663.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044663.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044663.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044650.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044650.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044650.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044655.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044655.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044655.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044657.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044657.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044657.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044661.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044661.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044661.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044651.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044651.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044651.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044668.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044668.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044668.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044662.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044662.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044662.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044659.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044659.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044659.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044648.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044648.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044648.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044653.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044653.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044653.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044658.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044658.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044658.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044664.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044664.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044664.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044656.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044656.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044656.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044667.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044667.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044667.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044665.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044665.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044665.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044649.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044649.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044649.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044654.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044654.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044654.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044652.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044652.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044652.bam
rm P1 P2

/home/knam/save/programs/bbmap/bbduk.sh  in1=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044666.pair1.truncated.gz in2=/home/knam/work/sfrugi_Schulum/regen/rawfq2/SRR12044666.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o SRR12044666.bam
rm P1 P2
