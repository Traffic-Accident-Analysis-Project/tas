package com.project.tas.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.tas.vo.LogsVO;

@Mapper
public interface LogsMapper {

	// 접속이력 저장
	public int insertLogs(LogsVO logsVO);

	public List<Map<String, Object>> selectBoardLogs(int logId);
}
