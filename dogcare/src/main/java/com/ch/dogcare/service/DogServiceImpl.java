package com.ch.dogcare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.dogcare.dao.DogDao;
import com.ch.dogcare.model.Dog;

@Service
public class DogServiceImpl implements DogService {
	@Autowired
	private DogDao dd;

	@Override
	public int insert(Dog dog) {
		return dd.insert(dog);
	}

	@Override
	public List<Dog> IDdogList(String M_id) {
		return dd.IDdogList(M_id);
	}

	@Override
	public Dog select(int D_num) {
		return dd.select(D_num);
	}
}
