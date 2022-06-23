package com.project.tas.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.tas.mapper.BoardMapper;
import com.project.tas.vo.BoardVO;

@Service
public class BoardService {
	@Autowired
	private BoardMapper boardMapper;
	
	// C
	@Transactional(rollbackFor = {Exception.class})
	public int setSaveBoard(BoardVO vo) {
		return boardMapper.insertSaveBoard(vo);
	}
	// R
	@Transactional(rollbackFor = {Exception.class})
	public List<Map<String,Object>> getBoardAllList() {
		return boardMapper.selectBoardAllList();
	}
	// D
	@Transactional(rollbackFor = {Exception.class})
	public int getRemoveBoard(int boardNo) {
		return boardMapper.deleteRemoveBoard(boardNo);
	}
	// U
	@Transactional(rollbackFor = {Exception.class})
	public int getUpdateBoard(int boardNo, BoardVO vo) {
		vo.setBoardNo(boardNo);
		return boardMapper.UpdateBoard(vo);
	}
}
