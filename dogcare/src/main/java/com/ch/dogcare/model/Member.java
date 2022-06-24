package com.ch.dogcare.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Member {
	private String M_id;
	private String M_password;
	private String M_nickname;
	private String M_gender;
	private String M_age;
	private Date M_regdate;
}
