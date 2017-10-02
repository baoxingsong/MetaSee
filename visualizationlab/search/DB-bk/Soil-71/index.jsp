<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.UUID" %>
<% String randomFilename=UUID.randomUUID().toString(); %>
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
            <!--[if IE]><script type="text/javascript" src="/skin/js/excanvas.js"></script><![endif]-->
            <script type="text/javascript" src="/skin/js/alertRowser.min.js"></script>	
		
<!--skin end-->
<link href="http://code.google.com/apis/maps/documentation/javascript/examples/default.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&language=en"></script>
<script type="text/javascript" src="skin/js/globlemetagenome.js"></script>

<!--tooltips begain-->
<script type="text/javascript" src="skin/prototype/prototype.js"></script>
<script type="text/javascript" src="skin/scriptaculous/scriptaculous.js"></script>
<script type="text/javascript" src="skin/HelpBalloon.js"></script>
<script type="text/javascript">
<!--
//
// Override the default settings to point to the parent directory
//
HelpBalloon.Options.prototype = Object.extend(HelpBalloon.Options.prototype, {
	icon: 'skin/image/icon.gif',
	button: 'skin/image/button.png',
	balloonPrefix: 'skin/image/balloon-'
});
//-->
</script>
<!--tooltips end-->

</head>
<body onLoad="initialize();onload=showDemo();">
<jsp:include page="/template/head_navigation.txt" />

<!--template begain-->
	<div id="content-wrapper">
		
<!-- download-builder -->
<div id="download-builder" style="padding:0">
<!--template end-->
<br/>
<h1>&nbsp;&nbsp;&nbsp;Database Search</h1>
<p>&nbsp;</p>
<p style="width:900px; margin:20px 20px 20px 20px;">
Select one sample and search it with <a href="http://www.computationalbioenergy.org/meta-storms.html" target="_blank">Meta-Storms</a>. About <a href="http://www.computationalbioenergy.org/meta-storms.html" target="_blank">Meta-Storms</a>.</p>
<p>&nbsp;</p>
<ul>
<br />
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px"><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-1/classification.txt" /> Soil-71-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-10/classification.txt" /> Soil-71-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-11/classification.txt" /> Soil-71-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-12/classification.txt" /> Soil-71-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-13/classification.txt" /> Soil-71-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-14/classification.txt" /> Soil-71-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-15/classification.txt" /> Soil-71-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-16/classification.txt" /> Soil-71-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-17/classification.txt" /> Soil-71-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-18/classification.txt" /> Soil-71-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-19/classification.txt" /> Soil-71-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-2/classification.txt" /> Soil-71-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-20/classification.txt" /> Soil-71-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-21/classification.txt" /> Soil-71-21
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-22/classification.txt" /> Soil-71-22
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-23/classification.txt" /> Soil-71-23
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-24/classification.txt" /> Soil-71-24
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-25/classification.txt" /> Soil-71-25
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-26/classification.txt" /> Soil-71-26
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-27/classification.txt" /> Soil-71-27
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-28/classification.txt" /> Soil-71-28
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-29/classification.txt" /> Soil-71-29
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-3/classification.txt" /> Soil-71-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-30/classification.txt" /> Soil-71-30
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-31/classification.txt" /> Soil-71-31
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-32/classification.txt" /> Soil-71-32
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-33/classification.txt" /> Soil-71-33
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-34/classification.txt" /> Soil-71-34
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-35/classification.txt" /> Soil-71-35
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-36/classification.txt" /> Soil-71-36
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-37/classification.txt" /> Soil-71-37
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-38/classification.txt" /> Soil-71-38
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-39/classification.txt" /> Soil-71-39
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-4/classification.txt" /> Soil-71-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-40/classification.txt" /> Soil-71-40
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-41/classification.txt" /> Soil-71-41
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-42/classification.txt" /> Soil-71-42
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-43/classification.txt" /> Soil-71-43
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-44/classification.txt" /> Soil-71-44
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-45/classification.txt" /> Soil-71-45
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-46/classification.txt" /> Soil-71-46
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-47/classification.txt" /> Soil-71-47
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-48/classification.txt" /> Soil-71-48
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-6/classification.txt" /> Soil-71-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/71-8/classification.txt" /> Soil-71-8<br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>