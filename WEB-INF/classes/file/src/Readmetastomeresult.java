package file;
import java.io.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class Readmetastomeresult{
	String fileDir="/var/lib/tomcat7/webapps/ROOT/tempresult/";
	String fileName="out.txt";
	String readContent;
	public void setFileDir(String s){
		fileDir=fileDir+s+File.separator;
		setFileName(fileDir);
	}
	public void setFileName(String path){
		fileName=path+fileName;
	}
	public String getReadContent(){
		try{
			File file=new File(fileName);
			FileReader in=new FileReader(file);
			BufferedReader inTwo=new BufferedReader(in);
			StringBuffer stringbuffer= new StringBuffer();
			StringBuffer stringbuffermatch= new StringBuffer();
			String s=null;
			
			Pattern idp=Pattern.compile("Match \\d+");
			Pattern metaidp=Pattern.compile("Sample path: /mnt/gene/suxq/metablast/ftp/all/(\\d+)/([\\d-]+)");
			Pattern scorep=Pattern.compile("Similarity: (.+)");
			
			while((s=inTwo.readLine())!=null){
				Matcher idm =idp.matcher(s);
				Matcher metaidm=metaidp.matcher(s);
				Matcher scorem=scorep.matcher(s);
				byte bb[]=s.getBytes();
				if(idm.find()){
					stringbuffermatch.append(idm.group(1));
				}
				if(scorem.find()){
					stringbuffermatch.append(scorem.group(1));
				}
				if(metaidm.find()){
					stringbuffermatch.append(metaidm.group(1));
					stringbuffermatch.append(metaidm.group(2));
					stringbuffer.append(stringbuffermatch);
					stringbuffermatch=new StringBuffer();
				}
		
				
				
			}
			readContent=new String(stringbuffer);
		}catch(IOException e){
			readContent="";
		}
		return readContent;
	}
}

