var smoke = {
  smoketimeout: [],
  init: false,
  zindex: 1000,
  i: 0,

	bodyload: function(id){
		var ff = document.createElement('div');
				ff.setAttribute('id','smoke-out-'+id);
/*				ff.setAttribute('class','smoke-base'); */
				ff.className = 'smoke-base';
				ff.style.zIndex = smoke.zindex;
				smoke.zindex++;
				document.body.appendChild(ff);
	},

	newdialog: function(){
		var newid = new Date().getTime();
				newid = Math.random(1,99) + newid;	

		// make a new container while you're at it
		if (!smoke.init){		
	    smoke.listen(window,"load", function(){
		    smoke.bodyload(newid);
			});
		}else{
	    smoke.bodyload(newid);		
		}

		return newid;
	},

	forceload: function(){},

	build: function (e, f) {
		smoke.i++;
		
		// determine stacking order
		f.stack = smoke.i;

		e = e.replace(/\n/g,'<br />');
		e = e.replace(/\r/g,'<br />');

		var prompt = '',
		    ok = 'OK',
		    cancel = 'Cancel',
		    classname = '',
		    buttons = '',
		    box;

		if (f.type === 'prompt'){
			prompt = 
				'<div class="dialog-prompt">'+
					'This application has been optimized for the latest <a href="http://www.google.com/chrome">Chrome Browser</a>. Otherwise, many features will not be available, or the browser might behave incorrectly. Click CANCEL to download the latest Chrome or OK to continue.'+
				'</div>';
		}

		if (f.params.ok){
			ok = f.params.ok;
		}
		
		if (f.params.cancel){
			cancel = f.params.cancel;
		}
		
		if (f.params.classname){
			classname = f.params.classname;
		}

		if (f.type !== 'signal'){
			buttons = '<div class="dialog-buttons">';
			if (f.type === 'alert'){
				buttons +=
					'<button id="alert-ok-'+f.newid+'">'+ok+'</button>';
			} else if (f.type === 'prompt' || f.type === 'confirm'){
				if (f.params.reverseButtons) {
					buttons +=
						'<button id="'+f.type+'-ok-'+f.newid+'">'+ok+'</button>' +
						'<button id="'+f.type+'-cancel-'+f.newid+'" class="cancel">'+cancel+'</button>';				
				} else {
					buttons +=
						'<button id="'+f.type+'-cancel-'+f.newid+'" class="cancel">'+cancel+'</button>'+
						'<button id="'+f.type+'-ok-'+f.newid+'">'+ok+'</button>';
				}
			}
			buttons += '</div>';
		}


		box = 
			'<div id="smoke-bg-'+f.newid+'" class="smokebg"></div>'+
			'<div class="dialog smoke '+classname+'">'+
				'<div class="dialog-inner">'+
						e+
						prompt+
						buttons+			
				'</div>'+
			'</div>';

		if (!smoke.init){		
			smoke.listen(window,"load", function(){
				smoke.finishbuild(e,f,box);
			});
		} else{
			smoke.finishbuild(e,f,box);
		}

	},

	finishbuild: function(e, f, box) {
	
		var ff = document.getElementById('smoke-out-'+f.newid);

		ff.className = 'smoke-base smoke-visible  smoke-' + f.type;
		ff.innerHTML = box;
				
		while (ff.innerHTML === ""){
			ff.innerHTML = box;
		}
		
		// clear the timeout if it's already been activated
		if (smoke.smoketimeout[f.newid]){
			clearTimeout(smoke.smoketimeout[f.newid]);
		}


		smoke.listen(
			document.getElementById('smoke-bg-'+f.newid),
			"click", 
			function () {
				smoke.destroy(f.type, f.newid);
				if (f.type === 'prompt' || f.type === 'confirm'){
					f.callback(false);
				} else if (f.type === 'alert' && typeof f.callback !== 'undefined') {
					f.callback();
				}	
			}
		);
	
	
		// listeners for button actions
		switch (f.type) {
			case 'alert': 
				smoke.finishbuildAlert(e, f, box);
				break;
			case 'confirm':
				smoke.finishbuildConfirm(e, f, box);
				break;
			case 'prompt':
				smoke.finishbuildPrompt(e, f, box);
				break;
			case 'signal':
				smoke.finishbuildSignal(e, f, box);
				break;
			default:
				throw "Unknown type: " + f.type;
		}
	},
	
	
	
	finishbuildPrompt: function (e, f, box) 
	{
		var pi = document.getElementById('dialog-input-'+f.newid);
			
		setTimeout(function () {
			pi.focus();
			pi.select();
		}, 100);
	
		// events for cancel button
		smoke.listen(
			document.getElementById('prompt-cancel-'+f.newid),
			"click", 
			function () {
				smoke.destroy(f.type, f.newid);
				f.callback(false);
			}
		);
	
		// events for "ok" button
		smoke.listen(
			document.getElementById('prompt-ok-'+f.newid),
			"click", 
			function () {
				smoke.destroy(f.type, f.newid);
				f.callback(pi.value);
			}
		);
				
		// listen for enter
		document.onkeyup = function (e) {
			if (!e) {
				e = window.event;
			}
			
			if (e.keyCode === 13){
				smoke.destroy(f.type, f.newid);
				f.callback(pi.value);
			} else if (e.keyCode === 27){
				smoke.destroy(f.type, f.newid);
				f.callback(false);
			}
		};
	},
	
	destroy: function (type,id) {
		var box = document.getElementById('smoke-out-'+id), 
		    okButton     = document.getElementById(type+'-ok-'+id), 
		    cancelButton = document.getElementById(type+'-cancel-'+id);
/*				box.setAttribute('class','smoke-base'); */
		box.className = 'smoke-base';

			
		// confirm/alert/prompt remove click listener
		if (okButton){
			smoke.stoplistening(okButton, "click", function(){});
			document.onkeyup = null;
		}
		
		// confirm/prompt remove click listener
		if (cancelButton){
			smoke.stoplistening(cancelButton, "click", function(){});
		}
		
		smoke.i = 0;
		box.innerHTML = '';
	},

	
	
	prompt: function (e, f, g) {
		if (typeof g !== 'object'){
			g = false;
		}
		
		var id = smoke.newdialog();
		return smoke.build(e,{type:'prompt',callback:f,params:g,newid:id});
	},
	
	listen: function (e, f, g) {
    if (e.addEventListener) {
      return e.addEventListener(f, g, false);
    } 
    
    if (e.attachEvent){
      return e.attachEvent('on'+f, g);
    } 
    
		return false;
	},
	
	stoplistening: function (e, f, g) {	
    if (e.removeEventListener) {
      return e.removeEventListener("click", g, false);
    }
    
    if (e.detachEvent){
      return e.detachEvent('on'+f, g);
    }
    
    return false;
	}
};
function changeBrowser(){
			smoke.prompt('You might need to change your browser.',function(e){
				if (e){
				}else{
					window.open('http://www.google.com/chrome')
				}
			});
}
function checkBrowser() {
	var ug = navigator.userAgent.toLowerCase();
	//alert(ug);
	var chrome = /chrome/;
	var isChrome=chrome.exec(ug);
	//var firefox = /firefox/;
	//var isFirefox=firefox.exec(ug);
	var msie = /msie 8.0/;
	var isMsie=msie.exec(ug);
	if(isChrome == "chrome"){  
	}//else if(isFirefox == "firefox"){
	
	//}
	else if(isMsie == "msie 8.0"){
		alert("You might need to change your browser.This application has been optimized for the latest Chrome Browser. Many features will not be available or incorrectly under your current browser");
		//alert(ug);
		changeBrowser();
	}else{
			changeBrowser();
	}
	//var oldfirefox2 = /firefox\/2/;
	//var isoldFirefox2=oldfirefox2.exec(ug);
	//var oldfirefox3 = /firefox\/3/;
	//var isoldFirefox3=oldfirefox3.exec(ug);
	//if(isoldFirefox2 == "firefox\/2"){
		//changeBrowser();
	//}else if(isoldFirefox3 == "firefox\/3"){
		//changeBrowser();
	//}
}

if (!smoke.init) {		
  smoke.listen(window, "load", function () {
    smoke.init = true;
	});
}
