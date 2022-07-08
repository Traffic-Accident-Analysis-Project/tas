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
    <title>T.A.S Login</title>
    <link rel="stylesheet" href="/resources/static/css/login.css" />
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
            <a href="/tas/main/eng">home</a>
            <i
              class="fa-solid fa-house-chimney"
              style="color: #eaeaea; margin-left: 5px; margin-top: 3px"
            ></i>
            <select name="lang-selbox" id="language-select">
              <option value="eng">English</option>
              <option value="korea">Korean</option>
            </select>
          </div>
          <div class="row header-category">
            <div class="logo">
              <a href="/tas/main/eng">
                <img src="/resources/static/images/T.A.S-logo.png" alt="" />
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
                <a href="/login/eng">Login</a>
              </div>
            </div>
          </div>
        </header>
      </div>
      <!-- header end -->
      <div class="bottom-background-color">
        <div class="main-login-section">
          <h2>Login</h2>
          <!-- <hr style="margin-top : 5%"> -->
          <div class="total-wrap">
            <div class="row-column id-pw-ptag-wrap">
              <p>ID</p>
              <p>PW</p>
            </div>
            <div class="row-column id-pw-input-wrap">
              <input id="userId" type="text" />
              <input id="userPassword" type="password" />
            </div>
          </div>
          <div class="row login-btn-wrap">
            <button class="join-button" type="button">Sign Up</button>
            <button class="login-button" type="button">Login</button>
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
      </div>
    </div>
  </body>
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
  <script src="/resources/static/js/index.js"></script>
  <script>
    // login - > join
    $(".join-button").on("click", function () {
      var result = confirm("Would you like to become a member?");
      if (result) {
        location.href = "/tas/join/select/eng";
      }
    });
    
    // 로그인
    $(".login-button").on("click", function () {
      var userIdVal = $("#userId").val();
      var userPasswordVal = $("#userPassword").val();


      if (userIdVal == "" || userPasswordVal == "") {
        alert("Please fill in the blanks");
        $("#userId").focus();
        return false;
      }
      var jsonData = {
        userId: userIdVal,
        userPassword: userPasswordVal,
      };

      $.ajax({
        url: "/api/v1/login",
        type: "POST",
        contentType: "application/json", // 서버에 json타입으로 보낼 예정(요청)
        dataType: "json", // 서버에 결과를 json으로 응답 받겠다
        data: JSON.stringify(jsonData), // 이걸 안쓰면 jsonType이 아닌 문자로 인식
        success: function (response) {
          if (response) {
            location.href = "/tas/main/eng"; //페이지 이동
          } else {
            alert("Please check member information");
            return false;
          }
        },
      });
    });

    $("#userPassword").keyup(function (key) {
      if (key.keyCode == 13) {
        var userIdVal = $("#userId").val();
        var userPasswordVal = $("#userPassword").val();

        if (userIdVal == "" || userPasswordVal == "") {
          alert("Please fill in the blanks");
          $("#userId").focus();
          return false;
        }
        var jsonData = {
          userId: userIdVal,
          userPassword: userPasswordVal,
        };

        $.ajax({
          url: "/api/v1/login",
          type: "POST",
          contentType: "application/json", // 서버에 json타입으로 보낼 예정(요청)
          dataType: "json", // 서버에 결과를 json으로 응답 받겠다
          data: JSON.stringify(jsonData), // 이걸 안쓰면 jsonType이 아닌 문자로 인식
          success: function (response) {
            if (response) {
              location.href = "/tas/main/eng"; //페이지 이동
            } else {
              alert("Please check member information");
              return false;
            }
          },
        });
      }
    });
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
