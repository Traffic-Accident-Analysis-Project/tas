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
	
	
}