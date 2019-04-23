<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/woo/base.css"/>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/woo/common.css"/>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/woo/daterangepicker.tourvis.css"/>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/woo/layout.css"/>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/woo/main.css"/>
  
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div id="wrap" class="main">
	<header id="header">
	</header>
	<!-- content -->
	<div id="contents">

	<div id="container" style="min-height: 159px;">
		<div class="content-header">
			<h2 class="header-title blind">여행일정 검색</h2>
			<div class="search-wrap">
				<div class="search-box">
					<form method="post" id="airSearchForm" name="airSearchForm">
						<!--  여행 타입 -->
						<input type="hidden" name="menu" id="menu" value="RT">
						<input type="hidden" name="trip" id="tripValue" value="RT">
						<!--  여행 타입 -->
						<!--  승객정보 -->
						<input type="hidden" name="adt" id="adt" value="1">
						<input type="hidden" name="chd" id="chd" value="0">
						<input type="hidden" name="inf" id="inf" value="0">
						<!--  승객정보 -->
						<!--  좌석 타입 -->
						<input type="hidden" name="comp_nm" id="comp_nm" value="일반석">
						<input type="hidden" name="comp" id="comp" value="Y">
						<input type="hidden" name="NewComp" id="NewComp" value="N"><!--프리미엄일반석의 경우만 Y-->
						<!--  좌석 타입 -->
						<!--  출발 도시 -->
						<input type="hidden" name="dep0" id="dep0">
						<input type="hidden" name="dep0_text" id="dep0_text">
						<input type="hidden" name="dep1" id="dep1">
						<input type="hidden" name="dep1_text" id="dep1_text">
						<input type="hidden" name="dep2" id="dep2">
						<input type="hidden" name="dep2_text" id="dep2_text">
						<input type="hidden" name="dep3" id="dep3">
						<input type="hidden" name="dep3_text" id="dep3_text">
						<!--  출발 도시 -->
						<!--  도착 도시 -->
						<input type="hidden" name="arr0" id="arr0">
						<input type="hidden" name="arr0_text" id="arr0_text">
						<input type="hidden" name="arr1" id="arr1">
						<input type="hidden" name="arr1_text" id="arr1_text">
						<input type="hidden" name="arr2" id="arr2">
						<input type="hidden" name="arr2_text" id="arr2_text">
						<input type="hidden" name="arr3" id="arr3">
						<input type="hidden" name="arr3_text" id="arr3_text">
						<!--  도착 도시 -->
						<!--  출발 날짜 -->
						<input type="hidden" name="depdate0" id="depdate0">
						<input type="hidden" name="depdate1" id="depdate1">
						<input type="hidden" name="depdate2" id="depdate2">
						<input type="hidden" name="depdate3" id="depdate3">
						<!--  출발 날짜 -->
						<!--  도착 날짜 -->
						<input type="hidden" name="retdate" id="retdate">
						<!--  도착 날짜 -->
						<!--  항공사 선택 -->
						<input type="hidden" name="prefCarArry" id="prefCarArry" value="ALL">
						<!--  항공사 선택 -->
						<!--  귀국일 미정 여부 -->
						<input type="hidden" name="returnUnfix" id="returnUnfix" value="N">
						<!--  귀국일 미정 여부 -->
						<!--  국내출발 여부-->
						<input type="hidden" name="startlocal" id="startlocal" value="Y">
						<!--  국내출발 여부 -->
						<!--  국제선 여부 -->
						<input type="hidden" name="startArea" id="startArea" value="Y">
						<!--  국제선 여부 -->
						<!-- 다구간 갯수 -->
						<input type="hidden" name="md_count" id="md_count" value="2">
						<!-- 다구간 갯수 -->
						
						<input type="hidden" name="dayInd" id="dayInd" value="N">
						<input type="hidden" name="daySeq" value="0"><!-- ? -->
						
						<input type="hidden" name="plusDate" id="plusDate">
						
						<input type="hidden" name="prefStsArry" id="prefStsArry" value="ALL">
						<input type="hidden" name="prefViaArry" id="prefViaArry" value="ALL">
						
						<input type="hidden" name="val" id="val">
						<input type="hidden" name="STEP" id="STEP">
						
						<input type="hidden" name="isBfm" id="isBfm" value="Y">
						<input type="hidden" id="mode" name="mode" value="v3"><!--skd_fare7 사용할때 넣는다  -->
						
						<input type="hidden" name="STEP" id="STEP">
						
						<div class="flight-type">
							<label class="fl-way-block is-return is-checked">
								<input type="radio" value="RT" name="RadioFlWay" class="radio-box" checked="checked">
								<span class="radio-txt">왕복</span>
							</label>
							<label class="fl-way-block is-single">
								<input type="radio" value="OW" name="RadioFlWay" class="radio-box">
								<span class="radio-txt">편도</span>
							</label>
							<label class="fl-way-block is-multi">
								<input type="radio" value="MD" name="RadioFlWay" class="radio-box">
								<span class="radio-txt">다구간</span>
							</label>
						</div>
						<div class="flight-field">
							<div class="flight-single active">
								<div class="fl-route">
									<div class="fl-item fl-field-from">
										<label class="fl-field-block">
											<span class="label-txt active">출발도시</span>
											<span class="input-con">
												<input type="text" autocomplete="off" id="DepartureCity" name="DepartureCity" class="input-box pop-dep" placeholder="출발도시">
											</span>
										</label>
									</div>
									<div class="fl-swap"><a href="javascript:void(0)" onclick="swapCity()" class="btn btn-swap"></a></div>
									<div class="fl-item fl-field-to">
										<label class="fl-field-block">
											<span class="label-txt active">도착도시</span>
											<span class="input-con">
												<input type="text" autocomplete="off" id="ArrivalCity" name="ArrivalCity" class="input-box pop-arr" placeholder="도착도시">
											</span>
										</label>
									</div>
								</div>
								<div class="fl-date t-datepicker">
									<div class="fl-item fl-field-depart">
										<div class="fl-field-block">
											<span class="label-txt active">가는날</span>
											<span class="input-con t-check-in"></span>
										</div>
									</div>
									<div class="fl-line"><i class="ico-line"></i></div>
									<div class="fl-item fl-field-return">
										<div class="fl-field-block">
											<span class="label-txt active">오는날</span>
											<span class="input-con t-check-out"></span>
										</div>
									</div>
									<div id="two-inputs" class="datepick round active">
										<input id="date-range200" autocomplete="off" class="input-box" size="20" value="" placeholder="가는날" readonly="readonly">
										<input id="date-range201" autocomplete="off" class="input-box" size="20" value="" placeholder="오는날" readonly="readonly">
									</div>
									<div class="datepick single">
										<input id="one-input" style="width:400px" size="40" autocomplete="off" value="" placeholder="가는날" readonly="">
									</div>
								</div>
							</div>
							<div class="flight-multi">
								<div class="multi-con-wrap">
									<div class="fl-multi-con">
										<div class="fl-route">
											<div class="fl-item fl-field-from">
												<label class="fl-field-block">
													<span class="input-con"><input autocomplete="off" type="text" id="DepMultiCity0" name="DepMultiCity0" class="input-box pop-dep" placeholder="출발도시"></span>
												</label>
												<span class="validation-comment" style="visibility: hidden;">출발도시 코멘트입니다.</span>
											</div>
											<div class="fl-arrow"><i class="arrow-right"></i></div>
											<div class="fl-item fl-field-to">
												<label class="fl-field-block">
													<span class="input-con"><input autocomplete="off" type="text" id="ArrMultiCity0" name="ArrMultiCity0" class="input-box pop-arr" placeholder="도착도시"></span>
												</label>
												<span class="validation-comment" style="visibility: hidden;">도착도시 코멘트입니다.</span>
											</div>
										</div>
										<div class="fl-date t-datepicker">
											<div class="fl-item fl-field-depart">
												<div class="fl-field-block">
													<span class="label-txt">가는날</span>
													<span class="input-con t-check-in"></span>
												</div>
											</div>
											<div class="fl-item fl-field-return">
												<div class="fl-field-block">
													<span class="label-txt active">오는날</span>
													<span class="input-con t-check-out"></span>
												</div>
											</div>
											<div class="datepick multi">
												<input id="multi-input0" style="width:400px" autocomplete="off" size="40" value="" placeholder="가는날" readonly="readonly">
											</div>
											<span class="validation-comment" style="visibility: hidden;">가는날 코멘트입니다.</span>
										</div>
									</div>
									<div class="fl-multi-con">
										<div class="fl-route">
											<div class="fl-item fl-field-from">
												<label class="fl-field-block">
													<span class="input-con"><input autocomplete="off" type="text" id="DepMultiCity1" name="DepMultiCity1" class="input-box pop-dep" placeholder="출발도시"></span>
												</label>
												<span class="validation-comment" style="visibility: hidden;">출발도시 코멘트입니다.</span>
											</div>
											<div class="fl-arrow"><i class="arrow-right"></i></div>
											<div class="fl-item fl-field-to">
												<label class="fl-field-block">
													<span class="input-con"><input autocomplete="off" type="text" id="ArrMultiCity1" name="ArrMultiCity1" class="input-box pop-arr" placeholder="도착도시"></span>
												</label>
												<span class="validation-comment" style="visibility: hidden;">도착도시 코멘트입니다.</span>
											</div>
										</div>
										<div class="fl-date t-datepicker">
											<div class="fl-item fl-field-depart">
												<div class="fl-field-block">
													<span class="label-txt">가는날</span>
													<span class="input-con t-check-in"></span>
												</div>
												
											</div>
											<div class="fl-item fl-field-return">
												<div class="fl-field-block">
													<span class="label-txt active">오는날</span>
													<span class="input-con t-check-out"></span>
												</div>
											</div>
											<div class="datepick multi">
												<input id="multi-input1" style="width:400px" autocomplete="off" size="40" value="" placeholder="가는날" readonly="readonly">
											</div>
											<span class="validation-comment" style="visibility: hidden;">가는날 코멘트입니다.</span>
										</div>
									</div>
									<div class="fl-multi-con is-add add-item1"> <!-- 다구간이 2개 이상 추가되었을때 is-add 추가 -->
										<div class="fl-route">
											<div class="fl-item fl-field-from">
												<label class="fl-field-block">
													<span class="input-con"><input autocomplete="off" type="text" id="DepMultiCity2" name="DepMultiCity2" class="input-box pop-dep" placeholder="출발도시"></span>
												</label>
												<span class="validation-comment" style="visibility: hidden;">출발도시 코멘트입니다.</span>
											</div>
											<div class="fl-arrow"><i class="arrow-right"></i></div>
											<div class="fl-item fl-field-to">
												<label class="fl-field-block">
													<span class="input-con"><input autocomplete="off" type="text" id="ArrMultiCity2" name="ArrMultiCity2" class="input-box pop-arr" placeholder="도착도시"></span>
												</label>
												<span class="validation-comment" style="visibility: hidden;">도착도시 코멘트입니다.</span>
											</div>
										</div>
										<div class="fl-date t-datepicker">
											<div class="fl-item fl-field-depart">
												<div class="fl-field-block">
													<span class="label-txt">가는날</span>
													<span class="input-con t-check-in"></span>
												</div>
											</div>
											<div class="fl-item fl-field-return">
												<div class="fl-field-block">
													<span class="label-txt active">오는날</span>
													<span class="input-con t-check-out"></span>
												</div>
											</div>
											<div class="datepick multi">
												<input id="multi-input2" style="width:400px" autocomplete="off" size="40" value="" placeholder="가는날" readonly="readonly">
											</div>
											<span class="validation-comment" style="visibility: hidden;">가는날 코멘트입니다.</span>
										</div>
										<a href="javascript:void(0)" class="fl-con-remove" id="itemRemove01"><i class="btn btn-remove"></i></a>
									</div>
									<div class="fl-multi-con is-add add-item2"> <!-- 다구간이 2개 이상 추가되었을때 is-add 추가 -->
										<div class="fl-route">
											<div class="fl-item fl-field-from">
												<label class="fl-field-block">
													<span class="input-con"><input autocomplete="off" type="text" id="DepMultiCity3" name="DepMultiCity3" class="input-box pop-dep" placeholder="출발도시"></span>
												</label>
												<span class="validation-comment" style="visibility: hidden;">출발도시 코멘트입니다.</span>
											</div>
											<div class="fl-arrow"><i class="arrow-right"></i></div>
											<div class="fl-item fl-field-to">
												<label class="fl-field-block">
													<span class="input-con"><input autocomplete="off" type="text" id="ArrMultiCity3" name="ArrMultiCity3" class="input-box pop-arr" placeholder="도착도시"></span>
												</label>
												<span class="validation-comment" style="visibility: hidden;">도착도시 코멘트입니다.</span>
											</div>
										</div>
										<div class="fl-date t-datepicker">
											<div class="fl-item fl-field-depart">
												<div class="fl-field-block">
													<span class="label-txt">가는날</span>
													<span class="input-con t-check-in"></span>
												</div>
											</div>
											<div class="fl-item fl-field-return">
												<div class="fl-field-block">
													<span class="label-txt active">오는날</span>
													<span class="input-con t-check-out"></span>
												</div>
											</div>
											<div class="datepick multi">
												<input id="multi-input3" style="width:400px" autocomplete="off" size="40" value="" placeholder="가는날" readonly="readonly">
											</div>
											<span class="validation-comment" style="visibility: hidden;">가는날 코멘트입니다.</span>
										</div>
										<a href="javascript:void(0)" class="fl-con-remove" id="itemRemove02"><i class="btn btn-remove"></i></a>
									</div>
								</div>
								<div class="multi-add-wrap">
									<div class="fl-multi-add"><a href="javascript:void(0)" class="more-multi"><i class="xi-plus"></i> 다른 여정 추가</a></div>
								</div>
							</div>
						</div>
						<div class="insert" style="position: absolute;right: 10px;top: 0px;">
							<span class="dcheck-block" id="directClick"><input type="checkbox" id="directCheck" value="0" name="directCheck"> <label class="label">직항만</label></span>
						</div>
						<div class="flight-search">
							
							<div class="fl-item fl-field-option">
								<label class="fl-field-block">
									<span class="label-txt">승객, 좌석등급</span>
									<span class="input-con">
										<input type="text" id="passenger_value" autocomplete="off" readonly="readonly" class="input-box pop-search" value="성인 1, 일반석">
									</span>
								</label>
							</div>
							<button type="button" class="btn btn-search" id="btnSearch"><i class="ico-pin-white"></i><span>검색</span></button>
						</div>
					</form>
				</div>
				<div class="oneway-validation" id="notmdalert" style="height:22px"> <!--왕복/편도용-->
					<div class="fl"><p class="alert-danger" style="visibility:hidden">출발도시 코멘트입니다..</p></div>
					<div class="fl"><p class="alert-danger" style="visibility:hidden">도착도시 코멘트입니다.</p></div>
					<div class="fl"><p class="alert-danger" style="visibility:hidden">가는날 코멘트입니다.</p></div>
					<div class="fl"><p class="alert-danger" style="visibility:hidden">오늘날 코멘트입니다.</p></div>
				</div>
			</div>
		</div>
	<div id="bx-pager02" class="bx-controls"></div>
		</div>
		<section class="main-howto">
			<div class="main-type">
				<dl>
					<dt>투어비스 이용방법</dt>
					<dd>투어비스가 처음이신가요?<br>쉽고 편리한 투어비스 이용해 보세요.</dd>
				</dl>
			</div>
			<div class="main-step">
				<ul>
					<li>
						<span class="tit">STEP 1</span>
						<span class="sub">요금을 선택하고</span>
					</li>
					<li>
						<span class="tit">STEP 2</span>
						<span class="sub">탑승객 정보를 입력하고</span>
					</li>
					<li>
						<span class="tit">STEP 3</span>
						<span class="sub">결제를 하면</span>
					</li>
					<li>
						<span class="tit">STEP 4</span>
						<span class="sub">발권 완료</span>
					</li>
				</ul>
			</div>
		</section>
	</div>

<div class="page-layer" id="layer-route-02" style="position:absolute;left:0">
	<div class="layer-wrap">
		<div class="con-wrap">
			<form class="search-wrap">
				<fieldset class="city-search">
					<legend>도시검색</legend>
					<div class="search-step step-02" id="searchCityList">
						
					</div>
				</fieldset>
			</form>
		</div>
		<a href="javascript:void(0);" class="btn-close"></a>
	</div>
</div>

<div class="page-layer" id="layer-search" style="height:500px">
	<div class="layer-wrap">
		<div class="con-wrap">
			<form class="seat-wrap">
				<fieldset class="seat-option">
					<div class="counter-wrap">
						<div class="counter-box">
							<div class="counter-item">
								<div class="label-con">
									<span class="count-label">성인</span>
									<span class="count-desc">(만 12세 이상)</span>
								</div>
								<div class="count-con">
									<a href="javascript:void(0)" class="btn-count" ptype="adultm"><i class="ico-minus1"></i></a>
									<span class="option-num"><input type="text" value="1" id="adt_value" readonly=""></span>
									<a href="javascript:void(0)" class="btn-count" ptype="adultp"><i class="ico-plus1"></i></a>
								</div>
							</div>
							<div class="counter-item">
								<div class="label-con">
									<span class="count-label">아동</span>
									<span class="count-desc">(만 2 - 12세)</span>
								</div>
								<div class="count-con">
									<a href="javascript:void(0)" class="btn-count" ptype="childm"><i class="ico-minus1"></i></a>
									<span class="option-num"><input type="text" value="0" id="chd_value" class="disable" readonly=""></span>
									<a href="javascript:void(0)" class="btn-count" ptype="childp"><i class="ico-plus1"></i></a>
								</div>
							</div>
							<div class="counter-item">
								<div class="label-con">
									<span class="count-label">유아</span>
									<span class="count-desc">(만 2세 이하)</span>
								</div>
								<div class="count-con">
									<a href="javascript:void(0)" class="btn-count" ptype="infuntm"><i class="ico-minus1"></i></a>
									<span class="option-num"><input type="text" value="0" id="inf_value" class="disable" readonly=""></span>
									<a href="javascript:void(0)" class="btn-count" ptype="infuntp"><i class="ico-plus1"></i></a>
								</div>
							</div>
						</div>
						<p class="alert-notice" style="text-align:center">성인, 아동, 유아의 나이는 탑승일 기준입니다.</p>
						<p id="psgdanger" class="alert-danger blind"></p>
					</div>
					<div class="radio-area seat-item">
						<label class="fl-seat-block is-checked" value="Y">
							<a href="javascript:void(0)" class="radio-txt">일반석</a>
						</label>
						<label class="fl-seat-block" value="P">
							<a href="javascript:void(0)" class="radio-txt">프리미엄 일반석</a>
						</label>
						<label class="fl-seat-block" value="C">
							<a href="javascript:void(0)" class="radio-txt">비즈니스석</a>
						</label>
						<label class="fl-seat-block" value="F">
							<a href="javascript:void(0)" class="radio-txt">일등석</a>
						</label>
					</div>
				</fieldset>
			</form>
		</div>
		<a href="javascript:void(0);" class="btn-close"></a>
	</div>
</div>

	<div class="popup pop-cont" id="new-loading-bar" style="position: fixed; left: 50%; top: 40%; margin-left: -600px; margin-top: -857px;">
		<div class="loading-box">
			<img id="newLoadImg" src="https://www.tourvis.com/resource_pc/images/tvsloading.gif">
			<p class="mt-15" id="loading-text"></p>
		</div>
	</div>
</div>
<script src="<%=application.getContextPath()%>/resources/js/yeogil.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/city/city.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/comp/compo.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/comm/comm.js"></script>
<script>
yeogil.init('<%=application.getContextPath()%>');
</script>
</body>
</html>
