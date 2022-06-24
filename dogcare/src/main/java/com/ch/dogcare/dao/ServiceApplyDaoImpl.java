package com.ch.dogcare.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.dogcare.model.ServiceApply;

@Repository
public class ServiceApplyDaoImpl implements ServiceApplyDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int Winsert(ServiceApply serviceApply) {
		return sst.insert("serviceApplyns.Winsert", serviceApply);
	}

	@Override
	public List<ServiceApply> list(String S_type) {
		return sst.selectList("serviceApplyns.list", S_type);
	}

	@Override
	public ServiceApply select(int S_num) {
		return sst.selectOne("serviceApplyns.select", S_num);
	}
	
	@Override
	public List<ServiceApply> IDlist(String M_id) {
		return sst.selectList("serviceApplyns.IDlist", M_id);
	}


	
}
