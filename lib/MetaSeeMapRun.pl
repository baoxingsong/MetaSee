#!perl -w
use strict;
my $argvlength=@ARGV;
my $randomFileNameDir=$ARGV[$argvlength-1];
my $fileName="";

for(my $i=0;$i<($argvlength-1);$i++){
	$fileName=$fileName . " " . "\"/var/lib/tomcat7/webapps/ROOT/visualizationlab/map/data/$ARGV[$i].xml\"";
}


chdir "/var/lib/tomcat7/webapps/ROOT/lib";

my $MetaSeeRunCommand="/usr/lib/jvm/java-7-openjdk-amd64/bin/java -jar MetaSee.jar -i$fileName -o\"../tempresult/$randomFileNameDir\" -f metasee";

my $MetaSeeRunResult=`$MetaSeeRunCommand`;

#$runing_temp_command=`tar czpf $tar_file_name -C $system_cache_directory/$temp_dir_name/ data$file_names_array[$current_num]`;

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
