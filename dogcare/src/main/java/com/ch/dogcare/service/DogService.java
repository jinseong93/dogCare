package com.ch.dogcare.service;

import java.util.List;

import com.ch.dogcare.model.Dog;

public interface DogService {

	int insert(Dog dog);

	List<Dog> IDdogList(String M_id);

	Dog select(int D_num);

}
