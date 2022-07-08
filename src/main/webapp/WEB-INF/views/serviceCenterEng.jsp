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
    <title>T.A.S Service Center</title>
    <link rel="stylesheet" href="/resources/static/css/serviceCenter.css" />
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
      <!-- popup for delete -->
      <div class="main-pw-confirm-popup delete">
        <div class="pw-confirm-top">
          <button class="popup-close" type="button"></button>
        </div>
        <p>Please enter a password</p>
        <div class="pw-confirm-wrap">
          <input type="password" id="passwordForDelete" />
          <button type="button" id="btn-passwordForDelete">확인</button>
        </div>
      </div>
      <!-- popup for update -->
      <div class="main-pw-confirm-popup update">
        <div class="pw-confirm-top">
          <button class="popup-close" type="button"></button>
        </div>
        <p>Please enter a password</p>
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
            <label for="number">No</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
            <label for="writer">Writer</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
            <label for="categry">Category</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
            <label for="create-at">Create Date</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
            <label for="cnt">Views</label>
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
          <label for="main-text">main text</label>
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
          <label for="comment">comment</label>
          <input id="comment" type="text" value="댓글 없음" readonly />
        </div>
        <div class="btn-area">
          <a href="#" class="btn-cancel">Delete</a>
          <!-- 비밀글일 경우 수정버튼 공개글일경우 수정버튼 숨기기 -->
          <a href="#" class="btn-success">Update</a>
        </div>
      </div>
      <!-- popup end -->
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
        <div class="service-center-section">
          <div class="row service-center-section-header">
            <h2>Service Center</h2>
            <div class="row search-wrap">
              <label for="writer_search">Writer</label>
              <input id="searchBar" name="wirter_search" type="text" placeholder="Please enter the Writer">
              <input id="keyword" type="hidden" value="null">
              <button id="search-btn" type="button">Search</button>
            </div>
            <a href="/tas/service/write/eng" class="service-write-btn">Writing</a>
          </div>
          <table>
            <thead>
              <tr>
                <th>No</th>
                <th>Writer</th>
                <th>Title</th>
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
