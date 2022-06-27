package com.project.tas.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.tas.mapper.ManagerMapper;
import com.project.tas.vo.ManagerVO;

@Service
public class ManagerService {

	@Autowired
	private ManagerMapper managerMapper;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	// 관리자 저장
	@Transactional(rollbackFor = {Exception.class})
	public int setManagerJoin(ManagerVO vo) {
		
		String password = vo.getManagerPassword();
		password = passwordEncoder.encode(password);
		vo.setManagerPassword(password);
		
		return managerMapper.insertManager(vo);
	}
	
	// 관리자 로그인
	@Transactional(rollbackFor = {Exception.class})
	public boolean isManager(ManagerVO vo, HttpSession httpSession) {
		
		// 실제 있는 id인지 체크
		ManagerVO manager = managerMapper.selectManager(vo);
		if(manager == null) {
			return false;
		}
		
		// HTML에 입력된 패스워드
		String inputPassword = vo.getManagerPassword();
		// DB에서 가져온 진짜 패스워드
		String password = manager.getManagerPassword();
		
		// html에 입력된 pw와 db pw가 같은지 확인
		if(!passwordEncoder.matches(inputPassword, password)) {
			return false;
		}
		
		httpSession.setAttribute("managerId", manager.getManagerId());
		httpSession.setAttribute("managerPassword", password);
		return true;
	}
}
