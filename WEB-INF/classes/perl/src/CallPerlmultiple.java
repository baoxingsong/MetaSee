package perl;
import java.io.*;
public class CallPerlmultiple{
	public void main(String args[]){
		CallPerlmultiple ca=new CallPerlmultiple();
	}
	String result="";
	String dir="";
	String file="";
	public void setDir(String d){
		dir=d;
	}
	public void setFile(String f){
		file=f;
	}
	
	public void doCallPerl(){
		try{
			
			//Process progress=Runtime.getRuntime().exec("ping 127.0.0.1");			
			String command=new String("/usr/bin/perl /var/lib/tomcat7/webapps/ROOT/lib/MetaSeeMapRun.pl" + file + " " + dir);
			Process progress=Runtime.getRuntime().exec(command);
			//
			BufferedReader reader=new BufferedReader(new InputStreamReader(progress.getInputStream()));
			String message= new String("");
			// 
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
