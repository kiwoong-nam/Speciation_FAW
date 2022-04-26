
use strict;
use List::Util qw/shuffle/;

my $B=100;
my $vcfF='/lustre/durandk/Schlum/vcf/Schlum.SNP.filteredmaf.recode.vcf.gz';
my $pop1='/lustre/durandk/Schlum/vcf/sfR.txt';
my $pop2='/lustre/durandk/Schlum/vcf/sfC.txt';

my @P1;
open my $fd,$pop1;
while(<$fd>)
{
	$_=~s/\n//;
	push @P1,"$_\n";
}
close $fd;

my @P2;
open my $fd,$pop2;
while(<$fd>)
{
	$_=~s/\n//;
	push @P2,"$_\n";
}
close $fd;

my @P=(@P1,@P2);

for(my $b=0;$b<$B;$b++)
{
	my $temp=rand 1;
	my $p1f="/lustre/durandk/Schlum/vcf/Randomvcf_sfRsfC/r$temp.P1";
	my $p2f="/lustre/durandk/Schlum/vcf/Randomvcf_sfRsfC/r$temp.P2";
	my $outf="/lustre/durandk/Schlum/vcf/Randomvcf_sfRsfC/res/r$temp";

	@P=shuffle @P;
	my @rP1=@P[0..$#P1];
	my @rP2=@P[($#P1+1)..($#P)];

	open my $fd,">$p1f";
	print $fd @rP1;
	close $fd;

	open my $fd,">$p2f";      
	print $fd @rP2;
	close $fd;

	
	`/nfs/work/faw_adaptation/programs/vcftools_0.1.13/bin/vcftools --gzvcf $vcfF --weir-fst-pop $p1f  --weir-fst-pop $p2f  --fst-window-size 1000000  --out $outf `;

	`rm $p1f $p2f`;
	`rm $outf.weir.fst`;



}

















