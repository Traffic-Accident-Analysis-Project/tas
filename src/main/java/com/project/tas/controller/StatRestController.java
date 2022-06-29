package com.project.tas.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.tas.service.StatService;

@RestController
@RequestMapping("/api/v1")
public class StatRestController {
	@Autowired
	private StatService statService;

	// 법규위반별 Data
	@CrossOrigin
	@GetMapping("/law")
	public List<Map<String, Object>> callAllLawData() {
		return statService.getAllLawData();
	}
	// 사고유형별 Data
	@CrossOrigin
	@GetMapping("/accident")
	public List<Map<String, Object>> callAllAccidentData() {
		return statService.getAllAccidentData();
	}
	// 지역별 Data
	@CrossOrigin
	@GetMapping("/city")
	public List<Map<String, Object>> callAllCityData() {
		return statService.getAllCityData();
	}
	// 도로별/요일별 Data
	@CrossOrigin
	@GetMapping("/road")
	public List<Map<String, Object>> callAllRoadData() {
		return statService.getAllRoadData();
	}
	// 음주측정별 Data
	@CrossOrigin
	@GetMapping("/alcohol")
	public List<Map<String, Object>> callAllAlcoholData() {
		return statService.getAllAlcoholData();
	}

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 법규위반별 select data
	 */
	@CrossOrigin
	@GetMapping("/law/year/{year}/month/{month}/violation/{violation}")
	public List<Map<String, Object>> callLawData(@PathVariable("year") int year, @PathVariable("month") String month,
			@PathVariable("violation") String violation) {
		return statService.getLawData(year, month, violation);
	}

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 사고유형별 select data
	 */
	@CrossOrigin
	@GetMapping("/accident/year/{year}/month/{month}/type/{type}/motion/{motion}")
	public List<Map<String, Object>> callAccidentData(@PathVariable("year") int year,
			@PathVariable("month") String month, @PathVariable("type") String type,
			@PathVariable("motion") String motion) {
		return statService.getAccidentData(year, month, type, motion);
	}

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 도로별 요일별 select data
	 */
	@CrossOrigin
	@GetMapping("/road/year/{year}/month/{month}/week/{week}/road/{road}")
	public List<Map<String, Object>> callRoadData(@PathVariable("year") int year, @PathVariable("month") String month,
			@PathVariable("week") String week, @PathVariable("road") String road) {
		return statService.getRoadData(year, month, week, road);
	}

	/**
	 * @return List
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 음주측정별 select data
	 */
	@CrossOrigin
	@GetMapping("/alcohol/year/{year}/month/{month}/drink/{drink}/degree/{degree}")
	public List<Map<String, Object>> callAlcoholData(@PathVariable("year") int year,
			@PathVariable("month") String month, @PathVariable("drink") String drink,
			@PathVariable("degree") String degree) {
		return statService.getAlcoholData(year, month, drink, degree);
	}
}
