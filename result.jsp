<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="perl.*" %>
<%@ page import="file.ReadFile" %>
<jsp:useBean id="doPerl" class="perl.CallPerl" scope="page" />
<jsp:useBean id="file" class="file.ReadFile" scope="page" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>MetaSee -- Upload your file(s)</title>
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
<div style="margin-left:15px">
<p>&nbsp;</p>
<p>&nbsp;</p>
<%
	String inputfile=request.getParameter("uploadhidden");
	String randomFilename=request.getParameter("randomFilename");
	String fileformat=request.getParameter("fileformat");
	if((inputfile != null) && (!inputfile.equals("")) ){
		doPerl.setFile(inputfile); 
		doPerl.setDir(randomFilename);
		doPerl.setFileFormat(fileformat);
		doPerl.doCallPerl();

		//response.sendRedirect("tempresult/"+randomFilename+"/treeView.html");
		file.setFileDir(randomFilename);
		String content=file.getReadContent();
		if(content.isEmpty()){
%>
			
			<h2>&nbsp;&nbsp;&nbsp;I don't know whether MetaSee run succeed or not, you should check it manually!</h2>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<h2>&nbsp;&nbsp;&nbsp;You can</h2>
			<p>&nbsp;</p>
			<p>&nbsp;&nbsp;&nbsp;<a href="tempresult/<%=randomFilename%>/treeView.html" target="_blank">open the result in a new window</a></p>
			<p>&nbsp;</p>
			<h2>&nbsp;&nbsp;&nbsp;Or</h2>
			<p>&nbsp;</p>
			<p>&nbsp;&nbsp;&nbsp;<a href="tempresult/<%=randomFilename%>/<%=randomFilename%>.gz" target="_blank">download the result</a></p>
<%		}else if(content.startsWith("\nsucceed")){
%>
			<h2>&nbsp;&nbsp;&nbsp;Congratulations! MetaSee run successfully.</h2>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<h2>&nbsp;&nbsp;&nbsp;You can</h2>
			<p>&nbsp;</p>
			<p>&nbsp;&nbsp;&nbsp;<a href="tempresult/<%=randomFilename%>/treeView.html"  target="_blank">open the result in a new window</a></p>
			<p>&nbsp;</p>
			<h2>&nbsp;&nbsp;&nbsp;Or</h2>
			<p>&nbsp;</p>
			<p>&nbsp;&nbsp;&nbsp;<a href="tempresult/<%=randomFilename%>/<%=randomFilename%>.gz"  target="_blank">download the result</a></p>
<%
		}else{
			content=content.replaceAll("\\n", "<br>");
%>
			<h2>&nbsp;&nbsp;&nbsp;I am sorry! MetaSee run unsuccessfully.</h2>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<h2>&nbsp;&nbsp;&nbsp;You can check the log file</h2>
			<p>&nbsp;</p>
			<p><%=content%></p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<h2>&nbsp;&nbsp;&nbsp;Common error</h2>
			<p><b>1, There are more <em>val</em> in the <em>count</em> than <em>dataset</em> in <em>datasets</em></b></p>
			<p>&nbsp;</p>
			<p><b>2, The file format you pointed is not the file format of the file you unpload.</b></p>
			<p>&nbsp;</p>
			<p><b>3, The file(s) you unpload is(are) compressed file(s).</b></p>
			<p>&nbsp;</p>
<%			
		}
	}else{
%>
<h1 style="color:#F00">&nbsp;&nbsp;&nbsp;You Should At Least upload one file!</h1>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;<a href="/upload.jsp">Click here to go back</a></p>

<%			
	}
%>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>