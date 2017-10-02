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
<p>&nbsp;</p>
<br />

<br />
<ul>
<br />
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px"><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-1/classification.txt" /> Human-66-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-2/classification.txt" /> Human-66-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-3/classification.txt" /> Human-66-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-4/classification.txt" /> Human-66-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-6/classification.txt" /> Human-66-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-8/classification.txt" /> Human-66-8
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-10/classification.txt" /> Human-66-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-11/classification.txt" /> Human-66-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-12/classification.txt" /> Human-66-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-13/classification.txt" /> Human-66-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-14/classification.txt" /> Human-66-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-15/classification.txt" /> Human-66-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-16/classification.txt" /> Human-66-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-17/classification.txt" /> Human-66-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-18/classification.txt" /> Human-66-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-19/classification.txt" /> Human-66-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-20/classification.txt" /> Human-66-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-21/classification.txt" /> Human-66-21
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-22/classification.txt" /> Human-66-22
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-23/classification.txt" /> Human-66-23
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-24/classification.txt" /> Human-66-24
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-25/classification.txt" /> Human-66-25
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-26/classification.txt" /> Human-66-26
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-27/classification.txt" /> Human-66-27
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-28/classification.txt" /> Human-66-28
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-29/classification.txt" /> Human-66-29
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-30/classification.txt" /> Human-66-30
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-31/classification.txt" /> Human-66-31
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-32/classification.txt" /> Human-66-32
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-33/classification.txt" /> Human-66-33
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-34/classification.txt" /> Human-66-34
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-35/classification.txt" /> Human-66-35
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-36/classification.txt" /> Human-66-36
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-37/classification.txt" /> Human-66-37
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-38/classification.txt" /> Human-66-38
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-39/classification.txt" /> Human-66-39
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-40/classification.txt" /> Human-66-40
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-41/classification.txt" /> Human-66-41
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-42/classification.txt" /> Human-66-42
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-43/classification.txt" /> Human-66-43
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-44/classification.txt" /> Human-66-44
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-45/classification.txt" /> Human-66-45
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-46/classification.txt" /> Human-66-46
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-47/classification.txt" /> Human-66-47
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-48/classification.txt" /> Human-66-48
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-49/classification.txt" /> Human-66-49
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-50/classification.txt" /> Human-66-50
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-51/classification.txt" /> Human-66-51
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-52/classification.txt" /> Human-66-52
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-53/classification.txt" /> Human-66-53
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-54/classification.txt" /> Human-66-54
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-55/classification.txt" /> Human-66-55
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-56/classification.txt" /> Human-66-56
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-57/classification.txt" /> Human-66-57
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-58/classification.txt" /> Human-66-58
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-59/classification.txt" /> Human-66-59
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-60/classification.txt" /> Human-66-60
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-61/classification.txt" /> Human-66-61
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-62/classification.txt" /> Human-66-62
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-63/classification.txt" /> Human-66-63
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-64/classification.txt" /> Human-66-64
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-65/classification.txt" /> Human-66-65
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-66/classification.txt" /> Human-66-66
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-67/classification.txt" /> Human-66-67
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-68/classification.txt" /> Human-66-68
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-69/classification.txt" /> Human-66-69
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-70/classification.txt" /> Human-66-70
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-71/classification.txt" /> Human-66-71
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-72/classification.txt" /> Human-66-72
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-73/classification.txt" /> Human-66-73
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-74/classification.txt" /> Human-66-74
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-75/classification.txt" /> Human-66-75
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-76/classification.txt" /> Human-66-76
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-77/classification.txt" /> Human-66-77
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-78/classification.txt" /> Human-66-78
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-79/classification.txt" /> Human-66-79
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-80/classification.txt" /> Human-66-80
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-81/classification.txt" /> Human-66-81
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-82/classification.txt" /> Human-66-82
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-83/classification.txt" /> Human-66-83
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-84/classification.txt" /> Human-66-84
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-85/classification.txt" /> Human-66-85
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-86/classification.txt" /> Human-66-86
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-87/classification.txt" /> Human-66-87
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-88/classification.txt" /> Human-66-88
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-89/classification.txt" /> Human-66-89
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-90/classification.txt" /> Human-66-90
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-91/classification.txt" /> Human-66-91
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-92/classification.txt" /> Human-66-92
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-93/classification.txt" /> Human-66-93
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-94/classification.txt" /> Human-66-94
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-95/classification.txt" /> Human-66-95
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-96/classification.txt" /> Human-66-96
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-97/classification.txt" /> Human-66-97
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-98/classification.txt" /> Human-66-98
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-99/classification.txt" /> Human-66-99
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-100/classification.txt" /> Human-66-100
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-101/classification.txt" /> Human-66-101
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-102/classification.txt" /> Human-66-102
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-103/classification.txt" /> Human-66-103
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-104/classification.txt" /> Human-66-104
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-105/classification.txt" /> Human-66-105
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-106/classification.txt" /> Human-66-106
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-107/classification.txt" /> Human-66-107
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-108/classification.txt" /> Human-66-108
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-109/classification.txt" /> Human-66-109
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-110/classification.txt" /> Human-66-110
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-111/classification.txt" /> Human-66-111
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-112/classification.txt" /> Human-66-112
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-113/classification.txt" /> Human-66-113
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-114/classification.txt" /> Human-66-114
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-115/classification.txt" /> Human-66-115
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-116/classification.txt" /> Human-66-116
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-117/classification.txt" /> Human-66-117
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-118/classification.txt" /> Human-66-118
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-119/classification.txt" /> Human-66-119
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-120/classification.txt" /> Human-66-120
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-121/classification.txt" /> Human-66-121
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-122/classification.txt" /> Human-66-122
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-123/classification.txt" /> Human-66-123
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-124/classification.txt" /> Human-66-124
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-125/classification.txt" /> Human-66-125
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-126/classification.txt" /> Human-66-126
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-127/classification.txt" /> Human-66-127
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-128/classification.txt" /> Human-66-128
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-129/classification.txt" /> Human-66-129
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-130/classification.txt" /> Human-66-130
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-131/classification.txt" /> Human-66-131
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-132/classification.txt" /> Human-66-132
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-133/classification.txt" /> Human-66-133
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-134/classification.txt" /> Human-66-134
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-135/classification.txt" /> Human-66-135
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-136/classification.txt" /> Human-66-136
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-137/classification.txt" /> Human-66-137
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-138/classification.txt" /> Human-66-138
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-139/classification.txt" /> Human-66-139
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-140/classification.txt" /> Human-66-140
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-141/classification.txt" /> Human-66-141
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-142/classification.txt" /> Human-66-142
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-143/classification.txt" /> Human-66-143
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-144/classification.txt" /> Human-66-144
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-145/classification.txt" /> Human-66-145
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-146/classification.txt" /> Human-66-146
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-147/classification.txt" /> Human-66-147
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-148/classification.txt" /> Human-66-148
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-149/classification.txt" /> Human-66-149
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-150/classification.txt" /> Human-66-150
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-151/classification.txt" /> Human-66-151
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-152/classification.txt" /> Human-66-152
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-153/classification.txt" /> Human-66-153
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-154/classification.txt" /> Human-66-154
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-155/classification.txt" /> Human-66-155
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-156/classification.txt" /> Human-66-156
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-157/classification.txt" /> Human-66-157
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-158/classification.txt" /> Human-66-158
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-159/classification.txt" /> Human-66-159
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-160/classification.txt" /> Human-66-160
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-161/classification.txt" /> Human-66-161
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-162/classification.txt" /> Human-66-162
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-163/classification.txt" /> Human-66-163
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-164/classification.txt" /> Human-66-164
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-165/classification.txt" /> Human-66-165
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-166/classification.txt" /> Human-66-166
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-167/classification.txt" /> Human-66-167
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-168/classification.txt" /> Human-66-168
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-169/classification.txt" /> Human-66-169
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-170/classification.txt" /> Human-66-170
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-171/classification.txt" /> Human-66-171
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-172/classification.txt" /> Human-66-172
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-173/classification.txt" /> Human-66-173
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-174/classification.txt" /> Human-66-174
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-175/classification.txt" /> Human-66-175
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-176/classification.txt" /> Human-66-176
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-177/classification.txt" /> Human-66-177
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-178/classification.txt" /> Human-66-178
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-179/classification.txt" /> Human-66-179
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-180/classification.txt" /> Human-66-180
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-181/classification.txt" /> Human-66-181
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-182/classification.txt" /> Human-66-182
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-183/classification.txt" /> Human-66-183
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-184/classification.txt" /> Human-66-184
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-185/classification.txt" /> Human-66-185
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-186/classification.txt" /> Human-66-186
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-187/classification.txt" /> Human-66-187
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-188/classification.txt" /> Human-66-188
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-189/classification.txt" /> Human-66-189
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-190/classification.txt" /> Human-66-190
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-191/classification.txt" /> Human-66-191
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-192/classification.txt" /> Human-66-192
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-193/classification.txt" /> Human-66-193
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-194/classification.txt" /> Human-66-194
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-195/classification.txt" /> Human-66-195
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-196/classification.txt" /> Human-66-196
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-197/classification.txt" /> Human-66-197
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-198/classification.txt" /> Human-66-198
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-199/classification.txt" /> Human-66-199
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-200/classification.txt" /> Human-66-200
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-201/classification.txt" /> Human-66-201
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-202/classification.txt" /> Human-66-202
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-203/classification.txt" /> Human-66-203
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-204/classification.txt" /> Human-66-204
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-205/classification.txt" /> Human-66-205
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-206/classification.txt" /> Human-66-206
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-207/classification.txt" /> Human-66-207
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-208/classification.txt" /> Human-66-208
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-209/classification.txt" /> Human-66-209
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-210/classification.txt" /> Human-66-210
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-211/classification.txt" /> Human-66-211
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-212/classification.txt" /> Human-66-212
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-213/classification.txt" /> Human-66-213
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-214/classification.txt" /> Human-66-214
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-215/classification.txt" /> Human-66-215
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-216/classification.txt" /> Human-66-216
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-217/classification.txt" /> Human-66-217
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-218/classification.txt" /> Human-66-218
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-219/classification.txt" /> Human-66-219
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-220/classification.txt" /> Human-66-220
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-221/classification.txt" /> Human-66-221
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-222/classification.txt" /> Human-66-222
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-223/classification.txt" /> Human-66-223
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-224/classification.txt" /> Human-66-224
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-225/classification.txt" /> Human-66-225
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-226/classification.txt" /> Human-66-226
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-227/classification.txt" /> Human-66-227
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-228/classification.txt" /> Human-66-228
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-229/classification.txt" /> Human-66-229
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-230/classification.txt" /> Human-66-230
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-231/classification.txt" /> Human-66-231
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-232/classification.txt" /> Human-66-232
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-233/classification.txt" /> Human-66-233
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-234/classification.txt" /> Human-66-234
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-235/classification.txt" /> Human-66-235
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-236/classification.txt" /> Human-66-236
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-237/classification.txt" /> Human-66-237
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-238/classification.txt" /> Human-66-238
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-239/classification.txt" /> Human-66-239
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-240/classification.txt" /> Human-66-240
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-241/classification.txt" /> Human-66-241
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-242/classification.txt" /> Human-66-242
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-243/classification.txt" /> Human-66-243
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-244/classification.txt" /> Human-66-244
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-245/classification.txt" /> Human-66-245
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-246/classification.txt" /> Human-66-246
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-247/classification.txt" /> Human-66-247
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-248/classification.txt" /> Human-66-248
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-249/classification.txt" /> Human-66-249
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-250/classification.txt" /> Human-66-250
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-251/classification.txt" /> Human-66-251
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-252/classification.txt" /> Human-66-252
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-253/classification.txt" /> Human-66-253
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-254/classification.txt" /> Human-66-254
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-255/classification.txt" /> Human-66-255
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-256/classification.txt" /> Human-66-256
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/66-257/classification.txt" /> Human-66-257<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>