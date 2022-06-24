package com.ch.dogcare.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Review {
	private int R_num;
	private String M_id;
	private String R_title;
	private String R_contents;
	private String R_grade;
	private Date R_regdate;
}
