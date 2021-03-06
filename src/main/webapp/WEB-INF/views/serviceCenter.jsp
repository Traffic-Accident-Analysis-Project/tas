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
    <title>T.A.S 고객센터</title>
    <link rel="stylesheet" href="/resources/static/css/serviceCenter.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  </head>
  <body>
    <div class="container">
       <!-- popup for delete -->
      <div class="main-pw-confirm-popup delete">
        <div class="pw-confirm-top">
          <button class="popup-close-pw-del" type="button"></button>
        </div>
        <p>비밀번호를 입력 해 주세요</p>
        <div class="pw-confirm-wrap">
          <input type="password" id="passwordForDelete" />
          <button type="button" id="btn-passwordForDelete">확인</button>
        </div>
      </div>
      <!-- popup for update -->
      <div class="main-pw-confirm-popup update">
        <div class="pw-confirm-top">
          <button class="popup-close-pw-upd" type="button"></button>
        </div>
        <p>비밀번호를 입력 해 주세요</p>
        <div class="pw-confirm-wrap">
          <input type="password" id="passwordForUpdate" />
          <button type="button" id="btn-passwordForUpdate">확인</button>
        </div>
      </div>
      <!-- main화면 main popup -->
      <div class="main-popup">
        <div class="top-btn-area">
          <button class="popup-close" type="button"></button>
        </div>
        <div class="row">
          <div class="row-col label-wrap">
            <label for="number">글 번호</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
            <label for="writer">작성자</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
            <label for="categry">카테고리</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
            <label for="create-at">작성날짜</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
            <label for="cnt">조회수</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
          </div>
          <div class="row-col input-wrap">
            <input id="number" type="text" value="01" readonly />
            <input id="writer" type="text" value="작성자" readonly />
            <input id="categry" type="text" value="카테고리" readonly />
            <input id="create-at" type="text" value="작성날짜" readonly />
            <input id="cnt" type="text" value="3" readonly />
          </div>
        </div>
        <div class="row-col main-text-wrap">
          <label for="main-text">본문</label>
          <input id="main-text" type="text" value="본문" />
          <hr
            style="
              margin-left: -1px;
              margin-top: 20px;
              width: 480px;
              background-color: #6f6669;
              opacity: 0.4;
            "
          />
        </div>
        <div class="row-col comment-wrap">
          <label for="comment">댓글</label>
          <input id="comment" type="text" value="댓글 없음" readonly />
        </div>
        <div class="btn-area">
          <a href="#" class="btn-cancel">삭제</a>
          <!-- 비밀글일 경우 수정버튼 공개글일경우 수정버튼 숨기기 -->
          <a href="#" class="btn-success">수정</a>
        </div>
      </div>
      <!-- popup end -->
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
            <select name="lang-selbox" id="language-select">
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
        <div class="service-center-section">
          <div class="row service-center-section-header">
            <h2>고객 센터</h2>
            <div class="row search-wrap">
              <label for="writer_search">작성자 </label>
              <input id=searchBar name="wirter_search" type="text" placeholder="작성자를 입력해주세요">
              <input id="keyword" type="hidden" value="null">
              <button id="search-btn" type="button">검색</button>
            </div>
            <a href="/tas/service/write" class="service-write-btn">글 작성</a>
          </div>
          <table>
            <thead>
              <tr>
                <th>글 번호</th>
                <th>작성자</th>
                <th>제목</th>
                <th>작성 날짜</th>
                <th>조회 수</th>
              </tr>
            </thead>
            <tbody id="boardData">
              <!-- <tr>
              <td>1</td>
              <td>현상원</td>
              <td>점심시간이 너무 짧아요!</td>
              <td>2022-05-19</td>
              <td><span>8320</span></td>
            </tr>
            <tr>
              <td>2</td>
              <td>현상원</td>
              <td>학원에 커피기계가 없어요!</td>
              <td>2022-05-18</td>
              <td><span>1200</span></td>
            </tr>
            <tr>
              <td>3</td>
              <td>현상원</td>
              <td>너무 졸려요...</td>
              <td>2022-05-19</td>
              <td><span>5</span></td>
            </tr>
            <tr>
              <td>4</td>
              <td>현상원</td>
              <td>안녕하세요!</td>
              <td>2022-05-19</td>
              <td><span>22</span></td>
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
    <script src="/resources/static/js/index.js"></script>
    <link rel="stylesheet"
		href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script type="text/javascript">
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
		    if($('#language-select option:selected').text() == "영어"){
		    	var result = confirm("영문페이지로 이동하시겠습니까?");
		    	if(result){
		    		location.href='/tas/main/eng'
		    	}
		    	else{
		    		$('#language-select option:eq(0)').prop("selected", true);
		    	}
		    }
		    
		});
		$(function() {
			$('.main-popup').draggable();
		});
		$(function() {
			$('.main-pw-confirm-popup').draggable();
		});
    </script>
  </body>
</html>
