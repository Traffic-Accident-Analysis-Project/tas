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
	
	// 법규위반별 Data
	public List<Map<String, Object>> getAllLawData() {
		return statMapper.selectAllLawData();
	}
	// 사고유형별 Data
	public List<Map<String, Object>> getAllAccidentData() {
		return statMapper.selectAllAccidentData();
	}
	// 지역별 Data
	public List<Map<String, Object>> getAllCityData() {
		return statMapper.selectAllCityData();
	}
	// 요일별 Data
	public List<Map<String, Object>> getAllRoadData() {
		return statMapper.selectAllRoadData();
	}
	// 음주측정별 Data
	public List<Map<String, Object>> getAllAlcoholData() {
		return statMapper.selectAllAlcoholData();
	}
}
