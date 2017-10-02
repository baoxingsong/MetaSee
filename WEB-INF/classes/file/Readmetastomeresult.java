package file;
import java.io.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class Readmetastomeresult{
	String fileDir="/var/lib/tomcat7/webapps/ROOT/tempresult/";
	String fileName="out.txt";
	String readContent;
	String randomName="";
	public void setFileDir(String s){
		fileDir=fileDir+s+File.separator;
		randomName=s;
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
			
			Pattern idp=Pattern.compile("Match (\\d)");
			Pattern metaidp=Pattern.compile("Sample path: /mnt/gene/suxq/metablast/ftp/all/(\\w+)/([\\w-]+)");
			Pattern scorep=Pattern.compile("Similarity: (.+)");
			
			while((s=inTwo.readLine())!=null){
				Matcher idm =idp.matcher(s);
				Matcher metaidm=metaidp.matcher(s);
				Matcher scorem=scorep.matcher(s);
				byte bb[]=s.getBytes();
				if(idm.find()){
					stringbuffermatch.append("<td>"+idm.group(1)+"</td>");
				}
				if(scorem.find()){
					stringbuffermatch.append("<td>"+scorem.group(1)+"</td>");
				}
				if(metaidm.find()){
					//System.out.println(s);
					stringbuffermatch.append("<td><strong>"+metaidm.group(1)+"</strong>: "+"<a href=\"/tempresult/"+randomName+"/treeView.html\">");
					stringbuffermatch.append("&nbsp;"+metaidm.group(2)+"</a></td>");
					stringbuffer.append("<tr>"+stringbuffermatch+"</tr>");
					stringbuffermatch=new StringBuffer();
				}				
			}
			readContent=new String("<table style=\"width:700px; margin-left:20px;\" border=\"1\" align=\"center\" cellspacing=\"1\" cellpadding=\"3\"><tr><td>No.</td><td>Score</td><td>ID</td></tr>"+stringbuffer+"</table>");
			if(readContent.equals("<table style=\"width:700px; margin-left:20px;\" border=\"1\" align=\"center\" cellspacing=\"1\" cellpadding=\"3\"><tr><td>No.</td><td>Score</td><td>ID</td></tr></table>")){
				readContent=new String("Sorry, no similar record was found.");
			}
			else{
				
			}
		}catch(IOException e){
			readContent="";
		}
		return readContent;
	}
}

