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
<title>T.A.S Edit Information</title>
<link rel="stylesheet" href="/resources/static/css/engCss/reMyInfoEng.css" />
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
			<div class="re-my-info-wrap">
				<h1>Edit My Information</h1>
				<!-- 기존 정보가 적혀있어야 함-->
				<label for="userName">Name</label> <input id="userName" type="text" />
				<label for="password">Password</label> <input id="password"
					type="password" /> <label for="rePassword">reconfirm password</label> <input
					id="rePassword" type="password" /> <label for="email-id">e-mail Address</label>
				<div class="row re-email-wrap">
					<input id="email-id" type="text" /> <input type="hidden"
						id="emailAddrHidden" /> <select name="email-addr" id="email-addr"
						onchange="emailAddrVal(this.value)">
						<option value="">e-mail Address</option>
						<option value="email-user-write">Direct input</option>
						<option value="@gmail.com">@gmail.com</option>
						<option value="@google.com">@google.com</option>
						<option value="@naver.com">@naver.com</option>
						<option value="@hanmail.net">@hanmail.net</option>
						<option value="@daum.net">@daum.net</option>
						<option value="@hotmail.com">@hotmail.com</option>
					</select>
				</div>
				<input id="email-user-write-box" type="text" style="display: none"
					placeholder="ex) @email.com" /> <label for="addr">Address</label>
				<div class="re-addr-wrap">
					<div class="addr-btn-wrap">
						<input id="addr" type="text" onclick="getPostCode()" />
						<button type="button" onclick="getPostCode()">Street name address</button>
					</div>
					<input id="user-detail-addr" type="text" placeholder="  Detailed Address" />
				</div>
				<!-- 회원탈퇴 추가 -->
				<button id="secession-btn" type="button">User Secession</button>
				<div class="re-my-info-btn">
					<button id="btn-cancle" type="button">Cancel</button>
					<button id="btn-save" type="button" onclick="saveInfo()">
						Save</button>
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
		</div>
	</div>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		$("#btn-cancle").on("click", function() {
			var result = confirm("Are you sure you want to cancel editing my information?");
			if (result) {
				location.href = "/tas/my/info/eng";
			}
		});
		// 내정보수정이 실행되자마자 input에 값 들어가는 ajax
		$.ajax({
			url : "/api/v1/re/my/info",
			type : "GET",
			dataType : "json",
			success : function(response) {
				//console.log(response);
				$("#email-user-write-box").css("display", "block");
				$("input[id=userName]").attr("value", response.user_name);
				$("input[id=email-id]").attr("value", response.user_email_id);
				$("input[id=email-user-write-box]").attr("value",
						response.user_email_addr);
				$("input[id=addr]").attr("value", response.user_addr);
				$("input[id=user-detail-addr]").attr("value",
						response.user_detail_addr);
			},
		});
		var emailAddrVal = function(value) {
			$("#emailAddrHidden").val(value);
			if ($("#emailAddrHidden").val() == "email-user-write") {
				$("#email-user-write-box").css("display", "block");
			}
			if ($("#emailAddrHidden").val() != "email-user-write") {
				$("#email-user-write-box").css("display", "none");
			}
		};

		// 도로명주소
		function getPostCode() {
			// daum클래스는 위에 script cdn에서 불러옴
			new daum.Postcode({
				// oncomplete : 내가 주소를 입력했다면 실행 해
				oncomplete : function(data) {
					// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ""; // 도로명 조합형 주소 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== "" && data.apartment === "Y") {
						extraRoadAddr += extraRoadAddr !== "" ? ", "
								+ data.buildingName : data.buildingName;
					}
					// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== "") {
						extraRoadAddr = " (" + extraRoadAddr + ")";
					}
					// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
					if (fullRoadAddr !== "") {
						fullRoadAddr += extraRoadAddr;
					}
					addr = $("#addr").val(data.zonecode + ", " + fullRoadAddr);
					addr = addr[0].value;
					//data.zoncode = 우편번호
					// 만약 우편번호까지 나오게 하고 싶으면 밑에 zonecode포함된걸 하기
				},
			}).open();
		}

		function saveInfo() {
			var name = $("#userName").val();
			var password = $("#password").val();
			var rePassword = $("#rePassword").val();
			var emailId = $("#email-id").val();
			var emailAddr = $("#emailAddrHidden").val();
			var detailAddr = $("#user-detailAddr").val();
			// 사용자가 직접메일주소를 입력했을 경우
			var directlyEmailAddr = $("#email-user-write-box").val();
			if (password !== rePassword) {
				alert("The password entered is different");
				$("#rePassword").focus();
				return false;
			}

			// API서버에 전송할 json생성 (email 선택시)
			var jsonData = {
				userName : name,
				userPassword : password,
				userEmailId : emailId,
				userEmailAddr : directlyEmailAddr,
				userAddr : addr.value,
				userDetailAddr : detailAddr,
			};
			if (emailAddr != "") {
				// directlyEmailAddr = "";
				jsonData = {
					userName : name,
					userPassword : password,
					userEmailId : emailId,
					userEmailAddr : emailAddr,
					userAddr : addr.value,
					userDetailAddr : detailAddr,
				};
			}
	
			/*var regExpName = /^[가-힣]{2,4}$/;
			if (!regExpName.test(name)) {
				alert("이름은 한글로 2~4글자 이내입니다");
				return false;
			}*/

			var regExpPw = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;
			if (!regExpPw.test(password)) {
				alert("The password is a combination of 8 to 16 alphanumeric characters.");
				return false;
			}
			var result = confirm("Do you want to edit member information?");
			if (result) {
				$.ajax({
					url : "/api/v1/re/my/info",
					type : "PATCH",
					contentType : "application/json",
					dataType : "json",
					data : JSON.stringify(jsonData),
					success : function(response) {
						if (response > 0) {
							alert("Member information modification has been completed.");
							location.replace("/tas/my/info/eng");
						}
					},
					error : function(request, status, error) {
						console.log("에러 내용은 : " + error);
					},
				});
			}
			if (!result) {
				alert("Member information modification has been canceled");
				emailAddr = "";
				return false;
			}
		}
		// 회원탈퇴 버튼 js 추가
		$('#secession-btn').click(
				function() {
					var result = confirm("Are you sure you want to leave?");
					if (result) {
						var popup = window.open("/tas/user/secession/eng",
								"password-check",
								"width=470px, height=200px, left=100, top=50");
					}
				})
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
