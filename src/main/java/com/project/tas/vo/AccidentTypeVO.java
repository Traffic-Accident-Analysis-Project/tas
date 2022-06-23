package com.project.tas.vo;

import lombok.Data;

@Data
public class AccidentTypeVO {
	private int 시점;
	private String 월별;
	private String 사고유형별1;
	private String 사고유형별2;
	private int 사고건수;
	private int 사망자수;
	private int 부상자수;
	private String month;
	private String accidentType1;
	private String accidentType2;
}
