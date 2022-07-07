package com.project.tas.service;

import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.BorderStyle;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.tas.mapper.StatMapper;

@Service
public class ExcelService {

	@Autowired
	private StatMapper statMapper;

	// 가해자 법규위반
	public Workbook makeExcelFormLaw() throws Exception {

		Workbook workbook = new HSSFWorkbook(); // excel생성

		// sheet이름
		Sheet sheet = workbook.createSheet("가해자 법규위반");
		Row row = null;
		Cell cell = null;
		int rowNumber = 0;

		CellStyle headStyle = makeExcelHeadStyle(workbook);
		CellStyle bodyStyle = makeExcelBodyStyle(workbook);

		row = sheet.createRow(rowNumber++);
		cell = row.createCell(0);
		cell.setCellStyle(headStyle);
		cell.setCellValue("시점");

		cell = row.createCell(1);
		cell.setCellStyle(headStyle);
		cell.setCellValue("월별");

		cell = row.createCell(2);
		cell.setCellStyle(headStyle);
		cell.setCellValue("가해자 법규 위반");

		cell = row.createCell(3);
		cell.setCellStyle(headStyle);
		cell.setCellValue("사고건수");

		cell = row.createCell(4);
		cell.setCellStyle(headStyle);
		cell.setCellValue("사망자수");

		cell = row.createCell(5);
		cell.setCellStyle(headStyle);
		cell.setCellValue("부상자수");

		cell = row.createCell(6);
		cell.setCellStyle(headStyle);
		cell.setCellValue("month");

		cell = row.createCell(7);
		cell.setCellStyle(headStyle);
		cell.setCellValue("violationOfLaw");

		List<Map<String, Object>> list = statMapper.selectAllLawData();

		for (Map<String, Object> data : list) {
			row = sheet.createRow(rowNumber++);

			cell = row.createCell(0);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("시점").toString());

			cell = row.createCell(1);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("월별").toString());

			cell = row.createCell(2);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("가해자법규위반").toString());

			cell = row.createCell(3);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("사고건수").toString());

			cell = row.createCell(4);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("사망자수").toString());

			cell = row.createCell(5);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("부상자수").toString());

			cell = row.createCell(6);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("month").toString());

			cell = row.createCell(7);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("violationOfLaw").toString());

		}
		return workbook;
	}

	// 사고유형별
	public Workbook makeExcelFormAccidentType() throws Exception {
		Workbook workbook = new HSSFWorkbook(); // excel생성

		// sheet이름
		Sheet sheet = workbook.createSheet("사고유형별");
		Row row = null;
		Cell cell = null;
		int rowNumber = 0;

		CellStyle headStyle = makeExcelHeadStyle(workbook);
		CellStyle bodyStyle = makeExcelBodyStyle(workbook);

		row = sheet.createRow(rowNumber++);
		cell = row.createCell(0);
		cell.setCellStyle(headStyle);
		cell.setCellValue("시점");

		cell = row.createCell(1);
		cell.setCellStyle(headStyle);
		cell.setCellValue("월별");

		cell = row.createCell(2);
		cell.setCellStyle(headStyle);
		cell.setCellValue("사고유형별1");

		cell = row.createCell(3);
		cell.setCellStyle(headStyle);
		cell.setCellValue("사고유형별2");

		cell = row.createCell(4);
		cell.setCellStyle(headStyle);
		cell.setCellValue("사고건수");

		cell = row.createCell(5);
		cell.setCellStyle(headStyle);
		cell.setCellValue("사망자수");

		cell = row.createCell(6);
		cell.setCellStyle(headStyle);
		cell.setCellValue("부상자수");

		cell = row.createCell(7);
		cell.setCellStyle(headStyle);
		cell.setCellValue("month");

		cell = row.createCell(8);
		cell.setCellStyle(headStyle);
		cell.setCellValue("accidentType1");

		cell = row.createCell(9);
		cell.setCellStyle(headStyle);
		cell.setCellValue("accidentType2");

		List<Map<String, Object>> list = statMapper.selectAllAccidentData();

		for (Map<String, Object> data : list) {
			row = sheet.createRow(rowNumber++);

			cell = row.createCell(0);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("시점").toString());

			cell = row.createCell(1);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("월별").toString());

			cell = row.createCell(2);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("사고유형별1").toString());

			cell = row.createCell(3);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("사고유형별2").toString());

			cell = row.createCell(4);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("사고건수").toString());

			cell = row.createCell(5);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("사망자수").toString());

			cell = row.createCell(6);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("부상자수").toString());

			cell = row.createCell(7);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("month").toString());

			cell = row.createCell(8);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("accidentType1").toString());

			cell = row.createCell(9);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("accidentType2").toString());

		}
		return workbook;
	}

	// 시도별
	public Workbook makeExcelFormCity() throws Exception {
		Workbook workbook = new HSSFWorkbook(); // excel생성

		// sheet이름
		Sheet sheet = workbook.createSheet("시도별");
		Row row = null;
		Cell cell = null;
		int rowNumber = 0;

		CellStyle headStyle = makeExcelHeadStyle(workbook);
		CellStyle bodyStyle = makeExcelBodyStyle(workbook);

		row = sheet.createRow(rowNumber++);
		cell = row.createCell(0);
		cell.setCellStyle(headStyle);
		cell.setCellValue("시점");

		cell = row.createCell(1);
		cell.setCellStyle(headStyle);
		cell.setCellValue("월별");

		cell = row.createCell(2);
		cell.setCellStyle(headStyle);
		cell.setCellValue("시도별");

		cell = row.createCell(3);
		cell.setCellStyle(headStyle);
		cell.setCellValue("사고건수");

		cell = row.createCell(4);
		cell.setCellStyle(headStyle);
		cell.setCellValue("사망자수");

		cell = row.createCell(5);
		cell.setCellStyle(headStyle);
		cell.setCellValue("부상자수");

		cell = row.createCell(6);
		cell.setCellStyle(headStyle);
		cell.setCellValue("month");

		cell = row.createCell(7);
		cell.setCellStyle(headStyle);
		cell.setCellValue("region");

		List<Map<String, Object>> list = statMapper.selectAllCityData();

		for (Map<String, Object> data : list) {
			row = sheet.createRow(rowNumber++);

			cell = row.createCell(0);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("시점").toString());

			cell = row.createCell(1);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("월별").toString());

			cell = row.createCell(2);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("시도별").toString());

			cell = row.createCell(3);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("사고건수").toString());

			cell = row.createCell(4);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("사망자수").toString());

			cell = row.createCell(5);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("부상자수").toString());

			cell = row.createCell(6);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("month").toString());

			cell = row.createCell(7);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("region").toString());

		}
		return workbook;
	}

	// 도로별
	public Workbook makeExcelFormRoad() throws Exception {
		Workbook workbook = new HSSFWorkbook(); // excel생성

		// sheet이름
		Sheet sheet = workbook.createSheet("도로별");
		Row row = null;
		Cell cell = null;
		int rowNumber = 0;

		CellStyle headStyle = makeExcelHeadStyle(workbook);
		CellStyle bodyStyle = makeExcelBodyStyle(workbook);

		row = sheet.createRow(rowNumber++);
		cell = row.createCell(0);
		cell.setCellStyle(headStyle);
		cell.setCellValue("시점");

		cell = row.createCell(1);
		cell.setCellStyle(headStyle);
		cell.setCellValue("월별");

		cell = row.createCell(2);
		cell.setCellStyle(headStyle);
		cell.setCellValue("요일별");

		cell = row.createCell(3);
		cell.setCellStyle(headStyle);
		cell.setCellValue("도로종류별");

		cell = row.createCell(4);
		cell.setCellStyle(headStyle);
		cell.setCellValue("사고건수");

		cell = row.createCell(5);
		cell.setCellStyle(headStyle);
		cell.setCellValue("사망자수");

		cell = row.createCell(6);
		cell.setCellStyle(headStyle);
		cell.setCellValue("부상자수");

		cell = row.createCell(7);
		cell.setCellStyle(headStyle);
		cell.setCellValue("month");

		cell = row.createCell(8);
		cell.setCellStyle(headStyle);
		cell.setCellValue("week");

		cell = row.createCell(9);
		cell.setCellStyle(headStyle);
		cell.setCellValue("roadType");

		List<Map<String, Object>> list = statMapper.selectAllRoadData();

		for (Map<String, Object> data : list) {
			row = sheet.createRow(rowNumber++);

			cell = row.createCell(0);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("시점").toString());

			cell = row.createCell(1);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("월별").toString());

			cell = row.createCell(2);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("요일별").toString());

			cell = row.createCell(3);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("도로종류별").toString());

			cell = row.createCell(4);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("사고건수").toString());

			cell = row.createCell(5);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("사망자수").toString());

			cell = row.createCell(6);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("부상자수").toString());

			cell = row.createCell(7);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("month").toString());

			cell = row.createCell(8);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("week").toString());

			cell = row.createCell(9);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("roadType").toString());

		}
		return workbook;
	}

	// 음주운전별
	public Workbook makeExcelFormAlcohol() throws Exception {
		Workbook workbook = new HSSFWorkbook(); // excel생성

		// sheet이름
		Sheet sheet = workbook.createSheet("음주운전별");
		Row row = null;
		Cell cell = null;
		int rowNumber = 0;

		CellStyle headStyle = makeExcelHeadStyle(workbook);
		CellStyle bodyStyle = makeExcelBodyStyle(workbook);

		row = sheet.createRow(rowNumber++);
		cell = row.createCell(0);
		cell.setCellStyle(headStyle);
		cell.setCellValue("시점");

		cell = row.createCell(1);
		cell.setCellStyle(headStyle);
		cell.setCellValue("월별");

		cell = row.createCell(2);
		cell.setCellStyle(headStyle);
		cell.setCellValue("가해자음주정도별1");

		cell = row.createCell(3);
		cell.setCellStyle(headStyle);
		cell.setCellValue("가해자음주정도별2");

		cell = row.createCell(4);
		cell.setCellStyle(headStyle);
		cell.setCellValue("주야별");

		cell = row.createCell(5);
		cell.setCellStyle(headStyle);
		cell.setCellValue("사고건수");

		cell = row.createCell(6);
		cell.setCellStyle(headStyle);
		cell.setCellValue("사망자수");

		cell = row.createCell(7);
		cell.setCellStyle(headStyle);
		cell.setCellValue("부상자수");

		cell = row.createCell(8);
		cell.setCellStyle(headStyle);
		cell.setCellValue("month");

		cell = row.createCell(9);
		cell.setCellStyle(headStyle);
		cell.setCellValue("degreeOfDrinking1");

		cell = row.createCell(10);
		cell.setCellStyle(headStyle);
		cell.setCellValue("degreeOfDrinking2");

		List<Map<String, Object>> list = statMapper.selectAllAlcoholData();

		for (Map<String, Object> data : list) {
			row = sheet.createRow(rowNumber++);

			cell = row.createCell(0);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("시점").toString());

			cell = row.createCell(1);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("월별").toString());

			cell = row.createCell(2);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("가해자음주정도별1").toString());

			cell = row.createCell(3);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("가해자음주정도별2").toString());

			cell = row.createCell(4);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("주야별").toString());
			
			cell = row.createCell(5);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("사고건수").toString());

			cell = row.createCell(6);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("사망자수").toString());

			cell = row.createCell(7);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("부상자수").toString());

			cell = row.createCell(8);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("month").toString());

			cell = row.createCell(9);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("degreeOfDrinking1").toString());

			cell = row.createCell(10);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(data.get("degreeOfDrinking2").toString());

		}
		return workbook;
	}

	public CellStyle makeExcelHeadStyle(Workbook workbook) {

		CellStyle cellStyle = null;
		cellStyle = workbook.createCellStyle();

		cellStyle.setBorderTop(BorderStyle.THIN);
		cellStyle.setBorderLeft(BorderStyle.THIN);
		cellStyle.setBorderRight(BorderStyle.THIN);
		cellStyle.setBorderBottom(BorderStyle.THIN);

		// 배경색 입히기
		cellStyle.setFillForegroundColor(HSSFColor.HSSFColorPredefined.YELLOW.getIndex());
		cellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		// 가운데 정렬
		cellStyle.setAlignment(HorizontalAlignment.CENTER);
		return cellStyle;
	}

	public CellStyle makeExcelBodyStyle(Workbook workbook) {
		CellStyle cellStyle = null;
		cellStyle = workbook.createCellStyle();

		cellStyle.setBorderTop(BorderStyle.THIN);
		cellStyle.setBorderLeft(BorderStyle.THIN);
		cellStyle.setBorderRight(BorderStyle.THIN);
		cellStyle.setBorderBottom(BorderStyle.THIN);

		// 가운데 정렬
		cellStyle.setAlignment(HorizontalAlignment.CENTER);
		return cellStyle;
	}
}
