package com.project.tas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StatController {
//	@Autowired StatService statService;
	
	@GetMapping("/home")
	public String callIndex() {
		return "index";
	}
	
	@GetMapping("/accident")
	public String callAccidentPage() {
		return "accident";
	}
}
