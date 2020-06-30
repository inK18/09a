package com.jiyun.service;

import java.util.List;

import com.jiyun.pojo.Address;
import com.jiyun.pojo.Lesson;

public interface LessonService {

	void delete(Integer id);

	List<Address> findAll(Lesson lesson);

	List<Address> findAddressId(Integer id);

	int findKname(String kname);

	void add(Lesson lesson);

	Lesson findById(Integer id);

	void update(Lesson lesson);

	


	

}
