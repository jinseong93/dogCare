package com.ch.dogcare.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.dogcare.dao.AddressDao;
import com.ch.dogcare.model.Address;

@Service
public class AddressServiceImpl implements AddressService {
	@Autowired
	private AddressDao ad;

	@Override
	public int insert(Address address) {
		return ad.insert(address);
	}

	@Override
	public Address select(String M_id) {
		return ad.select(M_id);
	}

	@Override
	public int update(Address address) {
		return ad.update(address);
	}

	@Override
	public int delete(String M_id) {
		return ad.delete(M_id);
	}
}
