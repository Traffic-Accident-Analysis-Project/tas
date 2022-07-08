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
<link rel="stylesheet" href="/resources/static/css/engCss/introServiceEng.css" />
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
						<p>This accident, which took place in a children's protection area, was caused by Kim Min-sik holding his brother's hand.</p>
						<p>While crossing the crosswalk, he was hit by an SUV that did not slow down and died.</p>
						<p>Kim Min-sik's parents posted a message on the Blue House public petition bulletin board to prevent this from happening again.</p>
						<p>
After that, a new law on children's protection areas called the 'Minshik Act' was also enacted.</p>
						<br> <br>
						<p>There are traffic accidents that have such a big impact on the world,</p>
						<p>Most are not reported on TV or in newspapers.</p>
						<p>Therefore, T.A.S provides visualization materials that can be viewed </p>
						<p>at a glance and services that allow users to view the data they want.</p>
						<p>It was created to raise awareness about the increasing number of traffic accidents.</p>
					</div>
				</div>
				<div class="row intro-right-wrap">
					<div class="img-wrap">
						<img src="/resources/static/images/intro_car.jpg" alt="">
					</div>
					<div class="right-text-wrap">
						<div class="right-text-item">
							<h1>Service Provided</h1>
							<p>user-selected data's</p>
							<p>
								<span>Histogram</span>
							</p>
							<p>
								<span>Pie Chart   </span>provide
							</p>
							<br>
							<p>Excel file</p>
							<p>
								<span>by Category   </span>provide
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
		if("<%out.print(request.getSession().getAttribute("userId"));%>" !== "null") {
		$('#loginTag').css("display", "none");
		$('#infoTag').css("display", "block");
	} else {
		$('#loginTag').css("display", "block");
		$('#infoTag').css("display", "none");
	}
	// 언어 선택
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
</script>
</html>
