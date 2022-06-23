package com.project.tas.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	private int boardNo;
	private String boardCategory;
	private String boardWriter;
	private String boardEmail;
	private String boardContent;
	private boolean isBoardSecurity;
	private String boardPassword;
	private String boardDate;
	private int boardCnt;
	private String boardComment;
	private boolean isBoardComment;
}
