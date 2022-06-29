package com.project.tas.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface StatMapper {
	// 법규위반별 전체 Data
	public List<Map<String, Object>> selectAllLawData();

	// 사고유형별 전체 Data
	public List<Map<String, Object>> selectAllAccidentData();

	// 지역별 전체 Data
	public List<Map<String, Object>> selectAllCityData();

	// 도로별 요일별 전체 Data
	public List<Map<String, Object>> selectAllRoadData();

	// 음주측정별 Data
	public List<Map<String, Object>> selectAllAlcoholData();

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 법규위반별 데이터 조회
	 */
	public List<Map<String, Object>> selectLawData(@Param("year") int year, @Param("month") String month,
			@Param("violation") String violation);

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 사교유형별 데이터 조회
	 */
	public List<Map<String, Object>> selectAccidentData(@Param("year") int year, @Param("month") String month,
			@Param("type") String type, @Param("motion") String motion);

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 시도별 데이터 조회
	 */
	public List<Map<String, Object>> selectCityData(@Param("year") int year, @Param("month") String month,
			@Param("city") String city);

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 도로별 요일별 데이터 조회
	 */
	public List<Map<String, Object>> selectRoadData(@Param("year") int year, @Param("month") String month,
			@Param("week") String week, @Param("road") String road);

	/**
	 * @return List
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 음주측정별 데이터 조회
	 */
	public List<Map<String, Object>> selectAlcoholData(@Param("year") int year, @Param("month") String month,
			@Param("drink") String drink, @Param("degree") String degree);
	
}
