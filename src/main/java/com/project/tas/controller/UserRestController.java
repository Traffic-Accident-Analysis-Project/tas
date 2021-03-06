package com.project.tas.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.tas.service.UserService;
import com.project.tas.vo.UserVO;

@RestController
@RequestMapping("/api/v1")
public class UserRestController {

	@Autowired
	private UserService userService;

	// id 중복체크
	@CrossOrigin
	@GetMapping("/check/id/{id}")
	public List<Map<String, Object>> callCheckUserId(@PathVariable("id") String id) {
		return userService.getCheckUserId(id);
	}

	// 회원가입
	@CrossOrigin
	@PostMapping("/user")
	public int callSaveUsers(@RequestBody UserVO vo) {
		return userService.setUsers(vo);
	}
	// 관리자 회원가입
	@CrossOrigin
	@PostMapping("/admin")
	public int callSaveAdmin(@RequestBody UserVO vo) {
		return userService.setUsers(vo);
	}

	// 관리자코드 체크
	@CrossOrigin
	@GetMapping("/admin/check/{adminPassword}")
	public boolean callAdminPassword(@PathVariable("adminPassword") String adminPassword) {
		return userService.getAdminPasswordCheck(adminPassword);
	}
	
	// Login : 정보 일치하면 session에 저장
	@CrossOrigin
	@PostMapping("/login")
	public boolean callIsLogin(@RequestBody UserVO vo, HttpSession httpSession) {
		boolean isLogin = userService.isUser(vo, httpSession);
		return isLogin;
	}
	@CrossOrigin
	@GetMapping("/logout")
	public void callLogout(HttpSession httpSession) {
		httpSession.invalidate();
	}

	@GetMapping("/user/map")
	public List<Map<String, Object>> callUserListByMap(HttpSession httpSession) {
		return null;
	}

	@CrossOrigin
	@GetMapping("/re/my/info")
	public Map<String, Object> callReMyInfo(HttpSession session) {
		return userService.getMyInfo(session);
	}

	@CrossOrigin
	@PatchMapping("/re/my/info")
	public int callUpdateMyInfo(@RequestBody UserVO vo, HttpSession session) {
		return userService.updateMyInfo(vo, session);
	}

	// 탈퇴 (user_status : n으로 update)
	@CrossOrigin
	@PatchMapping("/user/secession")
	public int callUserSecession(@RequestBody UserVO vo, HttpSession session) {
		return userService.updateSecession(vo, session);
	}
	
	// 마이페이지에서 session의 id로 id, 이름, 성별만 조회
	@CrossOrigin
	@GetMapping("/user/my/info/id/name/gender")
	public Map<String, Object> callMyInfoUserInfo(HttpSession session){
		return userService.getMyInfoUserInfo(session);
	}
}
