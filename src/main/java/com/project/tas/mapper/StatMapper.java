package com.project.tas.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface StatMapper {
	/**
	 * @return
	 * @author : JeongSoo Na
	 * @date : 2022. 6. 30. comment : 법규위반별 전체 Data mapper
	 */
	public List<Map<String, Object>> selectAllLawData();

	/**
	 * @return
	 * @author : JeongSoo Na
	 * @date : 2022. 6. 30. comment : 사고유형별 전체 Data mapper
	 */
	public List<Map<String, Object>> selectAllAccidentData();

	/**
	 * @return
	 * @author : JeongSoo Na
	 * @date : 2022. 6. 30. comment : 지역별 전체 Data mapper
	 */
	public List<Map<String, Object>> selectAllCityData();

	/**
	 * @return
	 * @author : JeongSoo Na
	 * @date : 2022. 6. 30. comment : 도로별 요일별 전체 Data mapper
	 */
	public List<Map<String, Object>> selectAllRoadData();

	/**
	 * @return
	 * @author : JeongSoo Na
	 * @date : 2022. 6. 30. comment : 음주측정별 Data mapper
	 */
	public List<Map<String, Object>> selectAllAlcoholData();

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 법규위반별 데이터 조회
	 */
	public List<Map<String, Object>> selectLawData(@Param("year") int year, @Param("month") String month,
			@Param("violation") String violation);

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 30. comment : 법규위반별 월별전체 데이터 조회
	 */
	public List<Map<String, Object>> selectLawAllMonthData(@Param("year") int year,
			@Param("violation") String violation);

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 사교유형별 데이터 조회
	 */
	public List<Map<String, Object>> selectAccidentData(@Param("year") int year, @Param("month") String month,
			@Param("type") String type, @Param("motion") String motion);

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 30. comment : 사고유형별 월별전체 데이터 조회
	 */
	public List<Map<String, Object>> selectAccidentAllMonthData(@Param("year") int year, @Param("type") String type,
			@Param("motion") String motion);

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 시도별 데이터 조회
	 */
	public List<Map<String, Object>> selectCityData(@Param("year") int year, @Param("month") String month,
			@Param("city") String city);

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 30. comment : 시도별 월별전체 데이터 조회
	 */
	public List<Map<String, Object>> selectCityAllMonthData(@Param("year") int year, @Param("city") String city);

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 도로별 요일별 데이터 조회
	 */
	public List<Map<String, Object>> selectRoadData(@Param("year") int year, @Param("month") String month,
			@Param("week") String week, @Param("road") String road);

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 30. comment : 도로별 요일별 월별데이터 조회
	 */
	public List<Map<String, Object>> selectRoadAllMonthData(@Param("year") int year, @Param("week") String week,
			@Param("road") String road);

	/**
	 * @return List
	 * @author : ji_U
	 * @date : 2022. 6. 29. comment : 음주측정별 데이터 조회
	 */
	public List<Map<String, Object>> selectAlcoholData(@Param("year") int year, @Param("month") String month,
			@Param("drink") String drink, @Param("degree") String degree);

	/**
	 * @author : ji_U
	 * @date : 2022. 6. 30. comment : 음주측정별 데이터 조회
	 */
	public List<Map<String, Object>> selectAlcoholAllMonthData(@Param("year") int year, @Param("drink") String drink,
			@Param("degree") String degree);

}
