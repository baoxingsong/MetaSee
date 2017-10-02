package dao;
import bean.*;
import java.sql.*;
import java.util.*;

public class ResDao{
	private final String DBDRIVER = "org.sqlite.JDBC";
	private final String DBURL = "jdbc:sqlite:D:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/ROOT/WEB-INF/classes/res.db";
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	
	public ResDao(){
		try{
			Class.forName(DBDRIVER);
			conn = DriverManager.getConnection(DBURL);
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}	
	public	Res doFind(String key){
		Res res = null;
		ArrayList<String> arrList = new ArrayList<String>();
		String sql_find = "select * from res where SAMPLE_ACC=?";
		ResultSet result = null;
		try{
			this.pstmt = conn.prepareStatement(sql_find);
			this.pstmt.setString(1,key);
			result = pstmt.executeQuery();
		}catch(Exception ex){
			ex.printStackTrace();
		}	
		if(result!=null){
			try{
				
				while(result.next()){
					for(int i=1;i<=69;i++){
						String tmp = result.getString(i);
						if(tmp==null){
							tmp = new String("");
						}
						arrList.add(tmp);
					}
				}
			}catch(Exception ex){
				ex.printStackTrace();
			}
			res = new Res();
			res.setArrList(arrList);
		}
		return res;
		
	} 
	public static void main(String args[]){
		new ResDao().doFind("hehe");
		System.out.println("ok");
	}
}
