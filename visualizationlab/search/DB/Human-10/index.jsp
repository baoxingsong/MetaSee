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
  <p style="width:900px; margin:20px 20px 20px 20px;">Twin Gut Microflora Study</p>
</blockquote>
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Description</strong></p>
<blockquote>
  <p style="width:900px; margin:20px 20px 20px 20px;">We characterized gut microbial communities in 31 monozygotic twin pairs,   23 dizygotic twin pairs and, where available, their mothers (n = 46)   (Supplementary Tables 1Ã‚Â–5). Monozygotic and dizygotic co-twins and   parentÃ‚Â–offspring pairs provided an attractive model for assessing the   impact of genotype and shared early environmental exposures on the gut   microbiome. Moreover, genetically Ã‚Â&lsquo;identicalÃ‚Â&rsquo; monozygotic twin   pairs gain weight in response to overfeeding in a more reproducible way   than unrelated individuals and are more concordant for body mass index   (BMI) than dizygotic twin pairs. To characterize the bacterial lineages   present in the faecal microbiotas of these 154 individuals, we performed   16S rRNA sequencing, targeting the full-length gene with an ABI 3730xl   capillary sequencer. Additionally, we performed multiplex pyrosequencing   with a 454 FLX instrument to survey the geneÃ‚Â&rsquo;s V2 variable region   and its V6 hypervariable region. Additionally, we report sequencing of   the viromes (metagenomes) of virus-like particles isolated from faecal   samples collected from healthy adult female monozygotic twins and their   mothers at three time points over a one-year period. We compared these   data sets with data sets of sequenced bacterial 16S ribosomal RNA genes   and total-faecal-community DNA. </p>
</blockquote>
<ul>
<br />
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px"><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-1/classification.txt" /> Human-10-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-2/classification.txt" /> Human-10-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-3/classification.txt" /> Human-10-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-4/classification.txt" /> Human-10-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-6/classification.txt" /> Human-10-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-8/classification.txt" /> Human-10-8
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-10/classification.txt" /> Human-10-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-11/classification.txt" /> Human-10-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-12/classification.txt" /> Human-10-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-13/classification.txt" /> Human-10-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-14/classification.txt" /> Human-10-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-15/classification.txt" /> Human-10-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-16/classification.txt" /> Human-10-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/10-17/classification.txt" /> Human-10-17
<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>