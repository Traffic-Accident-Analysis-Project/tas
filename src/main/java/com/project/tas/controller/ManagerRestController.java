package com.project.tas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.tas.service.ManagerService;
import com.project.tas.vo.ManagerVO;

@RestController
@RequestMapping("/api/v1")
public class ManagerRestController {

	@Autowired
	private ManagerService managerService;
	
	
	// 관리자 저장
	@CrossOrigin
	@PostMapping("/manager/join")
	public int callJoinManager(@RequestBody ManagerVO vo) {
		return managerService.setManagerJoin(vo);
	}
	
	
	@CrossOrigin
	@PostMapping("/manager/login")
	public boolean callIsLogin(@RequestBody ManagerVO vo, HttpSession httpSession) {
		boolean isLogin = true;
		
		return true;
	}
}
