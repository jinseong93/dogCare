package com.ch.dogcare.service;

import com.ch.dogcare.model.Address;

public interface AddressService {

	int insert(Address address);

	Address select(String M_id);

	int update(Address address);

	int delete(String M_id);

}
