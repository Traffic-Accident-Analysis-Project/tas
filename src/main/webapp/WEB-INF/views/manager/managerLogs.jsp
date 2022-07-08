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
    <title>T.A.S 관리자페이지_logs</title>
    <link rel="stylesheet" href="/resources/static/css/manager.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <div class="row container">
      <div class="popup-logs">
        <div class="top-btn-area">
          <button class="btn-close" type="button"></button>
        </div>
        <div class="row">
          <div class="row-col label-wrap">
            <label for="logId">로그번호</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
            <label for="ip">IP</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
            <label for="url">요청 URL</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
            <label for="httpMethod">HTTP Method</label>
            <hr
              style="
                margin: 0;
                width: 480px;
                background-color: #6f6669;
                opacity: 0.4;
              "
            />
            <label for="createAt">접속날짜</label>
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
            <input id="logId" type="text" value="" readonly />
            <input id="ip" type="text" value="" readonly />
            <input id="url" type="text" value="" readonly />
            <input id="httpMethod" type="text" value="" readonly />
            <input id="createAt" type="text" value="" readonly />
          </div>
        </div>
      </div>
      <div class="header">
        <div class="side-nav">
          <ul class="nav-links">
            <li>
              <a href="/manager/main"
                ><i class="fa-solid fa-comment-dots"></i>고객센터</a
              >
            </li>
            <li>
              <a href="/manager/logs"
                ><i class="fa-solid fa-gear"></i>Logs</a
              >
            </li>
            <li>
              <a href="/tas/main">
                <i class="fa-solid fa-t"></i>
                T.A.S메인</a
              >
            </li>
            <li>
              <a class="logout" href="#"
                ><i class="fa-solid fa-arrow-right-from-bracket"></i>log-out</a
              >
            </li>
          </ul>
        </div>
      </div>
      <div class="manager-board-log">
        <h1>Logs</h1>
        <table>
          <thead>
            <tr>
              <th>로그 번호</th>
              <th>IP</th>
              <th>요청 URL</th>
              <th>HTTP Method</th>
              <th>접속 날짜</th>
            </tr>
          </thead>
          <tbody id="logBoardData">
            <!-- <tr>
              <td>1</td>
              <td>192.158.0.252</td>
              <td>/board</td>
              <td>GET</td>
              <td>2022-05-19 13:33:02</td>
            </tr>
            <tr>
              <td>2</td>
              <td>192.158.0.252</td>
              <td>/board</td>
              <td>GET</td>
              <td>2022-05-19 13:33:02</td>
            </tr>
            <tr>
              <td>3</td>
              <td>192.158.0.252</td>
              <td>/board</td>
              <td>GET</td>
              <td>2022-05-19 13:33:02</td>
            </tr> -->
          </tbody>
        </table>
        <div class="pagination">
          <a href="#">Previous</a>
          <a href="#">1</a>
          <a href="#">2</a>
          <a href="#">3</a>
          <a href="#">4</a>
          <a href="#">5</a>
          <a href="#">Next</a>
        </div>
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
  <script src="/resources/static/js/manager.js"></script>
  	<link rel="stylesheet"
		href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script type="text/javascript">
	$(function() {
		$('.popup-logs').draggable();
	});
	</script>
</html>
