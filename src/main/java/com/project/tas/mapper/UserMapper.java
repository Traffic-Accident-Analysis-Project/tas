package com.project.tas.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.tas.vo.UserVO;

@Mapper
public interface UserMapper {

	public List<Map<String, Object>> getCheckUserId(String id);

	/**
	 * @author : ji_U
	 * @date : 2022. 7. 4. comment : 회원가입
	 */
	public int insertUsers(UserVO vo);

	/**
	 * @author : ji_U
	 * @date : 2022. 7. 5. comment : 로그인
	 */
	public UserVO selectUserOne(UserVO vo);

	public List<Map<String, Object>> selectAllUserMap();

	/**
	 * @author : ji_U
	 * @date : 2022. 7. 6. comment : 내정보수정 회원정보 불러오기
	 */
	public Map<String, Object> selectMyInfo(String id);

	/**
	 * @author : ji_U
	 * @date : 2022. 7. 6. comment : 내정보수정 update
	 */
	public int updateMyInfo(UserVO vo);
	
	public int updateSecession (UserVO vo);

}
