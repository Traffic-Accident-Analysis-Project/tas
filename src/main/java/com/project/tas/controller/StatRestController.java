package com.project.tas.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.tas.service.StatService;

@RestController
@RequestMapping("/api/v1")
public class StatRestController {
	@Autowired
	private StatService statService;
	
	// 법규위반별 Data
	@GetMapping("/law")
	public List<Map<String, Object>> callAllLawData() {
		return statService.getAllLawData();
	}
	// 사고유형별 Data
	@GetMapping("/accident")
	public List<Map<String, Object>> callAllAccidentData() {
		return statService.getAllAccidentData();
	}
	// 지역별 Data
	@GetMapping("/city")
	public List<Map<String, Object>> callAllCityData() {
		return statService.getAllCityData();
	}
	// 도로별/요일별 Data
	@GetMapping("/road")
	public List<Map<String, Object>> callAllRoadData() {
		return statService.getAllRoadData();
	}
	// 음주측정별 Data
	@GetMapping("/alcohol")
	public List<Map<String, Object>> callAllAlcoholData() {
		return statService.getAllAlcoholData();
	}
}
