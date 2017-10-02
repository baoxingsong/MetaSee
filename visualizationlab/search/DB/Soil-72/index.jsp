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
  <p style="width:900px; margin:20px 20px 20px 20px;">Microbial_consumption_and_production_of_volatile_organic_compounds at the soil litter interface</p>
</blockquote>
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Description</strong></p>
<blockquote>
  <p style="width:900px; margin:20px 20px 20px 20px;">Substantial amounts of volatile organic compounds (VOCs) can be released   during decomposition and these compounds can affect atmospheric   chemistry, belowground processes, and the structure of microbial   communities in litter and soil. However, we have a limited understanding   of the types, quantities and ecological impacts of VOCs emitted from   litter. Here we used a closed flow-through system and proton transfer   reaction mass spectrometry (PTR-MS) to characterize VOC emissions from   soil and two litter types (Pinus taeda and Acer rubrum) over a 72-day   incubation period. Microbial respiration rates were measured throughout   the incubation, and the soils were harvested at the end of the   incubation to determine how litter VOCs influenced soil C dynamics, N   mineralization rates, and bacterial communities. Using the PTR-MS we   identified over 100 VOCs, with 10 VOCs making up the majority of   emissions. VOCs accounted for up to 2.5% of the C flux from litter. Soil   was a net sink of litter VOCs, absorbing up to 80% of VOCs released by   litter, and exposure of soil to litter VOCs increased microbial   respiration rates in soil by up to 15%. However, we observed negligible   impacts of litter VOCs on soil nutrient levels and bacterial community   structure, suggesting that soils must be exposed to higher   concentrations of VOCs than observed in our study, to cause effects on   these soil characteristics. Overall, VOCs appear to have an important   influence on C dynamics at the soil-litter interface and VOC emissions   from decomposing litter may represent an understudied component of   biosphere'atmosphere interactions. <br />
  </p>
</blockquote>
<ul>
<br />
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px">
  <input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/72-1/classification.txt" /> Soil-72-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/72-2/classification.txt" /> Soil-72-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/72-3/classification.txt" /> Soil-72-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/72-4/classification.txt" /> Soil-72-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/72-6/classification.txt" /> Soil-72-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/72-8/classification.txt" /> Soil-72-8
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/72-10/classification.txt" /> Soil-72-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/72-11/classification.txt" /> Soil-72-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Soil/72-12/classification.txt" /> Soil-72-12



<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>