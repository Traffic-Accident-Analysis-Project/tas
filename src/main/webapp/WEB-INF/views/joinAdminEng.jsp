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
    <title>T.A.S Admin Sign UP</title>
    <link rel="stylesheet" href="/resources/static/css/join.css" />
  </head>
  <body>
    <div class="container">
      <div class="join-section">
        <h1>Sign UP</h1>
        <label for="userId">ID</label>
        <div class="user-id-section">
          <input id="userId" type="text" />
          <button id="check-id-btn" type="button" onclick="idCheck()">
            ID double check
          </button>
        </div>
        <label for="userName">Name</label>
        <input id="userName" type="text" />
        <label for="password">Password</label>
        <input id="password" type="password" />
        <label for="rePassword">Reconfirm Password</label>
        <input id="rePassword" type="password" />
        <label for="email-wrap">e-mail Address</label>
        <div class="email-wrap">
          <input id="email-id" type="text" placeholder="  e-mail" />
          <input type="hidden" id="emailAddrHidden" />
          <select
            name="email-addr"
            id="email-addr"
            onchange="emailAddrVal(this.value)"
          >
            <option value="">e-mail Address</option>
            <option value="email-user-write">Direct input</option>
            <option value="@gmail">@gmail.com</option>
            <option value="@google">@google.com</option>
            <option value="@naver">@naver.com</option>
            <option value="@hanmail">@hanmail.net</option>
            <option value="@daum">@daum.net</option>
            <option value="@hotmail">@hotmail.com</option>
          </select>
        </div>
        <input id="email-user-write-box" type="text" style="display: none" />
        <div class="btn-wrap">
          <button class="join-button" type="button" onclick="join()">
            sign up
          </button>
          <button class="cancel-button" type="button">cancel</button>
        </div>
      </div>
    </div>
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <script>
      var emailAddrVal = function (value) {
        $("#emailAddrHidden").val(value);
        if ($("#emailAddrHidden").val() == "email-user-write") {
          $("#email-user-write-box").css("display", "block");
        }
        if ($("#emailAddrHidden").val() != "email-user-write") {
          $("#email-user-write-box").css("display", "none");
        }
      };

      // 회원가입 취소 > 로그인페이지
      $(".cancel-button").on("click", function () {
        var result = confirm("Are you sure you want to cancel your Sign Up?");
        if (result) {
          location.href = "/login/eng";
        }
      });

      var checkOrNot = false;
      // id중복체크
      function idCheck() {
        var id = $("#userId").val();

        if (id == "") {
          alert("Please enter your ID");
          return false;
        }

        var regExp = /^(?=.*[a-zA-Z])[-a-zA-Z0-9_.]{6,20}$/;
        if (!regExp.test(id)) {
          alert("It is a combination of English letters, numbers, and special characters, 6 to 20 characters long.");
          return false;
        }

        $.ajax({
          url: "/api/v1/check/id/" + id,
          type: "GET",
          dataType: "json",
          success: function (response) {
            var len = response.length;
            if (len == 0) {
              alert("ID available");
              checkOrNot = true;
            }
            if (len > 0) {
              alert("ID is already registered");
            }
          },
        });
      }

      // 회원가입
      function join() {
        var id = $("#userId").val();
        var name = $("#userName").val();
        var password = $("#password").val();
        var rePassword = $("#rePassword").val();
        var emailId = $("#email-id").val();
        var emailAddr = $("#emailAddrHidden").val();
        // 사용자가 직접메일주소를 입력했을 경우
        var directlyEmailAddr = $("#email-user-write-box").val();

        // 빈칸 체크
        if (
          id == "" ||
          password == "" ||
          rePassword == "" ||
          name == "" ||
          emailId == "" ||
          emailAddr == ""
        ) {
          alert("Please fill out all forms");
          return false;
        }

        // 비밀번호, 비밀번호 재확인이 동일한지 체크
        if (password !== rePassword) {
          alert("The password entered is different");
          $("#rePassword").focus();
          return false;
        }

        // API서버에 전송할 json생성 (email선택시)
        if (emailAddr != "" && directlyEmailAddr == "") {
          var jsonData = {
            userId: id,
            userName: name,
            userPassword: password,
            userEmailId: emailId,
            userEmailAddr: emailAddr,
            autority: "admin",
          };
          var regExpName = /^[가-힣]{2,4}$/;
          if (!regExpName.test(name)) {
            alert("The name must be within 2 to 4 characters in Korean.");
            return false;
          }
          /*var regExpPw = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;
          if (!regExpPw.test(password)) {
            alert("The password is a combination of 8 to 16 alphanumeric characters.");
            return false;
          }*/
          var result = confirm("Would you like to join?");
          if (result && checkOrNot) {
            $.ajax({
              url: "/api/v1/user",
              type: "POST",
              contentType: "application/json", // 서버에 json타입으로 보낼 예정(요청)
              dataType: "json", // 서버에 결과를 json으로 응답 받겠다
              data: JSON.stringify(jsonData), // 이걸 안쓰면 jsonType이 아닌 문자로 인식
              success: function (response) {
                if (response > 0) {
                  alert("Sign up is complete.");
                  location.replace("/login/eng");
                }
              },
            });
          }
          if (!result) {
            alert("Sign up has been canceled");
            emailAddr = "";
            return false;
          }
          if (!checkOrNot) {
            alert("Please double check ID");
            return false;
          }
        }
        // API서버에 전송할 json생성 (email직접입력시)
        if (emailAddr == "email-user-write" && directlyEmailAddr != "") {
          var jsonData = {
            userId: id,
            userName: name,
            userPassword: password,
            userEmailId: emailId,
            userEmailAddr: directlyEmailAddr,
            autority: "admin",
          };
          /*var regExpName = /^[가-힣]{2,4}$/;
          if (!regExpName.test(name)) {
            alert("The name must be within 2 to 4 characters in Korean.");
            return false;
          }*/
          var regExpPw = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;
          if (!regExpPw.test(password)) {
            alert("The password is a combination of 8 to 16 alphanumeric characters.");
            return false;
          }

          var regExp = /^@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
          if (!regExp.test(directlyEmailAddr)) {
            alert("Email address is in the form of @emailaddr.net")
            return false;
          }

          var result = confirm("Would you like to register?");
          if (result && checkOrNot) {
            $.ajax({
              url: "/api/v1/admin",
              type: "POST",
              contentType: "application/json", // 서버에 json타입으로 보낼 예정(요청)
              dataType: "json", // 서버에 결과를 json으로 응답 받겠다
              data: JSON.stringify(jsonData), // 이걸 안쓰면 jsonType이 아닌 문자로 인식
              success: function (response) {
                if (response > 0) {
                  alert("Sign up is complete.");
                  location.replace("/login/eng");
                }
              },
            });
          }
          if (!result) {
            alert("Sign up has been canceled");
            directlyEmailAddr = "";
            return false;
          }
          if (!checkOrNot) {
            alert("Please double check ID");
            return false;
          }
        }
      }
    </script>
  </body>
</html>
