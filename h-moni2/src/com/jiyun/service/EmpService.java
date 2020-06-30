package com.jiyun.service;

import java.util.List;

import com.jiyun.pojo.Emp;

public interface EmpService {

	List<Emp> findAll();

	Emp findById(Integer eid);

	void update(Emp emp);

	void delete(Integer eid);

}
