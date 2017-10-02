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
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px"><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-1/classification.txt" /> Human-76-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-2/classification.txt" /> Human-76-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-3/classification.txt" /> Human-76-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-4/classification.txt" /> Human-76-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-6/classification.txt" /> Human-76-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-8/classification.txt" /> Human-76-8
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-10/classification.txt" /> Human-76-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-11/classification.txt" /> Human-76-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-12/classification.txt" /> Human-76-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-13/classification.txt" /> Human-76-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-14/classification.txt" /> Human-76-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-15/classification.txt" /> Human-76-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-16/classification.txt" /> Human-76-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-17/classification.txt" /> Human-76-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-18/classification.txt" /> Human-76-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-19/classification.txt" /> Human-76-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-20/classification.txt" /> Human-76-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-21/classification.txt" /> Human-76-21
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-22/classification.txt" /> Human-76-22
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-23/classification.txt" /> Human-76-23
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-24/classification.txt" /> Human-76-24
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-25/classification.txt" /> Human-76-25
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-26/classification.txt" /> Human-76-26
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-27/classification.txt" /> Human-76-27
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-28/classification.txt" /> Human-76-28
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-29/classification.txt" /> Human-76-29
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-30/classification.txt" /> Human-76-30
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-31/classification.txt" /> Human-76-31
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-32/classification.txt" /> Human-76-32
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-33/classification.txt" /> Human-76-33
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-34/classification.txt" /> Human-76-34
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-35/classification.txt" /> Human-76-35
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-36/classification.txt" /> Human-76-36
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-37/classification.txt" /> Human-76-37
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-38/classification.txt" /> Human-76-38
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-39/classification.txt" /> Human-76-39
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-40/classification.txt" /> Human-76-40
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-41/classification.txt" /> Human-76-41
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-42/classification.txt" /> Human-76-42
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-43/classification.txt" /> Human-76-43
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-44/classification.txt" /> Human-76-44
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-45/classification.txt" /> Human-76-45
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-46/classification.txt" /> Human-76-46
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-47/classification.txt" /> Human-76-47
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-48/classification.txt" /> Human-76-48
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-49/classification.txt" /> Human-76-49
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-50/classification.txt" /> Human-76-50
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-51/classification.txt" /> Human-76-51
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-52/classification.txt" /> Human-76-52
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-53/classification.txt" /> Human-76-53
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-54/classification.txt" /> Human-76-54
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-55/classification.txt" /> Human-76-55
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-56/classification.txt" /> Human-76-56
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-57/classification.txt" /> Human-76-57
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-58/classification.txt" /> Human-76-58
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-59/classification.txt" /> Human-76-59
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-60/classification.txt" /> Human-76-60
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-61/classification.txt" /> Human-76-61
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-62/classification.txt" /> Human-76-62
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-63/classification.txt" /> Human-76-63
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-64/classification.txt" /> Human-76-64
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-65/classification.txt" /> Human-76-65
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-66/classification.txt" /> Human-76-66
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-67/classification.txt" /> Human-76-67
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-68/classification.txt" /> Human-76-68
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-69/classification.txt" /> Human-76-69
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-70/classification.txt" /> Human-76-70
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-71/classification.txt" /> Human-76-71
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-72/classification.txt" /> Human-76-72
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-73/classification.txt" /> Human-76-73
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-74/classification.txt" /> Human-76-74
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-75/classification.txt" /> Human-76-75
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-76/classification.txt" /> Human-76-76
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-77/classification.txt" /> Human-76-77
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-78/classification.txt" /> Human-76-78
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-79/classification.txt" /> Human-76-79
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-80/classification.txt" /> Human-76-80
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-81/classification.txt" /> Human-76-81
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/76-82/classification.txt" /> Human-76-82
<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>