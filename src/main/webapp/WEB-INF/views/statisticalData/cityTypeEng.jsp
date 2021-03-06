<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>T.A.S by City</title>
<link rel="stylesheet" href="/resources/static/css/engCss/styleEng.css" />
<link rel="stylesheet" href="/resources/static/css/cityType.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- JQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="top-background-color">
			<header>
				<div class="circle-01"></div>
				<div class="circle-02"></div>
				<div class="circle-03"></div>
				<div class="row top">
					<a href="/tas/main/eng">home</a> <i
						class="fa-solid fa-house-chimney"
						style="color: #eaeaea; margin-left: 5px; margin-top: 3px"></i> 
					<select name="lang-selbox" id="language-select">
						<option value="eng">English</option>
						<option value="korea">Korean</option>
					</select>
				</div>
				<div class="row header-category">
					<div class="logo">
						<a href="/tas/main/eng"> <img
							src="/resources/static/images/T.A.S-logo.png" alt="" />
						</a>
					</div>
					<div class="row category">
						<div class="category-link dropdown">
							<div class="link-button">Statistics Reference</div>
							<div class="dropdown-content">
								<a href="/law/eng">Violation of Law</a> <a href="/alcohol/eng">Degree
									of Drinking</a> <a href="/road/eng">Road Type</a> <a
									href="/accident/eng">Accident Type</a> <a href="/city/eng">By
									City</a>
							</div>
						</div>
						<div class="category-link service-link">
							<a href="/tas/intro/eng">Service Introduction</a>
						</div>
						<div class="category-link client-link">
							<a href="/service/center/eng">Service Center</a>
						</div>
						<div class="category-link login-link">
							<input id="loginSessionHidden" type="hidden" value="" /> <a
								id="loginTag" href="/login/eng">Login</a> <a id="infoTag"
								style="display: none" href="/tas/my/info/eng">MyPage</a>
						</div>
					</div>
				</div>
			</header>
		</div>
		<!-- header end -->
		<div class="bottom-background-color">
			<div class="statistical-page-city">
				<div class="statistical-page-main-title">
					<h1>City</h1>
				</div>
				<div class="city-by-category-main-section">
					<div class="city-main-left-section-map">
						<div class="map-btn-wrap">
							<button class="map-btn accidents-btn" type="button">Number
								of Accidents</button>
							<button class="map-btn dead-btn" type="button">Number of
								Deaths</button>
							<button class="map-btn injury-btn" type="button">Number
								of Injured</button>
						</div>
						<!-- kakao map -->
						<div id="map" style="width: 100%; height: 700px"></div>
					</div>
					<div class="city-main-right-section">
						<div class="city-select-wrap">
							<div class="city-type-sel city-type-year">
								<input type="hidden" id="cityYearHidden" /> <select
									name="city-type-year" id="city-type-year"
									onchange="cityYear(this.value)">
									<option value="">year</option>
									<option value="2005">2005</option>
									<option value="2006">2006</option>
									<option value="2007">2007</option>
									<option value="2008">2008</option>
									<option value="2009">2009</option>
									<option value="2010">2010</option>
									<option value="2011">2011</option>
									<option value="2012">2012</option>
									<option value="2013">2013</option>
									<option value="2014">2014</option>
									<option value="2015">2015</option>
									<option value="2016">2016</option>
									<option value="2017">2017</option>
									<option value="2018">2018</option>
									<option value="2019">2019</option>
									<option value="2020">2020</option>
								</select>
							</div>
							<div class="city-type-sel city-type-month">
								<input type="hidden" id="cityMonthHidden" /> <select
									name="city-type-month" id="city-type-month"
									onchange="cityMonth(this.value)">
									<option value="">month</option>
									<option value="??????">all</option>
									<option value="????????????">all by month</option>
									<option value="1???">Jen</option>
									<option value="2???">Feb</option>
									<option value="3???">Mar</option>
									<option value="4???">Apr</option>
									<option value="5???">May</option>
									<option value="6???">Jun</option>
									<option value="7???">Jul</option>
									<option value="8???">Aug</option>
									<option value="9???">Sep</option>
									<option value="10???">Oct</option>
									<option value="11???">Nov</option>
									<option value="12???">Dec</option>
								</select>
							</div>
							<div class="city-type-sel city-type">
								<input type="hidden" id="cityTypeHidden" /> <select
									name="city-type" id="city-type" onchange="cityType(this.value)">
									<option value="">Choose City</option>
									<option value="??????">All</option>
									<option value="??????">Seoul</option>
									<option value="??????">Busan</option>
									<option value="??????">Daegu</option>
									<option value="??????">Incheon</option>
									<option value="??????">Gwangju</option>
									<option value="??????">Daejeon</option>
									<option value="??????">Sejong</option>
									<option value="??????">Ulsan</option>
									<option value="??????">Kyeongki</option>
									<option value="??????">Kangwon</option>
									<option value="??????">Chungbuk</option>
									<option value="??????">Chungnam</option>
									<option value="??????">Jeonbuk</option>
									<option value="??????">Jeonnam</option>
									<option value="??????">Kyeongbuk</option>
									<option value="??????">Kyeongnam</option>
									<option value="??????">Jeju</option>
								</select>
							</div>
							<button id="lookUpByLaw" type="button">Load</button>
						</div>
						<div class="row">
							<div class="city-accidents-dead-injury-card-wrap">
								<div class="city-accidents-card card-accidents hight">
									<h2>Number of Accidents</h2>
									<i class="fa-solid fa-car-burst fa-3x"></i>
									<div id="accidentsAccidents" class="accidents-item">0</div>
								</div>
								<div class="city-accidents-card card-dead middle">
									<h2>Number of Deaths</h2>
									<i class="fa-solid fa-skull fa-3x"></i>
									<div id="accidentsDead" class="accidents-item">0</div>
								</div>
								<div class="city-accidents-card card-injury rower">
									<h2>Number of Injured</h2>
									<i class="fa-solid fa-person-falling-burst fa-3x"></i>
									<div id="accidentsInjury" class="accidents-item">0</div>
								</div>
							</div>
							<div class="circle-graph">
								<!-- <img src="../img/???????????????????????????.png" alt="" /> -->
								<div class="pieChart-wrapper">
									<canvas id="pieChart"></canvas>
									<canvas id="new-pieChart" style="display: none"></canvas>
								</div>
								<a id="excelDownEng">Excel Downlod</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer>
				<div class="footer-img">
					<img src="/resources/static/images/T.A.S-logo.png" alt="" />
				</div>
				<div class="footer-info">
					<p>Terms of Service | privacy policy | Operational management
						policy</p>
					<p>email : jyg12770@google.com | email : skwjdtn3171@naver.com</p>
					<p>(Zip code)34838 20, Jungang-ro 121beon-gil, Jung-gu,
						Daejeon, Republic of Korea</p>
					<p>Main Phone : 042-222-2402</p>
				</div>
				<div class="footer-btn">
					<button type="button" style="cursor: pointer"
						onclick="window.scrollTo({top:0, left:0, behavior:'smooth'});">
						top</button>
					<i class="fa-solid fa-angle-up"></i>
				</div>
			</footer>
		</div>
	</div>
</body>
<script src="/resources/static/js/statIndex.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<!-- JQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<!-- Chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- Kakao Map -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1404a388d08e4a1a512e05afcef16217"></script>
<script>
	var mapContainer = document.getElementById("map"), // ????????? ????????? div
	mapOption = {
		center : new kakao.maps.LatLng(37.5662952, 126.9779451), // ????????? ????????????
		level : 13, // ????????? ?????? ??????
	};

	var map = new kakao.maps.Map(mapContainer, mapOption); // ????????? ???????????????
	// ????????? ??????????????? ????????? ???????????????
	// HTML ????????? ?????? Dom Element ?????????
	// var content =
	//   '<div class ="label"><span class="left"></span><span class="center">123456</span><span class="right"></span></div>';

	// ????????? ??????????????? ????????? ???????????????
	var position = new kakao.maps.LatLng(37.5662952, 126.9779451);

	// ????????? ??????????????? ???????????????
	var customOverlay = new kakao.maps.CustomOverlay({
		position : position,
	// content: content,
	});

	// ????????? ??????????????? ????????? ???????????????
	customOverlay.setMap(map);
</script>

<script>
	var cityYear = function(value) {
		$("#cityYearHidden").val(value);
	};
	var cityMonth = function(value) {
		$("#cityMonthHidden").val(value);
	};
	var cityType = function(value) {
		$("#cityTypeHidden").val(value);
	};

	// ???????????? ?????? ????????? ??? ??????
	$("#lookUpByLaw")
			.on(
					"click",
					function() {
						// ???????????? ?????? ???????????? ?????????
						if ($("#lookUpByLaw").text() == "Reset") {
							location.reload();
							return false;
						}
						$("#lookUpByLaw").text("Reset");

						var yearHidden = $("#cityYearHidden").val();
						var monthHidden = $("#cityMonthHidden").val();
						var cityTypeHidden = $("#cityTypeHidden").val();

						if (yearHidden == "" || monthHidden == ""
								|| cityTypeHidden == "") {
							alert("Please Check select box");
							return false;
						}

						// Chart.js
						$("#pieChart").css("display", "none");
						$("#new-pieChart").css("display", "block");
						$.ajax({
							url : "/api/v1/city/year/"
								+ yearHidden
								+ "/month/"
								+ monthHidden,
							type : "GET",
							dataType : "json",
							success : function(response) {
								var seoul = 0;
								var busan = 0;
								var daegu = 0;
								var incheon = 0;
								var gwangju = 0;
								var daejeon = 0;
								var ulsan = 0;
								var kyeongki = 0;
								var kangwon = 0;
								var chungbuk = 0;
								var chungnam = 0;
								var jeonbuk = 0;
								var jeonnam = 0;
								var kyeongbuk = 0;
								var kyeongnam = 0;
								var jeju = 0;
								var sejong = 0;
								for (var i = 0; i < response.length; i++) {
									if (response[i].region == "Seoul")
										seoul += response[i].????????????;
									if (response[i].region == "Busan")
										busan += response[i].????????????;
									if (response[i].region == "Daegu")
										daegu += response[i].????????????;
									if (response[i].region == "Incheon")
										incheon += response[i].????????????;
									if (response[i].region == "Gwangju")
										gwangju += response[i].????????????;
									if (response[i].region == "Daejeon")
										daejeon += response[i].????????????;
									if (response[i].region == "Ulsan")
										ulsan += response[i].????????????;
									if (response[i].region == "Kyeongki")
										kyeongki += response[i].????????????;
									if (response[i].region == "Kangwon")
										kangwon += response[i].????????????;
									if (response[i].region == "Chungbuk")
										chungbuk += response[i].????????????;
									if (response[i].region == "Chungnam")
										chungnam += response[i].????????????;
									if (response[i].region == "Jeonbuk")
										jeonbuk += response[i].????????????;
									if (response[i].region == "Jeonnam")
										jeonnam += response[i].????????????;
									if (response[i].region == "Kyeongbuk")
										kyeongbuk += response[i].????????????;
									if (response[i].region == "Kyeongnam")
										kyeongnam += response[i].????????????;
									if (response[i].region == "Jeju")
										jeju += response[i].????????????;
									if (response[i].region == "Sejong")
										sejong += response[i].????????????;
								}
								var data = [ seoul, busan, daegu,
										incheon, gwangju, daejeon,
										ulsan, kyeongki, kangwon,
										chungbuk, chungnam, jeonbuk,
										jeonnam, kyeongbuk, kyeongnam,
										jeju, sejong, ];
								// ???????????? ???????????? ?????? ????????? ?????? ??????
								// ?????????(????????????)

								var myChart = new Chart(
										contextNewPieChart,
										{
											type : "doughnut", // ????????? ??????
											data : {
												// ????????? ????????? ?????????
												labels : [ "seoul",
									                "busan",
									                "daegu",
									                "incheon",
									                "gwangju",
									                "daejeon",
									                "ulsan",
									                "kyeongki",
									                "kangwon",
									                "chungbuk",
									                "chungnam",
									                "jeonbuk",
									                "jeonnam",
									                "kyeongbuk",
									                "kyeongnam",
									                "jeju",
									                "sejong", ],
														datasets : [
																{
																	//?????????
																	label : "Number of Accidents", //?????? ??????
																	data : data,
																	backgroundColor : [
																			"rgb(0,0,0)",
																			"rgb(15,15,15)",
																			"rgb(30,30,30)",
																			"rgb(45,45,45)",
																			"rgb(60,60,60)",
																			"rgb(75,75,75)",
																			"rgb(90,90,90)",
																			"rgb(105,105,105)",
																			"rgb(120,120,120)",
																			"rgb(135,135,135)",
																			"rgb(150,150,150)",
																			"rgb(165,165,165)",
																			"rgb(180,180,180)",
																			"rgb(195,195,195)",
																			"rgb(210,210,210)",
																			"rgb(225,225,225)",
																			"rgb(240,240,240)", ],
																	borderRadius : 10,
																	borderColor : "white",
																	borderWidth : 3, //????????? ??????
																}, ],
													},
													options : {
														plugins : {
															title : {
																display : true,
																text : "Pie Chart",
															},
															subtitle : {
																display : true,
																text : "Pie Chart by City",
																color : "skyblue",
															},
														},
													},
												});
									},
								});

						// option?????? ????????? ???????????? data???????????? ajax
						$
								.ajax({
									url : "/api/v1/city/year/"
											+ yearHidden
											+ "/month/"
											+ monthHidden
											+ "/city/"
											+ cityTypeHidden,
									type : "GET",
									dataType : "json",
									success : function(response) {
										var len = response.length;
										var accident_cnt = 0;
										var dead_cnt = 0;
										var injury_cnt = 0;
										if(len==0){
								            ("No results were found for your search.")
								            return false;
								          }
										for (var i = 0; i < len; i++) {
											accident_cnt += response[i].????????????;

											dead_cnt += response[i].????????????;

											injury_cnt += response[i].????????????;

											$("#accidentsAccidents").text(
													accident_cnt);
											$("#accidentsDead").text(dead_cnt);
											$("#accidentsInjury").text(
													injury_cnt);
										}
										// ??????api
										var mapContainer = document
												.getElementById("map"), // ????????? ????????? div
										mapOption = {
											center : new kakao.maps.LatLng(
													37.5662952, 126.9779451), // ????????? ????????????
											level : 13, // ????????? ?????? ??????
										};

										var map = new kakao.maps.Map(
												mapContainer, mapOption); // ????????? ???????????????
										// ???????????? ????????? ????????? ????????? ??????
										if (cityTypeHidden == "??????") {
											for (var i = 0; i < len; i++) {
												var content = '<div class ="label"><span class="left">'
														+ response[i].region
														+ '</span><span class="center">'
														+ response[i].????????????
														+ '</span><span class="right"></span></div>';
												// ????????? ??????????????? ????????? ???????????????
												var latitude = response[i].latitude;
												var longitude = response[i].longitude;
												var position = new kakao.maps.LatLng(
														latitude, longitude);

												// ????????? ??????????????? ???????????????
												var customOverlay = new kakao.maps.CustomOverlay(
														{
															position : position,
															content : content,
														});

												// ????????? ??????????????? ????????? ???????????????
												customOverlay.setMap(map);
											}
										}
										// ????????? ??????????????? ????????? ???????????????
										// HTML ????????? ?????? Dom Element ?????????
										var content = '<div class ="label"><span class="left">'
												+ response[0].region
												+ '</span><span class="center">'
												+ response[0].????????????
												+ '</span><span class="right"></span></div>';
										// ????????? ??????????????? ????????? ???????????????
										var latitude = response[0].latitude;
										var longitude = response[0].longitude;
										var position = new kakao.maps.LatLng(
												latitude, longitude);

										// ????????? ??????????????? ???????????????
										var customOverlay = new kakao.maps.CustomOverlay(
												{
													position : position,
													content : content,
												});

										// ????????? ??????????????? ????????? ???????????????
										customOverlay.setMap(map);

										// ???????????? ?????? js
										$(".accidents-btn")
												.on(
														"click",
														function() {
															if (cityTypeHidden == "??????") {
																for (var i = 0; i < len; i++) {
																	var content = '<div class ="label"><span class="left">'
																			+ response[i].region
																			+ '</span><span class="center">'
																			+ response[i].????????????
																			+ '</span><span class="right"></span></div>';
																	var latitude = response[i].latitude;
																	var longitude = response[i].longitude;
																	var position = new kakao.maps.LatLng(
																			latitude,
																			longitude);

																	var customOverlay = new kakao.maps.CustomOverlay(
																			{
																				position : position,
																				content : content,
																			});

																	customOverlay
																			.setMap(map);
																}
															}
															var content = '<div class ="label"><span class="left">'
																	+ response[0].region
																	+ '</span><span class="center">'
																	+ response[0].????????????
																	+ '</span><span class="right"></span></div>';
															var latitude = response[0].latitude;
															var longitude = response[0].longitude;
															var position = new kakao.maps.LatLng(
																	latitude,
																	longitude);

															var customOverlay = new kakao.maps.CustomOverlay(
																	{
																		position : position,
																		content : content,
																	});

															customOverlay
																	.setMap(map);
														});
										$(".dead-btn")
												.on(
														"click",
														function() {
															if (cityTypeHidden == "??????") {
																for (var i = 0; i < len; i++) {
																	var content = '<div class ="label"><span class="left">'
																			+ response[i].region
																			+ '</span><span class="center">'
																			+ response[i].????????????
																			+ '</span><span class="right"></span></div>';
																	var latitude = response[i].latitude;
																	var longitude = response[i].longitude;
																	var position = new kakao.maps.LatLng(
																			latitude,
																			longitude);

																	var customOverlay = new kakao.maps.CustomOverlay(
																			{
																				position : position,
																				content : content,
																			});

																	customOverlay
																			.setMap(map);
																}
															}
															var content = '<div class ="label"><span class="left">'
																	+ response[0].region
																	+ '</span><span class="center">'
																	+ response[0].????????????
																	+ '</span><span class="right"></span></div>';
															var latitude = response[0].latitude;
															var longitude = response[0].longitude;
															var position = new kakao.maps.LatLng(
																	latitude,
																	longitude);

															var customOverlay = new kakao.maps.CustomOverlay(
																	{
																		position : position,
																		content : content,
																	});

															customOverlay
																	.setMap(map);
														});
										$(".injury-btn")
												.on(
														"click",
														function() {
															if (cityTypeHidden == "??????") {
																for (var i = 0; i < len; i++) {
																	var content = '<div class ="label"><span class="left">'
																			+ response[i].region
																			+ '</span><span class="center">'
																			+ response[i].????????????
																			+ '</span><span class="right"></span></div>';
																	var latitude = response[i].latitude;
																	var longitude = response[i].longitude;
																	var position = new kakao.maps.LatLng(
																			latitude,
																			longitude);

																	var customOverlay = new kakao.maps.CustomOverlay(
																			{
																				position : position,
																				content : content,
																			});

																	customOverlay
																			.setMap(map);
																}
															}
															var content = '<div class ="label"><span class="left">'
																	+ response[0].region
																	+ '</span><span class="center">'
																	+ response[0].????????????
																	+ '</span><span class="right"></span></div>';
															var latitude = response[0].latitude;
															var longitude = response[0].longitude;
															var position = new kakao.maps.LatLng(
																	latitude,
																	longitude);

															var customOverlay = new kakao.maps.CustomOverlay(
																	{
																		position : position,
																		content : content,
																	});

															customOverlay
																	.setMap(map);
														});
									},
								});
					});
</script>
<!-- script for first Pie Chart -->
<script>
	var contextPieChart = document.getElementById("pieChart").getContext("2d");
	var contextNewPieChart = document.getElementById("new-pieChart")
			.getContext("2d");
	$.ajax({
		url : "/api/v1/city",
		type : "GET",
		dataType : "json",
		success : function(response) {
			var seoul = 0;
			var busan = 0;
			var daegu = 0;
			var incheon = 0;
			var gwangju = 0;
			var daejeon = 0;
			var ulsan = 0;
			var kyeongki = 0;
			var kangwon = 0;
			var chungbuk = 0;
			var chungnam = 0;
			var jeonbuk = 0;
			var jeonnam = 0;
			var kyeongbuk = 0;
			var kyeongnam = 0;
			var jeju = 0;
			var sejong = 0;
			for (var i = 0; i < response.length; i++) {
				if (response[i].region == "Seoul")
					seoul += response[i].????????????;
				if (response[i].region == "Busan")
					busan += response[i].????????????;
				if (response[i].region == "Daegu")
					daegu += response[i].????????????;
				if (response[i].region == "Incheon")
					incheon += response[i].????????????;
				if (response[i].region == "Gwangju")
					gwangju += response[i].????????????;
				if (response[i].region == "Daejeon")
					daejeon += response[i].????????????;
				if (response[i].region == "Ulsan")
					ulsan += response[i].????????????;
				if (response[i].region == "Kyeongki")
					kyeongki += response[i].????????????;
				if (response[i].region == "Kangwon")
					kangwon += response[i].????????????;
				if (response[i].region == "Chungbuk")
					chungbuk += response[i].????????????;
				if (response[i].region == "Chungnam")
					chungnam += response[i].????????????;
				if (response[i].region == "Jeonbuk")
					jeonbuk += response[i].????????????;
				if (response[i].region == "Jeonnam")
					jeonnam += response[i].????????????;
				if (response[i].region == "Kyeongbuk")
					kyeongbuk += response[i].????????????;
				if (response[i].region == "Kyeongnam")
					kyeongnam += response[i].????????????;
				if (response[i].region == "Jeju")
					jeju += response[i].????????????;
				if (response[i].region == "Sejong")
					sejong += response[i].????????????;
			}
			var data = [ seoul, busan, daegu, incheon, gwangju, daejeon, ulsan,
					kyeongki, kangwon, chungbuk, chungnam, jeonbuk, jeonnam,
					kyeongbuk, kyeongnam, jeju, sejong, ];
			// ???????????? ???????????? ?????? ????????? ?????? ??????
			// ?????????(????????????)

			var myChart = new Chart(contextPieChart,
					{
						type : "doughnut", // ????????? ??????
						data : {
							// ????????? ????????? ?????????
							labels : [ "seoul",
					              "busan",
					              "daegu",
					              "incheon",
					              "gwangju",
					              "daejeon",
					              "ulsan",
					              "kyeongki",
					              "kangwon",
					              "chungbuk",
					              "chungnam",
					              "jeonbuk",
					              "jeonnam",
					              "kyeongbuk",
					              "kyeongnam",
					              "jeju",
					              "sejong",],
							datasets : [
									{
										//?????????
										label : "Number of Accidents", //?????? ??????
										data : data,
										backgroundColor : [
										// "rgb(255,0,0)",
										// "rgb(255,100,0)",
										// "rgb(255,200,0)",
										// "rgb(255,255,0)",
										// "rgb(200,255,0)",
										// "rgb(100,255,0)",
										// "rgb(0,255,0)",
										// "rgb(0,255,100)",
										// "rgb(0,255,200)",
										// "rgb(0,255,255)",
										// "rgb(0,200,255)",
										// "rgb(0,100,255)",
										// "rgb(0,0,255)",
										// "rgb(0,0,200)",
										// "rgb(0,0,100)",
										// "rgb(0,0,0)",
										// "gray",
										"rgb(0,0,0)", "rgb(15,15,15)",
												"rgb(30,30,30)",
												"rgb(45,45,45)",
												"rgb(60,60,60)",
												"rgb(75,75,75)",
												"rgb(90,90,90)",
												"rgb(105,105,105)",
												"rgb(120,120,120)",
												"rgb(135,135,135)",
												"rgb(150,150,150)",
												"rgb(165,165,165)",
												"rgb(180,180,180)",
												"rgb(195,195,195)",
												"rgb(210,210,210)",
												"rgb(225,225,225)",
												"rgb(240,240,240)", ],
										borderRadius : 10,
										borderColor : "white",
										borderWidth : 3, //????????? ??????
									}, ],
						},
						options : {
							plugins : {
								title : {
									display : true,
									text : "Pie Chart",
								},
								subtitle : {
									display : true,
									text : "Pie Chart by City",
									color : "skyblue",
								},
							},
						},
					});
		},
	});
	// ????????? ??????(session) ??????
	if("<%out.print(request.getSession().getAttribute("userId"));%>" !== "null") {
		$('#loginTag').css("display", "none");
		$('#infoTag').css("display", "block");
	} 
	else {
		$('#loginTag').css("display", "block");
		$('#infoTag').css("display", "none");
	}
	// ?????? ??????
	$("#language-select").on("change", function(){
	    if($('#language-select option:selected').text() == "Korean"){
	    	var result = confirm("Do you want to go to the Korean page?");
	    	if(result){
	    		location.href='/tas/main'
	    	}
	    	else{
	    		$('#language-select option:eq(0)').prop("selected", true);
	    	}
	    }
	    
	});
	// Excel ??????
	$("#excelDownEng").on("click", function () {
	  if("<%out.print(request.getSession().getAttribute("userId"));%>" == "null"){
		  alert("Login is required.")
		  location.href="/login/eng"
		  return false;
	  }
	  var popup = window.open(
	    "/survey/eng",
	    "survey",
	    "width=1000px, height=1200px, left=100, top=50"
	  );
	  location.href="/city/type/excel"
	});
</script>
</html>
