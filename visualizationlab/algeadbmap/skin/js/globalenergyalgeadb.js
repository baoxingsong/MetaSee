var map;
var CCMP1776 = new google.maps.LatLng(36.05,120.30);
var CCMP505 = new google.maps.LatLng(37.05,120.30);
var CCMP525 = new google.maps.LatLng(34.05,120.30);
var CCMP527 = new google.maps.LatLng(36.05,121.30);
var CCMP529 = new google.maps.LatLng(36.05,119.30);
var CCMP531 = new google.maps.LatLng(34.05,119.30);
var CCMP537 = new google.maps.LatLng(37.05,121.30);
var IMET1 = new google.maps.LatLng(34.05,121.30);

var myOptions = {
	zoom: 6,
	center: CCMP1776,
	mapTypeId: google.maps.MapTypeId.HYBRID
}
function initialize() {
map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

	CCMP1776marker = new google.maps.Marker({
		position: CCMP1776,
		map: map,
		visible:true,
		title:"CCMP1776"
	});
	google.maps.event.addListener(CCMP1776marker, 'click', function() {
		var a = document.getElementById("CCMP1776");
		if(CCMP1776marker.getVisible()){
			CCMP1776marker.setVisible(false);
			a.checked=true;
			document.getElementById("CCMP1776Div").style.display = 'block';
		}
		else{
			CCMP1776marker.setVisible(true);
			a.checked=false;
			document.getElementById("CCMP1776Div").style.display = 'none';
		}
	});
	
	CCMP505marker = new google.maps.Marker({
		position: CCMP505,
		map: map,
		visible:true,
		title:"CCMP505"
	});
	google.maps.event.addListener(CCMP505marker, 'click', function() {
		var a = document.getElementById("CCMP505");
		if(CCMP505marker.getVisible()){
			CCMP505marker.setVisible(false);
			a.checked=true;
			document.getElementById("CCMP505Div").style.display = 'block';
		}
		else{
			CCMP505marker.setVisible(true);
			a.checked=false;
			document.getElementById("CCMP505Div").style.display = 'none';
		}
	});
	CCMP525marker = new google.maps.Marker({
		position: CCMP525,
		map: map,
		visible:true,
		title:"CCMP525"
	});
	google.maps.event.addListener(CCMP525marker, 'click', function() {
		var a = document.getElementById("CCMP525");
		if(CCMP525marker.getVisible()){
			CCMP525marker.setVisible(false);
			a.checked=true;
			document.getElementById("CCMP525Div").style.display = 'block';
		}
		else{
			CCMP525marker.setVisible(true);
			a.checked=false;
			document.getElementById("CCMP525Div").style.display = 'none';
		}
	});
	CCMP527marker = new google.maps.Marker({
		position: CCMP527,
		map: map,
		visible:true,
		title:"CCMP527"
	});
	google.maps.event.addListener(CCMP527marker, 'click', function() {
		var a = document.getElementById("CCMP527");
		if(CCMP527marker.getVisible()){
			CCMP527marker.setVisible(false);
			a.checked=true;
			document.getElementById("CCMP527Div").style.display = 'block';
		}
		else{
			CCMP527marker.setVisible(true);
			a.checked=false;
			document.getElementById("CCMP527Div").style.display = 'none';
		}
	});
	CCMP529marker = new google.maps.Marker({
		position: CCMP529,
		map: map,
		visible:true,
		title:"CCMP529"
	});
	google.maps.event.addListener(CCMP529marker, 'click', function() {
		var a = document.getElementById("CCMP529");
		if(CCMP529marker.getVisible()){
			CCMP529marker.setVisible(false);
			a.checked=true;
			document.getElementById("CCMP529Div").style.display = 'block';
		}
		else{
			CCMP529marker.setVisible(true);
			a.checked=false;
			document.getElementById("CCMP529Div").style.display = 'none';
		}
	});
	CCMP531marker = new google.maps.Marker({
		position: CCMP531,
		map: map,
		visible:true,
		title:"CCMP531"
	});
	google.maps.event.addListener(CCMP531marker, 'click', function() {
		var a = document.getElementById("CCMP531");
		if(CCMP531marker.getVisible()){
			CCMP531marker.setVisible(false);
			a.checked=true;
			document.getElementById("CCMP531Div").style.display = 'block';
		}
		else{
			CCMP531marker.setVisible(true);
			a.checked=false;
			document.getElementById("CCMP531Div").style.display = 'none';
		}
	});
	CCMP537marker = new google.maps.Marker({
		position: CCMP537,
		map: map,
		visible:true,
		title:"CCMP537"
	});
	google.maps.event.addListener(CCMP537marker, 'click', function() {
		var a = document.getElementById("CCMP537");
		if(CCMP537marker.getVisible()){
			CCMP537marker.setVisible(false);
			a.checked=true;
			document.getElementById("CCMP537Div").style.display = 'block';
		}
		else{
			CCMP537marker.setVisible(true);
			a.checked=false;
			document.getElementById("CCMP537Div").style.display = 'none';
		}
	});
	IMET1marker = new google.maps.Marker({
		position: IMET1,
		map: map,
		visible:true,
		title:"IMET1"
	});
	google.maps.event.addListener(IMET1marker, 'click', function() {
		var a = document.getElementById("IMET1");
		if(IMET1marker.getVisible()){
			IMET1marker.setVisible(false);
			a.checked=true;
			document.getElementById("IMET1Div").style.display = 'block';
		}
		else{
			IMET1marker.setVisible(true);
			a.checked=false;
			document.getElementById("IMET1Div").style.display = 'none';
		}
	});
}
var CCMP1776marker;
function CCMP1776gc(obj){
	if(obj.checked==true){
		CCMP1776marker.setVisible(false);
	}else{
		CCMP1776marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var CCMP5056marker;
function CCMP505gc(obj){
	if(obj.checked==true){
		CCMP505marker.setVisible(false);
	}else{
		CCMP505marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var CCMP5256marker;
function CCMP525gc(obj){
	if(obj.checked==true){
		CCMP525marker.setVisible(false);
	}else{
		CCMP525marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var CCMP527marker;
function CCMP527gc(obj){
	if(obj.checked==true){
		CCMP527marker.setVisible(false);
	}else{
		CCMP527marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var CCMP529marker;
function CCMP529gc(obj){
	if(obj.checked==true){
		CCMP529marker.setVisible(false);
	}else{
		CCMP529marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var CCMP531marker;
function CCMP531gc(obj){
	if(obj.checked==true){
		CCMP531marker.setVisible(false);
	}else{
		CCMP531marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var CCMP537marker;
function CCMP537gc(obj){
	if(obj.checked==true){
		CCMP537marker.setVisible(false);
	}else{
		CCMP537marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}
var IMET1marker;
function IMET1gc(obj){
	if(obj.checked==true){
		IMET1marker.setVisible(false);
	}else{
		IMET1marker.setVisible(true);
		var divname=obj.value+"Div";
		document.getElementById(divname).style.display = 'none';
	}
}