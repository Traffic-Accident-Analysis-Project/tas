package com.project.tas.vo;

import lombok.Data;

@Data
public class CityTypeVO {
	private int 시점;
	private String 월별;
	private String 시도별;
	private int 사고건수;
	private int 사망자수;
	private int 부상자수;
	private String month;
	private String region;
}
