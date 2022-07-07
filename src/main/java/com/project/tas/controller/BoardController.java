package com.project.tas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.tas.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;

	// 고객센터
	@GetMapping("/service/center")
	public String callServiceCenter() {
		return "serviceCenter";
	}

	// 글 작성
	@GetMapping("/tas/service/write")
	public String callServiceWrite() {
		return "serviceWrite";
	}

	// 영어페이지
	// 고객센터
	@GetMapping("/service/center/eng")
	public String callServiceCenterEng() {
		return "serviceCenterEng";
	}

	// 글 작성
	@GetMapping("/tas/service/write/eng")
	public String callServiceWriteEng() {
		return "serviceWriteEng";
	}
}
