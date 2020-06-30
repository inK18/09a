package com.jiyun.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jiyun.pojo.Address;
import com.jiyun.pojo.Lesson;

public interface LessonMapper {

	void delete(@Param("id")Integer id);

	List<Address> findAll(Lesson lesson);

	List<Address> findAddressId(@Param("pid")Integer id);

	int findKname(@Param("kname")String kname);

	void add(Lesson lesson);

	Lesson findById(@Param("id")Integer id);

	void update(Lesson lesson);

	

	

}
