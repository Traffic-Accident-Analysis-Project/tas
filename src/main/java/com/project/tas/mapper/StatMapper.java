package com.project.tas.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StatMapper {
	// 법규위반별 Data
	public List<Map<String, Object>> selectAllLawData();
	// 사고유형별 Data
	public List<Map<String, Object>> selectAllAccidentData();
	// 지역별 Data
	public List<Map<String, Object>> selectAllCityData();
	// 요일별 Data
	public List<Map<String, Object>> selectAllRoadData();
	// 음주측정별 Data
	public List<Map<String, Object>> selectAllAlcoholData();
}
