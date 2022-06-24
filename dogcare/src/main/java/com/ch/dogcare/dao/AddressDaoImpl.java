package com.ch.dogcare.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.dogcare.model.Address;

@Repository
public class AddressDaoImpl implements AddressDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Address address) {
		return sst.insert("addressns.insert", address);
	}

	@Override
	public Address select(String M_id) {
		return sst.selectOne("addressns.select", M_id);
	}

	@Override
	public int update(Address address) {
		return sst.update("addressns.update", address);
	}

	@Override
	public int delete(String M_id) {
		return sst.delete("addressns.delete", M_id);
	}
}
