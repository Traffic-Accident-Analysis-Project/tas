package com.project.tas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SurveyController {
	
	@GetMapping("/survey")
	public String callSurveyPage() {
		return "popup/survey";
	}
	
	//영어페이지
	@GetMapping("/survey/eng")
	public String callSurveyPageEng() {
		return "popup/surveyEng";
	}
}
