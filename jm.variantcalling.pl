use strict;
use List::Util qw/shuffle/;

my $outD='/home/knam/work/sfrugi_Schulum/regen/script/variant_calling';
my $indexF='/home/knam/work/sfrugi_Schulum/regen/ref/sfru.mais.corrected.3.1.fa.fai';
my $template=
'#!/bin/bash
#SBATCH --mem=20G

module load bioinfo/bcftools-1.9

cd /home/knam/work/sfrugi_Schulum/regen/bam

bcftools mpileup REGIONS -Ou -f ../ref/sfru.mais.corrected.3.1.fa SRR12044614.bam SRR12044615.bam SRR12044616.bam SRR12044617.bam SRR12044618.bam SRR12044619.bam SRR12044620.bam SRR12044621.bam SRR12044622.bam SRR12044623.bam SRR12044624.bam SRR12044625.bam SRR12044626.bam SRR12044627.bam SRR12044628.bam SRR12044629.bam SRR12044630.bam SRR12044631.bam SRR12044632.bam SRR12044633.bam SRR12044634.bam SRR12044635.bam SRR12044636.bam SRR12044637.bam SRR12044638.bam SRR12044639.bam SRR12044640.bam SRR12044641.bam SRR12044642.bam SRR12044643.bam SRR12044644.bam SRR12044645.bam SRR12044646.bam SRR12044647.bam SRR12044648.bam SRR12044649.bam SRR12044650.bam SRR12044651.bam SRR12044652.bam SRR12044653.bam SRR12044654.bam SRR12044655.bam SRR12044656.bam SRR12044657.bam SRR12044658.bam SRR12044659.bam SRR12044660.bam SRR12044661.bam SRR12044662.bam SRR12044663.bam SRR12044664.bam SRR12044665.bam SRR12044666.bam SRR12044667.bam SRR12044668.bam | bcftools call -Oz -m -o ../vcf/splits/STCS.vcf.gz -m';

my @chrN=getchrN();

for(my $i=0;$i<$#chrN;$i+=100)
{
	my $regions='--regions ';
	for(my $j=0;$j<100;$j++)
	{
		$regions.="$chrN[$i+$j],";
	}
	$regions=~s/,$//;

	my $bcfcommand=$template;
	$bcfcommand=~s/REGIONS/$regions/;
	my $k=int $i/100;
	$bcfcommand=~s/STCS/k$k/;

	open my $fd,">$outD/j$k";
	print $fd $bcfcommand;
	close $fd;

	print "sbatch $outD/j$k\n";


}

sub getchrN
{
	my @chrs;

	open my $fd,$indexF;
	while(<$fd>)
	{
		$_=~/^\w+/;
		push @chrs,$&;
	}
	close $fd;
	
	
	my @chrs = shuffle @chrs;
	return @chrs;
}

