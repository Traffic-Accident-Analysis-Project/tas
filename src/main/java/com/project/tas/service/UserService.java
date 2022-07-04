package com.project.tas.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.tas.mapper.UserMapper;
import com.project.tas.vo.UserVO;

@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	public List<Map<String,Object>> getCheckUserId(String id){
		return userMapper.getCheckUserId(id);
	}
	
	@Transactional(rollbackFor = {Exception.class})
	public int setUsers(UserVO vo) {
		//비밀번호 암호화
		String password = vo.getUserPassword();
		password = passwordEncoder.encode(password);
		vo.setUserPassword(password);
		return userMapper.insertUsers(vo);
	}
	
	public boolean getAdminPasswordCheck(String adminPassword) {
		if (adminPassword.equals("tas_admin486")) {
			return true;
		}
		return false;
	}
}
