-- 회원 
create table member (
	M_id varchar2(20) primary key,	-- 아디&이메일
	M_password varchar2(100),		-- 비밀번호
	M_nickname varchar2(30),		-- 닉네임
	M_gender varchar2(10), 			-- 성별
	M_age varchar2(20),				-- 연령대
	M_regdate date 					-- 가입일
);
select * from member;
delete from member;
drop table member;

-- 회원 주소
create table address (
	M_id varchar2(20) primary key,	-- 아디&이메일
	M_address varchar2(300)         -- 주소
);
select * from address;
delete from address;

-- 회원의 강아지
create table dog (
	D_num number primary key,	-- 강아지 고유 번호
	M_id varchar2(20),			-- 회원ID (주인)
	D_name varchar2(30), 		-- 강아지 이름
	D_breed varchar2(30),		-- 강아지 품종
	D_size varchar2(20),		-- 강아지 크기
	D_neutered varchar2(20), 	-- 중성화 여부
	D_RFID varchar2(10),		-- 동물등록(마이크로칩) 위치(내장형 or 외장형)
	D_inoculation varchar2(20), -- 예방접종 여부
	D_photo varchar2(300),		-- 강아지 사진
	D_DRA varchar2(300),		-- 다른 강아지 만났을때 반응
	D_PRA varchar2(300),        -- 주인외 사람 만났을때 반응
	D_dislike varchar2(300),	-- 강아지가 싫어하는 행동
	D_attack varchar2(30),		-- 공격한적 (있다 or 없다)
	D_regdate date				-- 강아지 등록일
);
create sequence dog_seq;
select * from dog;
drop table dog;
delete from dog where D_num = 2;


-- 돌봄 서비스 신청
create table serviceApply (
	S_num number primary key,	-- 돌봄서비스 신청서 번호
	S_type varchar2(30),		-- 서비스 종류   //  1-산책 , 2-방문, 3-픽업
	M_id varchar2(20),			-- 신청 회원 아이디
	M_address varchar2(300),     -- 회원의 주소
	D_num number,				-- 신청 회원 강아지
	D_name varchar2(30),		-- 신청 회원 강아지의 이름
	D_photo varchar2(300),      -- 신청 강아지 사진
	S_day varchar2(30),			-- 원하는 날자
	S_time varchar2(30),		-- 원하는 시간
	S_comment varchar2(300), 	-- 주의사항 및 원하는 돌봄
	S_pickUp varchar2(300),		-- 픽업용 도착 주소지
	S_regdate date				-- 신청일
);
select * from serviceApply; 
drop table serviceApply;
insert into SERVICEAPPLY values (1, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (2, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (3, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (4, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (5, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (6, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (7, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (8, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (9, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (10, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (11, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (12, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (13, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (14, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);
insert into SERVICEAPPLY values (15, '산책', 'k1k2', '서울 송파구 양산로 2길 44', 1, '자몽이', 'dog.jpg', '2022-05-27', '다괜찮아요', '123', ' ', SYSDATE);

-- 펫시터 신청서
create table petSitter (
	P_num number primary key, 	-- 펫시터 지원서 번호
	P_name varchar2(20), 		-- 지원자 이름
	P_Pnumber varchar2(30), 	-- 지원자 번호
	P_age varchar2(10),			-- 지원자 나이
	P_gender varchar2(10), 		-- 지원자 성별
	P_address varchar2(30), 	-- 거주지역 (활동지역)
	P_address2 varchar2(30), 	-- 거주지역외 활동가능 지역	
	P_experience varchar2(10),	-- 반려경험
	P_career varchar2(300),		-- 펫시터 경험
	P_smoking varchar2(10),		-- 흡연여부
	P_comment varchar2(300),
	P_regdate date	-- 지원이유
);
select * from petSitter;
drop table petSitter;

-- 이용후기 게시판
create table review (
	R_num number primary key, 	-- 게시번호
	M_id varchar2(20),			-- 작성자 아이디
	R_title varchar2(30),		-- 게시글 제목
	R_contents varchar2(200),	-- 게시글 내용
	R_grade varchar2(30),		-- 후기 평점
	R_regdate date				-- 작성일
);
drop table review;

-- 질문 게시판
create table question (
	Q_num number primary key, 	-- 게시번호
	M_id varchar2(20),			-- 작성자 아이디
	Q_title varchar2(20),		-- 질문 제목
	Q_contents varchar2(300),	-- 질문 내용
	Q_secret varchar2(10),		-- 비밀글 여부
	Q_regdate date				-- 작성일
);
drop table question;

-- 답변(관리자용)
create table answer (
	A_num number primary key, 	-- 답변글 번호
	Q_num number,				-- 질문게시글 번호
	A_contents varchar2(300),	-- 답변 내용
	A_regdate date 			-- 답변 작성일 
);
