"use strict";
var woo = woo || {};
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
		$('#btnSearch').click(()=>{
			
			$.getScript(compojs,()=>{
				$('.main-howto').remove();
				$(compo.woo()).appendTo('#wrap');
				$.each(img(),(i,j)=>{
					$('<div class="intro_box"><img src="'+j.url
							+'" width="348" height="170" alt=""></img>'
							+'<div class="intro_title">호텔이름</div>'
							+'<div class="intro_desc">호텔 간단한 설명</div>'
							+'<div class="clear"></div>').appendTo('.intro_list');
				});
			});
		});
	};
	let img = ()=>{
		return [{name : "img1",url : "http://image.edaily.co.kr/images/Photo/files/NP/S/2016/06/PS16060300126.jpg"},
				{name : "img2",url : "https://t1.daumcdn.net/cfile/tistory/220ACD49543246531D"},
				{name : "img3",url : "https://travelblog.expedia.co.kr/wp-content/uploads/2017/01/113.jpg"}];
		};
	return {init : init};
})();