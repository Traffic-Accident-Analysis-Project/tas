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
    <title>logsPopup</title>
    <style>
      input:focus {
        outline: none;
      }
      .row {
        display: flex;
      }
      .row-col {
        display: flex;
        flex-direction: column;
      }
      .popup {
        width: 600px;
        height: 450px;
      }
      .popup input {
        background-color: transparent;
        border: none;
      }
      .label-wrap {
        margin-left: 50px;
        margin-top: 100px;
        width: 25%;
      }
      .input-wrap {
        margin-top: 97px;
        width: 100%;
      }
      label {
        height: 30px;
        margin-top: 16px;
      }
      input {
        height: 31px;
        font-size: 17px;
        margin-top: 13px;
        margin-left: 15px;
      }
      #main-text {
        border: 1px solid var(--middel-grey);
        width: 80%;
        height: auto;
      }
      #comment {
        border: 1px solid var(--middel-grey);
        width: 80%;
        height: 50px;
      }
      #createAt {
        margin-top: 15px;
      }
      #url {
        margin-top: 20px;
      }
      #httpMethod {
        margin-top: 15px;
      }
    </style>
  </head>
  <body>
    <div class="popup">
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
  </body>
  <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"
  ></script>
  <script src="/resources/static/js/manager.js"></script>
</html>
