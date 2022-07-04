package com.project.tas.vo;

import lombok.Data;

@Data
public class LogsVO {

	private int logId;
	private String ip;
	private String url;
	private String httpMethod;
	private String createAt;
}
