package com.project.tas.controller;

import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.tas.service.ExcelService;

@Controller
public class ExecelController {

	@Autowired
	private ExcelService excelService;

	// 가해자 법규위반별
	@GetMapping("/law/excel")
	public void downloadLawExcelFile(HttpServletResponse response) throws Exception {
		String today = new SimpleDateFormat("yyMMdd").format(new Date());
		String title = "T.A.S_law_excelfile";

		response.setContentType("ms-vnd/excel");
		response.setHeader("Content-Disposition",
				"attachment;filename=" + URLEncoder.encode(today + "_" + title, "UTF-8") + ".xls");
		Workbook workBook = excelService.makeExcelFormLaw();
		workBook.write(response.getOutputStream());
		workBook.close();

		response.getOutputStream().flush();
		response.getOutputStream().close();

	}

	// 사고유형별
	@GetMapping("/accident/type/excel")
	public void downloadAccidentTypeExcelFile(HttpServletResponse response) throws Exception {
		String today = new SimpleDateFormat("yyMMdd").format(new Date());
		String title = "T.A.S_accident_type_excelfile";

		response.setContentType("ms-vnd/excel");
		response.setHeader("Content-Disposition",
				"attachment;filename=" + URLEncoder.encode(today + "_" + title, "UTF-8") + ".xls");
		Workbook workBook = excelService.makeExcelFormAccidentType();
		workBook.write(response.getOutputStream());
		workBook.close();

		response.getOutputStream().flush();
		response.getOutputStream().close();
	}

	// 시도별
	@GetMapping("/city/type/excel")
	public void downloadCityExcelFile(HttpServletResponse response) throws Exception {
		String today = new SimpleDateFormat("yyMMdd").format(new Date());
		String title = "T.A.S_city_excelfile";

		response.setContentType("ms-vnd/excel");
		response.setHeader("Content-Disposition",
				"attachment;filename=" + URLEncoder.encode(today + "_" + title, "UTF-8") + ".xls");
		Workbook workBook = excelService.makeExcelFormCity();
		workBook.write(response.getOutputStream());
		workBook.close();

		response.getOutputStream().flush();
		response.getOutputStream().close();
	}

	// 도로별&요일별
	@GetMapping("/road/type/excel")
	public void downloadRoadExcelFile(HttpServletResponse response) throws Exception {
		String today = new SimpleDateFormat("yyMMdd").format(new Date());
		String title = "T.A.S_road_excelfile";

		response.setContentType("ms-vnd/excel");
		response.setHeader("Content-Disposition",
				"attachment;filename=" + URLEncoder.encode(today + "_" + title, "UTF-8") + ".xls");
		Workbook workBook = excelService.makeExcelFormRoad();
		workBook.write(response.getOutputStream());
		workBook.close();

		response.getOutputStream().flush();
		response.getOutputStream().close();
	}

	// 음주운전별
	@GetMapping("/alcohol/type/excel")
	public void downloadAlcoholExcelFile(HttpServletResponse response) throws Exception {
		String today = new SimpleDateFormat("yyMMdd").format(new Date());
		String title = "T.A.S_alcohol_excelfile";

		response.setContentType("ms-vnd/excel");
		response.setHeader("Content-Disposition",
				"attachment;filename=" + URLEncoder.encode(today + "_" + title, "UTF-8") + ".xls");
		Workbook workBook = excelService.makeExcelFormAlcohol();
		workBook.write(response.getOutputStream());
		workBook.close();

		response.getOutputStream().flush();
		response.getOutputStream().close();
	}
}
