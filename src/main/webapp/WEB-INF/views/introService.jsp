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
    <title>T.A.S 서비스 소개</title>
    <link rel="stylesheet" href="/resources/static/css/introService.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <div class="container">
      <div class="top-background-color">
        <header>
          <div class="circle-01"></div>
          <div class="circle-02"></div>
          <div class="circle-03"></div>
          <div class="row top">
            <a href="/tas/main">home</a>
            <i
              class="fa-solid fa-house-chimney"
              style="color: #eaeaea; margin-left: 5px; margin-top: 3px"
            ></i>
            <select name="lang-selbox" id="">
              <option value="korea">한글</option>
              <option value="eng">영어</option>
            </select>
          </div>
          <div class="row header-category">
            <div class="logo">
              <a href="/tas/main">
                <img src="/resources/static/images/T.A.S-logo.png" alt="" />
              </a>
            </div>
            <div class="row category">
              <div class="category-link dropdown">
                <div class="link-button">통계 자료실</div>
                <div class="dropdown-content">
                  <a href="/law">법규 위반</a>
                  <a href="/alcohol">음주 정도</a>
                  <a href="/road">도로 종류</a>
                  <a href="/accident">사고 유형</a>
                  <a href="/city">시도 별</a>
                </div>
              </div>
              <div class="category-link service-link">
                <a href="/tas/intro">서비스 소개</a>
              </div>
              <div class="category-link client-link">
                <a href="/service/center">고객 센터</a>
              </div>
              <div class="category-link login-link">
                <input id="loginSessionHidden" type="hidden" value="" /> 
				<a id="loginTag" href="/login">로그인</a> 
				<a id="infoTag" style="display: none" href="/tas/my/info">마이페이지</a>
              </div>
            </div>
          </div>
        </header>
      </div>
      <!-- header end -->
      <div class="bottom-background-color">
        <footer>
          <div class="footer-img">
            <img src="/resources/static/images/T.A.S-logo.png" alt="" />
          </div>
          <div class="footer-info">
            <p>이용약관 | 개인정보처리방침 | 운영 관리 방침</p>
            <p>email : jyg12770@google.com | email : skwjdtn3171@naver.com</p>
            <p>
              (우)34838 대전 중구 중앙로 121번길 20 | 대표전화 : 042-222-2402
            </p>
          </div>
          <div class="footer-btn">
            <button
              type="button"
              style="cursor: pointer"
              onclick="window.scrollTo({top:0, left:0, behavior:'smooth'});"
            >
              top
            </button>
            <i class="fa-solid fa-angle-up"></i>
          </div>
        </footer>
        </footer>
      </div>
    </div>
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
  </body>
    <script src="/resources/static/js/index.js"></script>
    <script type="text/javascript">
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
