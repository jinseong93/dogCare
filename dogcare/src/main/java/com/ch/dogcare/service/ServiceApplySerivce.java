package com.ch.dogcare.service;

import java.util.List;

import com.ch.dogcare.model.ServiceApply;

public interface ServiceApplySerivce {

	int Winsert(ServiceApply serviceApply);

	List<ServiceApply> list(String S_tpye);

	ServiceApply select(int S_num);
	
	List<ServiceApply> IDlist(String M_id);


}
