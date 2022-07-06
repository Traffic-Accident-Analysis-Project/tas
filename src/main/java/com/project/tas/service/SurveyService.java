package com.project.tas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.tas.mapper.SurveyMapper;
import com.project.tas.vo.SurveyVO;

@Service
public class SurveyService {
	@Autowired
	private SurveyMapper surveyMapper;
	
	@Transactional(rollbackFor = {Exception.class})
	public int setSaveSurvey(SurveyVO vo) {
		return surveyMapper.selectSaveSurvey(vo);
	}
}
