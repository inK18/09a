package com.jiyun.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiyun.pojo.Emp;
import com.jiyun.service.EmpService;

@Controller
@RequestMapping("Emp")
public class EmpController {

	@Autowired
	EmpService es;
	
	@RequestMapping("findAll")
	public String findAll(Model model){
		List<Emp> elist=es.findAll();
		
		model.addAttribute("elist",elist);
		return "show";
	}
	
	
	
	@RequestMapping("toUpdate")
	public String toUpdate(Model model,Integer eid){
		Emp emp=es.findById(eid);
		List<Emp> emp2=es.findAll();
		
		model.addAttribute("e",emp);
		model.addAttribute("ee",emp2);
		return "update";
	}
	
	
	
	@RequestMapping("update")
	public String update(Emp emp){
		es.update(emp);
		
		return "forward:/Emp/findAll.action";
	}
	
	@RequestMapping("delete")
	public String delete(Integer eid){
		es.delete(eid);
		
		return "forward:/Emp/findAll.action";
	}
}
