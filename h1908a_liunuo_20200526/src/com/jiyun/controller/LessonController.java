package com.jiyun.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jiyun.pojo.Address;
import com.jiyun.pojo.Lesson;
import com.jiyun.service.LessonService;


@Controller
@RequestMapping("Lesson")
public class LessonController {
	//你好
	@Autowired
	LessonService ls;
	
	
	
	@RequestMapping("delete")
	public String delete(Integer id,Integer pageNum){
		ls.delete(id);
		
		return "forward:/Lesson/findAll.action";
	}
	
	@RequestMapping("findAll")
	public String findAddressAll(Model model,Lesson lesson,@RequestParam(defaultValue="1",required=true)Integer pageNum){
		PageHelper.startPage(pageNum, 3);
		List<Address> alist=ls.findAll(lesson);
		PageInfo<Address> pageInfo = new PageInfo<>(alist);
		System.out.println("--------");
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("lesson",lesson);
		return "lessonlist";
	}
	
	@RequestMapping("toAdd")
	public String toAdd(Model model){
		List<Address> list=ls.findAddressId(0);
		System.out.println(list);
		model.addAttribute("alist",list);
		return "add";
	}
	
	@RequestMapping("findAddressByPid")
	@ResponseBody
	public List<Address> findAddressByPid(Integer pid) throws IOException{
		System.out.println("------------------------aaaa=====================");
		List<Address> list=ls.findAddressId(pid);
		
		/*JSONArray array = JSONArray.fromObject(list);
		response.getWriter().write(array.toString());*/
		return list;
		
	}

	@RequestMapping("findKname")
	@ResponseBody
	public int findKname(String kname){
		int i=ls.findKname(kname);
		
		return i;
	}
	
	@RequestMapping("add")
	public String add(Lesson lesson){
		ls.add(lesson);
		System.out.println("id:"+lesson.getId());
		return "tiao";
	}
	
	@RequestMapping("toUpdate")
	public String toUpdate(Integer id,Integer pageNum,Model model){
		Lesson lesson=ls.findById(id);
		List<Address> list=ls.findAddressId(0);
		
		model.addAttribute("alist",list);
		model.addAttribute("lesson",lesson);
		model.addAttribute("pageNum",pageNum);
		return "update";
	}
	
	@RequestMapping("update")
	public String update(Lesson lesson,Integer pageNum,Model model){
		ls.update(lesson);
		
		model.addAttribute("pageNum",pageNum);
		return "tiao";
	}
}
