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
  <title>MetaSee -- Barchart maker</title>
  <link rel="stylesheet" href="skin/css/piechart.css" type="text/css">
  <script src="skin/js/amcharts.js" type="text/javascript"></script>
  <script src="skin/js/raphael.js" type="text/javascript"></script>
  <%
	String sampleNumberString=request.getParameter("samplenumber");
	if(sampleNumberString!=null){
%>
<script type="text/javascript">
            var chart;
            

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
                // SERIAL CHART
                chart = new AmCharts.AmSerialChart();
                chart.dataProvider = chartData;
                chart.categoryField = "sampleName";
                // this single line makes the chart a bar chart, 
                // try to set it to false - your bars will turn to columns                
                chart.rotate = true;
                // the following two lines makes chart 3D
                chart.depth3D = 20;
                chart.angle = 30;

                // AXES
                // Category
                var categoryAxis = chart.categoryAxis;
                categoryAxis.gridPosition = "start";
                categoryAxis.axisColor = "#DADADA";
				
                categoryAxis.fillAlpha = 1;
                categoryAxis.gridAlpha = 0;
                categoryAxis.fillColor = "#FAFAFA";

                // value
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.axisColor = "#DADADA";
                //valueAxis.title = "Income in millions, USD";
                //valueAxis.gridAlpha = 0.1;
				valueAxis.dashLength = 5;
                chart.addValueAxis(valueAxis);

                // GRAPH
                var graph = new AmCharts.AmGraph();
                graph.title = "Income";
                graph.valueField = "value";
                graph.type = "column";
                graph.balloonText = "[[category]]:[[value]]";
                graph.lineAlpha = 0;
                graph.fillAlphas = 1;
				graph.fillColors = "#bf1c25";
				//graph.fillColors = ["#ffe78e", "#bf1c25"];
				chart.addGraph(graph);
				
				
                // WRITE
                chart.write("chartdiv");
            });
			
			// makes chart 2D/3D                   
            function set3D() {
                if (document.getElementById("rb1").checked) {
                    chart.depth3D = 20;
					chart.angle = 30;
                } else {
                    chart.depth3D = 0;
                    chart.angle = 0;
                }
                chart.validateNow();
            }
			
			// makes chart Bar/Column                   
            function setBarColumn() {
                if (document.getElementById("rb3").checked) {
                     chart.rotate = true;
                } else {
                    chart.rotate = false;
                }
                chart.validateNow();
            }
			
			// makes chart LineMix                 
            function setTitleRotation() {
                if (document.getElementById("rb5").checked) {
                    chart.categoryAxis.labelRotation = 45;
                } else {
                    chart.categoryAxis.labelRotation = 0;
                }
                chart.validateNow();
            }
			// makes chart GradientFills                
            function setGradientFills() {
			
                if (document.getElementById("rb7").checked) {
				    chart.graph.fillColors = "#bf1c25";
				} else {
				    chart.graph.fillColors = ["#ffe78e", "#bf1c25"];
					
                }
				
                chart.validateNow();
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
<h1>&nbsp;&nbsp;&nbsp;MetaSee -- Barchart maker</h1>
<p>&nbsp;</p>
<hr>
<% if(sampleNumberString!=null){ %>
<div id="chartdiv" style="width: 95%; height: 600px; margin-left:5px;"></div>
<br/>
<table align="center" cellspacing="20">
            <tr>
                <td>
                    <input type="radio" checked="true" name="group" id="rb1" onClick="set3D()">3D
                    <input type="radio" name="group" id="rb2" onClick="set3D()">2D</td>
                <td>
                    <input type="radio" checked="true" name="group2" id="rb3" onClick="setBarColumn()">BarChart
                    <input type="radio" name="group2" id="rb4" onClick="setBarColumn()">ColumnChart</td>
					<td>
					SetTitleRotation? (only for ColumnChart)<input type="radio" name="group3" id="rb5" onClick="setTitleRotation()">Y
                    <input type="radio" checked="true" name="group3" id="rb6" onClick="setTitleRotation()">N</td>
					</td>              
            </tr>
        </table>
<%}%>
<br><br>



<form id="form" action="" method="post" style="margin-left:20px;" >

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
   <div><br/>
        <input type="button" name="Submit" value="Add another sample" onClick="AddSignRow()">
     <input type="button" name="Submit2" value="Clear" onClick="ClearAllSign()">
     <input name="samplenumber" type="hidden" id="txtTRLastIndex" value="1">
   </div>
<br>

<button type="submit" id="download_zip" >Make a barchart</button>
</form>


<p>&nbsp;</p>

</div><!-- /download-builder -->		

<jsp:include page="/template/footer.txt" />
	
</body>
</html>