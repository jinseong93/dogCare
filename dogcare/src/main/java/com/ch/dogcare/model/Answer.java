package com.ch.dogcare.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Answer {
	private int A_num;
	private int Q_num;
	private String A_contents;
	private Date A_regdate;
}
