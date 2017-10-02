#!perl -w
use strict;

my $fileNameooo=$ARGV[0];

my $randomFileNameDir=$ARGV[1];
my @fileNameArray=split("__SeeMetaSee__",$fileNameooo);
my $fileName="";
foreach my $file (@fileNameArray){
	$fileName=$fileName . " " . "\"../temp/$randomFileNameDir/$file\"";
}


chdir "/var/lib/tomcat7/webapps/ROOT/lib";
my $filenamee = "../tempresult/$randomFileNameDir";
if(-e $filenamee){
}
else
{
	mkdir ($filenamee);
} 

my $MetaSeeRunCommand="/usr/lib/jvm/java-7-openjdk-amd64/bin/java -jar MetaSee.jar -i $fileName -o \"../tempresult/$randomFileNameDir\" -f $ARGV[2] >\"../tempresult/$randomFileNameDir/log\" 2>\&1";
#my $MetaSeeRunCommand="java -jar MetaSee.jar -i $fileName -o \"../tempresult/$randomFileNameDir\" -f $ARGV[2] >\"../tempresult/$randomFileNameDir/log\" 2>\&1";


my $MetaSeeRunResult=`$MetaSeeRunCommand`;
my $runing_temp_command=`tar czf \"../tempresult/$randomFileNameDir/$randomFileNameDir\.gz\" \"../tempresult/$randomFileNameDir/\"`;

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
