"use strict";
var comm = comm || {};
comm = (()=>{
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
			$('#wrapper').empty();
			$('#wrapper').html(compo.main_navi());
			$('#logo').attr("src",_+"/resources/img/common/logo.png");
			
			$(compo.tourist_area()).appendTo('#common_area');
			
			$('#area_top').css("background-image", "url('"+_+"/resources/img/component/bgb01.jpg')");
			$('#city_search').css("background-image", "url('"+_+"/resources/img/component/searchicon.png')");
			
			$('#germany').click(()=>{
				$('#common_area').empty();
				$.getScript(cityjs,()=>{
					city.onCreate();
				});
			});
			$('#maca').click(()=>{
				$('#common_area').empty();
				$.getScript(cityjs,()=>{
					city.maca();
				});
			});
		});
	};
	
	let asia_list = ()=>{
		return [
			{name :"login",text :"로그인"},
			{name :"join",text :"회원가입"},
			{name :"regist",text :"사원등록"},
			{name :"access",text :"사원로그인"}];
	};
	let eu_list = ()=>{
		return [
			{name :"login",text :"로그인"},
			{name :"join",text :"회원가입"},
			{name :"regist",text :"사원등록"},
			{name :"access",text :"사원로그인"}];
	};
	return {init : init};
})();