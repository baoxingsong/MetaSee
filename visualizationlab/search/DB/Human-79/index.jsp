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
  <p style="width:900px; margin:20px 20px 20px 20px;">Delivery mode shapes the acquisition and structure of the initial microbiota across multiple body habitats in newborns</p>
</blockquote>
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Description</strong></p>
<blockquote>
  <p style="width:900px; margin:20px 20px 20px 20px;">Upon delivery, the neonate is exposed for the first time to a wide array   of microbes from a variety of sources, including maternal bacteria.   Although prior studies have suggested that delivery mode shapes the   microbiota's establishment and, subsequently, its role in child   health, most researchers have focused on specific bacterial taxa or on a   single body habitat, the gut. Thus, the initi- ation stage of human   microbiome development remains obscure. The goal of the present study   was to obtain a community-wide perspective on the influence of delivery   mode and body habitat on the neonate's first microbiota. We used   multiplexed 16S rRNA gene pyrosequencing to characterize bacterial   communities from mothers and their newborn babies, four born vaginally   and six born via Cesarean section. Mothers' skin, oral mucosa, and   vagina were sampled 1 h before delivery, and neonates' skin, oral mu-   cosa, and nasopharyngeal aspirate were sampled &lt;5 min, and me- conium   &lt;24 h, after delivery. We found that in direct contrast to the   highly differentiated communities of their mothers, neonates harbored   bacterial communities that were undifferentiated across multiple body   habitats, regardless of delivery mode. Our results also show that   vaginally delivered infants acquired bacterial com- munities resembling   their own mother's vaginal microbiota, dom- inated by Lactobacillus,   Prevotella, or Sneathia spp., and C-section infants harbored bacterial   communities similar to those found on the skin surface, dominated by   Staphylococcus, Corynebacterium, and Propionibacterium spp. These   findings establish an important baseline for studies tracking the human   microbiome's successional development in different body habitats   following different deliv- ery modes, and their associated effects on   infant health. <br />
    </p>
</blockquote>
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px"><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-1/classification.txt" /> Human-79-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-10/classification.txt" /> Human-79-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-11/classification.txt" /> Human-79-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-12/classification.txt" /> Human-79-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-13/classification.txt" /> Human-79-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-14/classification.txt" /> Human-79-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-15/classification.txt" /> Human-79-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-16/classification.txt" /> Human-79-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-17/classification.txt" /> Human-79-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-18/classification.txt" /> Human-79-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-19/classification.txt" /> Human-79-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-2/classification.txt" /> Human-79-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-20/classification.txt" /> Human-79-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-21/classification.txt" /> Human-79-21
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-22/classification.txt" /> Human-79-22
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-23/classification.txt" /> Human-79-23
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-24/classification.txt" /> Human-79-24
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-25/classification.txt" /> Human-79-25
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-26/classification.txt" /> Human-79-26
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-27/classification.txt" /> Human-79-27
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-28/classification.txt" /> Human-79-28
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-29/classification.txt" /> Human-79-29
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-3/classification.txt" /> Human-79-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-30/classification.txt" /> Human-79-30
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-31/classification.txt" /> Human-79-31
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-32/classification.txt" /> Human-79-32
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-33/classification.txt" /> Human-79-33
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-34/classification.txt" /> Human-79-34
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-35/classification.txt" /> Human-79-35
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-36/classification.txt" /> Human-79-36
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-37/classification.txt" /> Human-79-37
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-38/classification.txt" /> Human-79-38
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-39/classification.txt" /> Human-79-39
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-4/classification.txt" /> Human-79-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-40/classification.txt" /> Human-79-40
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-41/classification.txt" /> Human-79-41
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-42/classification.txt" /> Human-79-42
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-43/classification.txt" /> Human-79-43
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-44/classification.txt" /> Human-79-44
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-45/classification.txt" /> Human-79-45
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-46/classification.txt" /> Human-79-46
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-47/classification.txt" /> Human-79-47
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-48/classification.txt" /> Human-79-48
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-49/classification.txt" /> Human-79-49
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-50/classification.txt" /> Human-79-50
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-51/classification.txt" /> Human-79-51
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-52/classification.txt" /> Human-79-52
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-53/classification.txt" /> Human-79-53
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-54/classification.txt" /> Human-79-54
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-55/classification.txt" /> Human-79-55
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-56/classification.txt" /> Human-79-56
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-57/classification.txt" /> Human-79-57
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-58/classification.txt" /> Human-79-58
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-59/classification.txt" /> Human-79-59
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-6/classification.txt" /> Human-79-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-60/classification.txt" /> Human-79-60
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-61/classification.txt" /> Human-79-61
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-62/classification.txt" /> Human-79-62
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-63/classification.txt" /> Human-79-63
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-64/classification.txt" /> Human-79-64
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-65/classification.txt" /> Human-79-65
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-66/classification.txt" /> Human-79-66
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-67/classification.txt" /> Human-79-67
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-68/classification.txt" /> Human-79-68
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-69/classification.txt" /> Human-79-69
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-70/classification.txt" /> Human-79-70
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-71/classification.txt" /> Human-79-71
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-72/classification.txt" /> Human-79-72
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-73/classification.txt" /> Human-79-73
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-74/classification.txt" /> Human-79-74
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-75/classification.txt" /> Human-79-75
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-76/classification.txt" /> Human-79-76
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-77/classification.txt" /> Human-79-77
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-78/classification.txt" /> Human-79-78
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-79/classification.txt" /> Human-79-79
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-8/classification.txt" /> Human-79-8
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/79-80/classification.txt" /> Human-79-80<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>