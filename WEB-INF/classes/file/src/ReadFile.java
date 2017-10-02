package file;
import java.io.*;
public class ReadFile{
	String fileDir="/var/lib/tomcat7/webapps/ROOT/tempresult/";
	String fileName="log";
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
			String s=null;
			while((s=inTwo.readLine())!=null){
				byte bb[]=s.getBytes();
				stringbuffer.append("\n"+s);
			}
			readContent=new String(stringbuffer);
		}catch(IOException e){
			readContent="";
		}
		return readContent;
	}
}
