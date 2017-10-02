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
  <p style="width:900px; margin:20px 20px 20px 20px;">Global Ocean Sampling Expedition</p>
</blockquote>
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Description</strong></p>
<blockquote>
  <p style="width:900px; margin:20px 20px 20px 20px;">Marine microbes remain elusive and mysterious, even though they are the most abundant life form in the ocean, form the base of the marine food web, and drive energy and nutrient cycling. We know so little about the vast majority of microbes because only a small percentage can be cultivated and studied in the lab. Here we report on the Global Ocean Sampling expedition, an environmental metagenomics project that aims to shed light on the role of marine microbes by sequencing their DNA without first needing to isolate individual organisms. A total of 41 different samples were taken from a wide variety of aquatic habitats collected over 8,000 km. These samples, collected across a several-thousand km transect from the North Atlantic through the Panama Canal and ending in the South Pacific yielded an extensive dataset consisting of 7.7 million sequencing reads (6.3 billion bp).These sequencing reads provide an unprecedented look at the incredible diversity and heterogeneity in naturally occurring microbial populations. We have developed new bioinformatic methods to reconstitute large portions of both cultured and uncultured microbial genomes. Organism diversity is analyzed in relation to sampling locations and environmental pressures. Taken together, these data and analyses serve as a foundation for greatly expanding our understanding of individual microbial lineages and their evolution, the nature of marine microbial communities, and how they are impacted by and impact our world. An additional metagenomic dataset includes sequencing results from a subset of 19 sites from the Venter Institute's Global Ocean Sampling (GOS ) Expedition. All samples were obtained from the surface, isolating DNA from two size fractions, 0.1 to 0.8 microns and 0.8 to 3.0 microns. Five sites were from coastal waters, the remainder from open ocean. Twelve sites are located along a transect between Cocos Island, Australia and Zanzibar Tanzania, in the portion of the Indian Ocean subject to reversing monsoons. Sampling occurred in August, the typical primary productivity peak for the region. Five sites are located along a transect further south, from Madagascar almost to South Africa. Sampling along this transect occurred two months later, well past the primary productivity peak for the region. Both regions are quite oligotrophic. The dataset also includes two sites in and around Cook's Bay, Moorea, French Polynesia, which will contribute to the Moorea BIOCODE project. The Indian Ocean is unique in that it is bordered by land masses to the north and thus insulated from the Arctic environment. High biological productivity in the northern hemisphere during summer months leads to formation of an intense oxygen minimum zone and high levels of associated denitrification in the Arabian Sea. Overall, the Indian Ocean is a net sink for fixed nitrogen and plays a significant role in the global oceanic nitrogen cycle. Low ratios of dissolved inorganic nitrogen relative to phosphorous, combined with characteristically intense surface stratification, commonly lead to nitrogen limitation in populations of surface microbes. Very little is known regarding the metabolic capabilities, gene complements, or types of selection that drive diversification and activity within Indian Ocean microbial populations. Indian Ocean microbial communities are poorly studied compared to other oceanic gyres. These 2.4 million reads from 17 of stations sampled within the northern and western portions Indian Ocean gyre will provide a basis for comparative analysis to microbial communities in other oceans (see Figure 2). We expect to make fundamental molecular-level discoveries leading to the identification and preliminary characterization of the genetic components that drive and regulate nutrient metabolism and microbial community structure and activity in the geochemically unique setting of the Indian Ocean and within tropical marine systems in general.<br />
  </p>
</blockquote>
<ul>
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px">
  <input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-1/classification.txt" /> Ocean-ocean-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-10/classification.txt" /> Ocean-ocean-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-11/classification.txt" /> Ocean-ocean-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-12/classification.txt" /> Ocean-ocean-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-13/classification.txt" /> Ocean-ocean-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-14/classification.txt" /> Ocean-ocean-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-15/classification.txt" /> Ocean-ocean-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-16/classification.txt" /> Ocean-ocean-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-17/classification.txt" /> Ocean-ocean-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-18/classification.txt" /> Ocean-ocean-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-19/classification.txt" /> Ocean-ocean-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-2/classification.txt" /> Ocean-ocean-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-20/classification.txt" /> Ocean-ocean-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-21/classification.txt" /> Ocean-ocean-21
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-22/classification.txt" /> Ocean-ocean-22
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-23/classification.txt" /> Ocean-ocean-23
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-24/classification.txt" /> Ocean-ocean-24
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-25/classification.txt" /> Ocean-ocean-25
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-26/classification.txt" /> Ocean-ocean-26
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-27/classification.txt" /> Ocean-ocean-27
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-28/classification.txt" /> Ocean-ocean-28
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-29/classification.txt" /> Ocean-ocean-29
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-3/classification.txt" /> Ocean-ocean-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-30/classification.txt" /> Ocean-ocean-30
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-31/classification.txt" /> Ocean-ocean-31
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-32/classification.txt" /> Ocean-ocean-32
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-33/classification.txt" /> Ocean-ocean-33
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-34/classification.txt" /> Ocean-ocean-34
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-35/classification.txt" /> Ocean-ocean-35
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-36/classification.txt" /> Ocean-ocean-36
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-37/classification.txt" /> Ocean-ocean-37
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-38/classification.txt" /> Ocean-ocean-38
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-39/classification.txt" /> Ocean-ocean-39
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-4/classification.txt" /> Ocean-ocean-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-40/classification.txt" /> Ocean-ocean-40
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-41/classification.txt" /> Ocean-ocean-41
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-42/classification.txt" /> Ocean-ocean-42
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-43/classification.txt" /> Ocean-ocean-43
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-44/classification.txt" /> Ocean-ocean-44
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-45/classification.txt" /> Ocean-ocean-45
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-46/classification.txt" /> Ocean-ocean-46
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-47/classification.txt" /> Ocean-ocean-47
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-48/classification.txt" /> Ocean-ocean-48
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-49/classification.txt" /> Ocean-ocean-49
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-50/classification.txt" /> Ocean-ocean-50
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-51/classification.txt" /> Ocean-ocean-51
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-52/classification.txt" /> Ocean-ocean-52
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-53/classification.txt" /> Ocean-ocean-53
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-54/classification.txt" /> Ocean-ocean-54
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-55/classification.txt" /> Ocean-ocean-55
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-56/classification.txt" /> Ocean-ocean-56
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-57/classification.txt" /> Ocean-ocean-57
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-58/classification.txt" /> Ocean-ocean-58
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-59/classification.txt" /> Ocean-ocean-59
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-6/classification.txt" /> Ocean-ocean-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-60/classification.txt" /> Ocean-ocean-60
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-61/classification.txt" /> Ocean-ocean-61
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-62/classification.txt" /> Ocean-ocean-62
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-63/classification.txt" /> Ocean-ocean-63
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-64/classification.txt" /> Ocean-ocean-64
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-65/classification.txt" /> Ocean-ocean-65
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-66/classification.txt" /> Ocean-ocean-66
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-67/classification.txt" /> Ocean-ocean-67
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-68/classification.txt" /> Ocean-ocean-68
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-69/classification.txt" /> Ocean-ocean-69
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Ocean/ocean-8/classification.txt" /> Ocean-ocean-8
<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>