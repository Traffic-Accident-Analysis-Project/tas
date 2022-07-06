package com.project.tas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TasContoller {

	@GetMapping("/tas/main")
	public String tasMain() {
		return "index";
	}
	
	@GetMapping("/tas/intro")
	public String tasIntro() {
		return "introService";
	}
	
	
}
