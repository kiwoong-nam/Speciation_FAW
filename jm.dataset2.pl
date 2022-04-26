use strict;

my $ind='/home/knam/work/sfrugi_Schulum/regen/rawfq2';

my @SN;
opendir my $D,$ind;
my @files=readdir($D);

foreach my $s (@files)
{
	if($s=~/(^.*).pair1.truncated.gz/) {push @SN,$1}
}


my $c= '#!/bin/bash
#SBATCH --mem=50G
#SBATCH -p unlimitq
#SBATCH -c 10
#
module load system/Java8
module load bioinfo/samtools-1.9
module load bioinfo/bwa-0.7.17

cd /home/knam/work/sfrugi_Schulum/regen/bam

';

foreach my $s (@SN)
{
 
	$c.= "
/home/knam/save/programs/bbmap/bbduk.sh  in1=$ind/$s.pair1.truncated.gz in2=$ind/$s.pair2.truncated.gz out1=P1 out2=P2 trimq=15
bwa mem -t 10 ../ref/sfru.mais.corrected.3.1.fa P1 P2 | samtools view -S -b | samtools sort -o $s.bam
rm P1 P2
";
}

print $c;
