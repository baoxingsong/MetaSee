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
		Flat: false,
		title:"GENEEXPRESSION_SMPL_S_20154"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_S_20154marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_S_20154");
		if(GENEEXPRESSION_SMPL_S_20154marker.getFlat()){
			GENEEXPRESSION_SMPL_S_20154marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_S_20154Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_S_20154marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_S_20154Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_S_20162marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_S_20162,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_S_20162"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_S_20162marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_S_20162");
		if(GENEEXPRESSION_SMPL_S_20162marker.getFlat()){
			GENEEXPRESSION_SMPL_S_20162marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_S_20162Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_S_20162marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_S_20162Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_20173marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_20173,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_20173"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_20173marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_20173");
		if(GENEEXPRESSION_SMPL_TA_20173marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_20173marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20173Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_20173marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20173Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_20179marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_20179,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_20179"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_20179marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_20179");
		if(GENEEXPRESSION_SMPL_TA_20179marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_20179marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20179Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_20179marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20179Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_20197marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_20197,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_20197"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_20197marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_20197");
		if(GENEEXPRESSION_SMPL_TA_20197marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_20197marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20197Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_20197marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20197Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_20199marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_20199,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_20199"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_20199marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_20199");
		if(GENEEXPRESSION_SMPL_TA_20199marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_20199marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20199Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_20199marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_20199Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_34838marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_34838,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_34838"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_34838marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_34838");
		if(GENEEXPRESSION_SMPL_TA_34838marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_34838marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34838Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_34838marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34838Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_34840marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_34840,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_34840"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_34840marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_34840");
		if(GENEEXPRESSION_SMPL_TA_34840marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_34840marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34840Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_34840marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34840Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_34871marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_34871,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_34871"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_34871marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_34871");
		if(GENEEXPRESSION_SMPL_TA_34871marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_34871marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34871Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_34871marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34871Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_34877marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_34877,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_34877"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_34877marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_34877");
		if(GENEEXPRESSION_SMPL_TA_34877marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_34877marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34877Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_34877marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34877Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_34921marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_34921,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_34921"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_34921marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_34921");
		if(GENEEXPRESSION_SMPL_TA_34921marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_34921marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34921Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_34921marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34921Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_34960marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_34960,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_34960"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_34960marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_34960");
		if(GENEEXPRESSION_SMPL_TA_34960marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_34960marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34960Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_34960marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_34960Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_35115marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_35115,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_35115"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_35115marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_35115");
		if(GENEEXPRESSION_SMPL_TA_35115marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_35115marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35115Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_35115marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35115Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_35117marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_35117,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_35117"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_35117marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_35117");
		if(GENEEXPRESSION_SMPL_TA_35117marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_35117marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35117Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_35117marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35117Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_35194marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_35194,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_35194"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_35194marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_35194");
		if(GENEEXPRESSION_SMPL_TA_35194marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_35194marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35194Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_35194marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35194Div").style.display = 'block';
		}
	 });
	GENEEXPRESSION_SMPL_TA_35197marker = new google.maps.Marker({
		position: GENEEXPRESSION_SMPL_TA_35197,
		map: map,
		Flat: false,
		title:"GENEEXPRESSION_SMPL_TA_35197"
	});
	google.maps.event.addListener(GENEEXPRESSION_SMPL_TA_35197marker, 'click', function() {
		var a = document.getElementById("GENEEXPRESSION_SMPL_TA_35197");
		if(GENEEXPRESSION_SMPL_TA_35197marker.getFlat()){
			GENEEXPRESSION_SMPL_TA_35197marker.setFlat(false);
			a.checked=false;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35197Div").style.display = 'none';
		}
		else{
			GENEEXPRESSION_SMPL_TA_35197marker.setFlat(true);
			a.checked=true;
			document.getElementById("GENEEXPRESSION_SMPL_TA_35197Div").style.display = 'block';
		}
	 });
}
var GENEEXPRESSION_SMPL_S_20154marker;
function GENEEXPRESSION_SMPL_S_20154gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_S_20154marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_S_20154marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_S_20162marker;
function GENEEXPRESSION_SMPL_S_20162gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_S_20162marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_S_20162marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_20173marker;
function GENEEXPRESSION_SMPL_TA_20173gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_20173marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_20173marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_20179marker;
function GENEEXPRESSION_SMPL_TA_20179gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_20179marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_20179marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_20197marker;
function GENEEXPRESSION_SMPL_TA_20197gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_20197marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_20197marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_20199marker;
function GENEEXPRESSION_SMPL_TA_20199gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_20199marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_20199marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_34838marker;
function GENEEXPRESSION_SMPL_TA_34838gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_34838marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_34838marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_34840marker;
function GENEEXPRESSION_SMPL_TA_34840gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_34840marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_34840marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_34871marker;
function GENEEXPRESSION_SMPL_TA_34871gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_34871marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_34871marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_34877marker;
function GENEEXPRESSION_SMPL_TA_34877gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_34877marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_34877marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_34921marker;
function GENEEXPRESSION_SMPL_TA_34921gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_34921marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_34921marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_34960marker;
function GENEEXPRESSION_SMPL_TA_34960gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_34960marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_34960marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_35115marker;
function GENEEXPRESSION_SMPL_TA_35115gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_35115marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_35115marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_35117marker;
function GENEEXPRESSION_SMPL_TA_35117gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_35117marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_35117marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_35194marker;
function GENEEXPRESSION_SMPL_TA_35194gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_35194marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_35194marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var GENEEXPRESSION_SMPL_TA_35197marker;
function GENEEXPRESSION_SMPL_TA_35197gc(obj){
	if(obj.checked==true){
		GENEEXPRESSION_SMPL_TA_35197marker.setFlat(true);
	}else{
		GENEEXPRESSION_SMPL_TA_35197marker.setFlat(false);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
