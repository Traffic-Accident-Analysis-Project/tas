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
<title>T.A.S Service Introduction</title>
<link rel="stylesheet" href="/resources/static/css/introService.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<div class="container">
		<div class="top-background-color">
			<header>
				<div class="circle-01"></div>
				<div class="circle-02"></div>
				<div class="circle-03"></div>
				<div class="row top">
					<a href="/tas/main/eng">home</a> <i class="fa-solid fa-house-chimney"
						style="color: #eaeaea; margin-left: 5px; margin-top: 3px"></i>
					<select name="lang-selbox" id="">
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
			<div class="row intro-service-main-wrap">
				<div class="intro-text-wrap">
					<div class="intro-title">
						<p>Introduce for</p>
						<h1>T.A.S</h1>
					</div>
					<div class="intro-main-text">
						<p>Currently, hundreds of traffic accident drivers are pouring in in Korea every day.</p>
						<p>In 2019, there was an accident involving a child, Min-sik Kim, which caused a stir in the Republic of Korea.</p>
						<p>어린이보호구역에서 일어난 이 사고는 김민식군이 동생의 손을 잡고</p>
						<p>횡단보도를 건너던 중 속도를 줄이지 않고 오는 SUV차량에 치여 숨지는 사고였습니다.</p>
						<p>김민식군의 부모님은 다시는 이런일이 일어나지 않도록 청와대 국민청원 게시판에 글을 올렸고</p>
						<p>그 후 일명 '민식이 법'이라는 어린이보호구역에 대한 법도 새로 제정되었습니다.</p>
						<br> <br>
						<p>이처럼 세상에 큰 영향을 주는 교통사고도 있지만,</p>
						<p>대부분은 TV나 신문에 보도되지 못합니다.</p>
						<p>이에 저희 T.A.S는 한 눈에 볼 수 있는 시각화 자료와</p>
						<p>사용자가 원하는 데이터를 볼 수 있는 서비스를 제공,</p>
						<p>갈수록 늘어나는 교통사고에대한 경각심을 주기위해 만들어졌습니다.</p>
					</div>
				</div>
				<div class="row intro-right-wrap">
					<div class="img-wrap">
						<img src="/resources/static/images/intro_car.jpg" alt="">
					</div>
					<div class="right-text-wrap">
						<div class="right-text-item">
							<h1>제공 서비스</h1>
							<p>사용자가 선택한 데이터의</p>
							<p>
								<span>막대 그래프</span>
							</p>
							<p>
								<span>원형 그래프</span>제공
							</p>
							<br>
							<p>카테고리별</p>
							<p>
								<span>엑셀파일</span>제공
							</p>
							<br> <br> <i class="fa-solid fa-car fa-7x"></i>
						</div>
					</div>
				</div>
			</div>

			<footer>
				<div class="footer-img">
					<img src="/resources/static/images/T.A.S-logo.png" alt="" />
				</div>
				<div class="footer-info">
					<p>이용약관 | 개인정보처리방침 | 운영 관리 방침</p>
					<p>email : jyg12770@google.com | email : skwjdtn3171@naver.com</p>
					<p>(우)34838 대전 중구 중앙로 121번길 20 | 대표전화 : 042-222-2402</p>
				</div>
				<div class="footer-btn">
					<button type="button" style="cursor: pointer"
						onclick="window.scrollTo({top:0, left:0, behavior:'smooth'});">
						top</button>
					<i class="fa-solid fa-angle-up"></i>
				</div>
			</footer>
			</footer>
		</div>
	</div>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
</body>
<script src="/resources/static/js/index.js"></script>
<script type="text/javascript">
	 	// 로그인 여부(session) 확인
		if("<%out.print(request.getSession().getAttribute("userId"));%>
	" !== "null") {
		console.log("session있음")
		$('#loginTag').css("display", "none");
		$('#infoTag').css("display", "block");
	} else {
		$('#loginTag').css("display", "block");
		$('#infoTag').css("display", "none");
		console.log("session없음")
	}
</script>
</html>
