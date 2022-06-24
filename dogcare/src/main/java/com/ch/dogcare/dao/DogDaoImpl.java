package com.ch.dogcare.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.dogcare.model.Dog;

@Repository
public class DogDaoImpl implements DogDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Dog dog) {
		return sst.insert("dogns.insert", dog);
	}

	@Override
	public List<Dog> IDdogList(String M_id) {		
		return sst.selectList("dogns.IDdogList", M_id);
	}

	@Override
	public Dog select(int D_num) {		
		return sst.selectOne("dogns.select", D_num);
	}

}
