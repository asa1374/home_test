"use strict";
var yeogil = yeogil || {};
yeogil = (()=>{
	let init = x =>{
		yeogil.$.init(x);
	};
	let onCreate = ()=>{
		setContentView();
	};
	let setContentView = ()=>{
		$.when(
				$.getScript($.js()+'/comp/compo.js'),
				$.getScript($.js()+'/comm/woo.js')
		).done(()=>{
			woo.init();
		});
	};
	return {init:init,
		onCreate:onCreate};
})();

yeogil.$ = {
		init : (x)=>{
			$.getScript(x+'/resources/js/router.js',()=>{
				$.extend(new Session(x));
				yeogil.onCreate();
			})
		}
	};