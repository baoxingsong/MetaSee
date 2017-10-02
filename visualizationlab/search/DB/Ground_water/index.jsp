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
  <p style="width:900px; margin:20px 20px 20px 20px;">Bacterial community structure across groundwater arsenic gradients</p>
</blockquote>
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Description</strong></p>
<blockquote>
  <p style="width:900px; margin:20px 20px 20px 20px;">Arsenic toxicity in drinking water is a global human health concern   impacting tens of millions of people. The problem is especially acute in   the Ganges- Meghna- Brahmaputra Delta (GMBD) region of Bangladesh where   geogenic groundwater arsenic concentrations can be more than 10 times   the World Health Organization's limit. There is evidence that   microorganisms facilitate groundwater arsenic mobilization in the GMBD   through cascading reduction and oxidation reactions involving labile   organic carbon, humic substances, iron and arsenic in the aquifer   sediments. However, our preliminary sequence-based data suggest that   cultured representatives that are known to mediate these redox reactions   are not abundant in the GMBD groundwater environment. Thus, the goal of   this research was to investigate patterns in bacterial community   composition across geochemical gradients in a groundwater aquifer in   Araihazar, Bangladesh to generate hypotheses about the types of   organisms that may be involved in arsenic cycling. We characterized the   bacterial community by pyrosequencing 16S rRNA genes from aquifer   sediment samples collected three locations along the groundwater   flowpath, at a range of depths between 5 and 50 meters. Our analysis of   the 31,517 16S rRNA sequences indicated that bacterial communities at   our study site are diverse; 11,564 OTU's and 52 different bacterial   divisions are represented in the dataset. Also, we performed a principal   coordinates analysis and found that bacterial community structure is   statistically significantly distinct at the different sampling sites,   which correspond to different locations along the groundwater flowpath   and thus groundwater arsenic concentrations. In addition, sediment   carbon significantly structures bacterial communities at all sampling   sites and depths. This research represents the first comprehensive   characterization of the composition bacterial communities across   geochemical gradients in the arsenic-rich GMBD groundwater environment. <br />
</p></blockquote>
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px">
  <input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ground_water/70-1/classification.txt" /> 
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