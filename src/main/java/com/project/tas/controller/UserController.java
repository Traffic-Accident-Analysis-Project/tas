package com.project.tas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.tas.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	// 로그인
	@GetMapping("/login")
	public String callLoginPage() {
		return "login";
	}
	// 로그아웃
//	@GetMapping("/logout")
//	public String callLoginout(HttpSession httpSession) {
//		httpSession.invalidate();
//		return "login";
//	}
	
	// 관리자 / 일반회원 선택
	@GetMapping("tas/join/select")
	public String callJoinSelect() {
		return "checkAdminUser";
	}
	
	// 관리자코드 입력팝업
	@GetMapping("/tas/admin/code")
	public String callCheckAdminCode() {
		return "popup/checkAdminPopup";
	}
	
	@GetMapping("/tas/join/admin")
	public String callJoinAdmin() {
		return "joinAdmin";
	}
	
	@GetMapping("/tas/join/user")
	public String callJoinUser() {
		return "joinUser";
	}
	
	// 마이페이지
	@GetMapping("/tas/my/info")
	public String callMyPage() {
		return "myPage";
	}
	
	// 회원 수정 페이지
	@GetMapping("/tas/my/info/update")
	public String callUpdateMyInfo() {
		return "reMyInfo";
	}
	
	@GetMapping("/tas/user/secession")
	public String callSecession() {
		return "popup/secessionPopup";
	}
}
