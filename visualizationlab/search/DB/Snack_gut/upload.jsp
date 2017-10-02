<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.UUID" %>
<% String randomFilename=UUID.randomUUID().toString(); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	
			<link rel="stylesheet" href="/skin/css/indexflash.css">
			<link rel="stylesheet" href="/skin/css/base2.css" type="text/css" media="all" />
			<link rel="stylesheet" href="/skin/css/jquery-ui.css" type="text/css" media="all" />
            <link rel="stylesheet" href="/skin/css/3dlable.css" type="text/css" media="all" />
			<script src="/skin/js/jquery.min.js" type="text/javascript"></script>
			<script src="/skin/js/jquery-ui.min.js" type="text/javascript"></script>
			<script src="/skin/js/download.js" type="text/javascript"></script>
            <script src="/skin/js/3d.js" type="text/javascript"></script>
		  <!--[if IE]><script type="text/javascript" src="/skin/js/excanvas.js"></script><![endif]-->
            <script type="text/javascript" src="/skin/js/alertRowser.min.js"></script>	

<title>MetaSee -- Upload Your File(s)</title>

<link href="/uploadify/uploadify.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="/uploadify/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/uploadify/swfobject.js"></script>
<script type="text/javascript" src="/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
<script type="text/javascript">
var fileNameHash=new Hashtable();
  var uploadhiddenfile="";
$(document).ready(function() {
  
  $('#file_upload').uploadify({
    'uploader'  : '/uploadify/uploadify.swf',
    'script'    : '/servlet/Upload?folder=temp/<%=randomFilename%>',
    'cancelImg' : '/uploadify/cancel.png',
    'folder'    : '/temp/fileConblU/data',
	'multi'    : 'false',
	'uploadLimit'    : 1,
    'auto'      : true,
    'simUploadLimit'	: 1,
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
		uploadhiddenfile=fileNameHash.items(k);
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

</script>
</head>
<body id="download" onload="showDemo();">
<jsp:include page="/template/head_navigation.txt" />


	<div id="content-wrapper">

<!-- download-builder -->
<div id="download-builder" >




<h1>MetaSee -- Meta-Storms online -- Upload Your File(s)</h1>
<p>&nbsp;</p>
<p class="wholewidth">MetaSee supports both single file and multiple files as input, so you can upload several files one time, but please insure these files are in the same acceptable format but with different file names. Any incorrect upload might cause an error.</p>

<form action="metastornonlieuploadresult.jsp" method="get" enctype="multipart/form-data" name="uploard_file" target="_self">
<p>&nbsp;</p>
<p>
<input id="file_upload" name="file_upload" type="file"/> &nbsp; &nbsp; &nbsp; &nbsp;<a href="javascript:$('#file_upload').uploadifyUpload();">Upload Files</a>
</p>
<p>&nbsp;</p>
<p style="color:#FF0000; width:61.8%;">Please select one result file of <a href="http://www.computationalbioenergy.org/parallel-meta.html" target="_blank">Parallel-META</a>. Please insure the file format you selected is correct, or you will get wrong results without any warning!</p>
<p>&nbsp;</p>
<p>

</p>
<div style="display:none" id="parallelmeta"><p>&nbsp;</p><p style="width:61.8%;">The single sample result of <a href="http://www.computationalbioenergy.org/parallel-meta.html" target="_blank">Parallel-META</a> can be accepted here. Multiple files will be accepted. See <a href="exampledata/parallelmeta.zip">the sample</a>.</p></div>
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