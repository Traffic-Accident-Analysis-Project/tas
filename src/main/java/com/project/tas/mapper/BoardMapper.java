package com.project.tas.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.tas.vo.BoardVO;

@Mapper
public interface BoardMapper {
	public int insertSaveBoard(BoardVO vo);
	public List<Map<String,Object>> selectBoardAllList();
	public int deleteRemoveBoard(int boardNo);
	public int UpdateBoard(BoardVO vo);
}
