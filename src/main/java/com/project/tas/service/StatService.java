package com.project.tas.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.tas.mapper.StatMapper;

@Service
public class StatService {
	@Autowired
	private StatMapper statMapper;

	// 법규위반별 전체 Data
	public List<Map<String, Object>> getAllLawData() {
		return statMapper.selectAllLawData();
	}

	// 사고유형별 전체 Data
	public List<Map<String, Object>> getAllAccidentData() {
		return statMapper.selectAllAccidentData();
	}

	// 지역별 전체 Data
	public List<Map<String, Object>> getAllCityData() {
		return statMapper.selectAllCityData();
	}

	// 도로별 요일별 전체 Data
	public List<Map<String, Object>> getAllRoadData() {
		return statMapper.selectAllRoadData();
	}

	// 음주측정별 전체 Data
	public List<Map<String, Object>> getAllAlcoholData() {
		return statMapper.selectAllAlcoholData();
	}

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 법규위반별
	 */
	public List<Map<String, Object>> getLawData(int year, String month, String violation) {
		return statMapper.selectLawData(year, month, violation);
	}

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 사고종류별
	 */
	public List<Map<String, Object>> getAccidentData(int year, String month, String type, String motion) {
		return statMapper.selectAccidentData(year, month, type, motion);
	}

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 시도별
	 */
	public List<Map<String, Object>> getCityData(int year, String month, String city) {
		return statMapper.selectCityData(year, month, city);
	}

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 음주정도별
	 */
	public List<Map<String, Object>> getAlcoholData(int year, String month, String drink, String degree) {
		return statMapper.selectAlcoholData(year, month, drink, degree);
	}

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 도로별 요일별
	 */
	public List<Map<String, Object>> getRoadData(int year, String month, String week, String road) {
		return statMapper.selectRoadData(year, month, week, road);
	}
	
}
