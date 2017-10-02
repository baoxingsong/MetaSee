package perl;
import java.io.*;
public class CallPerl{
	public void main(String args[]){
		CallPerl ca=new CallPerl();
	}
	String result="";
	String dir="";
	String file="";
	String fileformat="";
	public void setDir(String d){
		dir=d;
	}
	public void setFile(String f){
		file=f;
	}
	public void setFileFormat(String setFileFormat){
		fileformat=setFileFormat;
	}
	
	public void doCallPerl(){
		try{
			
			String command=new String("/usr/bin/perl /var/lib/tomcat7/webapps/ROOT/lib/MetaSeeRun.pl" + " " + file + " " + dir + " " +fileformat);
			Process progress=Runtime.getRuntime().exec(command);
			
			BufferedReader reader=new BufferedReader(new InputStreamReader(progress.getInputStream()));
			String message= new String("");
			
			result=result+command;
			while((message=reader.readLine())!=null){
				//out.print(message+"<br />");
				result=result+message;
				result=result+"<br />";
			}
					}
		catch(Exception e)
		{e.printStackTrace();}
	}
	public String getResult(){
		return result;
	}

}
