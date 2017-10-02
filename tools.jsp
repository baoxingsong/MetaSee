<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>MetaSee -- Tools</title>
			<link rel="stylesheet" href="skin/css/indexflash.css">
			<link rel="stylesheet" href="skin/css/base2.css" type="text/css" media="all" />
			<link rel="stylesheet" href="skin/css/jquery-ui.css" type="text/css" media="all" />
            <link rel="stylesheet" href="skin/css/3dlable.css" type="text/css" media="all" />
			<script src="skin/js/jquery.min.js" type="text/javascript"></script>
			<script src="skin/js/jquery-ui.min.js" type="text/javascript"></script>
			<script src="skin/js/download.js" type="text/javascript"></script>
            <script src="skin/js/3d.js" type="text/javascript"></script>
		  <!--[if IE]><script type="text/javascript" src="/skin/js/excanvas.js"></script><![endif]-->
            <script type="text/javascript" src="/skin/js/alertRowser.min.js"></script>	
		<style type="text/css">
	
	#jq-books{width:200px;float:right;margin-right:0}
	#jq-books li{line-height:1.25em;margin:1em 0 2.8em;clear:left}
	#home-content-wrapper #jq-books a.jq-bookImg{float:left;margin-right:10px;width:55px;height:70px}
	#jq-books h3{margin:0 0 .2em 0}
	#home-content-wrapper #jq-books h3 a{font-size:1em;color:black;}
	#home-content-wrapper #jq-books a.jq-buyNow{font-size:1em;color:white;display:block;background:url(http://static.jquery.com/files/rocker/images/btn_blueSheen.gif) 50% repeat-x;text-decoration:none;color:#fff;font-weight:bold;padding:.2em .8em;float:left;margin-top:.2em;}
	
	</style>
</head>

<body id="download" onload=showDemo();>
<jsp:include page="/template/head_navigation.txt" />

	<div id="content-wrapper">
	
		



<!-- download-builder -->
<div id="download-builder">

<!--
<img src="skin/images/acknowledge_thankyou.jpg" id="download_builder_icon" alt="download builder icon" width="174" height="117" style="margin:0 15px 10px 20px;" />-->
<h1>Tools</h1>
<p class="wholewidth">To provide a facility for metagenome analyzing, we provide several data visualization tools here. They are easy use, and can make beautiful and publication-quality charts from the input data.</p>
<p>
<p>&nbsp;</p>
<table width="900" border="0" cellspacing="0px">
		        <tr>
		          <td width="330"><a href="/visualizationlab/venn.jsp"><img src="/skin/images/tools/venn.jpg" alt="Venn chart" width="300" height="300" border="0" /></a></td>
                  <td><p style="font-size:20px"><a href="/visualizationlab/venn.jsp">Venn chart maker</a>, it is so easy to use, and may not need the document here.</p></td>
	            </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="900" border="0" cellspacing="0px">
		        <tr>
		          <td width="330"><a href="/visualizationlab/piechart.jsp"><img src="/skin/images/tools/pie.jpg" alt="Pie chart" width="300" height="300" border="0" /></a></td>
                  <td><p style="font-size:20px"><a href="/visualizationlab/piechart.jsp">Pie chart maker</a></p></td>
	            </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="900" border="0" cellspacing="0px">
		        <tr>
		          <td width="330"><a href="/visualizationlab/barchart.jsp"><img src="/skin/images/tools/bar.jpg" alt="Bar chart" width="300" height="300" border="0" /></a></td>
                  <td><p style="font-size:20px"><a href="/visualizationlab/barchart.jsp">Bar chart maker</a></p></td>
	            </tr>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>



</div><!-- /download-builder -->
<jsp:include page="/template/footer.txt" />
</body>
</html>