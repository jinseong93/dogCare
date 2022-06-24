package com.ch.dogcare.dao;

import java.util.List;

import com.ch.dogcare.model.Dog;

public interface DogDao {

	int insert(Dog dog);

	List<Dog> IDdogList(String M_id);

	Dog select(int D_num);


}
