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
  <p style="width:900px; margin:20px 20px 20px 20px;">Soil bacterial and fungal communities across a pH gradient in an arable soil</p>
</blockquote>
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Description</strong></p>
<blockquote>
  <p style="width:900px; margin:20px 20px 20px 20px;">Soils collected across a long-term liming experiment (pH 4.0'8.3), in   which variation in factors other than pH have been minimized, were used   to investigate the direct influence of pH on the abundance and   composition of the two major soil microbial taxa, fungi and bacteria. We   hypothesized that bacterial communities would be more strongly   influenced by pH than fungal communities. To determine the relative   abundance of bacteria and fungi, we used quantitative PCR (qPCR), and to   analyze the composition and diversity of the bacterial and fungal   communities, we used a bar-coded pyrosequencing technique. Both the   relative abundance and diversity of bacteria were positively related to   pH, the latter nearly doubling between pH 4 and 8. In contrast, the   relative abundance of fungi was unaffected by pH and fungal diversity   was only weakly related with pH. The composition of the bacterial   communities was closely defined by soil pH; there was as much   variability in bacterial community composition across the 180-m distance   of this liming experiment as across soils collected from a wide range   of biomes in North and South America, emphasizing the dominance of pH in   structuring bacterial communities. The apparent direct influence of pH   on bacterial community composition is probably due to the narrow pH   ranges for optimal growth of bacteria. Fungal community composition was   less strongly affected by pH, which is consistent with pure culture   studies, demonstrating that fungi generally exhibit wider pH ranges for   optimal growth.
  </p>
</blockquote>
<ul>
<br />
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px">
  <input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-1/classification.txt" /> 
  Soil-67-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-10/classification.txt" /> Soil-67-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-11/classification.txt" /> Soil-67-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-12/classification.txt" /> Soil-67-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-13/classification.txt" /> Soil-67-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-14/classification.txt" /> Soil-67-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-15/classification.txt" /> Soil-67-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-16/classification.txt" /> Soil-67-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-17/classification.txt" /> Soil-67-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-18/classification.txt" /> Soil-67-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-19/classification.txt" /> Soil-67-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-2/classification.txt" /> Soil-67-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-20/classification.txt" /> Soil-67-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-21/classification.txt" /> Soil-67-21
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-22/classification.txt" /> Soil-67-22
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-23/classification.txt" /> Soil-67-23
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-24/classification.txt" /> Soil-67-24
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-25/classification.txt" /> Soil-67-25
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-26/classification.txt" /> Soil-67-26
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-3/classification.txt" /> Soil-67-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-4/classification.txt" /> Soil-67-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-6/classification.txt" /> Soil-67-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/67-8/classification.txt" /> Soil-67-8<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>