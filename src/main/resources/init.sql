-- DW database가 없다면 생성
CREATE database IF NOT EXISTS dw DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
-- USE dw; -- TABLE 안만들었을 때


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
	user_gender VARCHAR(2) COMMENT '회원 성별',
	user_email_id VARCHAR(100) NOT NULL COMMENT '회원 이메일 ID',
	user_email_addr VARCHAR(100) NOT NULL COMMENT '회원 이메일 ADDR',
	user_addr VARCHAR(200) COMMENT '회원 주소',
	user_detail_addr VARCHAR(200) COMMENT '회원 상세 주소',
	autority VARCHAR(8) COMMENT 'false:user, true:manager',
	user_status VARCHAR(1) DEFAULT 'y' NOT NULL COMMENT '회원여부'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 접속이력 테이블
CREATE TABLE IF NOT EXISTS tas_logs
(
	log_id INT(30) AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '로그 아이디',
	ip VARCHAR(50) COMMENT '아이피',
	url VARCHAR(200) COMMENT '요청 url',
	http_method VARCHAR(10) COMMENT 'http method',
	create_at DATETIME COMMENT '접속 시간'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 설문조사 테이블
CREATE TABLE IF NOT EXISTS tas_survey
(
	survey_id INT(30) AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '설문조사 아이디',
	survey_gender VARCHAR(10) COMMENT '성별',
	survey_old VARCHAR(100) COMMENT '요청 url',
	survey_q1 VARCHAR(100) COMMENT '문항1',
	survey_q1_1 VARCHAR(200) COMMENT '문항1-1',
	survey_q2 VARCHAR(100) COMMENT '문항2',
	survey_q3 VARCHAR(200) COMMENT '문항3'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;