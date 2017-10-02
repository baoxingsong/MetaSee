#!perl -w
use strict;

my $fileName=$ARGV[0];
#$fileName="/var/lib/tomcat7/webapps/ROOT/visualizationlab/search/data/" . $fileName;
my $randomFileNameDir=$ARGV[1];



chdir "/var/lib/tomcat7/webapps/ROOT/lib";
my $dirnamee = "../tempresult/$randomFileNameDir";

if(-e $dirnamee){
}
else
{
	mkdir ($dirnamee);
} 

my $MetaSeeRunCommand="/opt/tools/meta-storms/bin/query_index -i $fileName -d /mnt/gene/suxq/metablast/src.dev/DB-all-group -t 8 -n 5 -o \"../tempresult/$randomFileNameDir/out.txt\" >\"../tempresult/$randomFileNameDir/metastomelog\" 2>\&1";

my $MetaSeeRunResult=`$MetaSeeRunCommand`;

my @similar_record;
open INPUTLOG,"../tempresult/$randomFileNameDir/out.txt";
while(my $logline=<INPUTLOG>){
	chomp($logline);
	if($logline=~/Sample path: (.*)/){
		@similar_record=(@similar_record,$1);
	}
}
close INPUTLOG;

my $metaseecommand="/usr/lib/jvm/java-7-openjdk-amd64/bin/java -jar MetaSee.jar -i $fileName ";


open LOG,">log";
foreach(@similar_record){
	$metaseecommand=$metaseecommand . "$_/classification.txt ";
}


$metaseecommand=$metaseecommand . "-o \"../tempresult/$randomFileNameDir\" -f matastorm >\"../tempresult/$randomFileNameDir/log\" 2>\&1";
print LOG "$metaseecommand";
close LOG;
$MetaSeeRunResult=`$metaseecommand`;
#my $runing_temp_command=`tar czf \"../tempresult/$randomFileNameDir/$randomFileNameDir\.gz\" \"../tempresult/$randomFileNameDir/\"`;

#clean_cache("temp");


sub clean_cache {
  my $clean_cache_dir = $_[0];
  my $clean_cache_file;
  my $clean_cache_comman_temp;
  opendir (DIR, $clean_cache_dir);
  while(defined($clean_cache_file = readdir DIR)) {
    next if $clean_cache_file =~ /^\.\.?$/; # skip . and ..
    if(-M "$clean_cache_dir/$clean_cache_file" >15) {
	
		#unlink("$dir/$file");
		$clean_cache_comman_temp=`rm -R $clean_cache_dir/$clean_cache_file`;
	
   }
  }
  closedir (DIR);
}
