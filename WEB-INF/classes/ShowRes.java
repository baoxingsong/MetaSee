package servlet;
import javax.servlet.*;
import javax.servlet.http.*;
import bean.*;
import dao.*;
import java.util.*;
import java.io.*;

public class ShowRes extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response){
		String[] tableHeader = {"SAMPLE_ACC","Sample Type","SAMPLE_VOLUME","VOLUME_UNIT","FILTER_MIN","FILTER_MAX","SAMPLE_DESCRIPTION","SAMPLE_NAME","COMMENTS","TAXON_ID","COL    LECTION_START_TIME","COLLECTION_STOP_TIME","BIOMATERIAL_NAME","DESCRIPTION","MATERIAL_ACC","SITE_NAME","LATITUDE","LONGITUDE","ALTITUDE","SITE_DEPTH","SIT    E_DESCRIPTION","COUNTRY_NAME","REGION","HABITAT_NAME","HOST_TAXON_ID","HOST_DESCRIPTION","HOST_ORGANISM","LIBRARY_ACC","SEQUENCING_METHOD","DNA_TYPE","NUM    _OF_READS","MATERIAL_ID","Strontium(Sr) - (uM)","Silicon(Si) - (uM)","Magnesium(Mg) - (uM)","Chlorinity(Cl) - (uM)","Sulfur(S2) - (uM)","Lithium(Li) - (uM    )","Zinc(Zn) - (uM)","sample depth - (M)","Charge(+) - (mMol)","Dissolved Inorg C(DIC) - (uM)","Tungsten(W) - (uM)","Molybdenum(Mo) - (uM)","Antimony(Sb)     - (uM)","Caesium(Cs) - (uM)","oxygen - (uM)","Methane - (uM)","H2 - (uM)","Boron(B) - (uM)","Arsenic(As) - (uM)","temperature - (C)","Fluorine(F) - (uM)",    "Calcium(Ca) - (uM)","nitrate(NO3) - (uM)","Aluminium(Al) - (uM)","Barium(Ba) - (uM)","Charge(-) - (mMol)","Sodium - (uM)","Vanadium(V) - (uM)","Manganese    (Mn) - (uM)","Rubidium(Rb) - (uM)","Iron(Fe) - (uM)","pH","Potassium(K) - (uM)","Ammonia(NH4) - (uM)","Sulfate(SO4) - (uM)","Carbon dioxide(CO2) - (uM)","    dissolved organic carbon - (uM)"};
		String key = request.getParameter("key");
		ResDao rd = new ResDao();
		Res res = rd.doFind(key);
		PrintWriter out = null;
		try{
				out = response.getWriter();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		out.print("<html><head><title>"+key+"</title></head><body>");
		if(res == null){
			out.println("no record found!");
		}else{
			out.println("<a href=\"/servlet/ShowRes?key="+key+"\" target=\"_blank\">open in new window</a>");
			out.println("<table border=\"1\" width=\"100%\">");
			ArrayList<String> arr = res.getArrList();
			Iterator<String> itr = arr.iterator();
			int index = 0;
			while(itr.hasNext()){
				String sres = itr.next();
				if(!"".equals(sres))
					out.println("<tr><td>"+tableHeader[index]+"</td><td>"+sres+"</td></tr>");
				index++;
			}	
		}
		out.print("</table></body></html>");
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response){
		this.doPost(request,response);
	}
}
