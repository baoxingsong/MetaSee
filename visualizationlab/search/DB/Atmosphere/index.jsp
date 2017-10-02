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
  <p style="width:900px; margin:20px 20px 20px 20px;">Characterization of airborne microbial communities at a high elevation site and their potential to act as atmosphericice nuclei
  </p>
</blockquote>
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Description</strong></p>
<blockquote>
  <p style="width:900px; margin:20px 20px 20px 20px;">Bacteria and fungi are ubiquitous in the atmosphere. The diversity and   abundance of airborne microbes may be strongly influenced by atmospheric   conditions or even influence atmospheric conditions themselves by   acting as ice nucleators. However, few comprehensive studies have   described the diversity and dynamics of airborne bacteria and fungi   based on culture-independent techniques. We document atmospheric   microbial abundance, community composition, and ice nucleation at a   high-elevation site in northwestern Colorado. We used a standard   small-subunit rRNA gene Sanger sequencing approach for total microbial   community analysis and a bacteria-specific 16S rRNA bar-coded   pyrosequencing approach (4,864 sequences total). During the 2-week   collection period, total microbial abundances were relatively constant,   ranging from 9.6 x 105 to 6.6 x 106 cells m&quot;3 of air, and the   diversity and composition of the airborne microbial communities were   also relatively static. Bacteria and fungi were nearly equivalent, and   members of the proteobacterial groups Burkholderiales and Moraxellaceae   (particularly the genus Psychrobacter) were dominant. These taxa were   not always the most abundant in freshly fallen snow samples collected at   this site. Although there was minimal variability in microbial   abundances and composition within the atmosphere, the number of   biological ice nuclei increased significantly during periods of high   relative humidity. However, these changes in ice nuclei numbers were not   associated with changes in the relative abundances of the most commonly   studied ice-nucleating bacteria.<br />
  </p>
</blockquote>
<ul>
<br />
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px">
  <input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Atmosphere/74-1/classification.txt" /> 
  Atmosphere-74-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Atmosphere/74-2/classification.txt" /> Atmosphere-74-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Atmosphere/74-3/classification.txt" /> Atmosphere-74-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Atmosphere/74-4/classification.txt" /> Atmosphere-74-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Atmosphere/74-6/classification.txt" /> Atmosphere-74-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Atmosphere/74-8/classification.txt" /> Atmosphere-74-8
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Atmosphere/74-10/classification.txt" /> Atmosphere-74-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Atmosphere/74-11/classification.txt" /> Atmosphere-74-11<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>