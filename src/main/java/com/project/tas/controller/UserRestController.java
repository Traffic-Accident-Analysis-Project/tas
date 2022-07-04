package com.project.tas.controller;

import java.util.List;
import java.util.Map;

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
	
	@CrossOrigin
	@GetMapping("/check/id/{id}")
	public List<Map<String,Object>> callCheckUserId(@PathVariable("id") String id){
		return userService.getCheckUserId(id);
	}
	
	@CrossOrigin
	@PostMapping("/user")
	public int callSaveUsers(@RequestBody UserVO vo) {
		return userService.setUsers(vo);
	}
	
	@CrossOrigin
	@GetMapping("/admin/check/{adminPassword}")
	public boolean callAdminPassword(@PathVariable("adminPassword") String adminPassword) {
		return userService.getAdminPasswordCheck(adminPassword);
	}
}
