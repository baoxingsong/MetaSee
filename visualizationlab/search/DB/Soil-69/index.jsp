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
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Project Name</strong></p>
<blockquote>
  <p style="width:900px; margin:20px 20px 20px 20px;">Soil bacterial diversity in the Arctic is not fundamentally different from that found in other biomes</p>
</blockquote>
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Description</strong></p>
<blockquote>
  <p style="width:900px; margin:20px 20px 20px 20px;">The severe environmental stresses of the Arctic may have promoted unique   soil bacterial communities compared to those found in lower latitude   environments. Here, we present the most comprehensive analysis of the   biogeography of soil bacterial communities in the Arctic using a high   resolution bar-coded pyrosequencing technique. We also compared   bacterial communities within arctic soils to soils from a wide range of   more temperate biomes to predict variability in soil bacterial   communities across the globe. We show that arctic soil bacterial   community composition and diversity are structured according to local   variation in soil pH rather than geographical proximity to neighboring   sites, suggesting that local environmental heterogeneity is far more   important than dispersal limitation in determining community-level   differences. Furthermore, bacterial community composition varied as much   within arctic soils as across soils from a wide range of lower latitude   biomes, and diversity levels were also similar, indicating global   similarities in the structure of soil bacterial communities. These   results contrast with the well-established latitudinal gradients in   animal and plant diversity, suggesting that the controls on bacterial   community distributions are fundamentally different from those observed   for macro-organisms and that our biome definitions are not useful for   predicting variability in soil bacterial communities across the globe. </p>
</blockquote>
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px"><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-1/classification.txt" /> Soil-69-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-10/classification.txt" /> Soil-69-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-11/classification.txt" /> Soil-69-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-12/classification.txt" /> Soil-69-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-13/classification.txt" /> Soil-69-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-14/classification.txt" /> Soil-69-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-15/classification.txt" /> Soil-69-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-16/classification.txt" /> Soil-69-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-17/classification.txt" /> Soil-69-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-18/classification.txt" /> Soil-69-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-19/classification.txt" /> Soil-69-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-2/classification.txt" /> Soil-69-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-20/classification.txt" /> Soil-69-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-21/classification.txt" /> Soil-69-21
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-22/classification.txt" /> Soil-69-22
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-23/classification.txt" /> Soil-69-23
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-24/classification.txt" /> Soil-69-24
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-25/classification.txt" /> Soil-69-25
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-26/classification.txt" /> Soil-69-26
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-27/classification.txt" /> Soil-69-27
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-28/classification.txt" /> Soil-69-28
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-29/classification.txt" /> Soil-69-29
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-3/classification.txt" /> Soil-69-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-30/classification.txt" /> Soil-69-30
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-31/classification.txt" /> Soil-69-31
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-32/classification.txt" /> Soil-69-32
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-33/classification.txt" /> Soil-69-33
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-34/classification.txt" /> Soil-69-34
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-35/classification.txt" /> Soil-69-35
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-36/classification.txt" /> Soil-69-36
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-37/classification.txt" /> Soil-69-37
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-38/classification.txt" /> Soil-69-38
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-39/classification.txt" /> Soil-69-39
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-4/classification.txt" /> Soil-69-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-40/classification.txt" /> Soil-69-40
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-41/classification.txt" /> Soil-69-41
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-42/classification.txt" /> Soil-69-42
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-43/classification.txt" /> Soil-69-43
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-44/classification.txt" /> Soil-69-44
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-45/classification.txt" /> Soil-69-45
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-46/classification.txt" /> Soil-69-46
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-47/classification.txt" /> Soil-69-47
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-48/classification.txt" /> Soil-69-48
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-49/classification.txt" /> Soil-69-49
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-50/classification.txt" /> Soil-69-50
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-51/classification.txt" /> Soil-69-51
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-52/classification.txt" /> Soil-69-52
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-6/classification.txt" /> Soil-69-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/69-8/classification.txt" /> Soil-69-8
<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>