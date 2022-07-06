package com.project.tas.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.project.tas.vo.SurveyVO;

@Mapper
public interface SurveyMapper {
	public int selectSaveSurvey(SurveyVO vo);
}
