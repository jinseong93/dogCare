package com.ch.dogcare.model;

import java.util.Date;

import lombok.Data;

@Data
public class ServiceApply {
	private int S_num;
	private String S_type;
	private String M_id;
	private String M_address;
	private int D_num;
	private String D_name;
	private String D_photo;
	private String S_day;
	private String S_time;
	private String S_comment;
	private String S_pickUp;
	private Date S_regdate;
}
