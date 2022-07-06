package com.project.tas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.tas.service.SurveyService;
import com.project.tas.vo.SurveyVO;

@RestController
@RequestMapping("/api/v1")
public class SurveyRestController {
	@Autowired
	private SurveyService surveyService;
	
	@PostMapping("/survey")
	@CrossOrigin
	public int callSaveSurvey(@RequestBody SurveyVO vo) {
		return surveyService.setSaveSurvey(vo);
	}
}
