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
		return "statisticalData/accidentType";
	}
	@GetMapping("/alcohol")
	public String callalcoholPage() {
		return "statisticalData/alcohol";
	}
	@GetMapping("/city")
	public String callcityPage() {
		return "statisticalData/cityType";
	}
	@GetMapping("/law")
	public String calllawPage() {
		return "statisticalData/law";
	}
	@GetMapping("/road")
	public String callroadPage() {
		return "statisticalData/roadType";
	}
	
}
