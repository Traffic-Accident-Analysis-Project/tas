package com.project.tas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class managerController {
	@GetMapping("/manager/main")
	public String callMainPage() {
		return "manager/managerMain";
	}
	@GetMapping("/manager/logs")
	public String callLogsPage() {
		return "manager/managerLogs";
	}
	@GetMapping("/manager/logs/popup")
	public String callLogsPopupPage() {
		return "manager/managerLogPopup";
	}
}
