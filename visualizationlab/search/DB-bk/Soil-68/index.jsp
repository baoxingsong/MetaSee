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
<br />

<br />
<ul>
<br />
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px"><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-1/classification.txt" /> 
  Soil-68-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-10/classification.txt" /> Soil-68-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-11/classification.txt" /> Soil-68-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-12/classification.txt" /> Soil-68-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-13/classification.txt" /> Soil-68-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-14/classification.txt" /> Soil-68-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-15/classification.txt" /> Soil-68-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-16/classification.txt" /> Soil-68-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-17/classification.txt" /> Soil-68-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-18/classification.txt" /> Soil-68-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-19/classification.txt" /> Soil-68-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-2/classification.txt" /> Soil-68-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-20/classification.txt" /> Soil-68-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-21/classification.txt" /> Soil-68-21
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-22/classification.txt" /> Soil-68-22
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-23/classification.txt" /> Soil-68-23
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-24/classification.txt" /> Soil-68-24
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-25/classification.txt" /> Soil-68-25
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-26/classification.txt" /> Soil-68-26
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-27/classification.txt" /> Soil-68-27
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-28/classification.txt" /> Soil-68-28
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-29/classification.txt" /> Soil-68-29
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-3/classification.txt" /> Soil-68-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-30/classification.txt" /> Soil-68-30
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-31/classification.txt" /> Soil-68-31
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-32/classification.txt" /> Soil-68-32
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-33/classification.txt" /> Soil-68-33
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-34/classification.txt" /> Soil-68-34
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-35/classification.txt" /> Soil-68-35
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-36/classification.txt" /> Soil-68-36
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-37/classification.txt" /> Soil-68-37
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-38/classification.txt" /> Soil-68-38
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-39/classification.txt" /> Soil-68-39
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-4/classification.txt" /> Soil-68-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-40/classification.txt" /> Soil-68-40
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-41/classification.txt" /> Soil-68-41
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-42/classification.txt" /> Soil-68-42
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-43/classification.txt" /> Soil-68-43
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-44/classification.txt" /> Soil-68-44
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-45/classification.txt" /> Soil-68-45
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-46/classification.txt" /> Soil-68-46
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-47/classification.txt" /> Soil-68-47
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-48/classification.txt" /> Soil-68-48
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-49/classification.txt" /> Soil-68-49
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-50/classification.txt" /> Soil-68-50
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-51/classification.txt" /> Soil-68-51
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-52/classification.txt" /> Soil-68-52
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-53/classification.txt" /> Soil-68-53
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-54/classification.txt" /> Soil-68-54
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-55/classification.txt" /> Soil-68-55
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-56/classification.txt" /> Soil-68-56
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-57/classification.txt" /> Soil-68-57
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-58/classification.txt" /> Soil-68-58
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-59/classification.txt" /> Soil-68-59
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-6/classification.txt" /> Soil-68-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-60/classification.txt" /> Soil-68-60
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-61/classification.txt" /> Soil-68-61
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-62/classification.txt" /> Soil-68-62
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-63/classification.txt" /> Soil-68-63
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-64/classification.txt" /> Soil-68-64
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-65/classification.txt" /> Soil-68-65
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-66/classification.txt" /> Soil-68-66
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-67/classification.txt" /> Soil-68-67
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-68/classification.txt" /> Soil-68-68
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-69/classification.txt" /> Soil-68-69
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-70/classification.txt" /> Soil-68-70
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-71/classification.txt" /> Soil-68-71
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-72/classification.txt" /> Soil-68-72
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-73/classification.txt" /> Soil-68-73
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-74/classification.txt" /> Soil-68-74
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-75/classification.txt" /> Soil-68-75
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-76/classification.txt" /> Soil-68-76
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-77/classification.txt" /> Soil-68-77
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-78/classification.txt" /> Soil-68-78
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-79/classification.txt" /> Soil-68-79
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-8/classification.txt" /> Soil-68-8
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-80/classification.txt" /> Soil-68-80
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-81/classification.txt" /> Soil-68-81
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-82/classification.txt" /> Soil-68-82
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-83/classification.txt" /> Soil-68-83
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-84/classification.txt" /> Soil-68-84
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-85/classification.txt" /> Soil-68-85
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-86/classification.txt" /> Soil-68-86
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-87/classification.txt" /> Soil-68-87
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-88/classification.txt" /> Soil-68-88
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/68-89/classification.txt" /> Soil-68-89
<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>