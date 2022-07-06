package com.project.tas.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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

	public List<Map<String, Object>> getCheckUserId(String id) {
		return userMapper.getCheckUserId(id);
	}

	@Transactional(rollbackFor = { Exception.class })
	public int setUsers(UserVO vo) {
		// 비밀번호 암호화
		String password = vo.getUserPassword();
		password = passwordEncoder.encode(password);
		vo.setUserPassword(password);
		vo.setUserStatus("y");
		return userMapper.insertUsers(vo);
	}

	// 관리자코드 확인
	public boolean getAdminPasswordCheck(String adminPassword) {
		if (adminPassword.equals("tas_admin486")) {
			return true;
		}
		return false;
	}

	// login
	@Transactional(rollbackFor = { Exception.class })
	public boolean isUser(UserVO vo, HttpSession httpSession) {

		UserVO user = userMapper.selectUserOne(vo);

		if (user == null) {
			return false;
		}
		if (user.getUserStatus() == "n") {
			return false;
		}

		// 사용자가 입력한 pw
		String inputPassword = vo.getUserPassword();
		// 실제 pw
		String password = (String) user.getUserPassword();

		if (!passwordEncoder.matches(inputPassword, password)) {
			return false;
		}

		httpSession.setAttribute("userId", user.getUserId());
		httpSession.setAttribute("userPassword", user.getUserPassword());
		return true;
	}

	public List<Map<String, Object>> getAllUserMap() {
		return null;
	}

	public Map<String, Object> getMyInfo(HttpSession session) {
//		 확인을 위해 String id를 임의로 지정 나중에는 session에서 id가져올것
//		String id = (String)session.getAttribute("userId");
		String id = "apple001";
		return userMapper.selectMyInfo(id);
	}

	@Transactional(rollbackFor = { Exception.class })
	public int updateMyInfo(UserVO vo, HttpSession session) {
		// session에서 가져온 id담기
//		String userId = (String)session.getAttribute("userId");
//		vo.setUserId(userId);
		String id = "apple001";
		vo.setUserId(id);

		// 바뀐비밀번호 다시 인코딩
		String password = vo.getUserPassword();
		password = passwordEncoder.encode(password);
		vo.setUserPassword(password);

		return userMapper.updateMyInfo(vo);
	}

	@Transactional(rollbackFor = { Exception.class })
	public int updateSecession(UserVO vo, HttpSession session) {
		// session에서 가져온 id담기
//		String userId = (String)session.getAttribute("userId");
//		vo.setUserId(userId);
		
		String id = "apple001";
		vo.setUserId(id);
		
		// 사용자 입력 pw
		String inputPassword = vo.getUserPassword();
		
//		String userPassword = (String)session.getAttribute("userPassword");
		String userPassword = "qlalfqjsgh486";


//		if (!passwordEncoder.matches(inputPassword, userPassword)) {
//			return 0;
//		}
		if(!inputPassword.equals(userPassword)) {
			return 0;
		}
		
		vo.setUserStatus("n");
		return userMapper.updateSecession(vo);
	}

}
