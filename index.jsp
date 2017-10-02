<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>MetaSee -- An interactive visualizaion toolbox for metagenomic sample analysis and comparison</title>
<link rel="stylesheet" href="skin/css/indexflash.css">
<link rel="stylesheet" href="skin/css/alertbrowser.css">
			<link rel="stylesheet" href="skin/css/base2.css" type="text/css" media="all" />
			<link rel="stylesheet" href="skin/css/jquery-ui.css" type="text/css" media="all" />
			<script src="skin/js/jquery.min.js" type="text/javascript"></script>
			<script src="skin/js/jquery-ui.min.js" type="text/javascript"></script>
			<script src="skin/js/download.js" type="text/javascript"></script>
			<script type="text/javascript" src="/skin/js/alertbrowser.js"></script>	
		<style type="text/css">
	
	#jq-books{width:200px;float:right;margin-right:0}
	#jq-books li{line-height:1.25em;margin:1em 0 2.8em;clear:left}
	#home-content-wrapper #jq-books a.jq-bookImg{float:left;margin-right:10px;width:55px;height:70px}
	#jq-books h3{margin:0 0 .2em 0}
	#home-content-wrapper #jq-books h3 a{font-size:1em;color:black;}
	#home-content-wrapper #jq-books a.jq-buyNow{font-size:1em;color:white;display:block;background:url(http://static.jquery.com/files/rocker/images/btn_blueSheen.gif) 50% repeat-x;text-decoration:none;color:#fff;font-weight:bold;padding:.2em .8em;float:left;margin-top:.2em;}
	
	</style>
    

    
</head>

<body id="download" onLoad=checkBrowser();>


<jsp:include page="/template/head_navigation.txt" />

	<div id="content-wrapper">
		<div id="content">
		<div class="content-top"></div>		<div class="content">
		
<jsp:include page="/template/index_flash" />


<div id="download-builder">
	<img src="skin/images/download_builder.png" id="download_builder_icon" alt="download builder icon" width="174" height="157" />
	<h1>What is MetaSee</h1>
	<p class="intro">MetaSee is an online toolbox for metagenomic data visualization. It can take metagenomic datasets (community structure) in various formats as input, provide a lot of beautiful and interactive visualization effects for the metagenomic dataset in different angles, and smoothly shift among different visualization effects.
	</p>
<p class="intro_image"><img src="skin/images/metasee_index_introduce_simple_phylogenetic_tree.jpg" width="200" height="200"/><img src="skin/images/metasee_index_introduce_circle_phylogenetic_tree.jpg" width="200" height="200"/><img src="skin/images/metasee_index_introduce_circle_pie_chart.jpg" width="200" height="200"/><img src="skin/images/metasee_index_introduce_main_chart.jpg" width="200" height="200"/></p>

<div style="width:900px; margin:20px 20px 20px 0;"><hr></div>
<h1>Why is it needed?</h1>
<p class="wholewidth">MetaSee is not only for producing publication-quality graph, but also designed for facilitation of manual analysis and further data mining of the metagenomic data.</p>
<img src="skin/images/index_why_need_scientistbusing.jpg" width="180" height="130" style="float:left; margin-right:20px;">
<p class="wholewidth">The reality of cutting-edge science reveals a grimmer picture, replete with incomprehensible figures, illegible color combination and awkward type faces. This is in large part due to the fact that the people in charge of science are too busy with the science to worry about figures. So, it is important for software designers to continue providing scientists with tools that are useful, effective and pretty.</p>
<p class="wholewidth">Although many metagenomic data analysis tasks can be accomplished with automated processes, some steps continue to require human judgments and are frequently rate limiting, for example the comparison between two samples. Visualization can augment our ability to reason about complex data, thereby increasing the efficiency of manual analysis. In some cases, the appropriate image makes the solution obvious. Given the importance of human interpretation, particularly in the early hypothesis generation stages of biological research, visualization tools also provide a valuable complement to automated computational techniques enabling us to derive scientific insight from large-scale data sets.</p>
<div style="width:900px; margin:20px 20px 20px 0;"><hr></div>
<a href="/file/12s0834.xml" target="_blank">
<img src="/skin/images/otherdata_12s0834.jpg" style=" float: right;margin-right: 20px;" alt="download builder icon" width="180" height="180" /></a>
<h1>Only for metagenomics? No!</h1>
<p style="font-size:1.5em; color:#666; line-height:1.5; width:650px; margin:1em 0 1em;">Metasee is very flexible: It can not only be applied in metagenomics research area,  but can also take any kind of data in tree structure as input and give illustrative visualization results. Click the right picture to get a sample data of project "Adoption of Genetically Engineered Crops", which comes from <a href="http://www.census.gov/compendia/statab/cats/agriculture/crops.html" target="_blank">the Census</a>.
<p/><p>&nbsp;</p>
<div style="width:900px; margin:20px 20px 20px 0;"><hr></div>
<h1>It is so easy to use!</h1>
<p class="wholewidth">MetaSee has a user-friendly GUI. Users can get clear results with only click opeations.</p>
<p class="wholewidth">To make it friendly to the developers, MetaSee take file in XML format as input. And both multiple and single files, both multiple sample and single sample files can be accepted.</p>

<p class="wholewidth">We have developed two projects to show-case the applications of MetaSee: <em><a href="/visualizationlab/map/">"Metagenome global survey"</a></em> and <em><a href="/visualizationlab/mouth/">"Digital Mouth"</a></em>. </p>
<p class="wholewidth"><a href="/visualizationlab/map/"><img src="skin/images/index_project_metagenome_globle_distribution.jpg" style="float:left" border="0" width="400" height="200"></a><a href="/visualizationlab/mouth/"><img src="skin/images/index_project_digital_mouth.jpg" style="float:right" width="400" height="200" border="0"></a></p>
<p style="clear:both">&nbsp;</p>
<p align="center" style="color:#999999">Projects developed by MetaSee</p>

 
<div style="width:900px; margin:20px 20px 20px 0;"><hr></div>
<img src="skin/images/index_developdirection_program_languague.jpg" style=" float: right;margin-right: 20px;" alt="download builder icon" width="200" height="200" />
<h1>Development of MetaSee</h1>
<p style="font-size:1.5em; color:#666; line-height:1.5; width:650px; margin:1em 0 1em;">

We are working on the development of MetaSee, and adding more novel interactive functions using HTML5 canvas and Vector Graphics (SVG), which makes it more powerful and easy-to-use. Furthermore, additional APIs of MetaSee for new software will also be released for compatibility. If you have problems, comments, reporting bugs, or want to contribute to further development of MetaSee, please feel free to contact <a href="mailto:songbx@qibebt.ac.cn">songbx AT qibebt.ac.cn</a>.</p>
<p> </p>

	


</div><!-- /download-builder -->		</div>


		</div>
	
<jsp:include page="/template/footer.txt" />
</body>
</html>