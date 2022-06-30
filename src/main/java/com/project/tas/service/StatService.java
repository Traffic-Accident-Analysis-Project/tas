package com.project.tas.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.tas.mapper.StatMapper;
import com.project.tas.vo.CityTypeVO;

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
		if (month.equals("월별전체")) {
			return statMapper.selectLawAllMonthData(year, violation);
		}
		return statMapper.selectLawData(year, month, violation);
	}

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 사고종류별
	 */
	public List<Map<String, Object>> getAccidentData(int year, String month, String type, String motion) {
		if (month.equals("월별전체")) {
			return statMapper.selectAccidentAllMonthData(year, type, motion);
		}
		return statMapper.selectAccidentData(year, month, type, motion);
	}

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 시도별
	 */
	public List<Map<String, Object>> getCityData(int year, String month, String city) {
		if(city.equals("전체") && month.equals("월별전체")) { // 월=월별전체, 시도=전체
			return statMapper.selectAllCityAllMonthData(year);
		}
		if (month.equals("월별전체")) { // 월=월별전체 시도o
			return statMapper.selectCityAllMonthData(year, city);
		}
		if(city.equals("전체")) { // 월o 시도=전체
			return statMapper.selectAllCityMonthData(year, month);
		}
		return statMapper.selectCityData(year, month, city);
	}

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 음주정도별
	 */
	public List<Map<String, Object>> getAlcoholData(int year, String month, String drink, String degree) {
		if (month.equals("월별전체")) {
			return statMapper.selectAlcoholAllMonthData(year, drink, degree);
		}
		return statMapper.selectAlcoholData(year, month, drink, degree);
	}

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 도로별 요일별
	 */
	public List<Map<String, Object>> getRoadData(int year, String month, String week, String road) {
		if (month.equals("월별전체")) {
			return statMapper.selectRoadAllMonthData(year, week, road);
		}
		return statMapper.selectRoadData(year, month, week, road);
	}

}
