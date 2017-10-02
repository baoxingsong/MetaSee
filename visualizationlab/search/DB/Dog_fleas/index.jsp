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
  <p style="width:900px; margin:20px 20px 20px 20px;">Bacterial communities of disease vectors sampled across time space and species</p>
</blockquote>
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Description</strong></p>
<blockquote>
  <p style="width:900px; margin:20px 20px 20px 20px;">A common strategy of pathogenic bacteria is to form close associations   with parasitic insects that feed on animals and to use these insects as   vectors for their own transmission. Pathogens interact closely with   other coexisting bacteria within the insect, and interactions between   co-occurring bacteria may influence the vector competency of the   parasite. Interactions between particular lineages can be explored   through measures of _-diversity. Furthermore, general patterns of   bacterial community assembly can be explored through measures of   _-diversity. Here, we use pyrosequencing (n=115_924 16S rRNA gene   sequences) to describe the bacterial communities of 230 prairie dog   fleas sampled across space and time. We use these communinty   characterizations to assess interactions between dominant community   members and to explore general patterns of bacterial community assembly   in fleas. An analysis of co-occurrence patterns suggests non-neutral   negative interactions between dominant community members (P&lt;0.001).   Furthermore, bacterial communities of fleas shift dramatically across   years (phylotype-based: R=0.829, P&lt;0.001; phylogenetic-based:   R=0.612'0.753, P&lt;0.001), but they also significantly differ across   space (phylotype-based: R=0.418, P&lt;0.001; phylogenetic-based:   R=0.290'0.328, P&lt;0.001) and between flea species (phylotype-based:   R=0.160, P=0.011; phylogenetic-based: not significant). Collectively,   our results show that flea-associated bacterial communities are not   random assemblages; rather, an individual flea''s bacterial community is   governed by interactions between bacterial lineages and by the flea''s   place in space and time. <br />
</p></blockquote>
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px">
  <input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-1/classification.txt" /> Dog_Fleas-75-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-2/classification.txt" /> Dog_Fleas-75-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-3/classification.txt" /> Dog_Fleas-75-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-4/classification.txt" /> Dog_Fleas-75-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-6/classification.txt" /> Dog_Fleas-75-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-8/classification.txt" /> Dog_Fleas-75-8
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-10/classification.txt" /> Dog_Fleas-75-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-11/classification.txt" /> Dog_Fleas-75-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-12/classification.txt" /> Dog_Fleas-75-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-13/classification.txt" /> Dog_Fleas-75-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-14/classification.txt" /> Dog_Fleas-75-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-15/classification.txt" /> Dog_Fleas-75-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-16/classification.txt" /> Dog_Fleas-75-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-17/classification.txt" /> Dog_Fleas-75-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-18/classification.txt" /> Dog_Fleas-75-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-19/classification.txt" /> Dog_Fleas-75-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-20/classification.txt" /> Dog_Fleas-75-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-21/classification.txt" /> Dog_Fleas-75-21
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-22/classification.txt" /> Dog_Fleas-75-22
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-23/classification.txt" /> Dog_Fleas-75-23
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-24/classification.txt" /> Dog_Fleas-75-24
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-25/classification.txt" /> Dog_Fleas-75-25
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-26/classification.txt" /> Dog_Fleas-75-26
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-27/classification.txt" /> Dog_Fleas-75-27
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-28/classification.txt" /> Dog_Fleas-75-28
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-29/classification.txt" /> Dog_Fleas-75-29
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-30/classification.txt" /> Dog_Fleas-75-30
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-31/classification.txt" /> Dog_Fleas-75-31
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-32/classification.txt" /> Dog_Fleas-75-32
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-33/classification.txt" /> Dog_Fleas-75-33
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-34/classification.txt" /> Dog_Fleas-75-34
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-35/classification.txt" /> Dog_Fleas-75-35
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-36/classification.txt" /> Dog_Fleas-75-36
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-37/classification.txt" /> Dog_Fleas-75-37
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-38/classification.txt" /> Dog_Fleas-75-38
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-39/classification.txt" /> Dog_Fleas-75-39
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-40/classification.txt" /> Dog_Fleas-75-40
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-41/classification.txt" /> Dog_Fleas-75-41
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-42/classification.txt" /> Dog_Fleas-75-42
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-43/classification.txt" /> Dog_Fleas-75-43
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-44/classification.txt" /> Dog_Fleas-75-44
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-45/classification.txt" /> Dog_Fleas-75-45
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-46/classification.txt" /> Dog_Fleas-75-46
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-47/classification.txt" /> Dog_Fleas-75-47
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-48/classification.txt" /> Dog_Fleas-75-48
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-49/classification.txt" /> Dog_Fleas-75-49
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-50/classification.txt" /> Dog_Fleas-75-50
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-51/classification.txt" /> Dog_Fleas-75-51
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-52/classification.txt" /> Dog_Fleas-75-52
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-53/classification.txt" /> Dog_Fleas-75-53
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-54/classification.txt" /> Dog_Fleas-75-54
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-55/classification.txt" /> Dog_Fleas-75-55
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-56/classification.txt" /> Dog_Fleas-75-56
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-57/classification.txt" /> Dog_Fleas-75-57
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-58/classification.txt" /> Dog_Fleas-75-58
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-59/classification.txt" /> Dog_Fleas-75-59
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-60/classification.txt" /> Dog_Fleas-75-60
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-61/classification.txt" /> Dog_Fleas-75-61
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-62/classification.txt" /> Dog_Fleas-75-62
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-63/classification.txt" /> Dog_Fleas-75-63
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-64/classification.txt" /> Dog_Fleas-75-64
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-65/classification.txt" /> Dog_Fleas-75-65
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-66/classification.txt" /> Dog_Fleas-75-66
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-67/classification.txt" /> Dog_Fleas-75-67
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-68/classification.txt" /> Dog_Fleas-75-68
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-69/classification.txt" /> Dog_Fleas-75-69
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-70/classification.txt" /> Dog_Fleas-75-70
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-71/classification.txt" /> Dog_Fleas-75-71
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-72/classification.txt" /> Dog_Fleas-75-72
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-73/classification.txt" /> Dog_Fleas-75-73
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-74/classification.txt" /> Dog_Fleas-75-74
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-75/classification.txt" /> Dog_Fleas-75-75
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-76/classification.txt" /> Dog_Fleas-75-76
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-77/classification.txt" /> Dog_Fleas-75-77
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-78/classification.txt" /> Dog_Fleas-75-78
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-79/classification.txt" /> Dog_Fleas-75-79
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-80/classification.txt" /> Dog_Fleas-75-80
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-81/classification.txt" /> Dog_Fleas-75-81
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-82/classification.txt" /> Dog_Fleas-75-82
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-83/classification.txt" /> Dog_Fleas-75-83
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-84/classification.txt" /> Dog_Fleas-75-84
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-85/classification.txt" /> Dog_Fleas-75-85
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-86/classification.txt" /> Dog_Fleas-75-86
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-87/classification.txt" /> Dog_Fleas-75-87
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-88/classification.txt" /> Dog_Fleas-75-88
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-89/classification.txt" /> Dog_Fleas-75-89
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-90/classification.txt" /> Dog_Fleas-75-90
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-91/classification.txt" /> Dog_Fleas-75-91
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-92/classification.txt" /> Dog_Fleas-75-92
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-93/classification.txt" /> Dog_Fleas-75-93
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-94/classification.txt" /> Dog_Fleas-75-94
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-95/classification.txt" /> Dog_Fleas-75-95
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-96/classification.txt" /> Dog_Fleas-75-96
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-97/classification.txt" /> Dog_Fleas-75-97
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-98/classification.txt" /> Dog_Fleas-75-98
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-99/classification.txt" /> Dog_Fleas-75-99
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-100/classification.txt" /> Dog_Fleas-75-100
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-101/classification.txt" /> Dog_Fleas-75-101
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-102/classification.txt" /> Dog_Fleas-75-102
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-103/classification.txt" /> Dog_Fleas-75-103
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-104/classification.txt" /> Dog_Fleas-75-104
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-105/classification.txt" /> Dog_Fleas-75-105
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-106/classification.txt" /> Dog_Fleas-75-106
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-107/classification.txt" /> Dog_Fleas-75-107
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-108/classification.txt" /> Dog_Fleas-75-108
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-109/classification.txt" /> Dog_Fleas-75-109
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-110/classification.txt" /> Dog_Fleas-75-110
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-111/classification.txt" /> Dog_Fleas-75-111
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-112/classification.txt" /> Dog_Fleas-75-112
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-113/classification.txt" /> Dog_Fleas-75-113
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-114/classification.txt" /> Dog_Fleas-75-114
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-115/classification.txt" /> Dog_Fleas-75-115
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-116/classification.txt" /> Dog_Fleas-75-116
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-117/classification.txt" /> Dog_Fleas-75-117
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-118/classification.txt" /> Dog_Fleas-75-118
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-119/classification.txt" /> Dog_Fleas-75-119
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-120/classification.txt" /> Dog_Fleas-75-120
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-121/classification.txt" /> Dog_Fleas-75-121
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-122/classification.txt" /> Dog_Fleas-75-122
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-123/classification.txt" /> Dog_Fleas-75-123
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-124/classification.txt" /> Dog_Fleas-75-124
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-125/classification.txt" /> Dog_Fleas-75-125
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-126/classification.txt" /> Dog_Fleas-75-126
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-127/classification.txt" /> Dog_Fleas-75-127
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-128/classification.txt" /> Dog_Fleas-75-128
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-129/classification.txt" /> Dog_Fleas-75-129
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-130/classification.txt" /> Dog_Fleas-75-130
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-131/classification.txt" /> Dog_Fleas-75-131
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-132/classification.txt" /> Dog_Fleas-75-132
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-133/classification.txt" /> Dog_Fleas-75-133
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-134/classification.txt" /> Dog_Fleas-75-134
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-135/classification.txt" /> Dog_Fleas-75-135
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-136/classification.txt" /> Dog_Fleas-75-136
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-137/classification.txt" /> Dog_Fleas-75-137
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-138/classification.txt" /> Dog_Fleas-75-138
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-139/classification.txt" /> Dog_Fleas-75-139
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-140/classification.txt" /> Dog_Fleas-75-140
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-141/classification.txt" /> Dog_Fleas-75-141
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-142/classification.txt" /> Dog_Fleas-75-142
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-143/classification.txt" /> Dog_Fleas-75-143
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-144/classification.txt" /> Dog_Fleas-75-144
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-145/classification.txt" /> Dog_Fleas-75-145
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-146/classification.txt" /> Dog_Fleas-75-146
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-147/classification.txt" /> Dog_Fleas-75-147
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-148/classification.txt" /> Dog_Fleas-75-148
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-149/classification.txt" /> Dog_Fleas-75-149
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-150/classification.txt" /> Dog_Fleas-75-150
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-151/classification.txt" /> Dog_Fleas-75-151
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-152/classification.txt" /> Dog_Fleas-75-152
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-153/classification.txt" /> Dog_Fleas-75-153
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-154/classification.txt" /> Dog_Fleas-75-154
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-155/classification.txt" /> Dog_Fleas-75-155
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-156/classification.txt" /> Dog_Fleas-75-156
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-157/classification.txt" /> Dog_Fleas-75-157
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-158/classification.txt" /> Dog_Fleas-75-158
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-159/classification.txt" /> Dog_Fleas-75-159
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-160/classification.txt" /> Dog_Fleas-75-160
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-161/classification.txt" /> Dog_Fleas-75-161
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-162/classification.txt" /> Dog_Fleas-75-162
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-163/classification.txt" /> Dog_Fleas-75-163
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-164/classification.txt" /> Dog_Fleas-75-164
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-165/classification.txt" /> Dog_Fleas-75-165
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-166/classification.txt" /> Dog_Fleas-75-166
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-167/classification.txt" /> Dog_Fleas-75-167
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-168/classification.txt" /> Dog_Fleas-75-168
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-169/classification.txt" /> Dog_Fleas-75-169
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-170/classification.txt" /> Dog_Fleas-75-170
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-171/classification.txt" /> Dog_Fleas-75-171
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-172/classification.txt" /> Dog_Fleas-75-172
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-173/classification.txt" /> Dog_Fleas-75-173
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-174/classification.txt" /> Dog_Fleas-75-174
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-175/classification.txt" /> Dog_Fleas-75-175
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-176/classification.txt" /> Dog_Fleas-75-176
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-177/classification.txt" /> Dog_Fleas-75-177
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-178/classification.txt" /> Dog_Fleas-75-178
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-179/classification.txt" /> Dog_Fleas-75-179
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-180/classification.txt" /> Dog_Fleas-75-180
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-181/classification.txt" /> Dog_Fleas-75-181
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-182/classification.txt" /> Dog_Fleas-75-182
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-183/classification.txt" /> Dog_Fleas-75-183
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-184/classification.txt" /> Dog_Fleas-75-184
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-185/classification.txt" /> Dog_Fleas-75-185
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-186/classification.txt" /> Dog_Fleas-75-186
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-187/classification.txt" /> Dog_Fleas-75-187
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-188/classification.txt" /> Dog_Fleas-75-188
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-189/classification.txt" /> Dog_Fleas-75-189
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-190/classification.txt" /> Dog_Fleas-75-190
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-191/classification.txt" /> Dog_Fleas-75-191
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-192/classification.txt" /> Dog_Fleas-75-192
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-193/classification.txt" /> Dog_Fleas-75-193
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-194/classification.txt" /> Dog_Fleas-75-194
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-195/classification.txt" /> Dog_Fleas-75-195
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-196/classification.txt" /> Dog_Fleas-75-196
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-197/classification.txt" /> Dog_Fleas-75-197
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-198/classification.txt" /> Dog_Fleas-75-198
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-199/classification.txt" /> Dog_Fleas-75-199
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-200/classification.txt" /> Dog_Fleas-75-200
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-201/classification.txt" /> Dog_Fleas-75-201
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-202/classification.txt" /> Dog_Fleas-75-202
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-203/classification.txt" /> Dog_Fleas-75-203
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-204/classification.txt" /> Dog_Fleas-75-204
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-205/classification.txt" /> Dog_Fleas-75-205
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-206/classification.txt" /> Dog_Fleas-75-206
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-208/classification.txt" /> Dog_Fleas-75-208
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-209/classification.txt" /> Dog_Fleas-75-209
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-210/classification.txt" /> Dog_Fleas-75-210
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-211/classification.txt" /> Dog_Fleas-75-211
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-212/classification.txt" /> Dog_Fleas-75-212
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-213/classification.txt" /> Dog_Fleas-75-213
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-214/classification.txt" /> Dog_Fleas-75-214
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-215/classification.txt" /> Dog_Fleas-75-215
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-216/classification.txt" /> Dog_Fleas-75-216
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-217/classification.txt" /> Dog_Fleas-75-217
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-218/classification.txt" /> Dog_Fleas-75-218
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-219/classification.txt" /> Dog_Fleas-75-219
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-220/classification.txt" /> Dog_Fleas-75-220
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-221/classification.txt" /> Dog_Fleas-75-221
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-222/classification.txt" /> Dog_Fleas-75-222
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-223/classification.txt" /> Dog_Fleas-75-223
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-224/classification.txt" /> Dog_Fleas-75-224
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-225/classification.txt" /> Dog_Fleas-75-225
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-226/classification.txt" /> Dog_Fleas-75-226
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-227/classification.txt" /> Dog_Fleas-75-227
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-228/classification.txt" /> Dog_Fleas-75-228
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-229/classification.txt" /> Dog_Fleas-75-229
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-230/classification.txt" /> Dog_Fleas-75-230
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-231/classification.txt" /> Dog_Fleas-75-231
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-232/classification.txt" /> Dog_Fleas-75-232
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-233/classification.txt" /> Dog_Fleas-75-233
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-234/classification.txt" /> Dog_Fleas-75-234
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-235/classification.txt" /> Dog_Fleas-75-235
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-236/classification.txt" /> Dog_Fleas-75-236
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-237/classification.txt" /> Dog_Fleas-75-237
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-238/classification.txt" /> Dog_Fleas-75-238
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-239/classification.txt" /> Dog_Fleas-75-239
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-240/classification.txt" /> Dog_Fleas-75-240
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-241/classification.txt" /> Dog_Fleas-75-241
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-242/classification.txt" /> Dog_Fleas-75-242
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-243/classification.txt" /> Dog_Fleas-75-243
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-244/classification.txt" /> Dog_Fleas-75-244
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-245/classification.txt" /> Dog_Fleas-75-245
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-246/classification.txt" /> Dog_Fleas-75-246
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-247/classification.txt" /> Dog_Fleas-75-247
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-248/classification.txt" /> Dog_Fleas-75-248
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-249/classification.txt" /> Dog_Fleas-75-249
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-250/classification.txt" /> Dog_Fleas-75-250
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-251/classification.txt" /> Dog_Fleas-75-251
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Dog_Fleas/75-252/classification.txt" /> Dog_Fleas-75-252
<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>