package com.ch.dogcare.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Question {
	private int Q_num;
	private String M_id;
	private String Q_title;
	private String Q_contents;
	private String Q_secret;
	private Date Q_regdate;
}
