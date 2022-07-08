package com.project.tas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TasContoller {

	// 메인
	@GetMapping("/tas/main")
	public String tasMain(HttpSession session) {
		return "index";
	}

	// 서비스 소개
	@GetMapping("/tas/intro")
	public String tasIntro() {
		return "introService";
	}

	// popup
	// admin 회원가입시 관리자코드 팝업
	@GetMapping("/popup/check/admin/code")
	public String tasAdminCodeConfirm() {
		return "/popup/checkAdminPopup";
	}

	// 탈퇴 팝업
	@GetMapping("/popup/secession/confirm")
	public String tasSecession() {
		return "/popup/secessionPopup";
	}


	// 영어페이지
	// 메인
	@GetMapping("/tas/main/eng")
	public String tasMainEng(HttpSession session) {
		return "indexEng";
	}

	// 서비스 소개
	@GetMapping("/tas/intro/eng")
	public String tasIntroEng() {
		return "introServiceEng";
	}
	
	// popup
	// admin 회원가입시 관리자코드 팝업
	@GetMapping("/popup/check/admin/code/eng")
	public String tasAdminCodeConfirmEng() {
		return "/popup/checkAdminPopupEng";
	}

	// 탈퇴 팝업
	@GetMapping("/popup/secession/confirm/eng")
	public String tasSecessionEng() {
		return "/popup/secessionPopupEng";
	}

}
