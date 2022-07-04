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
		// 파라미터로 0을 넣으면 if 실행 안하니까
		return logsMapper.selectBoardLogs(0);
	}
	
	public Map<String,Object> getLogs(int logId){
//		List<Map<String,Object>> list = logsMapper.selectBoardLogs(logId);
//		list.get(0); = map임 controller의 리턴타입이 map이고 한 줄만 나오니까 0번으로 지정
		return logsMapper.selectBoardLogs(logId).get(0);
	}
}
