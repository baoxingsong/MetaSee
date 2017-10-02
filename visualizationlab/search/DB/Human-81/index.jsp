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
  <p style="width:900px; margin:20px 20px 20px 20px;">Bacterial community variation in human body habitats across space and time</p>
</blockquote>
<p style="width:900px; margin:20px 20px 20px 20px;"><strong>Description</strong></p>
<blockquote>
  <p style="width:900px; margin:20px 20px 20px 20px;">Elucidating the biogeography of bacterial communities on the human body   is critical for establishing healthy baselines from which to detect   differences associated with diseases. To obtain an integrated view of   the spatial and temporal distribution of the human microbiota, we   surveyed bacteria from up to 27 sites in seven to nine healthy adults on   four occasions. We found that community composition was determined   primarily by body habitat. Within habitats, interpersonal variability   was high, whereas individuals exhibited minimal temporal variability.   Several skin locations harbored more diverse communities than the gut   and mouth, and skin locations differed in their community assembly   patterns. These results indicate that our microbiota, although   personalized, varies systematically across body habitats and time; such   trends may ultimately reveal how microbiome changes cause or prevent   disease. </p>
</blockquote>
<form action="metastornonlieresult.jsp" method="get" name="form" style="padding-left:20px">
  <input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-1/classification.txt" /> Human-81-1
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-10/classification.txt" /> Human-81-10
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-100/classification.txt" /> Human-81-100
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-101/classification.txt" /> Human-81-101
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-102/classification.txt" /> Human-81-102
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-103/classification.txt" /> Human-81-103
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-104/classification.txt" /> Human-81-104
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-105/classification.txt" /> Human-81-105
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-106/classification.txt" /> Human-81-106
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-107/classification.txt" /> Human-81-107
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-108/classification.txt" /> Human-81-108
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-109/classification.txt" /> Human-81-109
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-11/classification.txt" /> Human-81-11
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-110/classification.txt" /> Human-81-110
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-111/classification.txt" /> Human-81-111
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-112/classification.txt" /> Human-81-112
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-113/classification.txt" /> Human-81-113
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-114/classification.txt" /> Human-81-114
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-115/classification.txt" /> Human-81-115
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-116/classification.txt" /> Human-81-116
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-117/classification.txt" /> Human-81-117
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-118/classification.txt" /> Human-81-118
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-119/classification.txt" /> Human-81-119
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-12/classification.txt" /> Human-81-12
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-120/classification.txt" /> Human-81-120
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-121/classification.txt" /> Human-81-121
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-122/classification.txt" /> Human-81-122
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-123/classification.txt" /> Human-81-123
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-124/classification.txt" /> Human-81-124
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-125/classification.txt" /> Human-81-125
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-126/classification.txt" /> Human-81-126
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-127/classification.txt" /> Human-81-127
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-128/classification.txt" /> Human-81-128
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-129/classification.txt" /> Human-81-129
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-13/classification.txt" /> Human-81-13
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-130/classification.txt" /> Human-81-130
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-131/classification.txt" /> Human-81-131
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-132/classification.txt" /> Human-81-132
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-133/classification.txt" /> Human-81-133
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-134/classification.txt" /> Human-81-134
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-135/classification.txt" /> Human-81-135
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-136/classification.txt" /> Human-81-136
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-137/classification.txt" /> Human-81-137
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-138/classification.txt" /> Human-81-138
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-139/classification.txt" /> Human-81-139
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-14/classification.txt" /> Human-81-14
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-140/classification.txt" /> Human-81-140
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-141/classification.txt" /> Human-81-141
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-142/classification.txt" /> Human-81-142
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-143/classification.txt" /> Human-81-143
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-144/classification.txt" /> Human-81-144
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-145/classification.txt" /> Human-81-145
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-146/classification.txt" /> Human-81-146
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-147/classification.txt" /> Human-81-147
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-148/classification.txt" /> Human-81-148
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-149/classification.txt" /> Human-81-149
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-15/classification.txt" /> Human-81-15
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-150/classification.txt" /> Human-81-150
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-151/classification.txt" /> Human-81-151
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-152/classification.txt" /> Human-81-152
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-153/classification.txt" /> Human-81-153
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-154/classification.txt" /> Human-81-154
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-155/classification.txt" /> Human-81-155
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-156/classification.txt" /> Human-81-156
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-157/classification.txt" /> Human-81-157
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-158/classification.txt" /> Human-81-158
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-159/classification.txt" /> Human-81-159
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-16/classification.txt" /> Human-81-16
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-160/classification.txt" /> Human-81-160
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-161/classification.txt" /> Human-81-161
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-162/classification.txt" /> Human-81-162
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-163/classification.txt" /> Human-81-163
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-164/classification.txt" /> Human-81-164
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-165/classification.txt" /> Human-81-165
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-166/classification.txt" /> Human-81-166
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-167/classification.txt" /> Human-81-167
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-168/classification.txt" /> Human-81-168
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-169/classification.txt" /> Human-81-169
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-17/classification.txt" /> Human-81-17
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-170/classification.txt" /> Human-81-170
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-171/classification.txt" /> Human-81-171
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-172/classification.txt" /> Human-81-172
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-173/classification.txt" /> Human-81-173
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-174/classification.txt" /> Human-81-174
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-175/classification.txt" /> Human-81-175
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-176/classification.txt" /> Human-81-176
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-177/classification.txt" /> Human-81-177
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-178/classification.txt" /> Human-81-178
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-179/classification.txt" /> Human-81-179
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-18/classification.txt" /> Human-81-18
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-180/classification.txt" /> Human-81-180
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-181/classification.txt" /> Human-81-181
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-182/classification.txt" /> Human-81-182
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-183/classification.txt" /> Human-81-183
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-184/classification.txt" /> Human-81-184
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-185/classification.txt" /> Human-81-185
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-186/classification.txt" /> Human-81-186
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-187/classification.txt" /> Human-81-187
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-188/classification.txt" /> Human-81-188
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-189/classification.txt" /> Human-81-189
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-19/classification.txt" /> Human-81-19
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-190/classification.txt" /> Human-81-190
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-191/classification.txt" /> Human-81-191
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-192/classification.txt" /> Human-81-192
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-193/classification.txt" /> Human-81-193
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-194/classification.txt" /> Human-81-194
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-195/classification.txt" /> Human-81-195
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-196/classification.txt" /> Human-81-196
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-197/classification.txt" /> Human-81-197
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-198/classification.txt" /> Human-81-198
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-199/classification.txt" /> Human-81-199
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-2/classification.txt" /> Human-81-2
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-20/classification.txt" /> Human-81-20
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-200/classification.txt" /> Human-81-200
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-201/classification.txt" /> Human-81-201
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-202/classification.txt" /> Human-81-202
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-203/classification.txt" /> Human-81-203
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-204/classification.txt" /> Human-81-204
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-205/classification.txt" /> Human-81-205
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-206/classification.txt" /> Human-81-206
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-207/classification.txt" /> Human-81-207
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-208/classification.txt" /> Human-81-208
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-209/classification.txt" /> Human-81-209
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-21/classification.txt" /> Human-81-21
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-210/classification.txt" /> Human-81-210
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-211/classification.txt" /> Human-81-211
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-212/classification.txt" /> Human-81-212
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-213/classification.txt" /> Human-81-213
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-214/classification.txt" /> Human-81-214
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-22/classification.txt" /> Human-81-22
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-23/classification.txt" /> Human-81-23
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-24/classification.txt" /> Human-81-24
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-25/classification.txt" /> Human-81-25
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-26/classification.txt" /> Human-81-26
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-27/classification.txt" /> Human-81-27
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-28/classification.txt" /> Human-81-28
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-29/classification.txt" /> Human-81-29
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-3/classification.txt" /> Human-81-3
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-30/classification.txt" /> Human-81-30
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-31/classification.txt" /> Human-81-31
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-32/classification.txt" /> Human-81-32
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-33/classification.txt" /> Human-81-33
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-34/classification.txt" /> Human-81-34
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-35/classification.txt" /> Human-81-35
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-36/classification.txt" /> Human-81-36
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-37/classification.txt" /> Human-81-37
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-38/classification.txt" /> Human-81-38
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-39/classification.txt" /> Human-81-39
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-4/classification.txt" /> Human-81-4
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-40/classification.txt" /> Human-81-40
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-41/classification.txt" /> Human-81-41
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-42/classification.txt" /> Human-81-42
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-43/classification.txt" /> Human-81-43
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-44/classification.txt" /> Human-81-44
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-45/classification.txt" /> Human-81-45
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-46/classification.txt" /> Human-81-46
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-47/classification.txt" /> Human-81-47
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-48/classification.txt" /> Human-81-48
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-49/classification.txt" /> Human-81-49
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-50/classification.txt" /> Human-81-50
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-51/classification.txt" /> Human-81-51
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-52/classification.txt" /> Human-81-52
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-53/classification.txt" /> Human-81-53
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-54/classification.txt" /> Human-81-54
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-55/classification.txt" /> Human-81-55
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-56/classification.txt" /> Human-81-56
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-57/classification.txt" /> Human-81-57
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-58/classification.txt" /> Human-81-58
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-59/classification.txt" /> Human-81-59
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-6/classification.txt" /> Human-81-6
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-60/classification.txt" /> Human-81-60
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-61/classification.txt" /> Human-81-61
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-62/classification.txt" /> Human-81-62
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-63/classification.txt" /> Human-81-63
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-64/classification.txt" /> Human-81-64
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-65/classification.txt" /> Human-81-65
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-66/classification.txt" /> Human-81-66
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-67/classification.txt" /> Human-81-67
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-68/classification.txt" /> Human-81-68
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-69/classification.txt" /> Human-81-69
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-70/classification.txt" /> Human-81-70
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-71/classification.txt" /> Human-81-71
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-72/classification.txt" /> Human-81-72
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-73/classification.txt" /> Human-81-73
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-74/classification.txt" /> Human-81-74
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-75/classification.txt" /> Human-81-75
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-76/classification.txt" /> Human-81-76
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-77/classification.txt" /> Human-81-77
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-78/classification.txt" /> Human-81-78
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-79/classification.txt" /> Human-81-79
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-8/classification.txt" /> Human-81-8
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-80/classification.txt" /> Human-81-80
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-81/classification.txt" /> Human-81-81
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-82/classification.txt" /> Human-81-82
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-83/classification.txt" /> Human-81-83
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-84/classification.txt" /> Human-81-84
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-85/classification.txt" /> Human-81-85
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-86/classification.txt" /> Human-81-86
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-87/classification.txt" /> Human-81-87
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-88/classification.txt" /> Human-81-88
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-89/classification.txt" /> Human-81-89
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-90/classification.txt" /> Human-81-90
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-91/classification.txt" /> Human-81-91
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-92/classification.txt" /> Human-81-92
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-93/classification.txt" /> Human-81-93
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-94/classification.txt" /> Human-81-94
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-95/classification.txt" /> Human-81-95
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-96/classification.txt" /> Human-81-96
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-97/classification.txt" /> Human-81-97
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-98/classification.txt" /> Human-81-98
<br /><input type="radio" name="item" value="/mnt/gene/suxq/metablast/ftp/all/Human/81-99/classification.txt" /> Human-81-99<br /><br />

<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
<button type="submit" id="download_zip" style="width:230px">Database Search</button>
</form>
<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>