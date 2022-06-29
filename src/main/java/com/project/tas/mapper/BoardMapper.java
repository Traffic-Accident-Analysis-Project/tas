package com.project.tas.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.tas.vo.BoardVO;

/**
 * @author dw-012
 *
 */
@Mapper
public interface BoardMapper {
	/**
	 * @param vo
	 * @return
	 * @author : JeongSoo Na
	 * @date : 2022. 6. 30.
	 * comment : insert mapper
	 */
	public int insertSaveBoard(BoardVO vo);
	/**
	 * @return
	 * @author : JeongSoo Na
	 * @date : 2022. 6. 30.
	 * comment : select mapper
	 */
	public List<Map<String,Object>> selectBoardAllList();
	/**
	 * @param boardNo
	 * @return
	 * @author : JeongSoo Na
	 * @date : 2022. 6. 30.
	 * comment : delete mapper
	 */
	public int deleteRemoveBoard(int boardNo);
	/**
	 * @param vo
	 * @return
	 * @author : JeongSoo Na
	 * @date : 2022. 6. 30.
	 * comment : update mapper
	 */
	public int UpdateBoard(BoardVO vo);
	/**
	 * @param BoardNo
	 * @return
	 * @author : JeongSoo Na
	 * @date : 2022. 6. 30.
	 * comment : 상세조회 mapper
	 */
	public Map<String,Object> selectBoard(int BoardNo);
	/**
	 * @param vo
	 * @return
	 * @author : JeongSoo Na
	 * @date : 2022. 6. 30.
	 * comment : 조회수 증가 
	 */
	public int updateBoardViews(Map<String,Object> vo);
}
