-- DW database가 없다면 생성
CREATE database IF NOT EXISTS dw DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
-- USE dw; -- TABLE 안만들었을 때

-- 관리자 Table
CREATE TABLE IF NOT EXISTS tas_manager (
	manager_id varchar(30) NOT NULL PRIMARY KEY COMMENT '관리자 ID',
	manager_password varchar(100) COMMENT '관리자 비밀번호'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- 고객센터 Table
CREATE TABLE IF NOT EXISTS tas_board (
	board_no int AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT 'index',
	board_category varchar(30) COMMENT '문의유형',
	board_writer varchar(10) COMMENT '작성자',
	board_email varchar(30) COMMENT '이메일',
	board_content varchar(500) COMMENT '본문',
	board_security boolean COMMENT '비밀글 여부',
	board_password varchar(100) COMMENT '비밀번호',
	board_date datetime DEFAULT CURRENT_TIMESTAMP COMMENT '작성일자',
	board_cnt int default 0 COMMENT '조회수',
	board_comment varchar(500) COMMENT '답변',
	board_is_comment boolean default false COMMENT '코멘트 여부'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;