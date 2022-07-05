package com.project.tas.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
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
	public List<Map<String,Object>> callCheckUserId(@PathVariable("id") String id){
		return userService.getCheckUserId(id);
	}
	
	// 회원가입
	@CrossOrigin
	@PostMapping("/user")
	public int callSaveUsers(@RequestBody UserVO vo) {
		return userService.setUsers(vo);
	}
	
	// 관리자코드 체크
	@CrossOrigin
	@GetMapping("/admin/check/{adminPassword}")
	public boolean callAdminPassword(@PathVariable("adminPassword") String adminPassword) {
		return userService.getAdminPasswordCheck(adminPassword);
	}
	
	
	@CrossOrigin
	@PostMapping("/login")
	public boolean callIsLogin(@RequestBody UserVO vo, HttpSession httpSession) {
		boolean isLogin = userService.isUser(vo,httpSession); 
		return isLogin;
	}
	@GetMapping("/user/map")
	public List<Map<String,Object>> callUserListByMap(HttpSession httpSession){
		return null;
	}
}
