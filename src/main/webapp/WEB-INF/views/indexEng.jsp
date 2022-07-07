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
<title>T.A.S</title>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<link rel="stylesheet" href="/resources/static/css/mainStyle.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<div class="container">
		<header>
			<div class="row top">
				<a href="/tas/main/eng">home</a> <i class="fa-solid fa-house-chimney"
					style="color: #eaeaea; margin-left: 5px; margin-top: 3px"></i> <select
					name="lang-selbox" id="">
					<option value="eng">English</option>
					<option value="korea">Korean</option>
				</select>
			</div>
			<div class="row">
				<div class="logo">
					<a href="/tas/main/eng"> <img
						src="/resources/static/images/T.A.S-logo.png" alt="" />
					</a>
				</div>
				<div class="row category">
					<div class="category-link dropdown">
						<div class="link-button">Statistics Reference</div>
						<div class="dropdown-content">
							<a href="/law/eng">Violation of Law</a> 
							<a href="/alcohol/eng">Degree of Drinking</a> 
							<a href="/road/eng">Road Type</a> 
							<a href="/accident/eng">Accident Type</a> 
							<a href="/city/eng">By City</a>
						</div>
					</div>
					<div class="category-link service-link">
						<a href="/tas/intro/eng">Service Introduction</a>
					</div>
					<div class="category-link client-link">
						<a href="/service/center/eng">Service Center</a>
					</div>
					<div class="category-link login-link">
						<input id="loginSessionHidden" type="hidden" value="" /> 
						<a id="loginTag" href="/login/eng">Login</a> 
						<a id="infoTag" style="display: none" href="/tas/my/info/eng">MyPage</a>
					</div>
				</div>
			</div>
			<div class="header-text-wrap">
				<h1>
					T <span>Traffic</span>
				</h1>
				<h1>
					A <span>Accident</span>
				</h1>
				<h1>
					S <span>Statistics</span>
				</h1>
			</div>
		</header>
		<!-- 메인화면 서비스 소개 -->
		<div class="main-service-intro-wrap">
			<h1>T.A.S Service Introduction</h1>
			<p>Introduce for Traffic Accident Statistics</p>
			<div class="row main-emoji-wrap">
				<div class="main-emoji-item">
            <h3>TAS Production <br>Background</h3>
            <div class="emoji">
              <i class="fa-regular fa-lightbulb fa-6x"></i>
            </div>
            <div class="emoji-text-wrap">
              <p>It was created to raise awareness </p>
              <p>about traffic accidents</p>
              <p>that occur hundreds of times a day</p>
              <p>and cause numerous casualties.</p>
            </div>
          </div>
          <div class="main-emoji-item">
            <div class="emoji">
              <h3>TAS Production <br>Process</h3>
              <a
                href="https://github.com/Traffic-Accident-Analysis-Project"
                style="color: white"
              >
                <i class="fa-regular fa-lightbulb fa-6x"></i>
              </a>
            </div>
            <div class="emoji-text-wrap">
              <p>If you click icon</p>
              <p>You can see all TAS script</p>
            </div>
          </div>
          <div class="main-emoji-item">
            <div class="emoji">
              <h3>TAS<br>Objective</h3>
              <i class="fa-regular fa-lightbulb fa-6x"> </i>
            </div>
            <div class="emoji-text-wrap">
              <p>Provide custom graphs, charts and maps</p>
              <p>Providing Excel downloads, etc.</p>
              <p>Customized to the consumer<br> To provide traffic accident statistics service</p>
            </div>
          </div>
          <div class="main-emoji-item">
            <div class="emoji">
              <h3>TAS Development <br>Direction</h3>
              <i class="fa-regular fa-lightbulb fa-6x"></i>
            </div>
            <div class="emoji-text-wrap">
              <p>TAS continuously listens to customers' voices <br> through the customer center</p>
              <p>By identifying needs through surveys</p>
              <p>We will provide a better service than the present</p>
            </div>
          </div>
			</div>

			<div class="swiper">
				<!-- Additional required wrapper -->
				<div class="swiper-wrapper">
					<!-- Slides -->
					<div class="swiper-slide">
						<div class="swiper-text-wrap">
							<h2>2016 Traffic Statistics</h2>
							<div class="swiper-card-wrap">
								<div class="swiper-card">
									<div class="swiper-card-name">Number ofAccidents</div>
									<div id="swiper-accidents-cnt">441,834</div>
								</div>
								<div class="swiper-card">
									<div class="swiper-card-name">Number of Deaths</div>
									<div id="swiper-dead-cnt">8,584</div>
								</div>
								<div class="swiper-card">
									<div class="swiper-card-name">Number of Injured</div>
									<div id="swiper-injury-cnt">663,440</div>
								</div>
							</div>
						</div>
						<img
							src="/resources/static/images/car-accident-g8bdc6172b_1280.jpg"
							alt="" />
					</div>
					<div class="swiper-slide">
						<div class="swiper-text-wrap">
							<h2>2017 Traffic Statistics</h2>
							<div class="swiper-card-wrap">
								<div class="swiper-card">
									<div class="swiper-card-name">Number ofAccidents</div>
									<div id="swiper-accidents-cnt">432,670</div>
								</div>
								<div class="swiper-card">
									<div class="swiper-card-name">Number of Deaths</div>
									<div id="swiper-dead-cnt">8,370</div>
								</div>
								<div class="swiper-card">
									<div class="swiper-card-name">Number of Injured</div>
									<div id="swiper-injury-cnt">645,658</div>
								</div>
							</div>
						</div>
						<img
							src="/resources/static/images/car-accident-g6d1835f54_1280.jpg"
							alt="" />
					</div>
					<div class="swiper-slide">
						<div class="swiper-text-wrap">
							<h2>2018 Traffic Statistics</h2>
							<div class="swiper-card-wrap">
								<div class="swiper-card">
									<div class="swiper-card-name">Number ofAccidents</div>
									<div id="swiper-accidents-cnt">434,296</div>
								</div>
								<div class="swiper-card">
									<div class="swiper-card-name">Number of Deaths</div>
									<div id="swiper-dead-cnt">7,562</div>
								</div>
								<div class="swiper-card">
									<div class="swiper-card-name">Number of Injured</div>
									<div id="swiper-injury-cnt">646,074</div>
								</div>
							</div>
						</div>
						<img src="/resources/static/images/automobile-gd8498f51e_1280.jpg"
							alt="" />
					</div>
					<div class="swiper-slide">
						<div class="swiper-text-wrap">
							<h2>2019 Traffic Statistics</h2>
							<div class="swiper-card-wrap">
								<div class="swiper-card">
									<div class="swiper-card-name">Number ofAccidents</div>
									<div id="swiper-accidents-cnt">459,200</div>
								</div>
								<div class="swiper-card">
									<div class="swiper-card-name">Number of Deaths</div>
									<div id="swiper-dead-cnt">6,698</div>
								</div>
								<div class="swiper-card">
									<div class="swiper-card-name">Number of Injured</div>
									<div id="swiper-injury-cnt">683,424</div>
								</div>
							</div>
						</div>
						<img
							src="/resources/static/images/car-accident-g7519b9649_1280.jpg"
							alt="" />
					</div>
					<div class="swiper-slide">
						<div class="swiper-text-wrap">
							<h2>2020 Traffic Statistics</h2>
							<div class="swiper-card-wrap">
								<div class="swiper-card">
									<div class="swiper-card-name">Number ofAccidents</div>
									<div id="swiper-accidents-cnt">419,308</div>
								</div>
								<div class="swiper-card">
									<div class="swiper-card-name">Number of Deaths</div>
									<div id="swiper-dead-cnt">6,162</div>
								</div>
								<div class="swiper-card">
									<div class="swiper-card-name">Number of Injured</div>
									<div id="swiper-injury-cnt">612,388</div>
								</div>
							</div>
						</div>
						<img src="/resources/static/images/crash-gdc5bfcae5_1280.jpg"
							alt="" />
					</div>
				</div>
				<!-- If we need pagination -->
				<div class="swiper-pagination"></div>

				<!-- If we need navigation buttons -->
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
			</div>
		</div>

		<!-- 메인 서비스화면 end -->
		<div class="main-section">
			<div class="main-graph-section">
				<!-- <img src="img/임시이미지.png" alt="" /> -->
				<h1>Traffic Statistics Gragh</h1>
				<div class="canvas-wrapper">
					<div class="canvas-item no1">
						<canvas id="histogram" width="500" height="500"></canvas>
					</div>
					<div class="canvas-item no1">
						<canvas id="lineChart" width="500" height="500"></canvas>
					</div>
					<div class="canvas-item no1">
						<canvas id="pieChart" width="200" height="200"></canvas>
					</div>
				</div>
			</div>
			<div class="main-user-board-list-section">
				<div class="main-user-board-header">
					<p>Service Center</p>
				</div>
				<table>
					<thead>
						<tr>
							<th>No</th>
							<th>Writer</th>
							<th>Question Type</th>
							<th>Create Date</th>
							<th>Views</th>
						</tr>
					</thead>
					<tbody id="boardData">
						<!-- <tr>
                  <td>1</td>
                  <td>현상원</td>
                  <td>점심시간이 너무 짧아요!</td>
                  <td>2022-05-19</td>
                  <td><span class="cnt-high">8320</span></td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>현상원</td>
                  <td>학원에 커피기계가 없어요!</td>
                  <td>2022-05-18</td>
                  <td><span class="cnt-middle">1200</span></td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>현상원</td>
                  <td>너무 졸려요...</td>
                  <td>2022-05-19</td>
                  <td><span class="cnt-row">5</span></td>
                </tr>
                <tr>
                  <td>4</td>
                  <td>현상원</td>
                  <td>안녕하세요!</td>
                  <td>2022-05-19</td>
                  <td><span class="cnt-row">22</span></td>
                </tr> -->
					</tbody>
				</table>
				<div class="pagination">
					<!-- <a href="#">Previous</a>
              <a href="#">1</a>
              <a href="#">2</a>
              <a href="#">3</a>
              <a href="#">4</a>
              <a href="#">5</a>
              <a href="#">Next</a> -->
				</div>
			</div>
		</div>
		<!-- main-section end -->
		<footer>
			<div class="footer-img">
				<img src="/resources/static/images/T.A.S-logo.png" alt="" />
			</div>
			<div class="footer-info">
				<p>
	              Terms of Service | privacy policy | Operational management policy
	            </p>
	            <p>email : jyg12770@google.com | email : skwjdtn3171@naver.com</p>
	            <p>
	              (Zip code)34838 20, Jungang-ro 121beon-gil, Jung-gu, Daejeon,
	              Republic of Korea
	            </p>
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
	<!-- container end -->
</body>
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
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
<script src="/resources/static/js/index.js"></script>
<script>
	const swiper = new Swiper(".swiper", {
		// Optional parameters
		autoplay : {
			delay : 3000,
		},
		loop : true,

		// If we need pagination
		pagination : {
			el : ".swiper-pagination",
		},

		// Navigation arrows
		navigation : {
			nextEl : ".swiper-button-next",
			prevEl : ".swiper-button-prev",
		},
	});
</script>
<!-- script for Chart.js -->
<script>
	var contextHistogram = document.getElementById("histogram")
			.getContext("2d");
	var contextLineChart = document.getElementById("lineChart")
			.getContext("2d");
	var contextPieChart = document.getElementById("pieChart").getContext("2d");
	$.ajax({
		url : "/api/v1/accident",
		type : "GET",
		dataType : "json",
		success : function(response) {
			// 월별로 배열에 data +.
			// 사고유형1,2
			var dataAccidents = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ];
			var dataDeath = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ];
			var dataInjured = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ];
			for (var i = 0; i < response.length; i++) {
				// 여기에 if문으로 년도,월,유형 등 조정사항 입력
				// 월별 data 입력
				if (response[i].month == "jan") {
					dataAccidents[0] += response[i].사고건수;
					dataDeath[0] += response[i].사망자수;
					dataInjured[0] += response[i].부상자수;
				}
				if (response[i].month == "feb") {
					dataAccidents[1] += response[i].사고건수;
					dataDeath[1] += response[i].사망자수;
					dataInjured[1] += response[i].부상자수;
				}
				if (response[i].month == "mar") {
					dataAccidents[2] += response[i].사고건수;
					dataDeath[2] += response[i].사망자수;
					dataInjured[2] += response[i].부상자수;
				}
				if (response[i].month == "apr") {
					dataAccidents[3] += response[i].사고건수;
					dataDeath[3] += response[i].사망자수;
					dataInjured[3] += response[i].부상자수;
				}
				if (response[i].month == "may") {
					dataAccidents[4] += response[i].사고건수;
					dataDeath[4] += response[i].사망자수;
					dataInjured[4] += response[i].부상자수;
				}
				if (response[i].month == "jun") {
					dataAccidents[5] += response[i].사고건수;
					dataDeath[5] += response[i].사망자수;
					dataInjured[5] += response[i].부상자수;
				}
				if (response[i].month == "jul") {
					dataAccidents[6] += response[i].사고건수;
					dataDeath[6] += response[i].사망자수;
					dataInjured[6] += response[i].부상자수;
				}
				if (response[i].month == "aug") {
					dataAccidents[7] += response[i].사고건수;
					dataDeath[7] += response[i].사망자수;
					dataInjured[7] += response[i].부상자수;
				}
				if (response[i].month == "sep") {
					dataAccidents[8] += response[i].사고건수;
					dataDeath[8] += response[i].사망자수;
					dataInjured[8] += response[i].부상자수;
				}
				if (response[i].month == "oct") {
					dataAccidents[9] += response[i].사고건수;
					dataDeath[9] += response[i].사망자수;
					dataInjured[9] += response[i].부상자수;
				}
				if (response[i].month == "nov") {
					dataAccidents[10] += response[i].사고건수;
					dataDeath[10] += response[i].사망자수;
					dataInjured[10] += response[i].부상자수;
				}
				if (response[i].month == "dec") {
					dataAccidents[11] += response[i].사고건수;
					dataDeath[11] += response[i].사망자수;
					dataInjured[11] += response[i].부상자수;
				}
			}
			// chart 생성
			var myChart = new Chart(contextHistogram, {
				type : "bar", // 차트의 형태
				data : {
					// 차트에 들어갈 데이터
					labels : [
					//x 축
					"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11",
							"12", ],
					datasets : [ {
						//데이터
						label : "Number of Accidents", //차트 제목
						fill : false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
						data : dataAccidents,
						backgroundColor : "rgba(255, 99, 132, 0.2)",
						borderColor : "rgba(255, 99, 132, 1)",
						borderWidth : 1, //경계선 굵기
					}, {
						label : "Number of Deaths",
						fill : false,
						data : dataDeath,
						backgroundColor : "rgba(54, 162, 235, 0.2)",
						borderColor : "rgba(54, 162, 235, 1)",
						borderWidth : 1,
					}, {
						label : "Number of Injured",
						fill : false,
						data : dataInjured,
						backgroundColor : "rgba(255, 206, 86, 0.2)",
						borderColor : "rgba(255, 206, 86, 1)",
						borderWidth : 1,
					}, ],
				},
				options : {
					plugins : {
						title : {
							display : true,
							text : "Bar Chart",
						},
						subtitle : {
							display : true,
							text : "Histogram by Month",
							color : "skyblue",
						},
					},
				},
			});
		},
	});
	// Line Chart
	// Line Chart for Law
	$
			.ajax({
				url : "/api/v1/accident",
				type : "GET",
				dataType : "json",
				success : function(response) {
					// 월별로 배열에 data +.
					// 사고유형1,2
					var dataAccidents = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0 ];
					var dataDeath = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
							0, 0 ];
					var dataInjured = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0 ];
					for (var i = 0; i < response.length; i++) {
						if (response[i].month != "all")
							continue;
						if (response[i].시점 == 2005) {
							dataAccidents[0] += response[i].사고건수;
							dataDeath[0] += response[i].사망자수;
							dataInjured[0] += response[i].부상자수;
						}
						if (response[i].시점 == 2006) {
							dataAccidents[1] += response[i].사고건수;
							dataDeath[1] += response[i].사망자수;
							dataInjured[1] += response[i].부상자수;
						}
						if (response[i].시점 == 2007) {
							dataAccidents[2] += response[i].사고건수;
							dataDeath[2] += response[i].사망자수;
							dataInjured[2] += response[i].부상자수;
						}
						if (response[i].시점 == 2008) {
							dataAccidents[3] += response[i].사고건수;
							dataDeath[3] += response[i].사망자수;
							dataInjured[3] += response[i].부상자수;
						}
						if (response[i].시점 == 2009) {
							dataAccidents[4] += response[i].사고건수;
							dataDeath[4] += response[i].사망자수;
							dataInjured[4] += response[i].부상자수;
						}
						if (response[i].시점 == 2010) {
							dataAccidents[5] += response[i].사고건수;
							dataDeath[5] += response[i].사망자수;
							dataInjured[5] += response[i].부상자수;
						}
						if (response[i].시점 == 2011) {
							dataAccidents[6] += response[i].사고건수;
							dataDeath[6] += response[i].사망자수;
							dataInjured[6] += response[i].부상자수;
						}
						if (response[i].시점 == 2012) {
							dataAccidents[7] += response[i].사고건수;
							dataDeath[7] += response[i].사망자수;
							dataInjured[7] += response[i].부상자수;
						}
						if (response[i].시점 == 2013) {
							dataAccidents[8] += response[i].사고건수;
							dataDeath[8] += response[i].사망자수;
							dataInjured[8] += response[i].부상자수;
						}
						if (response[i].시점 == 2014) {
							dataAccidents[9] += response[i].사고건수;
							dataDeath[9] += response[i].사망자수;
							dataInjured[9] += response[i].부상자수;
						}
						if (response[i].시점 == 2015) {
							dataAccidents[10] += response[i].사고건수;
							dataDeath[10] += response[i].사망자수;
							dataInjured[10] += response[i].부상자수;
						}
						if (response[i].시점 == 2016) {
							dataAccidents[11] += response[i].사고건수;
							dataDeath[11] += response[i].사망자수;
							dataInjured[11] += response[i].부상자수;
						}
						if (response[i].시점 == 2017) {
							dataAccidents[12] += response[i].사고건수;
							dataDeath[12] += response[i].사망자수;
							dataInjured[12] += response[i].부상자수;
						}
						if (response[i].시점 == 2018) {
							dataAccidents[13] += response[i].사고건수;
							dataDeath[13] += response[i].사망자수;
							dataInjured[13] += response[i].부상자수;
						}
						if (response[i].시점 == 2019) {
							dataAccidents[14] += response[i].사고건수;
							dataDeath[14] += response[i].사망자수;
							dataInjured[14] += response[i].부상자수;
						}
						if (response[i].시점 == 2020) {
							dataAccidents[15] += response[i].사고건수;
							dataDeath[15] += response[i].사망자수;
							dataInjured[15] += response[i].부상자수;
						}
					}

					var myChart = new Chart(contextLineChart, {
						type : "line", // 차트의 형태
						data : {
							// 차트에 들어갈 데이터
							labels : [
							//x 축
							"2005", "2006", "2007", "2008", "2009", "2010",
									"2011", "2012", "2013", "2014", "2015",
									"2016", "2017", "2018", "2019", "2020", ],
							datasets : [ {
								//데이터
								label : "Number of Accidents", //차트 제목
								fill : false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
								data : dataAccidents,
								backgroundColor : "rgba(255, 99, 132, 0.2)",
								borderColor : "rgba(255, 99, 132, 1)",
								borderWidth : 1, //경계선 굵기
							}, {
								label : "Number of Deaths",
								fill : false,
								data : dataDeath,
								backgroundColor : "rgba(54, 162, 235, 0.2)",
								borderColor : "rgba(54, 162, 235, 1)",
								borderWidth : 1,
							}, {
								label : "Number of Injured",
								fill : false,
								data : dataInjured,
								backgroundColor : "rgba(255, 206, 86, 0.2)",
								borderColor : "rgba(255, 206, 86, 1)",
								borderWidth : 1,
							}, ],
						},
						options : {
							responsive : true,
							plugins : {
								title : {
									display : true,
									text : "Line Chart",
								},
								subtitle : {
									display : true,
									text : "Line Chart by Year",
									color : "skyblue",
								},
							},
						},
					});
				},
			});
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
					seoul += response[i].사고건수;
				if (response[i].region == "Busan")
					busan += response[i].사고건수;
				if (response[i].region == "Daegu")
					daegu += response[i].사고건수;
				if (response[i].region == "Incheon")
					incheon += response[i].사고건수;
				if (response[i].region == "Gwangju")
					gwangju += response[i].사고건수;
				if (response[i].region == "Daejeon")
					daejeon += response[i].사고건수;
				if (response[i].region == "Ulsan")
					ulsan += response[i].사고건수;
				if (response[i].region == "Kyeongki")
					kyeongki += response[i].사고건수;
				if (response[i].region == "Kangwon")
					kangwon += response[i].사고건수;
				if (response[i].region == "Chungbuk")
					chungbuk += response[i].사고건수;
				if (response[i].region == "Chungnam")
					chungnam += response[i].사고건수;
				if (response[i].region == "Jeonbuk")
					jeonbuk += response[i].사고건수;
				if (response[i].region == "Jeonnam")
					jeonnam += response[i].사고건수;
				if (response[i].region == "Kyeongbuk")
					kyeongbuk += response[i].사고건수;
				if (response[i].region == "Kyeongnam")
					kyeongnam += response[i].사고건수;
				if (response[i].region == "Jeju")
					jeju += response[i].사고건수;
				if (response[i].region == "Sejong")
					sejong += response[i].사고건수;
			}
			var data = [ seoul, busan, daegu, incheon, gwangju, daejeon, ulsan,
					kyeongki, kangwon, chungbuk, chungnam, jeonbuk, jeonnam,
					kyeongbuk, kyeongnam, jeju, sejong, ];
			// 여기까지 그래프에 넣을 데이터 배열 생성
			// 그래프(도넛차트)

			var myChart = new Chart(contextPieChart,
					{
						type : "doughnut", // 차트의 형태
						data : {
							// 차트에 들어갈 데이터
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
										//데이터
										label : "Number of Accidents", //차트 제목
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
										borderWidth : 2, //경계선 굵기
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

	// 로그인 여부(session) 확인
	if("<%out.print(request.getSession().getAttribute("userId"));%>" !== "null"){
		console.log("session있음")
		$('#loginTag').css("display","none");
		$('#infoTag').css("display","block");
	}
	else{
		$('#loginTag').css("display","block");
		$('#infoTag').css("display","none");
		console.log("session없음")
	}
	
	

	
</script>
</html>
