package com.project.tas.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.project.tas.vo.ManagerVO;

@Mapper
public interface ManagerMapper {

	/**
	 * @param vo
	 * @return int
	 * @author : ji_U
	 * @date : 2022. 6. 27.
	 * comment : 관리자 저장
	 */
	public int insertManager(ManagerVO vo);
	
	public ManagerVO selectManager(ManagerVO vo);
//	public int getManagerLogin();
}
