<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="perl.*" %>
<jsp:useBean id="doPerl" class="perl.MetaStomeonlieCallPerl" scope="page" />
<jsp:useBean id="file" class="file.Readmetastomeresult" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>MetaSee -- Database Search</title>
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
<%
	String itemName=request.getParameter("item");
	if(itemName != null){
		String randomFilename=request.getParameter("randomFilename");
		//out.print("itemName:" + itemName);
		//out.print("randomFilename:" + randomFilename);
		//out.print("itemName:");
		//out.print("randomFilename:");
		String filename=itemName;
		doPerl.setFile(filename);
		doPerl.setDir(randomFilename); 
		doPerl.doCallPerl();
		//response.sendRedirect("/tempresult/"+randomFilename+"/treeView.html");
		file.setFileDir(randomFilename);
		String content=file.getReadContent();
%>
<p>
<h1>&nbsp;&nbsp;&nbsp;Database search result</h1>
<p>&nbsp;</p>
<p>&nbsp;</p>
&nbsp;&nbsp;&nbsp;The sample you selected is "<%=itemName%>".
<p>&nbsp;</p>
&nbsp;&nbsp;&nbsp;Click <a href="/tempresult/<%=randomFilename%>/treeView.html" target="_blank">here</a> to see the result.

<p>&nbsp;</p>
</p>
<%		
		out.print(content);
		
	}else{
%>

<h1 style="color:#F00">&nbsp;&nbsp;&nbsp;You Should At Least Seclect One Sample!</h1>
<br />
<p><a href="/visualizationlab/map/">&nbsp;&nbsp;&nbsp;Click here to go back</a></p>
<p>&nbsp;</p>
    
<%			
	}
%>
</div><!-- /download-builder -->		
<p>&nbsp;</p>
<p>&nbsp;</p>	
<jsp:include page="/template/footer.txt" />

</body>
</html>