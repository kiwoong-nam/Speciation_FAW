use strict;

my $total=0;
my $snp=0;
my $n=0;
open my $fd,"zcat /home/knam/work/sfrugi_Schulum/regen/vcf/Schulum.all.vcf.gz | ";
while(<$fd>)
{
	if($_=~/#/) {next}
	$n++;
	if($n%100000==0)
	{
		print ("$n: ",(int $total*10000/$n)/10000,"\n");
	}

	my @s=split("\t",$_);
	if($s[4] eq '.' ) {next}

	$total++;
	if(length $s[4] ==1 and $s[4]=~/\w/ and length $s[3] ==1) {$snp++}
}
close $fd;

open my $fd,">/home/knam/work/sfrugi_Schulum/regen/vcf/Schulum.all.counts";
print $fd "total position:$n\ntotal var:$total\nSNP:$snp\n";
close $fd;

