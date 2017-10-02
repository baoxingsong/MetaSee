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
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px"><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-1/classification.txt" /> Human-65-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-2/classification.txt" /> Human-65-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-3/classification.txt" /> Human-65-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-4/classification.txt" /> Human-65-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-6/classification.txt" /> Human-65-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-8/classification.txt" /> Human-65-8
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-10/classification.txt" /> Human-65-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-11/classification.txt" /> Human-65-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-12/classification.txt" /> Human-65-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-13/classification.txt" /> Human-65-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-14/classification.txt" /> Human-65-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-15/classification.txt" /> Human-65-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-16/classification.txt" /> Human-65-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-17/classification.txt" /> Human-65-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-18/classification.txt" /> Human-65-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-19/classification.txt" /> Human-65-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-20/classification.txt" /> Human-65-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-21/classification.txt" /> Human-65-21
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-22/classification.txt" /> Human-65-22
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-23/classification.txt" /> Human-65-23
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-24/classification.txt" /> Human-65-24
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-25/classification.txt" /> Human-65-25
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-26/classification.txt" /> Human-65-26
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-27/classification.txt" /> Human-65-27
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-28/classification.txt" /> Human-65-28
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-29/classification.txt" /> Human-65-29
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-30/classification.txt" /> Human-65-30
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-31/classification.txt" /> Human-65-31
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-32/classification.txt" /> Human-65-32
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-33/classification.txt" /> Human-65-33
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-34/classification.txt" /> Human-65-34
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-35/classification.txt" /> Human-65-35
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-36/classification.txt" /> Human-65-36
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-37/classification.txt" /> Human-65-37
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-38/classification.txt" /> Human-65-38
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-39/classification.txt" /> Human-65-39
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-40/classification.txt" /> Human-65-40
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-41/classification.txt" /> Human-65-41
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-42/classification.txt" /> Human-65-42
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-43/classification.txt" /> Human-65-43
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-44/classification.txt" /> Human-65-44
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-45/classification.txt" /> Human-65-45
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-46/classification.txt" /> Human-65-46
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-47/classification.txt" /> Human-65-47
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-48/classification.txt" /> Human-65-48
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-49/classification.txt" /> Human-65-49
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-50/classification.txt" /> Human-65-50
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-51/classification.txt" /> Human-65-51
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-52/classification.txt" /> Human-65-52
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-53/classification.txt" /> Human-65-53
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-54/classification.txt" /> Human-65-54
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-55/classification.txt" /> Human-65-55
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/65-56/classification.txt" /> 
Human-65-56<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>