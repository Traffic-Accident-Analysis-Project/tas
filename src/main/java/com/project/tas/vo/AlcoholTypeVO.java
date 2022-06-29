package com.project.tas.vo;

import lombok.Data;

@Data
public class AlcoholTypeVO {
	private int 시점;
	private String 월별;
	private String 가해자음주정도별1;
	private String 가해자음주정도별2;
	private String 주야별;
	private int 사고건수;
	private int 사망자수;
	private int 부상자수;
	private String month;
	private String degreeOfDrinking1;
	private String degreeOfDrinking2;
}
