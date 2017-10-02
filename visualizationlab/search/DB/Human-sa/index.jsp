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
  <p style="width:900px; margin:20px 20px 20px 20px;">Human Saliva<br />
  </p>
  
</blockquote>
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Description</strong></p>
<p style="width:900px; margin:20px 20px 20px 20px;">Human saliva microbiota are phylogenetically divergent among host individuals yet their roles in health and disease are poorly appreciated. We used two complementary approaches that include whole-ecosystem sequencing and a functional gene microarray to reconstruct the first global functional profile of human saliva microbiota in healthy and caries-active hosts. We found that saliva microbiota carry niche-specific functions, including nitrite oxidation and reduction which can be pivotal to the nitrogen metabolism of human body. Among microbiota from different hosts, a prominent functional core, but not an organismal core, was identified. Each microbiota exhibited functional redundancy where dominant genomes tend to encode more functional diversity yet without necessarily contributing to dominant functions. Surprisingly, the functional-gene structure of saliva microbiota is more sensitive to the caries state than organismal structure; microbial functions such as Diaminopimelate epimerase, Prephenate dehydrogenase, Pyruvate-formate lyase and N-acetylmuramoyl-L-alanine amidase are significantly linked to caries. Furthermore, genetic polymorphisms in human chromosomes were unraveled without apparent physical or sequence bias via whole-ecosystem sequencing of saliva. Thus functional and epidemiological features of saliva microbiota can be potentially exploited for disease diagnosis and perturbation, and saliva can serve as a sensitive and non-invasive venue for simultaneously tracking the environmental, host and microbial attributes whose interactions underlie health and disease.

Two sample datasets from this study is deposited.<br />
  </p>
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px">
  <input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/sa-1/classification.txt" /> Human-sa-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/sa-3/classification.txt" /> Human-sa-3
<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>