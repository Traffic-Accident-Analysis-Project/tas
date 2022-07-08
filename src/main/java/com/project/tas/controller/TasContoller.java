package com.project.tas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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

	// 고객센터 상세보기 팝업
	@GetMapping("/popup/service/center/view/detail")
	public String tasServiceCenterViewDetail() {
		return "/popup/serviceCenterMainPopup";
	}

	// 고객센터 업데이트 비밀번호 팝업
	@GetMapping("/popup/update/password")
	public String tasUpdatePw() {
		return "/popup/updatePwConfirmPopup";
	}

	// 고객센터 삭제 비밀번호 팝업
	@GetMapping("/popup/delete/password")
	public String tasDeletePw() {
		return "/popup/deletePwConfirmPopup";
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

	// 고객센터 상세보기 팝업
	@GetMapping("/popup/service/center/view/detail/eng")
	public String tasServiceCenterViewDetailEng() {
		return "/popup/serviceCenterMainPopupEng";
	}

	// 고객센터 업데이트 비밀번호 팝업
	@GetMapping("/popup/update/password/eng")
	public String tasUpdatePwEng() {
		return "/popup/updatePwConfirmPopupEng";
	}

	// 고객센터 삭제 비밀번호 팝업
	@GetMapping("/popup/delete/password/eng")
	public String tasDeletePwEng() {
		return "/popup/deletePwConfirmPopupEng";
	}
}
