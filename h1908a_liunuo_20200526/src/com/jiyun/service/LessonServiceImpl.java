package com.jiyun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiyun.mapper.LessonMapper;
import com.jiyun.pojo.Address;
import com.jiyun.pojo.Lesson;

@Service
public class LessonServiceImpl implements LessonService{

	@Autowired
	LessonMapper lm;

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		lm.delete(id);
	}

	@Override
	public List<Address> findAll(Lesson lesson) {
		// TODO Auto-generated method stub
		List<Address> alist=lm.findAll(lesson);
		return alist;
	}

	public List<Address> findAddressId(Integer id) {
		// TODO Auto-generated method stub
		List<Address> list=lm.findAddressId(id);
		return list;
	}

	@Override
	public int findKname(String kname) {
		// TODO Auto-generated method stub
		int i=lm.findKname(kname);
		return i;
	}

	public void add(Lesson lesson) {
		// TODO Auto-generated method stub
		lm.add(lesson);
	}

	@Override
	public Lesson findById(Integer id) {
		// TODO Auto-generated method stub
		Lesson lesson=lm.findById(id);
		return lesson;
	}

	@Override
	public void update(Lesson lesson) {
		// TODO Auto-generated method stub
		lm.update(lesson);
	}


	
}
