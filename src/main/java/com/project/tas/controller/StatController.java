package com.project.tas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StatController {
//	@Autowired StatService statService;

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

	// 영어페이지

	// 사고유형 eng
	@GetMapping("/accident/eng")
	public String callAccidentEngPage() {
		return "statisticalData/accidentTypeEng";
	}

	// 음주측정 eng
	@GetMapping("/alcohol/eng")
	public String callalcoholEngPage() {
		return "statisticalData/alcoholEng";
	}

	// 시도별 eng
	@GetMapping("/city/eng")
	public String callcityEngPage() {
		return "statisticalData/cityTypeEng";
	}

	// 법규위반 eng
	@GetMapping("/law/eng")
	public String calllawEngPage() {
		return "statisticalData/lawEng";
	}

	// 도로유형 eng
	@GetMapping("/road/eng")
	public String callroadEngPage() {
		return "statisticalData/roadTypeEng";
	}

}
