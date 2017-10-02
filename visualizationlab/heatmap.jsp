<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!--skin begain-->			
			<link rel="stylesheet" href="/skin/css/base2.css" type="text/css" media="all" />
			<link rel="stylesheet" href="/skin/css/jquery-ui.css" type="text/css" media="all" />
            <link rel="stylesheet" href="/skin/css/3dlable.css" type="text/css" media="all" />
			<script src="/skin/js/jquery.min.js" type="text/javascript"></script>
			<script src="/skin/js/jquery-ui.min.js" type="text/javascript"></script>
			<script src="/skin/js/download.js" type="text/javascript"></script>
			<!--[if IE]><script type="text/javascript" src="/skin/js/excanvas.js"></script><![endif]-->
            <script type="text/javascript" src="/skin/js/alertRowser.min.js"></script>				
<!--skin end-->
<title>MetaSee -- Heatmap Maker</title>
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {});
      google.load("prototype", "1.6");
    </script>
    
    <script type="text/javascript" src="http://systemsbiology-visualizations.googlecode.com/svn/trunk/src/main/js/load.js"></script>
    <script type="text/javascript">
        systemsbiology.load("visualization", "1.0", {packages:["bioheatmap"]});
    </script>
    
<%
	String code=request.getParameter("code");
	
	if(code==null){
		
	}else{
%>
	 <script type="text/javascript">
      google.setOnLoadCallback(drawHeatMap);
      function drawHeatMap() {
          var data = new google.visualization.DataTable();
<%= code%>
heatmap = new org.systemsbiology.visualization.BioHeatMap(document.getElementById('heatmapContainer'));
          heatmap.draw(data, {});
      }
    </script>
    <%}%>  
</head>
<body onload=showDemo();>
<jsp:include page="/template/head_navigation.txt" />

<!--template begain-->
	<div id="content-wrapper">
		
<!-- download-builder -->
<div id="download-builder" style="padding:0">
<!--template end-->
<br/>
<h1>&nbsp;&nbsp;&nbsp;MetaSee -- Heatmap Maker</h1>
<p>&nbsp;</p>
<hr>


<div id="heatmapContainer" style="margin-top:20px; margin:20px;"></div>
<form  action="" method="post"  target="_self" name="form" style="margin-left:20px;">
<textarea name="code" cols="120" rows="10"></textarea>
<br /><br />
<code style="background-color:#999999"><pre>
          data.addColumn('string', 'Gene Name');
          data.addColumn('number', 'DNA_chip1');
          data.addColumn('number', 'DNA_chip2');
          data.addColumn('number', 'DNA_chip3');
          data.addColumn('number', 'DNA_chip4');
          data.addColumn('number', 'DNA_chip5');
          data.addColumn('number', 'DNA_chip6');
          data.addRows(4);
          data.setCell(0, 0, 'ATF3');
          data.setCell(0, 1, 0);
          data.setCell(0, 2, 0.5);
          data.setCell(0, 3, 1);
          data.setCell(0, 4, 1.5);
          data.setCell(0, 5, 2);
          data.setCell(0, 6, 2.5);
          data.setCell(1, 0, 'INS');
          data.setCell(1, 1, 3);
          data.setCell(1, 2, 3.5);
          data.setCell(1, 3, 4);
          data.setCell(1, 4, 4.5);
          data.setCell(1, 5, 5);
          data.setCell(1, 6, 5.5);
          data.setCell(2, 0, 'TAP1');
          data.setCell(2, 1, 0);
          data.setCell(2, 2, null);
          data.setCell(2, 3, -1);
          data.setCell(2, 4, -1.5);
          data.setCell(2, 5, -2);
          data.setCell(2, 6, -2.5);
          data.setCell(3, 0, 'IL6');
          data.setCell(3, 1, -3);
          data.setCell(3, 2, -3.5);
          data.setCell(3, 3, -4);
          data.setCell(3, 4, -4.5);
          data.setCell(3, 5, -5);
          data.setCell(3, 6, -5.5);
</pre>

</code>
<button type="submit" id="download_zip" >Make a barchart</button>&nbsp;&nbsp;<button type="reset" id="download_zip" >Reset</button>
 </form> 





<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>