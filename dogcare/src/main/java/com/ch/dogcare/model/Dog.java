package com.ch.dogcare.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Dog {
	private int D_num;
	private String M_id;
	private String D_name;
	private String D_breed;
	private String D_size;
	private String D_neutered;
	private String D_RFID;
	private String D_inoculation;
	private String D_photo;
	private String D_DRA;
	private String D_PRA;
	private String D_dislike;
	private String D_attack;
	private Date D_regdate;
	// upload용
	private MultipartFile file;
}
