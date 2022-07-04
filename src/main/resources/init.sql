-- DW database가 없다면 생성
CREATE database IF NOT EXISTS dw DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
-- USE dw; -- TABLE 안만들었을 때

-- user Table
CREATE TABLE IF NOT EXISTS tas_user (
	id int AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT 'ID',
	user_id varchar(30) COMMENT 'user ID',
	user_password varchar(100) COMMENT 'password',
	user_admin boolean default false COMMENT 'false:user, true:manager',
	user_email varchar(30) COMMENT '이메일',
	user_gender varchar(10) COMMENT '성별',
	user_address varchar(100) COMMENT '주소'
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

-- user Table
CREATE TABLE IF NOT EXISTS tas_user( -- user 테이블
	id INTEGER(4) AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '회원 번호',
	user_id VARCHAR(12) NOT NULL UNIQUE COMMENT '회원 아이디',
	user_name VARCHAR(10) NOT NULL COMMENT '회원 이름',
	user_password VARCHAR(200) NOT NULL COMMENT '회원 비밀번호',
	user_gender VARCHAR(2) NOT NULL COMMENT '회원 성별',
	user_email VARCHAR(100) NOT NULL COMMENT '회원 이메일',
	user_addr VARCHAR(200) NOT NULL COMMENT '회원 주소',
	autority boolean default false COMMENT 'false:user, true:manager'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 접속이력 테이블
CREATE TABLE IF NOT EXISTS tas_logs
(
	log_id BIGINT(20) AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '로그 아이디',
	ip VARCHAR(50) COMMENT '아이피',
	url VARCHAR(100) COMMENT '요청 url',
	http_method VARCHAR(10) COMMENT 'http method',
	create_at DATETIME COMMENT '접속 시간'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;