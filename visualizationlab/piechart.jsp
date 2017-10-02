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

 <script type="text/javascript" src="skin/js/piechart_form.js"></script>
  <title>MetaSee -- Piechart maker</title>
 
 <link rel="stylesheet" href="skin/css/piechart.css" type="text/css">
  <script src="skin/js/amcharts.js" type="text/javascript"></script>
  <script src="skin/js/raphael.js" type="text/javascript"></script>
<%
	String sampleNumberString=request.getParameter("samplenumber");
	if(sampleNumberString!=null){
%>
<script type="text/javascript">
            var chart;
            var legend;

            var chartData = [
<%
		Integer	sampleNumber=Integer.parseInt(sampleNumberString);
		for(int i=0;i<sampleNumber;i++){
			String sampleName=request.getParameter("name" + i);
			if(sampleName == null || sampleName.equals("")){
				sampleName="Unname";
			}
			String sampleContString=request.getParameter("count" + i);
			if(sampleContString == null || sampleContString.equals("")){
				sampleContString="0";
			}
			Integer sampleCont=Integer.parseInt(sampleContString);
			byte b[]=sampleName.getBytes("ISO-8859-1");
			sampleName=new String(b);
			if(i == (sampleNumber-1) ){
				out.print("{\n sampleName: \""+sampleName+"\",value: "+sampleCont+"}");	
			}
			else{
				out.print("{\n sampleName: \""+sampleName+"\",value: "+sampleCont+"},");
			}
		}
	
%>
  ];
           AmCharts.ready(function () {
                // PIE CHART
                chart = new AmCharts.AmPieChart();
                chart.dataProvider = chartData;
                chart.titleField = "sampleName";
                chart.valueField = "value";
                chart.outlineColor = "#FFFFFF";
                chart.outlineAlpha = 0.8;
                chart.outlineThickness = 2;
				
				// LEGEND
                legend = new AmCharts.AmLegend();
                legend.align = "center";
                legend.markerType = "circle";
                chart.addLegend(legend);

                // WRITE
                chart.write("chartdiv");
				
				
            });
			
			// changes label position (labelRadius)
            function setLabelPosition() {
                if (document.getElementById("rb1").checked) {
                    chart.labelRadius = 30;
                    chart.labelText = "[[title]]: [[value]]";
                } else {
                    chart.labelRadius = -30;
                    chart.labelText = "[[percents]]%";
                }
                chart.validateNow();
            }


            // makes chart 2D/3D                   
            function set3D() {
                if (document.getElementById("rb3").checked) {
                    chart.depth3D = 30;
                    chart.angle = 30;
                } else {
                    chart.depth3D = 0;
                    chart.angle = 0;
                }
                chart.validateNow();
            }
			
			
			//makes chart Donut/Simple 
			
			function setDonut() {
                if (document.getElementById("rb7").checked) {
                    chart.innerRadius = "30%";
                } else {
                   chart.innerRadius = "0";
                }
                chart.validateNow();
            }
            // changes switch of the legend (x or v)
            function setSwitch() {
                if (document.getElementById("rb5").checked) {
                    legend.switchType = "x";
                } else {
                    legend.switchType = "v";
                }
                legend.validateNow();
            }
			
			
        </script>
        
  <%}%>
</head>
<body onload=showDemo();>
<jsp:include page="/template/head_navigation.txt" />

<!--template begain-->
	<div id="content-wrapper">
		
<!-- download-builder -->
<div id="download-builder" style="padding:0">
<!--template end-->
<br/>
<h1>&nbsp;&nbsp;&nbsp;MetaSee -- Piechart maker</h1>
<p>&nbsp;</p>
<hr>

<div style="margin-left:20px;">

<% if(sampleNumberString!=null){ %>
<div id="chartdiv" style="width: 100%; height: 600px;"></div>
<table align="center" cellspacing="20">
            <tr>
                <td>
                    <input type="radio" checked="true" name="group" id="rb1" onClick="setLabelPosition()">labels outside
                    <input type="radio" name="group" id="rb2" onClick="setLabelPosition()">labels inside</td>
                <td>
                    <input type="radio" name="group2" id="rb3" onClick="set3D()">3D
                    <input type="radio" checked="true" name="group2" id="rb4" onClick="set3D()">2D</td>
					<td>
					<input type="radio" name="group3" id="rb7" onClick="setDonut()">Donut Pie
                    <input type="radio" checked="true" name="group3" id="rb8" onClick="setDonut()">Simple Pie</td>
					</td>
                <td>Legend switch type:
                    <input type="radio" checked="true" name="group4" id="rb5"
                    onclick="setSwitch()">x
                    <input type="radio" name="group4" id="rb6" onClick="setSwitch()">v</td>
            </tr>
        </table>
<%}%>
<br><br>

<form id="form" action="" method="post" >

<div>
  <table border="0" cellpadding="2" cellspacing="1" id="SignFrame">
              <tbody><tr id="trHeader">
                <td width="27" bgcolor="#AAAAAA">SN</td>
                <td width="64" bgcolor="#AAAAAA">Sample Name</td>
				<td width="64" bgcolor="#AAAAAA">Sample Count</td>
                <td width="57" align="center" bgcolor="#AAAAAA">&nbsp;</td>
              </tr>
        <tr id="SignItem1"><td>1</td><td>
		<input name="name0" type="text" value="" size="50" />
		</td><td>
		<input name="count0" type="text" onBlur="if(this.value!=''&&/^[0-9.-]+$/.test(this.value)==false){alert('Please Input a  number!');this.select();}">
		</td><td>
		<div align="center" style="width:40px"><a href="javascript:;" onClick="DeleteSignRow(&#39;SignItem1&#39;)">Delete</a></div></td></tr></tbody></table>
   </div>
   <div>
        <input type="button" name="Submit" value="Add another sample" onClick="AddSignRow()">
     <input type="button" name="Submit2" value="Clear" onClick="ClearAllSign()">
     <input name="samplenumber" type="hidden" id="txtTRLastIndex" value="1">
   </div>
<br>

<button type="submit" id="download_zip" >Make a piechart</button>
</form>
</div>

<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>