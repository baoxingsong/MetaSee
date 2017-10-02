<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>MetaSee -- Document</title>
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
    
<link type="text/css" href="/skin/css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />	
<script type="text/javascript" src="/skin/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="/skin/js/jquery-ui-1.8.18.custom.min.js"></script>

    
<script type="text/javascript">
			$(function(){
				$("#accordion").accordion({ header: "h3" });
				$('#tabs').tabs();
				$('#dialog').dialog({
					autoOpen: false,
					width: 600,
					buttons: {
						"Ok": function() { 
							$(this).dialog("close"); 
						}, 
						"Cancel": function() { 
							$(this).dialog("close"); 
						} 
					}
				});
				$('#dialog_link').click(function(){
					$('#dialog').dialog('open');
					return false;
				});
				$('#datepicker').datepicker({
					inline: true
				});
				$('#slider').slider({
					range: true,
					values: [17, 67]
				});
				$("#progressbar").progressbar({
					value: 20 
				});
				$('#dialog_link, ul#icons li').hover(
					function() { $(this).addClass('ui-state-hover'); }, 
					function() { $(this).removeClass('ui-state-hover'); }
				);
			});
</script>
  
    
    
</head>

<body id="download" onload=showDemo();>
<jsp:include page="/template/head_navigation.txt" />

	<div id="content-wrapper">
	
<!-- download-builder -->
<div id="download-builder">

<!--
<img src="skin/images/acknowledge_thankyou.jpg" id="download_builder_icon" alt="download builder icon" width="174" height="117" style="margin:0 15px 10px 20px;" />-->
<h1>MetaSee -- Document</h1>
<h2>Input File</h2>
<p class="wholewidth">MetaSee supports both single file and multiple files as input, so you can upload several files one time, but please insure these files are in the same acceptable format but with different file names.</p>

<script>
	$(function() {
		$( "#accordion" ).accordion();
	});
	</script>

<div id="accordion" style="margin-top: 1em; width:97%;">
	<h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">MetaSee XML</a></h3>
	<div>
		<p style="padding:10px;">
		This XML file format is the default file format of MetaSee, and there are two kinds, the <a href="exampledata/metasee_multiple.xml">multiple samples</a> and the <a href="exampledata/metasee_single.zip">single sample</a>.<br>

<b>Tips about how to make your own xml file for metasee</b><br>
Here is a DTD(Document Type Definitio) file, you are encouraged to import it into your xml file, just like:<br>
<span style="background:#ddd">&lt;!DOCTYPE metasee SYSTEM &quot;http://www.metasee.org/xmldtd/metasee1.1.dtd&quot;&gt;</span><br>
And a script was provided <a href="xmldtd/test.zip" target="_blank">here</a> to help you to check your own XML file. <a href="xmldtd/test.zip" target="_blank">DOWNLOAD TEST FILE</a><br> And, please insure there are no more <em>val</em> in <em>count</em> than <em>dataset</em> in <em>datasets</em>, which is beyond the ability of this checking script.
		</p>
	</div>
	<h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">Parallel-META Result</a></h3>
	<div>
		<p style="padding:10px;">
		The single sample result of <a href="http://www.computationalbioenergy.org/parallel-meta.html" target="_blank">Parallel-META</a> can be accepted here. Multiple files will be accepted. See <a href="exampledata/parallelmeta.zip">the sample</a>.
		</p>
	</div>
	<h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">Plain text file</a></h3>
	<div>
		<p style="padding:10px;">
		Each line should be a number followed by a list of wedges(starting from the highest level) separated by tabs. If a hierarchy has more than one listing, the quantities will be added. See <a href="/exampledata/plainFile.zip">example file</a>.
		</p>
	</div>
	<h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">Krona 2.0 </a></h3>
	<div>
		<p style="padding:10px;">
		You can also upload an html file of <a href="http://sourceforge.net/p/krona/home/krona/" target="_blank">Krona 2.0</a> to MetaSee. MetaSee will display it in another fashion. See <a href="/exampledata/krona.zip">the example file</a>.
		</p>		
	</div>
	<h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">MEGAN </a></h3>
	<div>
		<p style="padding:10px;">
		>MEGAN taxonomic classifications can be accepted.<br>
		To export classifications:<br>
		From the menu, choose File -> Export -> Assignments to CSV.<br>
		In "Choose format", choose "taxon-path, count(s)".<br>
		In "Choose separator", choose "tab"<br>
		<a href="/exampledata/megan.txt">Example file</a>
		</p>		
	</div>
	<h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">MG-RAST </a></h3>
	<div>
		<p style="padding:10px;">
		Taxonomic or functional classifications can be imported from the MG-RAST metagenomics server.<br>
		Downloading data from <a href="http://metagenomics.anl.gov/metagenomics.cgi" target="_blank">MG-RAST</a>:<br>
		From the home page, click Browse Metagenomes.<br>
		Select a project, and then select a metagenome from that project (e.g. 4441138.3).<br>
		Click on the small bar chart icon to analyze the metagenome.<br>
		Under Analysis Views, choose Hierarchical Classification (organism or functional) or Lowest Common Ancestor.<br>
		Select "table" under Data Visualization and click the "generate" button.<br>
		Adjust the table options as desired and click "download data matching current filter".<br>
		<a href="/exampledata/mgrast.tsv">example file</a>
		</p>		
	</div>
</div>

<p>&nbsp;</p>


<h2>Output File</h2>
<p class="wholewidth">The output of MetaSee are lot of views of inputted datasets.</p>

<script>
	$(function() {
		$( "#accordion2" ).accordion();
	});
	</script>

<div id="accordion2" style="margin-top: 1em; width:97%;">
	<h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">Frame work</a></h3>
	<div>
		<p style="padding:10px;">
		 The left sidebar is the navigation bar. It can be closed and reopened, and the main window is the view area. 
		</p>
	</div>
	
	<h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">MetaSee visualization panel</a></h3>
	<div>
		<p style="padding:10px;">
		The MetaSee visualization panel has links that could help users to change from different views. It maybe not looks so beautiful, because instead of designed for publication purpose, it was designed for analysis. You can select which sample to display by clicking the radio button in the right bar. From the pie-chart, you can observe which segment (taxa or function) of your dataset was classified in more details with the length of branches, and you can see which  segment (taxa or function) of your dataset account for high proportions by their color (red color indicate high proportion). When clicking a segment (taxa or function) in the pie-chart, you can get the detailed information of this segment (taxa or function) from the right sidebar, such as the number of reads for this segment, and you can also go to any other views from the right side bar of this view.
		</p>
	</div>
    
    <h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">Global View</a></h3>
	<div>
		<p style="padding:10px;">
		You can find the difference of multiple samples from this the global view. Click the download URL to download this graph, You can zoom in or out of this view while moving the mouse wheel, and grab it with your mouse pointer, drag it over, then release the first button.
		</p>
	</div>
    
	<h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">Sample view</a></h3>
	<div>
		<p style="padding:10px;">
		The Sample view is modified from another metagenome visualization tool, <a href="http://sourceforge.net/p/krona/home/krona/" target="_blank">Krona</a>. Yeah, we modified it, you can click the classification name below to search it on the Taxonomy database of NCBI. </p>
	</div>
	<h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">Phylogenetic view</a></h3>
	<div>
		<p style="padding:10px;">
		In this view, you can get an unweighted phylogenetic tree. Firstly you should click the area below the boundary, and then set parameters on the pop menu and click <em>Draw tree</em>.
        </p>
	</div>
	<h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">Phylogenetic tree file</a></h3>
	<div>
		<p style="padding:10px;">
		This is an unweighted phylogenetic tree in <a href="http://en.wikipedia.org/wiki/Newick_format" target="_blank">Newick</a> format. You can right click the file name and select <em>save as</em> to save it.</p>		
	</div>
    <h3 style="line-height:24px; height:30px; padding-left:3px;"><a href="#">Taxa view</a></h3>
	<div>
		<p style="padding:10px;">
		The other part of the result is a tree menu, you can expand or collapse it. Click the name of one node, you can see the detail information of this node of all samples in pie char or column chart. You can also access this view from the main chart or the Global View.
        </p>		
	</div>
</div>

<p>&nbsp;</p>
<h2><a href="/file/doc/" target="_blank">API DOC</a></h2>
<h2>Licenses: MetaSee was released under <a href="https://github.com/jquery/jquery/blob/master/MIT-LICENSE.txt" target="_blank">MIT License</a>.</h2>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>


</div><!-- /download-builder -->
<jsp:include page="/template/footer.txt" />
</body>
</html>