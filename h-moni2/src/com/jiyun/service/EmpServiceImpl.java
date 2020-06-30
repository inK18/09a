package com.jiyun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiyun.mapper.EmpMapper;
import com.jiyun.pojo.Emp;

@Service
public class EmpServiceImpl implements EmpService{

	@Autowired
	EmpMapper em;

	@Override
	public List<Emp> findAll() {
		// TODO Auto-generated method stub
		List<Emp> elist=em.findAll();
		return elist;
	}

	@Override
	public Emp findById(Integer eid) {
		// TODO Auto-generated method stub
		Emp emp=em.findById(eid);
		return emp;
	}

	@Override
	public void update(Emp emp) {
		// TODO Auto-generated method stub
		em.update(emp);
	}

	@Override
	public void delete(Integer eid) {
		// TODO Auto-generated method stub
		em.delete(eid);
	}
}
