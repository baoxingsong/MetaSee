var map;
var GENEEXPRESSION_SMPL_S_20154 = new google.maps.LatLng(12.283611,12.283611);
var GENEEXPRESSION_SMPL_S_20162 = new google.maps.LatLng(15.034166,15.034166);
var GENEEXPRESSION_SMPL_TA_20173 = new google.maps.LatLng(12.283611,12.283611);
var GENEEXPRESSION_SMPL_TA_20179 = new google.maps.LatLng(15.034166,15.034166);
var GENEEXPRESSION_SMPL_TA_20197 = new google.maps.LatLng(11.752222,11.752222);
var GENEEXPRESSION_SMPL_TA_20199 = new google.maps.LatLng(11.752222,11.752222);
var GENEEXPRESSION_SMPL_TA_34838 = new google.maps.LatLng(12.001111,12.001111);
var GENEEXPRESSION_SMPL_TA_34840 = new google.maps.LatLng(12.001111,12.001111);
var GENEEXPRESSION_SMPL_TA_34871 = new google.maps.LatLng(-15.053611,-15.053611);
var GENEEXPRESSION_SMPL_TA_34877 = new google.maps.LatLng(-15.050834,-15.050834);
var GENEEXPRESSION_SMPL_TA_34921 = new google.maps.LatLng(-30,-30);
var GENEEXPRESSION_SMPL_TA_34960 = new google.maps.LatLng(-30,-30);
var GENEEXPRESSION_SMPL_TA_35115 = new google.maps.LatLng(-14,-14);
var GENEEXPRESSION_SMPL_TA_35117 = new google.maps.LatLng(-14,-14);
var GENEEXPRESSION_SMPL_TA_35194 = new google.maps.LatLng(-15,-15);
var GENEEXPRESSION_SMPL_TA_35197 = new google.maps.LatLng(-15,-15);
var myOptions = {
	zoom: 2,
	center: GENEEXPRESSION_SMPL_S_20154,
	mapTypeId: google.maps.MapTypeId.HYBRID
}
function initialize() {
map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

	GENEEXPRESSION_SMPL_S_20154marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_S_20154,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_S_20154"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_S_20154marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_S_20154");
		if(GENEEXPRESSION_SMPL_S_20154marker.getVisible()){
			GENEEXPRESSION_SMPL_S_20154marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_S_20154Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_S_20154marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_S_20154Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_S_20162marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_S_20162,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_S_20162"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_S_20162marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_S_20162");
		if(GENEEXPRESSION_SMPL_S_20162marker.getVisible()){
			GENEEXPRESSION_SMPL_S_20162marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_S_20162Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_S_20162marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_S_20162Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_20173marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_20173,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_20173"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_20173marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_20173");
		if(GENEEXPRESSION_SMPL_TA_20173marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_20173marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20173Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_20173marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20173Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_20179marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_20179,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_20179"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_20179marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_20179");
		if(GENEEXPRESSION_SMPL_TA_20179marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_20179marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20179Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_20179marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20179Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_20197marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_20197,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_20197"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_20197marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_20197");
		if(GENEEXPRESSION_SMPL_TA_20197marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_20197marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20197Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_20197marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20197Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_20199marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_20199,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_20199"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_20199marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_20199");
		if(GENEEXPRESSION_SMPL_TA_20199marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_20199marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20199Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_20199marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20199Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_34838marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_34838,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_34838"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_34838marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_34838");
		if(GENEEXPRESSION_SMPL_TA_34838marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_34838marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34838Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_34838marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34838Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_34840marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_34840,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_34840"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_34840marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_34840");
		if(GENEEXPRESSION_SMPL_TA_34840marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_34840marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34840Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_34840marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34840Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_34871marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_34871,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_34871"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_34871marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_34871");
		if(GENEEXPRESSION_SMPL_TA_34871marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_34871marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34871Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_34871marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34871Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_34877marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_34877,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_34877"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_34877marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_34877");
		if(GENEEXPRESSION_SMPL_TA_34877marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_34877marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34877Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_34877marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34877Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_34921marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_34921,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_34921"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_34921marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_34921");
		if(GENEEXPRESSION_SMPL_TA_34921marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_34921marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34921Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_34921marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34921Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_34960marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_34960,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_34960"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_34960marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_34960");
		if(GENEEXPRESSION_SMPL_TA_34960marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_34960marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34960Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_34960marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34960Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_35115marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_35115,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_35115"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_35115marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_35115");
		if(GENEEXPRESSION_SMPL_TA_35115marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_35115marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35115Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_35115marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35115Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_35117marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_35117,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_35117"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_35117marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_35117");
		if(GENEEXPRESSION_SMPL_TA_35117marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_35117marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35117Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_35117marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35117Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_35194marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_35194,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_35194"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_35194marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_35194");
		if(GENEEXPRESSION_SMPL_TA_35194marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_35194marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35194Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_35194marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35194Div").style.display = 'none';
		}
	 });
	GENEEXPRESSION_SMPL_TA_35197marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_35197,
		map: map,
		visible:true,
		title:"GENEEXPRESSION_SMPL_TA_35197"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_35197marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_35197");
		if(GENEEXPRESSION_SMPL_TA_35197marker.getVisible()){
			GENEEXPRESSION_SMPL_TA_35197marker.setVisible(false);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35197Div").style.display = 'block';
		}
		else{
			GENEEXPRESSION_SMPL_TA_35197marker.setVisible(true);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35197Div").style.display = 'none';
		}
	 });
}
var GENEEXPRESSION_SMPL_S_20154marker;
function GENEEXPRESSION_SMPL_S_20154gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_S_20154marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_S_20154marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_S_20162marker;
function GENEEXPRESSION_SMPL_S_20162gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_S_20162marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_S_20162marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_20173marker;
function GENEEXPRESSION_SMPL_TA_20173gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_20173marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_20173marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_20179marker;
function GENEEXPRESSION_SMPL_TA_20179gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_20179marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_20179marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_20197marker;
function GENEEXPRESSION_SMPL_TA_20197gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_20197marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_20197marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_20199marker;
function GENEEXPRESSION_SMPL_TA_20199gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_20199marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_20199marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_34838marker;
function GENEEXPRESSION_SMPL_TA_34838gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_34838marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_34838marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_34840marker;
function GENEEXPRESSION_SMPL_TA_34840gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_34840marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_34840marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_34871marker;
function GENEEXPRESSION_SMPL_TA_34871gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_34871marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_34871marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_34877marker;
function GENEEXPRESSION_SMPL_TA_34877gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_34877marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_34877marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_34921marker;
function GENEEXPRESSION_SMPL_TA_34921gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_34921marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_34921marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_34960marker;
function GENEEXPRESSION_SMPL_TA_34960gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_34960marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_34960marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_35115marker;
function GENEEXPRESSION_SMPL_TA_35115gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_35115marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_35115marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_35117marker;
function GENEEXPRESSION_SMPL_TA_35117gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_35117marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_35117marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_35194marker;
function GENEEXPRESSION_SMPL_TA_35194gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_35194marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_35194marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_35197marker;
function GENEEXPRESSION_SMPL_TA_35197gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_35197marker.setVisible(false);
	}else{
		GENEEXPRESSION_SMPL_TA_35197marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
