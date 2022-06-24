package com.ch.dogcare.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PetSitterDaoImpl {
	@Autowired
	private SqlSessionTemplate sst;
}
