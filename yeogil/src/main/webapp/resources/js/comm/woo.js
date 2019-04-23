var woo = woo || {}
woo = (()=>{
	let _,js,compojs,cityjs;
	
	let init = ()=>{
		_ = $.ctx();
        js = $.js();
        compojs = js+"/comp/compo.js";
        cityjs = js+"/city/city.js";
		onCreate();
	};
	let onCreate = ()=>{
		setContentView();
	};
	let setContentView = ()=>{
		$.getScript(compojs,()=>{
			
		});
	};
	return {init :init}
})();