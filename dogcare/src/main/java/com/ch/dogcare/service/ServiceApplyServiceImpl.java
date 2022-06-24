package com.ch.dogcare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.dogcare.dao.ServiceApplyDao;
import com.ch.dogcare.model.ServiceApply;

@Service
public class ServiceApplyServiceImpl implements ServiceApplySerivce {
	@Autowired ServiceApplyDao sas;

	@Override
	public int Winsert(ServiceApply serviceApply) {
		return sas.Winsert(serviceApply);
	}

	@Override
	public List<ServiceApply> list(String S_type) {
		return sas.list(S_type);
	}

	@Override
	public ServiceApply select(int S_num) {
		return sas.select(S_num);
	}
	
	public List<ServiceApply> IDlist(String M_id) {
		return sas.IDlist(M_id);
	}


}
