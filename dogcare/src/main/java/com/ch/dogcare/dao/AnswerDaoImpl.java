package com.ch.dogcare.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class AnswerDaoImpl implements AnswerDao {
	@Autowired
	private SqlSessionTemplate sst;
}
