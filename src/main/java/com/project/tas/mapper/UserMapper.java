package com.project.tas.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.tas.vo.UserVO;

@Mapper
public interface UserMapper {

	public List<Map<String,Object>> getCheckUserId(String id);
	
	/**
	 * @author : ji_U
	 * @date : 2022. 7. 4. comment : 회원가입
	 */
	public int insertUsers(UserVO vo);
}
