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
  <p style="width:900px; margin:20px 20px 20px 20px;">Postprandial remodeling of the gut microbiota in Burmese pythons</p>
</blockquote>
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Description</strong></p>
<blockquote>
  <p style="width:900px; margin:20px 20px 20px 20px;">The vertebrate gut microbiota evolved in an environment typified by   periodic fluctuations in nutrient availability, yet little is known   about its responses to host feeding and fasting. As many model species   (for example, mice) are adapted to lifestyles of frequent small meals,   we turned to the Burmese python, a sit-and-wait foraging snake that   consumes large prey at long intervals (&gt;1 month), to examine the   effects of a dynamic nutrient milieu on the gut microbiota. We used   multiplexed 16S rRNA gene pyrosequencing to characterize bacterial   communities harvested from the intestines of fasted and digesting   snakes, and from their rodent meal. In this unprecedented survey of a   reptilian host, we found that Bacteroidetes and Firmicutes numerically   dominated the python gut. In the large intestine, fasting was associated   with increased abundances of the genera Bacteroides, Rikenella,   Synergistes and Akkermansia, and with reduced overall diversity. A   marked postprandial shift in bacterial community configuration occurred.   Between 12_h and 3 days after feeding, Firmicutes, including the taxa   Clostridium, Lactobacillus and Peptostreptococcaceae, gradually   outnumbered the fasting-dominant Bacteroidetes, and overall   ''species''-level diversity increased significantly. Most lineages   seemed to be indigenous to the python rather than ingested with the   meal, but a dietary source of Lactobacillus could not be ruled out.   Thus, the observed large-scale alterations of the gut microbiota that   accompany the Burmese python''s own dramatic physiological and   morphological changes during feeding and fasting emphasize the need to   consider both microbial and host cellular responses to nutrient flux.   The Burmese python may provide a unique model for dissecting these   interrelationships.<br />
</p>
</blockquote>
<ul>
<br />
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px">
  <input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-1/classification.txt" /> Snack_gut-77-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-10/classification.txt" /> Snack_gut-77-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-100/classification.txt" /> Snack_gut-77-100
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-101/classification.txt" /> Snack_gut-77-101
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-102/classification.txt" /> Snack_gut-77-102
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-103/classification.txt" /> Snack_gut-77-103
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-104/classification.txt" /> Snack_gut-77-104
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-105/classification.txt" /> Snack_gut-77-105
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-106/classification.txt" /> Snack_gut-77-106
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-107/classification.txt" /> Snack_gut-77-107
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-108/classification.txt" /> Snack_gut-77-108
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-109/classification.txt" /> Snack_gut-77-109
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-11/classification.txt" /> Snack_gut-77-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-12/classification.txt" /> Snack_gut-77-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-13/classification.txt" /> Snack_gut-77-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-14/classification.txt" /> Snack_gut-77-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-15/classification.txt" /> Snack_gut-77-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-16/classification.txt" /> Snack_gut-77-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-17/classification.txt" /> Snack_gut-77-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-18/classification.txt" /> Snack_gut-77-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-19/classification.txt" /> Snack_gut-77-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-2/classification.txt" /> Snack_gut-77-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-20/classification.txt" /> Snack_gut-77-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-21/classification.txt" /> Snack_gut-77-21
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-22/classification.txt" /> Snack_gut-77-22
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-23/classification.txt" /> Snack_gut-77-23
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-24/classification.txt" /> Snack_gut-77-24
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-25/classification.txt" /> Snack_gut-77-25
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-26/classification.txt" /> Snack_gut-77-26
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-27/classification.txt" /> Snack_gut-77-27
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-28/classification.txt" /> Snack_gut-77-28
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-29/classification.txt" /> Snack_gut-77-29
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-3/classification.txt" /> Snack_gut-77-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-30/classification.txt" /> Snack_gut-77-30
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-31/classification.txt" /> Snack_gut-77-31
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-32/classification.txt" /> Snack_gut-77-32
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-33/classification.txt" /> Snack_gut-77-33
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-34/classification.txt" /> Snack_gut-77-34
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-35/classification.txt" /> Snack_gut-77-35
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-36/classification.txt" /> Snack_gut-77-36
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-37/classification.txt" /> Snack_gut-77-37
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-38/classification.txt" /> Snack_gut-77-38
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-39/classification.txt" /> Snack_gut-77-39
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-4/classification.txt" /> Snack_gut-77-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-40/classification.txt" /> Snack_gut-77-40
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-41/classification.txt" /> Snack_gut-77-41
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-42/classification.txt" /> Snack_gut-77-42
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-43/classification.txt" /> Snack_gut-77-43
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-44/classification.txt" /> Snack_gut-77-44
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-45/classification.txt" /> Snack_gut-77-45
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-46/classification.txt" /> Snack_gut-77-46
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-47/classification.txt" /> Snack_gut-77-47
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-48/classification.txt" /> Snack_gut-77-48
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-49/classification.txt" /> Snack_gut-77-49
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-50/classification.txt" /> Snack_gut-77-50
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-51/classification.txt" /> Snack_gut-77-51
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-52/classification.txt" /> Snack_gut-77-52
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-53/classification.txt" /> Snack_gut-77-53
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-54/classification.txt" /> Snack_gut-77-54
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-55/classification.txt" /> Snack_gut-77-55
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-56/classification.txt" /> Snack_gut-77-56
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-57/classification.txt" /> Snack_gut-77-57
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-58/classification.txt" /> Snack_gut-77-58
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-59/classification.txt" /> Snack_gut-77-59
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-6/classification.txt" /> Snack_gut-77-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-60/classification.txt" /> Snack_gut-77-60
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-61/classification.txt" /> Snack_gut-77-61
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-62/classification.txt" /> Snack_gut-77-62
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-63/classification.txt" /> Snack_gut-77-63
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-64/classification.txt" /> Snack_gut-77-64
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-65/classification.txt" /> Snack_gut-77-65
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-66/classification.txt" /> Snack_gut-77-66
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-67/classification.txt" /> Snack_gut-77-67
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-68/classification.txt" /> Snack_gut-77-68
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-69/classification.txt" /> Snack_gut-77-69
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-70/classification.txt" /> Snack_gut-77-70
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-71/classification.txt" /> Snack_gut-77-71
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-72/classification.txt" /> Snack_gut-77-72
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-73/classification.txt" /> Snack_gut-77-73
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-74/classification.txt" /> Snack_gut-77-74
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-75/classification.txt" /> Snack_gut-77-75
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-76/classification.txt" /> Snack_gut-77-76
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-77/classification.txt" /> Snack_gut-77-77
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-78/classification.txt" /> Snack_gut-77-78
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-79/classification.txt" /> Snack_gut-77-79
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-8/classification.txt" /> Snack_gut-77-8
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-80/classification.txt" /> Snack_gut-77-80
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-81/classification.txt" /> Snack_gut-77-81
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-82/classification.txt" /> Snack_gut-77-82
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-83/classification.txt" /> Snack_gut-77-83
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-84/classification.txt" /> Snack_gut-77-84
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-85/classification.txt" /> Snack_gut-77-85
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-86/classification.txt" /> Snack_gut-77-86
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-87/classification.txt" /> Snack_gut-77-87
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-88/classification.txt" /> Snack_gut-77-88
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-89/classification.txt" /> Snack_gut-77-89
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-90/classification.txt" /> Snack_gut-77-90
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-91/classification.txt" /> Snack_gut-77-91
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-92/classification.txt" /> Snack_gut-77-92
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-93/classification.txt" /> Snack_gut-77-93
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-94/classification.txt" /> Snack_gut-77-94
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-95/classification.txt" /> Snack_gut-77-95
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-96/classification.txt" /> Snack_gut-77-96
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-97/classification.txt" /> Snack_gut-77-97
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-98/classification.txt" /> Snack_gut-77-98
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Snack_gut/77-99/classification.txt" /> Snack_gut-77-99<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>