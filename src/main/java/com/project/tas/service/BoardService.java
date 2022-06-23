package com.project.tas.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
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
	public List<Map<String,Object>> getBoardAllList(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
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
	// QnA 상세조회
	@Transactional(rollbackFor = {Exception.class})
	public Map<String,Object> getBoard(int boardNo) {
		return boardMapper.selectBoard(boardNo);
	}
	// QnA 조회수 증가
	public int getUpdateBoardViews(int boardNo) {
		// 1. 게시판 번호를 이용해서 조회수를 select
		Map<String,Object> vo = boardMapper.selectBoard(boardNo);
		int views = (int) vo.get("boardCnt");
		// 2. 조회수 1 증가
		++ views; 
		vo.remove("boardCnt");
		vo.put("boardCnt",views);
		return boardMapper.updateBoardViews(vo);
	}
}
