package com.ch.dogcare.dao;

import java.util.List;

import com.ch.dogcare.model.ServiceApply;

public interface ServiceApplyDao {

	int Winsert(ServiceApply serviceApply);

	List<ServiceApply> list(String S_type);

	ServiceApply select(int S_num);

	List<ServiceApply> IDlist(String M_id);

}
