<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
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
<title>MetaSee -- Phylogenetic tree Maker</title>

<script type="text/javascript" src="skin/js/raphael-min.js" ></script> 
	<script type="text/javascript" src="skin/js/yui.js"></script> 
	<script type="text/javascript" src="skin/js/jquery-1.4.2.min.js" ></script> 
	<script type="text/javascript" src="skin/js/jquery.simplemodal.1.4.1.min.js" ></script> 
	<script type="text/javascript" src="skin/js/jsphylosvg-min.js?1.29"></script>
	<style type="text/css">
		#simplemodal-overlay {background-color:#000;}
		#simplemodal-container {background-color:#EEE; border:2px solid #444; padding:12px;}	
		#simplemodal-container a.modalCloseImg { background:url(skin/images/x.png) no-repeat; width:25px; height:29px; display:inline;
			z-index:3200; position:absolute; top:-15px;	right:-18px; cursor:pointer; }		
		#download-option { font-size: 200%; }
	</style>
<%
	String treedata=request.getParameter("treedata");
	String type=request.getParameter("type");
	if(treedata==null){
		
	}else{
%>

	<script type="text/javascript">
window.onload = function(){
var dataObject = { newick: '<%=treedata%>' };
phylocanvas = new Smits.PhyloCanvas(
dataObject,
'svgCanvas',
800, 800

<%
	if(type.equals("simple"))
	{
	}
	else if(type.equals("circle"))
	{
%>
,
'circular'
<%}%>
);
	/* Download Option */
			var svgSource = phylocanvas.getSvgSource();
			if(svgSource){
				$('#download-link')[0].href = "data:image/svg+xml," + svgSource;
				$('#download-button').show();
			}
   };
    </script>
<%}%>


</head>
<body>
<jsp:include page="/template/head_navigation.txt" />

<!--template begain-->
	<div id="content-wrapper">
		
<!-- download-builder -->
<div id="download-builder" style="padding:0">
<!--template end-->


<br/>
<h1>&nbsp;&nbsp;&nbsp;Phylogenetic tree Maker -- <a href="http://www.jsphylosvg.com/" target="_blank">jsPhyloSVG</a></h1>


<hr>

<div style="margin-left:20px">
<div id="download-option" style="display: none;">
		Save the tree (SVG): <br/>
		<a id="download-link" href="#">Right-click and select "Save as.."</a>
	</div>
	<div id="download-button" style="display: none;">
		<button type="submit" id="download_zip" style="width:200px;" onClick="$('#download-option').modal()">Download as SVG image</button>
	</div>
    <div id="svgCanvas" style="margin:40px 0 40px 20px"> </div>
 
  
<% 
	if( type == null ){
		out.print("<b>You can paste a phylogenetic tree in newick format, and display it with this tool. See below for example</b>"); 	
	}else{
		out.print("<form  action=\"\" method=\"post\" target=\"_self\" name=\"button\"><input name=\"treedata\" value=\""+treedata+"\" type=\"hidden\" />");
		if(type.equals("simple")){
			out.print("<input name=\"type\" value=\"circle\" type=\"hidden\" />");	
			out.print("<button type=\"submit\" id=\"download_zip\" >Go to circle</button>");
		}else if(type.equals("circle")){
			out.print("<input name=\"type\" value=\"simple\" type=\"hidden\" />");
			out.print("<button type=\"submit\" id=\"download_zip\" >Go to simple</button>");	
		}
		out.print("</form>");
	}
%>
<br /><br /><br />
<form  action="" method="post"  target="_self" name="form">
<textarea name="treedata" cols="120" rows="10"></textarea>
<br />
<input name="type" value="circle" type="hidden" />
<p>&nbsp;</p>
<p>
(((Espresso:2,(Milk Foam:2,Espresso Macchiato:5,((Steamed Milk:2,Cappuccino:2,(Whipped Cream:1,Chocolate Syrup:1,Cafe Mocha:3):5):5,Flat White:2):5):5):1,Coffee arabica:0.1,(Columbian:1.5,((Medium Roast:1,Viennese Roast:3,American Roast:5,Instant Coffee:9):2,Heavy Roast:0.1,French Roast:0.2,European Roast:1):5,Brazilian:0.1):1):1,Americano:10,Water:1);</p>
<p>&nbsp;</p>
<button type="submit" id="download_zip" style="width:200px;">Make a Phylogenetic tree</button>&nbsp;&nbsp;<button type="reset" id="download_zip" >Reset</button>
 </form> 
</div>



<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>