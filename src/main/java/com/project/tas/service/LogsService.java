package com.project.tas.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.project.tas.mapper.LogsMapper;
import com.project.tas.vo.LogsVO;

@Service
public class LogsService {
	@Autowired
	private LogsMapper logsMapper;

	// insert
	public int setLogs(LogsVO vo) {
		return logsMapper.insertLogs(vo);
	}

	// select
	public List<Map<String, Object>> getLogsList(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		return logsMapper.selectBoardLogs(0);
	}

	public Map<String, Object> getLogs(int logId) {
		return logsMapper.selectBoardLogs(logId).get(0);
	}
}
