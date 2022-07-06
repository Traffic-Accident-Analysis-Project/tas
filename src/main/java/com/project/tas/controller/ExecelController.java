package com.project.tas.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.tas.service.ExcelService;

@Controller
public class ExecelController {
	@Autowired
	private ExcelService excelService;
	
}
