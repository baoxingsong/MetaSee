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
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px"><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-1/classification.txt" /> 
  Ground_water-70-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-2/classification.txt" /> Ground_water-70-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-3/classification.txt" /> Ground_water-70-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-4/classification.txt" /> Ground_water-70-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-6/classification.txt" /> Ground_water-70-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-8/classification.txt" /> Ground_water-70-8
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-10/classification.txt" /> Ground_water-70-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-11/classification.txt" /> Ground_water-70-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-12/classification.txt" /> Ground_water-70-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-13/classification.txt" /> Ground_water-70-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-14/classification.txt" /> Ground_water-70-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-15/classification.txt" /> Ground_water-70-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-16/classification.txt" /> Ground_water-70-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-17/classification.txt" /> Ground_water-70-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-18/classification.txt" /> Ground_water-70-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-19/classification.txt" /> Ground_water-70-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-20/classification.txt" /> Ground_water-70-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-21/classification.txt" /> Ground_water-70-21<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>