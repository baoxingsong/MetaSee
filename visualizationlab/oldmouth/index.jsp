<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.UUID" %>
<% String randomFilename=UUID.randomUUID().toString(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>MetaSee -- Digital Mouth</title>
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
<body onLoad="initialize()">
<jsp:include page="/template/head_navigation.txt" />

<!--template begain-->
	<div id="content-wrapper">
		
<!-- download-builder -->
<div id="download-builder" style="padding:0">
<!--template end-->
<br/>
<h1>&nbsp;&nbsp;&nbsp;Digital Mouth</h1>
<p></p>
<div style="width:100%; padding:10px;">
<iframe src="mouth.html" width="920px" height="800px" style="padding:5px; overflow:hidden;" height="100%" scrolling="Auto" frameborder="0" allowtrancparency="true" style="FILTER:chroma(color=#FF00FF);" name="mainFrame"></iframe>
</div>
<br />
<form action="mouthresult.jsp" method="get" name="form" style="padding-left:20px;">

<p style="margin-top:10px;"><input type="checkbox" name="item" value="ggc1"/>&nbsp; &nbsp; 1.&nbsp; Decayed Saliva Sample 1&nbsp;&nbsp;<script type="text/javascript">
	var hb4 = new HelpBalloon({
		dataURL: 'document/velvet/velveth.html'
	});
</script></p>

<p style="margin-top:10px;"><input type="checkbox" name="item" value="ggc2" />&nbsp; &nbsp; 2.&nbsp; Decayed Saliva Sample 2&nbsp;&nbsp;<script type="text/javascript">
	var hb4 = new HelpBalloon({
		dataURL: 'document/velvet/velveth.html'
	});
</script></p>
<p style="margin-top:10px;"><input type="checkbox" name="item" value="ggh1" />&nbsp; &nbsp; 3.&nbsp; Healthy Saliva Sample 1&nbsp;&nbsp;<script type="text/javascript">
	var hb4 = new HelpBalloon({
		dataURL: 'document/velvet/velveth.html'
	});
</script></p>
<p style="margin-top:10px;"><input type="checkbox" name="item" value="ggh2" />&nbsp; &nbsp; 4.&nbsp; Healthy Saliva Sample 2&nbsp;&nbsp;<script type="text/javascript">
	var hb4 = new HelpBalloon({dataURL: 'document/velvet/velveth.html'});
</script></p>

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:320px">Go to visualized comparesion result</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>