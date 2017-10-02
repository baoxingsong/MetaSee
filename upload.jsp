<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.UUID" %>
<% String randomFilename=UUID.randomUUID().toString(); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	
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

<title>MetaSee -- Upload Your File(s)</title>

<link href="uploadify/uploadify.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="uploadify/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="uploadify/swfobject.js"></script>
<script type="text/javascript" src="uploadify/jquery.uploadify.v2.1.4.min.js"></script>
<script type="text/javascript">
var fileNameHash=new Hashtable();
  var uploadhiddenfile="";
$(document).ready(function() {
  
  $('#file_upload').uploadify({
    'uploader'  : 'uploadify/uploadify.swf',
    'script'    : '/servlet/Upload?folder=temp/<%=randomFilename%>',
    'cancelImg' : 'uploadify/cancel.png',
    'folder'    : 'temp/fileConblU/data',
    'auto'      : true,
    'simUploadLimit'	: 3,
    'multi'	:true,
    //'removeCompleted'      : false,
    'onComplete': function(event, queueID, fileObj, response, data) {
    fileAddFile(queueID,fileObj.name);
	updateUploadHiddenFile();
	$('#uploadhidden').val(uploadhiddenfile);setsubmitabled(uploadhiddenfile);
	},
	'onCancel': function(event, queueID, fileObj, data) {
	  cancleFile(queueID);
	  updateUploadHiddenFile();
	  $('#uploadhidden').val(uploadhiddenfile);
    }
  });
});

function cancleFile(queueID){
	if(queueID){
		if(fileNameHash.contains(queueID)){
			fileNameHash.remove(queueID);
		}
	}
}

function fileAddFile(queueID,filename){
	if(filename && queueID){
		if(fileNameHash.contains(filename)){
		alert(filename);
			return;
		}else{
			fileNameHash.add(queueID,filename);
		}
	}
}

function updateUploadHiddenFile(){
	uploadhiddenfile="";
	for(var k in fileNameHash._hash){
		uploadhiddenfile+=fileNameHash.items(k)+"__SeeMetaSee__";
	}
}

function setsubmitabled() {
	var b = new Object();
	b = document.getElementById("submit");
	b.disabled = false;
}

function Hashtable()
{
    this._hash = new Object();  
	
	this.add = function(key,value){
                if(typeof(key)!="undefined"){
                    if(this.contains(key)==false){
                          this._hash[key]=typeof(value)=="undefined"?null:value;
                          return true;
                    } else {
                           return false;
                    }
                } else {
                          return false;
                }
            }
    
    this.remove = function(key){delete this._hash[key];}
    
    this.count = function(){var i=0;for(var k in this._hash){i++;} return i;}
   
    this.items = function(key){return this._hash[key];}

    this.contains  = function(key){ return typeof(this._hash[key])!= "undefined";}
   
    this.clear = function(){for(var k in this._hash){delete this._hash[k];}}
}

//descriptions for file format options begain
function Menu(){
	if(document.getElementById("fileformat").value == 'metasee'){
		document.getElementById("metasee").style.display='block';
		document.getElementById("parallelmeta").style.display='none';
		document.getElementById("plain").style.display='none';
		document.getElementById("krona").style.display='none';
		document.getElementById("megan").style.display='none';
		document.getElementById("mgrast").style.display='none';
	}else if(document.getElementById("fileformat").value == 'parallelmeta'){
		document.getElementById("metasee").style.display='none';
		document.getElementById("parallelmeta").style.display='block';
		document.getElementById("plain").style.display='none';
		document.getElementById("krona").style.display='none';
		document.getElementById("megan").style.display='none';
		document.getElementById("mgrast").style.display='none';
	}else if(document.getElementById("fileformat").value == 'plain'){
		document.getElementById("metasee").style.display='none';
		document.getElementById("parallelmeta").style.display='none';
		document.getElementById("plain").style.display='block';
		document.getElementById("krona").style.display='none';
		document.getElementById("megan").style.display='none';
		document.getElementById("mgrast").style.display='none';
	}else if(document.getElementById("fileformat").value == 'krona'){
		document.getElementById("metasee").style.display='none';
		document.getElementById("parallelmeta").style.display='none';
		document.getElementById("plain").style.display='none';
		document.getElementById("krona").style.display='block';
		document.getElementById("megan").style.display='none';
		document.getElementById("mgrast").style.display='none';
	}else if(document.getElementById("fileformat").value == 'megan'){
		document.getElementById("metasee").style.display='none';
		document.getElementById("parallelmeta").style.display='none';
		document.getElementById("plain").style.display='none';
		document.getElementById("krona").style.display='none';
		document.getElementById("megan").style.display='block';
		document.getElementById("mgrast").style.display='none';
	}else if(document.getElementById("fileformat").value == 'mgrast'){
		document.getElementById("metasee").style.display='none';
		document.getElementById("parallelmeta").style.display='none';
		document.getElementById("plain").style.display='none';
		document.getElementById("krona").style.display='none';
		document.getElementById("megan").style.display='none';
		document.getElementById("mgrast").style.display='block';
	}
}
//descriptions for file format options end
</script>
</head>
<body id="download" onload="showDemo();">
<jsp:include page="/template/head_navigation.txt" />


	<div id="content-wrapper">

<!-- download-builder -->
<div id="download-builder" >




<h1>MetaSee -- Upload Your File(s)</h1>
<p>&nbsp;</p>
<p class="wholewidth">MetaSee supports both single file and multiple files as input, so you can upload several files one time, but please insure these files are in the same acceptable format but with different file names.</p>

<form action="result.jsp" method="get" enctype="multipart/form-data" name="uploard_file" target="_self">
<p>&nbsp;</p>
<p>
<input id="file_upload" name="file_upload" type="file"/> &nbsp; &nbsp; &nbsp; &nbsp;<a href="javascript:$('#file_upload').uploadifyUpload();">Upload Files</a>
</p>
<p>&nbsp;</p>
<p style="color:#FF0000; width:61.8%;">Please select the correct file format for your upload, combined file formats are not supported here. And compressed files are not supported</p>
<p>&nbsp;</p>
<p>

<select name="fileformat" onChange="Menu();" id="fileformat">
<option value="metasee" SELECTED>metasee</option>
<option value="parallelmeta">parallelmeta</option>
<option value="plain">plain text file</option>
<option value="krona">Krona html file</option>
<option value="megan">megan</option>
<option value="mgrast">Mg-rast</option>
</select>
</p>
<div style="display:block" id="metasee"><p>&nbsp;</p><p style="width:61.8%;">This XML file format is the default file format of MetaSee, and there are two kinds, the <a href="exampledata/metasee_multiple.xml">multiple samples</a> and the <a href="exampledata/metasee_single.zip">single sample</a>.<br><br>
<b>Tips about how to make your own xml file for metasee</b><br>
Here is a DTD(Document Type Definitio) file, you are encouraged to import it into your xml file, just like:<br>
<span style="background:#ddd">&lt;!DOCTYPE metasee SYSTEM &quot;http://www.metasee.org/xmldtd/metasee1.1.dtd&quot;&gt;</span><br>
And a script was provided <a href="xmldtd/test.zip" target="_blank">here</a> to help you to check your own XML file. <a href="xmldtd/test.zip" target="_blank">DOWNLOAD TEST FILE</a><br> And, please insure there are no more <em>val</em> in <em>count</em> than <em>dataset</em> in <em>datasets</em>, which is beyond the ability of this checking script.
</p></div>
<div style="display:none" id="parallelmeta"><p>&nbsp;</p><p style="width:61.8%;">The single sample result of <a href="http://www.computationalbioenergy.org/parallel-meta.html" target="_blank">Parallel-META</a> can be accepted here. Multiple files will be accepted. See <a href="exampledata/parallelmeta.zip">the sample</a>.</p></div>
<div style="display:none" id="plain"><p>&nbsp;</p><p style="width:61.8%;">Each line should be number followed by a list of wedges(starting from the highest level) separated by tabs. If a hierarchy has more than one listing, the quantities will be added.
<li><a href="/exampledata/plainFile.zip">Example file</a></li>
</p></div>
<div style="display:none" id="krona"><p>&nbsp;</p><p style="width:61.8%;">You can also upload an html file of <a href="http://sourceforge.net/p/krona/home/krona/" target="_blank">Krona 2.0</a> to MetaSee. MetaSee will display it in another fashion. See <a href="/exampledata/krona.zip">the example file</a>.</p></div>
<div style="display:none" id="megan"><p>&nbsp;</p><p style="width:61.8%;">
<ul>
<li>MEGAN taxonomic classifications can be accepted.</li>
<li>To export classifications:</li>
<ul>
<li>From the menu, choose File -> Export -> Assignments to CSV.</li>
<li>In "Choose format", choose "taxon-path, count(s)".</li>
<li>In "Choose separator", choose "tab"</li>
<li><a href="/exampledata/megan.txt">Example file</a></li>
</ul></ul>
</p></div>
<div style="display:none" id="mgrast"><p>&nbsp;</p><p style="width:61.8%;">
Taxonomic or functional classifications can be imported from the MG-RAST metagenomics server.<br>
Downloading data from <a href="http://metagenomics.anl.gov/metagenomics.cgi" target="_blank">MG-RAST</a>:<br>
From the home page, click Browse Metagenomes.<br>
Select a project, and then select a metagenome from that project (e.g. 4441138.3).<br>
Click on the small bar chart icon to analyze the metagenome.<br>
Under Analysis Views, choose Hierarchical Classification (organism or functional) or Lowest Common Ancestor.<br>
Select "table" under Data Visualization and click the "generate" button.<br>
Adjust the table options as desired and click "download data matching current filter".<br>
<li><a href="/exampledata/mgrast.tsv">Example file</a></li>
</p></div>
<p>&nbsp;</p>


<button type="submit" id="download_zip" >Submit</button>&nbsp;&nbsp;&nbsp;
<button type="reset" id="download_zip">Reset</button>
<input name="uploadhidden" id="uploadhidden" class="inputbox" type="hidden" readonly=“true" />
<input name="randomFilename" id="randomFilename" class="inputbox" type="hidden" value="<%=randomFilename%>" />
</form>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Any problem or suggestion, please go to our <a href="http://groups.google.com/group/metasee" target="_blank">discussion group</a>.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
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