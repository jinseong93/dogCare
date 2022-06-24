package com.ch.dogcare.dao;

import com.ch.dogcare.model.Address;

public interface AddressDao {

	int insert(Address address);

	Address select(String M_id);

	int update(Address address);

	int delete(String M_id);

}
