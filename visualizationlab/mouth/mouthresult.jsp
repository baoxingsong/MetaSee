<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="perl.*" %>
<jsp:useBean id="doPerl" class="perl.CallPerlmultiple" scope="page" />
<%
	String itemName[]=request.getParameterValues("item");
	String filename=new String();
	
	
	if(itemName != null){
		for(String i:itemName){
			filename=filename+ " " +i;
		}
		String randomFilename=request.getParameter("randomFilename");
		doPerl.setFile(filename);
		doPerl.setDir(randomFilename); 
		doPerl.doCallPerl();
		response.sendRedirect("/tempresult/"+randomFilename+"/treeView.html");
	}else{
%>
	
    
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>MetaSee -- Metagenome globle distribution project</title>
<!--skin begain-->
			
			<link rel="stylesheet" href="/skin/css/base2.css" type="text/css" media="all" />
			<link rel="stylesheet" href="/skin/css/jquery-ui.css" type="text/css" media="all" />
            <link rel="stylesheet" href="/skin/css/3dlable.css" type="text/css" media="all" />
			<script src="/skin/js/jquery.min.js" type="text/javascript"></script>
			<script src="/skin/js/jquery-ui.min.js" type="text/javascript"></script>
			<script src="/skin/js/download.js" type="text/javascript"></script>
          
		
<!--skin end-->
<link href="http://code.google.com/apis/maps/documentation/javascript/examples/default.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&language=en"></script>
<script type="text/javascript" src="skin/js/globlemetagenome.js"></script>
</head>
<body onLoad="initialize()">
<jsp:include page="/template/head_navigation.txt" />

<!--template begain-->
	<div id="content-wrapper">
		
<!-- download-builder -->
<div id="download-builder" style="padding:0">
<!--template end-->
<br/>
<h1 style="color:#F00">&nbsp;&nbsp;&nbsp;You Should At Least Seclect One Sample!</h1>
<br />
<p><a href="/visualizationlab/mouth/">&nbsp;&nbsp;&nbsp;Click here to go back</a></p>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>
    
    
<%			
	}
%>