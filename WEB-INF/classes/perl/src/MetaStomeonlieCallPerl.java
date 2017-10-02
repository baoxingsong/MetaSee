package perl;
import java.io.*;
public class MetaStomeonlieCallPerl{
	public void main(String args[]){
		MetaStomeonlieCallPerl ca=new MetaStomeonlieCallPerl();
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
			
			String command=new String("/usr/bin/perl /var/lib/tomcat7/webapps/ROOT/lib/MetaStomonlinerun.pl" + " " + file + " " + dir);
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
