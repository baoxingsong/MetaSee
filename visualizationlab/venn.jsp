<%@ page contentType="text/html;charset=GB2312"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
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
  <title>MetaSee -- Vennchart maker</title>




<script>
     var showDemovenn = function () {
        new CanvasXpress("canvas1", {
          "venn": {
            "data": {
<%
	String count=request.getParameter("count");
	if(count==null){
		
	}
	else{
		Integer inicount=Integer.parseInt(count);
		if(inicount==2){
			String nameA2=request.getParameter("nameA2");
			byte b[]=nameA2.getBytes("ISO-8859-1");
			nameA2=new String(b);
			String nameB2=request.getParameter("nameB2");
			byte c[]=nameB2.getBytes("ISO-8859-1");
			nameB2=new String(c);
			String count2A=request.getParameter("count2A");
			String count2B=request.getParameter("count2B");
			String count2AB=request.getParameter("count2AB");
			out.print("\"A\": "+count2A+",\n");
			out.print("\"B\": "+count2B+",\n");
			out.print("\"AB\": "+count2AB+"\n");
			out.print("},\n\"legend\": {\n");
			out.print("\"A\": \""+nameA2 +"\",\n");
			out.print("\"B\": \""+nameB2 +"\"\n");
			
		}
		else if(inicount==3){
			String nameA3=request.getParameter("nameA3");
			byte b[]=nameA3.getBytes("ISO-8859-1");
			nameA3=new String(b);
			String nameB3=request.getParameter("nameB3");
			byte c[]=nameB3.getBytes("ISO-8859-1");
			nameB3=new String(c);
			String nameC3=request.getParameter("nameC3");
			byte d[]=nameC3.getBytes("ISO-8859-1");
			nameC3=new String(d);
			String count3A=request.getParameter("count3A");
			String count3B=request.getParameter("count3B");
			String count3C=request.getParameter("count3C");
			String count3AB=request.getParameter("count3AB");
			String count3AC=request.getParameter("count3AC");
			String count3BC=request.getParameter("count3BC");
			String count3ABC=request.getParameter("count3ABC");
			out.print("\"A\": "+count3A+",\n");
			out.print("\"B\": "+count3B+",\n");
			out.print("\"C\": "+count3C+",\n");
			out.print("\"AB\": "+count3AB+",\n");
			out.print("\"AC\": "+count3AC+",\n");
			out.print("\"BC\": "+count3BC+",\n");
			out.print("\"ABC\": "+count3ABC+"\n");
			out.print("},\n\"legend\": {\n");
			out.print("\"A\": \""+nameA3 +"\",\n");
			out.print("\"B\": \""+nameB3 +"\",\n");
			out.print("\"C\": \""+nameC3 +"\"\n");
		}
		else if(inicount==4){
			String nameA4=request.getParameter("nameA4");
			byte b[]=nameA4.getBytes("ISO-8859-1");
			nameA4=new String(b);
			String nameB4=request.getParameter("nameB4");
			byte c[]=nameB4.getBytes("ISO-8859-1");
			nameB4=new String(c);
			String nameC4=request.getParameter("nameC4");
			byte d[]=nameC4.getBytes("ISO-8859-1");
			nameC4=new String(d);
			String nameD4=request.getParameter("nameD4");
			byte e[]=nameD4.getBytes("ISO-8859-1");
			nameD4=new String(e);
			String count4A=request.getParameter("count4A");
			String count4B=request.getParameter("count4B");
			String count4C=request.getParameter("count4C");
			String count4D=request.getParameter("count4D");
			String count4AB=request.getParameter("count4AB");
			String count4AC=request.getParameter("count4AC");
			String count4AD=request.getParameter("count4AD");
			String count4BC=request.getParameter("count4BC");
			String count4BD=request.getParameter("count4BD");
			String count4CD=request.getParameter("count4CD");
			String count4ABC=request.getParameter("count4ABC");
			String count4ABD=request.getParameter("count4ABD");
			String count4ACD=request.getParameter("count4ACD");
			String count4BCD=request.getParameter("count4BCD");
			String count4ABCD=request.getParameter("count4ABCD");
			out.print("\"A\": "+count4A+",\n");
			out.print("\"B\": "+count4B+",\n");
			out.print("\"C\": "+count4C+",\n");
			out.print("\"C\": "+count4D+",\n");
			out.print("\"AB\": "+count4AB+",\n");
			out.print("\"AC\": "+count4AC+",\n");
			out.print("\"AD\": "+count4AD+",\n");
			out.print("\"BC\": "+count4BC+",\n");
			out.print("\"BD\": "+count4BD+",\n");
			out.print("\"CD\": "+count4CD+",\n");
			out.print("\"ABC\": "+count4ABC+",\n");
			out.print("\"ABD\": "+count4ABD+",\n");
			out.print("\"ACD\": "+count4ACD+",\n");
			out.print("\"BCD\": "+count4BCD+",\n");
			out.print("\"ABCD\": "+count4ABCD+"\n");
			out.print("},\n\"legend\": {\n");
			out.print("\"A\": \""+nameA4 +"\",\n");
			out.print("\"B\": \""+nameB4 +"\",\n");
			out.print("\"C\": \""+nameC4 +"\",\n");
			out.print("\"D\": \""+nameD4 +"\"\n");
		}		
	}
	
	
%>
            }
          }
        }, {
          "graphType": "Venn",
          "background": "rgb(245,245,245)",
          "vennGroups": <%=count%>
        })
	 }
	
	var jumpTo = function(url) {
        parent.location=url
      }
	
	var showData = function(cb, t) {
		var cx = CanvasXpress.references
		  for (var i = 0; i < CanvasXpress.references.length; i++) {
			if (CanvasXpress.references[i].target == t) {
			  var c = CanvasXpress.references[i];
			  if(cb.checked) {
				c.showDataTable = true;
			  } else {
				c.showDataTable = false;
			  }
			  c.draw()
			}
		  }
	}
	
	function changeCount()
  	{
  		var count = document.getElementById("count").value;
		
  		if(count == 2)
  		{
  			document.getElementById("sample2name").style.display = 'block';
			document.getElementById("sample2count").style.display = 'block';
			document.getElementById("sample3name").style.display = 'none';
			document.getElementById("sample3count").style.display = 'none';
			document.getElementById("sample4name").style.display = 'none';
			document.getElementById("sample4count").style.display = 'none';
  		}else if(count == 3){
			document.getElementById("sample2name").style.display = 'none';
			document.getElementById("sample2count").style.display = 'none';
			document.getElementById("sample3name").style.display = 'block';
			document.getElementById("sample3count").style.display = 'block';
			document.getElementById("sample4name").style.display = 'none';
			document.getElementById("sample4count").style.display = 'none';
		}
		else if(count == 4){
			document.getElementById("sample2name").style.display = 'none';
			document.getElementById("sample2count").style.display = 'none';
			document.getElementById("sample3name").style.display = 'none';
			document.getElementById("sample3count").style.display = 'none';
			document.getElementById("sample4name").style.display = 'block';
			document.getElementById("sample4count").style.display = 'block';
		}
	}
	
    </script>

</head>
<body onload="showDemovenn();">
<jsp:include page="/template/head_navigation.txt" />

<!--template begain-->
	<div id="content-wrapper">
		
<!-- download-builder -->
<div id="download-builder" style="padding:0">
<!--template end-->
<br/>
<h1>&nbsp;&nbsp;&nbsp;Vennchart maker</h1>
<p>&nbsp;</p>
<hr>

<p>&nbsp;</p>
<div style="margin-left:20px;"> 

       
<form  action="" method="get" enctype="multipart/form-data" name="uploard_file" target="_self">
Smple number: &nbsp;

<select name="count" id="count" onChange="changeCount()" >
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select>
<p>&nbsp;</p>
<!--sample name begain-->
<div id="sample2name" style="display: block; ">A:&nbsp;<input name="nameA2" type="text">&nbsp;&nbsp;B:&nbsp;<input name="nameB2" type="text"></div>
<div id="sample3name" style="display: none; ">A:&nbsp;<input name="nameA3" type="text">&nbsp;&nbsp;B:&nbsp;<input name="nameB3" type="text">&nbsp;&nbsp;A:&nbsp;<input name="nameC3" type="text"></div>
<div id="sample4name" style="display: none; ">A:&nbsp;<input name="nameA4" type="text">&nbsp;&nbsp;C:&nbsp;<input name="nameB4" type="text">&nbsp;&nbsp;A:&nbsp;<input name="nameC4" type="text">&nbsp;&nbsp;A:&nbsp;<input name="nameD4" type="text"></div>
<!--sample name end-->
<p>&nbsp;</p>
<!--sample count begain-->
<div id="sample2count">
<table width="200" cellspacing="4" cellpadding="2" style="display: block;">
  <tr>
    <td>&nbsp;</td>
    <td>Count</td>
  </tr>
  <tr>
    <td>A：</td>
    <td><input name="count2A" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
  <tr>
    <td>B：</td>
    <td><input name="count2B" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
  <tr>
    <td>AB：</td>
    <td><input name="count2AB" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
</table>
</div>

<div id="sample3count" style="display: none;">
<table width="200" border="0" cellspacing="4" cellpadding="2">
  <tr>
    <td>&nbsp;</td>
    <td>Count</td>
  </tr>
  <tr>
    <td>A：</td>
    <td><input name="count3A" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
  <tr>
    <td>B：</td>
    <td><input name="count3B" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
   <tr>
    <td>C：</td>
    <td><input name="count3C" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
  <tr>
    <td>AB：</td>
    <td><input name="count3AB" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
  
   <tr>
    <td>AC：</td>
    <td><input name="count3AC" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
      <td>BC：</td>
    <td><input name="count3BC" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
       <td>ABC：</td>
    <td><input name="count3ABC" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
</table>
</div>

<div id="sample4count"  style="display: none;">
<table width="200" cellspacing="4" cellpadding="2">
  <tr>
    <td>&nbsp;</td>
    <td>Count</td>
  </tr>
  <tr>
    <td>A：</td>
    <td><input name="count4A" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
  <tr>
    <td>B：</td>
    <td><input name="count4B" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
   <tr>
    <td>C：</td>
    <td><input name="count4C" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
     <tr>
    <td>D：</td>
    <td><input name="count4D" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
  <tr>
    <td>AB：</td>
    <td><input name="count4AB" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
   <tr>
    <td>AC：</td>
    <td><input name="count4AC" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
   <tr>
    <td>AD：</td>
    <td><input name="count4AD" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
      <tr>
      <td>BC：</td>
    <td><input name="count4BC" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
      <tr>
        <td>BD：</td>
    <td><input name="count4BD" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
  <tr>
        <td>CD：</td>
    <td><input name="count4CD" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
    <tr>
        <td>ABC：</td>
    <td><input name="count4ABC" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
    <tr>
        <td>ABD：</td>
    <td><input name="count4ABD" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
    <tr>
        <td>ACD：</td>
    <td><input name="count4ACD" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
    <tr>
        <td>BCD：</td>
    <td><input name="count4BCD" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
    <tr>
        <td>ABCD：</td>
    <td><input name="count4ABCD" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}"></td>
  </tr>
</table>
</div>
<p>&nbsp;</p>
<button type="submit" id="download_zip" >Make a vennchart</button>&nbsp;&nbsp;&nbsp;
<button type="reset" id="download_zip">Reset</button>

<!--sample count end-->
           </form> 
           <p>&nbsp;</p>
<%
	if(count !=null){
	%>
<form>               
<input alt="Show data in HTML table" title="Show data in HTML table" type="checkbox" value="ch3-canvas1" onClick="showData(this, 'canvas1')"/>Show Data
</form>
<p>&nbsp;</p>
<p>Press <em>Ctrl+P</em>, and you can open the graph in a new window, then right click - save as... to save it.</p>
<p>&nbsp;</p>
<canvas id="canvas1" width="613" height="500"></canvas>
<br/>
<%}%>

</div>



<p>&nbsp;</p>

</div><!-- /download-builder -->		
<div style="clear:both"></div>
<jsp:include page="/template/footer.txt" />
	
</body>
</html>