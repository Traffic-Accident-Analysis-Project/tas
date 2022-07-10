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
    <title>T.A.S by 교사팀</title>
    <link rel="stylesheet" href="/resources/static/css/firstMain.css" />
  </head>
  <body>
    <div class="container">
      <div class="js_img">
        <div class="js_git_addr">
          <a href="https://github.com/JeongSooNa">
            <img src="/resources/static/images/jsgit_neon.png" alt="" />
            <img src="/resources/static/images/jsgit_white.png" alt="" />
          </a>
        </div>
        <img class="js_neon" src="/resources/static/images/js_neon.png" alt="" />
        <img class="js_neon" src="/resources/static/images/js_neon.png" alt="" />
        <img class="js_white" src="/resources/static/images/js_white.png" alt="" />
      </div>
      <div class="tas_img">
        <a href="/tas/main">
          <img class="tas_neon" src="/resources/static/images/tas_neon.png" alt="" />
          <img class="tas_neon" src="/resources/static/images/tas_neon.png" alt="" />
          <img class="tas_white" src="/resources/static/images/tas_white.png" alt="" />
        </a>
      </div>
      <div class="stopu_img">
        <div class="stopu_git_addr">
          <a href="https://github.com/stooooopu">
            <img class="jiyoo_neon" src="/resources/static/images/jiyoo_neon.png" alt="" />
            <img class="jiyoo_neon" src="/resources/static/images/jiyoo_neon.png" alt="" />
            <img
              class="jiyoo_white"
              src="/resources/static/images/jiyoo_white.png"
              alt=""
            />
          </a>
        </div>
        <img class="stopu_neon" src="/resources/static/images/stopu_neon.png" alt="" />
        <img class="stopu_white" src="/resources/static/images/stopu_white.png" alt="" />
      </div>
    </div>
  </body>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <script>
    $(".js_img").ready(function () {
      $(".js_img").mouseover(function () {
        $(".js_neon").css("display", "block");
        $(".js_git_addr").css("display", "block");
      });

      $(".js_img").mouseout(function () {
        $(".js_neon").css("display", "none");
        $(".js_git_addr").css("display", "none");
      });
    });

    $(".stopu_img").ready(function () {
      $(".stopu_img").mouseover(function () {
        $(".stopu_neon").css("display", "block");
        $(".stopu_git_addr").css("display", "block");
      });

      $(".stopu_img").mouseout(function () {
        $(".stopu_neon").css("display", "none");
        $(".stopu_git_addr").css("display", "none");
      });
    });

    $(".tas_img").ready(function () {
      $(".tas_img").mouseover(function () {
        $(".tas_neon").css("display", "block");
        $(".tas_project_addr").css("display", "block");
        $(".tas_img").css("transform", "scale(1.2)");
        $(".tas_img").css("transition", "0.2s");
      });

      $(".tas_img").mouseout(function () {
        $(".tas_neon").css("display", "none");
        $(".tas_project_addr").css("display", "none");
        $(".tas_img").css("transform", "scale(1)");
      });
    });
  </script>
</html>
