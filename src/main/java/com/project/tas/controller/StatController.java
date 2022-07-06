package com.project.tas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StatController {
//	@Autowired StatService statService;
	
	// Hello world
	@GetMapping("/home")
	public String callIndex() {
		return "index";
	}
	// 사고유형
	@GetMapping("/accident")
	public String callAccidentPage() {
		return "statisticalData/accidentType";
	}
	// 음주측정
	@GetMapping("/alcohol")
	public String callalcoholPage() {
		return "statisticalData/alcohol";
	}
	// 시도별
	@GetMapping("/city")
	public String callcityPage() {
		return "statisticalData/cityType";
	}
	// 법규위반
	@GetMapping("/law")
	public String calllawPage() {
		return "statisticalData/law";
	}
	// 도로유형
	@GetMapping("/road")
	public String callroadPage() {
		return "statisticalData/roadType";
	}
	
}
