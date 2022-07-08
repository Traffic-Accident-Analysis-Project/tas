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
<title>T.A.S MyPage</title>
<link rel="stylesheet" href="/resources/static/css/myPage.css" />
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
							<input id="loginSessionHidden" type="hidden" value="" /> 
							<a id="loginTag" href="/login/eng">Login</a> 
							<a id="infoTag" style="display: none" href="/tas/my/info/eng">MyPage</a>
						</div>
					</div>
				</div>
			</header>
		</div>
		<!-- header end -->
		<div class="bottom-background-color">
			<div class="my-page-wrap">
				<div class="row-space my-page-user-id-wrap">
					<label for="user-id">User ID</label>
					<div class="my-page-item my-page-user-id"></div>
				</div>
				<hr style="width: 32%; margin-top: 0.5%; margin-left: 8%" />
				<div class="row-space my-page-user-id-wrap">
					<label for="user-name">User Name</label>
					<div class="my-page-item my-page-user-name"></div>
				</div>
				<hr style="width: 32%; margin-top: 0.5%; margin-left: 8%" />
				<div class="row-space my-page-user-id-wrap">
					<label for="user-gendel">Gender</label>
					<div class="my-page-item my-page-user-gender"></div>
				</div>
				<hr style="width: 32%; margin-top: 0.5%; margin-left: 8%" />
				<div class="my-page-btn">
					<button id="re-my-info-btn" type="button">Edit My Information</button>
					<button id="logout-btn" type="button">Logout</button>
					<button id="admin-page-btn" type="button" style="display:none" >Admin Page</button>
				</div>
				 
				<!--<div class="my-write">
					<div class="my-write-board-header">
						<p>내 문의</p>
					</div>
					<table>
						<thead>
							<tr>
								<th>글 번호</th>
								<th>작성자</th>
								<th>문의 유형</th>
								<th>작성 날짜</th>
								<th>조회 수</th>
							</tr>
						</thead>
						<tbody id="boardData">
							<tr>
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
							</tr>
						</tbody>
					</table>
					<div class="pagination">
						<a href="#">Previous</a> <a href="#">1</a> <a href="#">2</a> <a
							href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">Next</a>
					</div>
				</div>-->
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
		</div>
	</div>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script src="/resources/static/js/index.js"></script>
	<script>
		if("<%out.print(request.getSession().getAttribute("autority"));%>" == "admin"){
			$('#logout-btn').css("display","none");
			$('#admin-page-btn').css("display","block");
		}
		$('#admin-page-btn').click(function(){
			location.href = "/manager/main";
		})
		
		$("#re-my-info-btn").on("click", function() {
			location.href = "/tas/my/info/update/eng";
		});

		// 로그아웃으로 수정
		$("#logout-btn").on("click", function() {
			var isLogout = confirm("Are you sure you want to log out?");
			if (isLogout) {
				$.ajax({
					url : "/api/v1/logout",
					type : "GET",
					success : function(response) {
						location.href = "/login/eng";
					},
					error : function(request, status, error) {
						console.log("에러 내용은 : " + error);
					},
				});
			}

		});
		
		// 사용자 정보로 input 값 가져오기
		$.ajax({
			url : "/api/v1/user/my/info/id/name/gender",
			type : "GET",
			success : function(response) {
				$('.my-page-user-id').text(response.userId);
				$('.my-page-user-name').text(response.userName);
				$('.my-page-user-gender').text(response.userGender);
				if(response.userGender == "m"){
					$('.my-page-user-gender').text("Male");
				}
				if(response.userGender == "f"){
					$('.my-page-user-gender').text("Female");
				}
			},
			error : function(request, status, error) {
				console.log("에러 내용은 : " + error);
			},
		});
		
		// 로그인 여부(session) 확인
		if("<%out.print(request.getSession().getAttribute("userId"));%>" !== "null"){
			$('#loginTag').css("display","none");
			$('#infoTag').css("display","block");
		}
		else{
			$('#loginTag').css("display","block");
			$('#infoTag').css("display","none");
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
</body>
</html>
