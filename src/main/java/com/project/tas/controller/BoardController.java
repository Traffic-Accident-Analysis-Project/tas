package com.project.tas.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.PageInfo;
import com.project.tas.service.BoardService;
import com.project.tas.vo.BoardVO;

@RestController
@RequestMapping("/api/v1")
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	// 고객센터 저장(C)
	@CrossOrigin
	@PostMapping("/board")
	public int callSaveBoard(@RequestBody BoardVO vo) {
		return boardService.setSaveBoard(vo);
	}
	// 고객센터 조회 (R)
	@CrossOrigin
	@GetMapping("/board")
	// 리턴타입을 List > PageInfo
	public PageInfo<Map<String,Object>> callBoardAllList(@RequestParam("pageNum") int pageNum,
			@RequestParam("pageSize") int pageSize) {
		List<Map<String,Object>> list = boardService.getBoardAllList(pageNum, pageSize);
		return new PageInfo<Map<String,Object>>(list);
	}
	// 고객센터 삭제 (D)
	@CrossOrigin
	@DeleteMapping("/board/boardNo/{no}")
	public int callRemoveBoard(@PathVariable("no") int boardNo) {
		return boardService.getRemoveBoard(boardNo);
	}
	// 고객센터 수정 (U) 
	@CrossOrigin
	@PatchMapping("/board/boardNo/{no}")
	public int callUpdateBoard(@PathVariable("no") int boardNo, @RequestBody BoardVO vo) {
		return boardService.getUpdateBoard(boardNo, vo);
	}
	// QnA 상세조회 (no로 조회)
	@CrossOrigin
	@GetMapping("/board/boardNo/{no}")
	public Map<String,Object> callBoard(@PathVariable("no") int boardNo) {
		return boardService.getBoard(boardNo);
	}
	// QnA 조회수 증가
	@CrossOrigin
	@PatchMapping("/board/views/boardNo/{no}")
	public int callBoardViews(@PathVariable("no") int boardNo) {
		return boardService.getUpdateBoardViews(boardNo);
	}
	
}
