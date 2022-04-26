#!/bin/bash
#SBATCH -p workq
#SBATCH --mem=5G
#SBATCH -J "$1"
#SBATCH --output=$1".out"
cd /work/knam/temp/Schlum_FQ

/home/knam/save/programs/bowtie2-2.3.4.1-linux-x86_64/bowtie2 -x  /home/knam/work/temp/ref/sfC.ver7 -1 $1".pair1.truncated.gz" -2 $1".pair2.truncated.gz" --very-sensitive-local  | /home/knam/save/programs/samtools-1.9/samtools view -F 4 -b -h -o /work/kdurand/dgimi/FAW/bam.1/$1".raw.bam"

mv SAMPLE.paired.pair1.truncated.gz /home/knam/temp/
mv SAMPLE.paired.pair2.truncated.gz /home/knam/temp/

cd /work/kdurand/dgimi/FAW/bam.1

/home/knam/save/programs/samtools-1.9/samtools sort -o $1".sorted.bam" $1".raw.bam"

rm SAMPLE.raw.bam

java -Xmx4g -Djava.io.tmpdir=temp.SAMPLE -jar /home/knam/save/programs/picard.jar MarkDuplicates INPUT=$1".sorted.bam" OUTPUT=$1".dupl_rm.bam" REMOVE_DUPLICATES=true METRICS_FILE=$1".metricN.log" ASSUME_SORTED=True MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=1000 

rm -rf temp.SAMPLE
rm SAMPLE.sorted.bam

java -Xmx4g -Djava.io.tmpdir=$1".SAMPLE" -jar /home/knam/save/programs/picard.jar AddOrReplaceReadGroups INPUT=$1".dupl_rm.bam" OUTPUT=$1".bam" RGID=$1 RGLB=lib1 RGPL=illumina RGPU=unit1 RGSM=$1;

rm -rf temp.SAMPLE
rm SAMPLE.dupl_rm.bam

/home/knam/save/programs/samtools-1.9/samtools index $1".bam"
/home/knam/save/programs/samtools-1.9/samtools stats $1".bam" > $1".stats"
