use strict;


my $sampleinfo='/home/knam/work/sfrugi_Schulum/regen/sample.list';
my $eigen='/home/knam/work/sfrugi_Schulum/regen/pca/Schlum.filtered.eigenvec';

my %IDs;
open my $fd,$sampleinfo;
while(<$fd>)
{
	$_=~s/\n//;
	my @s=split("\t",$_);
	$IDs{$s[0]}="$s[1]\t$s[2]\t$s[3]";
}
close $fd;

my $added;
open my $fd,$eigen;
while(<$fd>)
{
	$_=~s/\n//;
	$_=~/^\w+/;
	my $id=$&;
	
	if($_=~/#/) {next}
	$added.="$_\t$IDs{$id}\n";
}
close $fd;

open my $fd,'>/home/knam/work/sfrugi_Schulum/regen/pca/PCAtable.txt';
print $fd $added;
close $fd;

