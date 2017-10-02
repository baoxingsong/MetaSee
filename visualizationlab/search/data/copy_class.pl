#!perl -w
use strict;
chdir "..";
my $dienamr='.';
copyfile($dienamr,"df");



sub copyfile{
	my $dirname=$_[0];
	my @list=<$dirname/*>;
	my $tempresult;
	foreach (@list){
		if(-d $_){
			chdir $_;
			&copyfile(".",$_);
			chdir "..";
		}
		if(-f $_){
			my $currentfilename=$_;
			$currentfilename=~s/^\.\///;
			my $currentdirname=$_[1];
			$currentdirname=~s/^\.\///;
			#print ".$currentdirname$currentfilename\n";
			if($currentfilename eq "classification.txt"){
				$tempresult="copy classification.txt E:\\metaviewer\\metagenome_globle_distribution\\gotoparallelmeta\\metastome\\$currentdirname.txt";
				print "$tempresult\n";
				$tempresult=`$tempresult`;
			}
		}
	}
}
