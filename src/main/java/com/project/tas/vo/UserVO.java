package com.project.tas.vo;

import lombok.Data;

@Data
public class UserVO {
	private int id;
	private String userId;
	private String userName;
	private String userPassword;
	private String userGender;
	private String userEmailId;
	private String userEmailAddr;
	private String userAddr;
	private String userDetailAddr;
	private String autority;
	private String userStatus; // 회원탈퇴여부
}
