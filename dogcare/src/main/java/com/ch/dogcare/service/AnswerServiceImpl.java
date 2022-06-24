package com.ch.dogcare.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.dogcare.dao.AnswerDao;

@Service
public class AnswerServiceImpl implements AnswerService {
	@Autowired
	private AnswerDao ad;
}
